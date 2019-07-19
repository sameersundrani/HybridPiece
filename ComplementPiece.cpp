/// ComplementPiece.cpp : Writes gcode file that will print the complement PLA / Gel scaffold from 
///						 scaffold file.
/// Sameer Sundrani, Caroyln Kim, Jiannan Li, July 2019

/// Libraries
#include "stdafx.h"
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <iomanip>
#include <cmath>
#include <regex>
#include <map>
#include <math.h> 
#include <tuple>
using namespace std;

/// MODULE LEVEL VARIABLES
static double absExtrusion = 0;
static double z_height = 0;
static double E0, E1, E2;
static double E_last = 0;
static int NUM_OF_COPIES = -1; // init to 0 change this to match something, should be num intermediates - 1

///Global Constants
static const string SCAFFOLD_PROMPT = "Please enter scaffold Gcode file name with .txt extension: ";
static const string INPUT_LAYER_HEIGHT_PROMPT = "Please enter the CURA layer height in 0.2 intervals (e.g. 0.2): "; // added for generality in later design 
static const string OUTPUT_PROMPT = "Please give a name for output Gcode file with .gcode extension: ";
static const string SENTINEL = ";LAYER:1"; //LAYER:1 with skirt  // or layer 0 for no skirt but print is not clean without skirt
static const double HEIGHT_INCREMENT = 0.2;  // this is for PLA; we made the Cura height setting for gel to be 0.8
static const string G_CODE_MARK = "M400";
static const string LAYER_MARKER = ";MESH:CylinderComplement.stl"; //;MESH:Box_1_testhybrid.stl";//";MESH:rectangle_w_hole.STL"; //;MESH:rigid.STL // need to change somehow
static const string HEATER_OFF = "M104 S0 ;extruder heater off";
static const double X_OFFSET = -49.85;  // changed from -48.2 -> -49.87
static const double Y_OFFSET = -24.25;  // changed from -26.7 -> -25.03

///Functions and Documentation 

//Method:     firstTwoCh, gets the first two characters on a line
static string firstTwoCh(string line);

//Method:     copyTillSentinel, will copy Gcode through to the skirt
static void copyTillSentinel(ifstream& input, ofstream& output);

//Method:     findExtrusions, parses through to get the appropriate E deltas
static void findExtrusions(vector<string>& aLayer);

//Method:     updateE_last, will make sure to have the correct E values for the new layers
static void updateE_last(string lastLine);

//Method:     addMultipleLayers, actually adds the copied layers to the scaffold (num copies - 1 layers added)
static void addMultipleLayers(vector<string>& aLayer, ofstream& output);

//Method:     finishes the gcode file from the inputted cura file
static void copyToEnd(ifstream& input, ofstream& output);

// Method:    promptUserForFile, opens text file that we want to write to gcode
static void promptUserForFile(ifstream& input, string prompt);

// Method:    getOutputFile, Getter for a valid gcode file
static string getOutputFile();

// Method:    getLayerHeight, Will get a valid layer increment to then write the Gcode file with 
static double getLayerHeight();

// Method:    getCoords, Will allocate the string coords using Regular Expressions into a tuple of two double
static vector<tuple<double, double>> getCoords(vector<string>& layer);

// Method:    getGelLayerLines, will parse through and create the gel layer needed to add 
static vector<string> getGelLayerLines(vector<tuple<double, double>>& myCoords);

//Method:     getNewCoord, depending on the layer direction, will get the new coords needed to add
static vector<tuple<double, double>> getNewCoord(vector<tuple<double, double>>, bool myLayerDirection);

static double getXTuple(tuple<double, double>& myTuple);
static double getMid(double val1, double val2);
static double getYTuple(tuple<double, double>& myTuple);


//Method:     addGelLayers, will combine previous methods and then output to the gcode file
static void addGelLayers(vector<string>& oneLayer, ofstream& output);

int main() {
	// main local var
	ifstream inputGCode; // input file stream 
	double layerHeight = getLayerHeight(); // gets layer height first
	promptUserForFile(inputGCode, SCAFFOLD_PROMPT); // then gets file input
	ofstream outputGCode(getOutputFile()); // and then get output file stream
	copyTillSentinel(inputGCode, outputGCode); // output everything until layer 1
	int flag = 0;									// flag is to indicate beginning of each print layer, init at 0
	vector<string> oneLayer;						// a vector to hold each print line beginning with G0 or G1
	NUM_OF_COPIES = (layerHeight / HEIGHT_INCREMENT) - 1;
	cout << "I am making " << NUM_OF_COPIES << " number of copies" << endl;
	if (inputGCode.is_open()) {
		string line;
		while (getline(inputGCode, line)) {
			if (line == LAYER_MARKER) {
				flag = 1;							// 1: beginning of print layer
			}
			else if (((firstTwoCh(line) == "G0") && (flag == 1)) || (firstTwoCh(line) == "G1" && (flag == 0))) {
				oneLayer.push_back(line);
				flag = 0;							// 0: end of print layer
			}
			else if (firstTwoCh(line) == "G0" && (flag == 0)) {
				oneLayer.push_back(line);
				findExtrusions(oneLayer); // get delta Extrusion (E0-2) values 
				addMultipleLayers(oneLayer, outputGCode); // output repeated NUM_OF_COPIES Variables 
				/*if (true) for (auto line : oneLayer) cout << line << endl;
				break;*/
				// do my gel code here 
				//if (true) getCoords(oneLayer);
				//break;
				//if (true) {
				//	vector<tuple<double, double>> tupleCoords = getCoords(oneLayer);
				//	vector<string> stringCoords = getGelLayerLines(tupleCoords);
				//	for (string line : stringCoords) cout << line << endl;
				//	//break;
				//}
				// for testing
				addGelLayers(oneLayer, outputGCode);
				oneLayer.clear();
				flag = -1;							// -1: misc. G and M codes in between print layers
			}
			else {
				outputGCode << line << endl;		// add all other miscellaneous lines such as M codes and comments
			}
			if (line == HEATER_OFF) {
				copyToEnd(inputGCode, outputGCode);
				break;
			}
		}
		inputGCode.close();
	}
	return 0;
}
static void promptUserForFile(ifstream& input, string prompt) { // tested, works, getting a problem now 
	while (true) {
		string filename;
		cout << prompt;
		getline(cin, filename);
		input.open(filename);
		if (!input.fail()) {
			cout << filename << " is an okay file :) \n";
			return;
		}
		else {
			cout << "Unable to open that file. Try again." << endl;
			input.clear();
		}
	}
}

static string getOutputFile() { // tested, works
	while (true) {
		string outputFileName;
		cout << OUTPUT_PROMPT;							// ask to give name for new file with modified G-code
		getline(cin, outputFileName);
		if (outputFileName.substr(outputFileName.length() - 6) == ".gcode") return outputFileName;
		else cout << "Filename not valid gcode file to write :( \n";
	}
}

static double getLayerHeight() { // tested, works
	string height;
	cout << INPUT_LAYER_HEIGHT_PROMPT;
	getline(cin, height); // should give 0.2 mm equivalent decimals 
	// double check this exception handler
	try {
		stod(height);
		if (!stod(height)) {
			throw exception();
		}
		else {
			while (fmod(stod(height), 0.2) != 0) {
				cout << "That Layer Height is No Good :( \n" << INPUT_LAYER_HEIGHT_PROMPT;
				getline(cin, height);
			}
			return stod(height);
		}
	}
	catch (...) {
		cerr << "Problem Occurred :)\n";
	}
}

static void findExtrusions(vector<string>& aLayer) {
	for (int i = 1; i <= 3; i++) {
		string line = aLayer.at(i);
		int E_loc = line.find_last_of("E");
		if (i == 1) {
			E0 = stod(line.substr(E_loc + 1));
		}
		else if (i == 2) {
			E1 = stod(line.substr(E_loc + 1));
		}
		else {
			E2 = stod(line.substr(E_loc + 1));
		}
	}
}

static void addMultipleLayers(vector<string>& aLayer, ofstream& output) {
	double a = E1 - E0;			// extrusion deltas for the two perpendicular lines that form grid
	double b = E2 - E1;
	double c = E0 - E_last;
	for (int i = 0; i < NUM_OF_COPIES; i++) {
		//Output G0 to coords and update Z axis with static var height
		string firstLine = aLayer.at(0);
		int z_index = firstLine.find_last_of("Z");
		string firstLineCoord = firstLine.substr(0, z_index + 1);
		//Concatenate with height add height increment to height
		z_height = z_height + HEIGHT_INCREMENT;
		string z_value = to_string(z_height);
		firstLine = firstLineCoord + z_value;
		output << firstLine << endl;
		double extrusionA = E1 - E0;
		double extrusionB = E2 - E1;
		int layerSize = aLayer.size();
		for (int j = 1; j < layerSize - 1; j++) {
			string line = aLayer.at(j);
			// find E location
			int E_loc = line.find_last_of("E");
			// get substring to E  
			string coord = line.substr(0, E_loc + 1);
			if (j == 1 && i == 0) {
				double extrusion = stod(line.substr(E_loc + 1));
				extrusion = extrusion - E_last;
				absExtrusion = absExtrusion + extrusion;
			}
			else {
				if (j % 2 == 0) {
					absExtrusion = absExtrusion + extrusionA;
				}
				else {
					absExtrusion = absExtrusion + extrusionB;
				}
			}
			string extrusionVal = to_string(absExtrusion);
			string outputLine = coord + extrusionVal;
			output << outputLine << endl;
			if (j == aLayer.size() - 2 && i == 0) {
				updateE_last(aLayer.at(aLayer.size() - 2));
			}
		}
		output << aLayer.at(aLayer.size() - 1) << endl;
	}
}

static void updateE_last(string lastLine) {
	int last_loc = lastLine.find_last_of("E");
	E_last = stod(lastLine.substr(last_loc + 1));
}

static void copyTillSentinel(ifstream& input, ofstream& output) {
	string line;
	while (getline(input, line)) {
		output << line << endl;
		if (line == SENTINEL) {
			return;
		}
	}
}

static string firstTwoCh(string line) {
	return line.substr(0, 2);
}


static void copyToEnd(ifstream& input, ofstream& output) {
	string line;
	while (getline(input, line)) {
		output << line << endl;
	}
}

static bool getLayerDir(vector<double>& myX, vector<double>& myY) {
	double second = myX[1];
	double first = myX[0];
	if (-1 * first != -1 * second) return true; // horizontal, this means that the first two X vals are not the same indicating it is NOT vertical
	else return false; // vertical
}

static vector<tuple<double, double>> getNewCoord(vector<tuple<double, double>> prevCoords, bool myLayerDirection) {
	double prevX = getXTuple(prevCoords[0]);
	double prevY = getYTuple(prevCoords[0]); // init to 0 val
	vector<tuple<double, double>> myPts; // init to 0, need to keep track of 4 points
	double currX, currY, diff = 0.0; // init to 0
	vector<tuple<double, double>> newCoords;
	for (int i = 1; i < prevCoords.size(); i++) { // iterate through entire vector oif tuples
		currX = getXTuple(prevCoords[i]); 
		currY = getYTuple(prevCoords[i]);
		if (myLayerDirection) diff = currY - prevY; // if horizontal, check diff between consecutive y vals
		else diff = currX - prevX;
		if (diff <= 0.002) { // looking for a basically straight line, range is normally [0, 0.001]
			if (myPts.size() == 4) { // check to see if we need to add a new Coord
				//start with mid of 1 and 2 
				double midXStart = getMid(getXTuple(myPts[1]), getXTuple(myPts[2]));
				double midYStart = getMid(getYTuple(myPts[1]), getYTuple(myPts[2]));
				newCoords.push_back(make_tuple(midXStart, midYStart));
				// end with mid of 0 and 3
				double midXEnd = getMid(getXTuple(myPts[0]), getXTuple(myPts[3]));
				double midYEnd = getMid(getYTuple(myPts[0]), getYTuple(myPts[3]));
				newCoords.push_back(make_tuple(midXEnd, midYEnd));
				myPts.erase(myPts.begin(), myPts.begin() + 2); // delete first two points
			}
			myPts.push_back(make_tuple(prevX, prevY));
			myPts.push_back(make_tuple(currX, currY));
		}
		prevX = currX;
		prevY = currY;
	}
	/*for (int i = 1; i < prevCoords.size(); i++) {
		curr = prevCoords[i];
		if (prev != curr) {
			for (int i = 0; i < 2; i++) newCoords.push_back((prev + curr) / 2.0); // push back twice so that we can have an even number of moves
		}
		prev = curr;
	}
	*/
	return newCoords;
}

static vector<tuple<double, double>> getCoords(vector<string>& layer) {
	vector<tuple<double, double>> myCoords; // vec of tuples (format: <x,y>
	regex findCoords("X(\\S*)\\s*Y(\\S*)"); // searches for X followed by all non whitespace characters until we get to a space 
	smatch xyVals;
	for (string gLine : layer) {
		if (regex_search(gLine, xyVals, findCoords)) {
			/*cout << "My X : ";
			cout << matchX.str(1) << endl;*/
			double xCoord = stod(xyVals.str(1)); // extract the xCoord
			//cout << xCoord << endl;  
			double yCoord = stod(xyVals.str(2)); // extract the yCoord
			//cout << yCoord << endl;
			myCoords.push_back(make_tuple(xCoord, yCoord));
		}
	}
	return myCoords;
}

static vector<string> getGelLayerLines(vector<tuple<double, double>>& myCoords) {
	vector<string> myGelLines;
	vector<double> myX;
	vector<double> myY;
	myGelLines.push_back(";******* Adding Gel layer below *******"); // adding comment gcode to find gel gcode
	myGelLines.push_back("M400"); // pause the printer (M400 gcode will wait for everything else to complete)
	for (tuple<double, double> myTuple : myCoords) { // works
		myX.push_back(get<0>(myTuple)); // 0 is X val
		myY.push_back(get<1>(myTuple)); // 1 is Y val
		// need to figure out the horizontal then the mid points and the starting point
	}
	bool isHoriz = getLayerDir(myX, myY); // true if horizontal, false if vertical (where to look for midpoints and what to keep the same for lengths
	//cout << boolalpha << isHoriz << endl; // display layer direction
	/*if (isHoriz) {
		// horizontal layer
		vector<double> newY = getNewCoord(myY); // need to get the mid point y vals
		//for (double d : newY) cout << d << endl; // print the new Y to check
		for (int i = 0; i < newY.size(); i++) { // loop through the entire vector, print left to right
			if (i % 2 == 0) {
				if (i == 0) myGelLines.push_back("G0 F450 X" + to_string(myX[0] + X_OFFSET) + "  Y" + to_string(newY[i] + Y_OFFSET)); // set speed at first line
				else myGelLines.push_back("G0 X" + to_string(myX[0] + X_OFFSET) + "  Y" + to_string(newY[i] + Y_OFFSET));
				myGelLines.push_back(G_CODE_MARK); // turn on the syringe
			}
			else {
				myGelLines.push_back("G0 X" + to_string(myX[1] + X_OFFSET) + "  Y" + to_string(newY[i] + Y_OFFSET) + " " + G_CODE_MARK); // G1 to start the print
				//myGelLines.push_back(G_CODE_MARK); // turn off the syringe
				myGelLines.push_back(G_CODE_MARK); // reset the syringe
				// comment
			}
		}
	}
	else { // vertical layer
		//cout << isHoriz << endl;
		vector<double> newX = getNewCoord(myX); // need to get the mid point x vals
		//for (double x : myX) cout << x << endl;
		for (int i = 0; i < newX.size(); i++) { // loop through the entire vector
			if (i % 2 == 0) {
				if (i == 0) myGelLines.push_back("G0 F450 X" + to_string(newX[i] + X_OFFSET) + "  Y" + to_string(myY[0] + Y_OFFSET)); // set speed at first line
				else myGelLines.push_back("G0 X" + to_string(newX[i] + X_OFFSET) + "  Y" + to_string(myY[0] + Y_OFFSET)); // need to add the mid point of the Y vals now
				myGelLines.push_back(G_CODE_MARK); // turn on the syringe
			}
			else {
				myGelLines.push_back("G0 X" + to_string(newX[i] + X_OFFSET) + "  Y" + to_string(myY[1] + Y_OFFSET) + " " + G_CODE_MARK); // G1 to start the print
				//myGelLines.push_back(G_CODE_MARK); // turn off the syringe
				myGelLines.push_back(G_CODE_MARK); // reset the syringe
			}
		}
	}

	//myGelLines.pop_back(); // take off the last M400 to make sure the seeding for M400s is correct
	 if (myGelLines[myGelLines.size() - 2].find(G_CODE_MARK) != string::npos) {
		 int index = myGelLines[myGelLines.size() - 2].find_last_of(G_CODE_MARK);
		 myGelLines[myGelLines.size() - 2] = myGelLines[myGelLines.size() - 2].substr(0, index - 4);
	}
	myGelLines.pop_back(); // take off the last M400 to make sure the seeding for M400s is correct
	myGelLines.push_back(";Gel layer added*****************"); // adding comment gcode to find gel gcode
	myGelLines.push_back(G_CODE_MARK);
	*/
	vector<tuple<double, double>> gelCoordinates = getNewCoord(myCoords, isHoriz);
	for (int i = 0; i < gelCoordinates.size(); i++) {
		cout << "My X is : " << getXTuple(gelCoordinates[i]) << " My Y is : " << getYTuple(gelCoordinates[i]) << endl;
	}
	return myGelLines;
}

static double getXTuple(tuple<double, double>& myTuple){
	return get<0>(myTuple);
}

static double getYTuple(tuple<double, double>& myTuple) {
	return get<1>(myTuple);
}

static double getMid(double val1, double val2) {
	return ((val1 + val2) / 2.0);
}

static void addGelLayers(vector<string>& oneLayer, ofstream& output) {
	vector<tuple<double, double>> tupleCoords = getCoords(oneLayer);
	vector<string> stringCoords = getGelLayerLines(tupleCoords);
	for (string line : stringCoords) output << line << endl;
}

