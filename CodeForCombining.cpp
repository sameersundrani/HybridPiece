// ModifyGCode.cpp : Adds multiple copies of each layer 
//

#include "stdafx.h"
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
using namespace std;


// MODULE LEVEL VARIABLES
static double absExtrusion = 0;
static double z_height = 0;
static double E0, E1, E2;
static double E_last = 0;

// CONSTANTS
static const string INPUT_PROMPT = "Please enter Gcode file name with .txt extension: ";
static const string OUTPUT_PROMPT = "Please give a name for output Gcode file with .txt extension: ";
static const string SENTINEL = ";LAYER:1";  // or layer 0 for no skirt but print is not clean without skirt
static const double HEIGHT_INCREMENT = 0.2;
static const string LAYER_MARKER = ";MESH:Box_1_testhybrid.stl"; // ";MESH:9mm_square.STL";
static const string HEATER_OFF = "M104 S0 ;extruder heater off";
static const int NUM_OF_COPIES = 4;

// FUNCTION PROTOTYPES
static void promptUserForFile(ifstream& input, string prompt);
static string firstTwoCh(string line);
static void copyTillSentinel(ifstream& input, ofstream& output);
static void findExtrusions(vector<string>& aLayer);
static void updateE_last(string lastLine);
static void addMultipleLayers(vector<string>& aLayer, ofstream& output);
static void copyToEnd(ifstream& input, ofstream& output);

int main2()
{
	ifstream inputGCode;
	string outputFileName;
	promptUserForFile(inputGCode, INPUT_PROMPT);	// ask for name of original G-code
	cout << OUTPUT_PROMPT;							// ask to give name for new file with modified G-code
	cin >> outputFileName;
	ofstream outputGCode(outputFileName);
	copyTillSentinel(inputGCode, outputGCode);
	int flag = 0;									// flag is to indicate beginning of each print layer
	vector<string> oneLayer;						// a vector to hold each print line beginning with G0 or G1

	if (inputGCode.is_open()) {
		string line;
		while (getline(inputGCode, line)) {
			if (line == LAYER_MARKER) {
				flag = 1;							// 1: beginning of print layer
				//oneLayer.push_back(line);
			}
			else if (((firstTwoCh(line) == "G0") && (flag == 1)) || (firstTwoCh(line) == "G1" && (flag == 0))) {
				oneLayer.push_back(line);
				flag = 0;							// 0: end of print layer
			}
			else if (firstTwoCh(line) == "G0" && (flag == 0)) {
				oneLayer.push_back(line);
				findExtrusions(oneLayer);
				addMultipleLayers(oneLayer, outputGCode);
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

static void promptUserForFile(ifstream& input, string prompt) {
	while (true) {
		cout << prompt;
		string filename;
		getline(cin, filename);
		input.open(filename.c_str());
		if (!input.fail()) {
			return;
		}
		input.clear();
		cout << "Unable to open that file. Try again." << endl;
		if (prompt == "") {
			prompt = INPUT_PROMPT;
		}
	}
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
