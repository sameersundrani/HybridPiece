// HybridPiece.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
using namespace std;


// CONSTANTS
static const string SCAFFOLD_PROMPT = "Please enter scaffold Gcode file name with .txt extension: ";
static const string GEL_PROMPT = "Please enter gel Gcode file name with .txt extension: ";
static const string OUTPUT_PROMPT = "Please give a name for output Gcode file with .gcode extension: ";
static const string SENTINEL = ";LAYER:1"; //LAYER:1 with skirt  // or layer 0 for no skirt but print is not clean without skirt
static const string GEL_SENTINEL = ";TYPE:FILL";
//static const string GEL_SENTINEL = ";MESH:NONMESH";
static const double HEIGHT_INCREMENT = 0.2;  // this is for PLA; we made the Cura height setting for gel to be 0.8
static const string LAYER_MARKER = ";MESH:rectangle_w_hole.STL"; //";MESH:rectangle_w_hole.STL"; //;MESH:rigid.STL
static const string HEATER_OFF = "M104 S0 ;extruder heater off";
static const int NUM_OF_SCAFF_LAYERS = 10; // note -- sameer changed bc height was too low // previous was 4
//static const double X_OFFSET = -20;
//static const double Y_OFFSET = -10;

static const double X_OFFSET = -49.85;  // changed from -48.2 -> -49.87
static const double Y_OFFSET = -24.25;  // changed from -26.7 -> -25.03
static const string FINAL_GEL_LINE = "G1 X0.35 Y-1.662 E11.64834";  // last line of gel code before turning off the heaters: "G1 F1500 E7.56054"
														   // currently my findCoord can't take Gcode that has G but not x and y. 
														   // will update to add this feature later to make a more universal final gel line

// FUNCTION PROTOTYPES
static string promptUserForFile(ifstream &input, string prompt);
static string findCoord(string line);

int main1()
{
	ifstream scaffoldGCode;
	ifstream gelGCode;
	string outputFileName;
	promptUserForFile(scaffoldGCode, SCAFFOLD_PROMPT);	
	promptUserForFile(gelGCode, GEL_PROMPT);
	cout << OUTPUT_PROMPT;							// ask to give name for new file with modified G-code
	cin >> outputFileName;
	ofstream outputGCode(outputFileName);
	bool scaffoldFlag = false;
	bool isGelShorterThanScaff = false;

	if (scaffoldGCode.is_open()) {
		string scaffoldLine;
		string gelLine;
		int scaffLayerCount = -1;
		bool gelFlag = false;
		bool runOnce = true;
		int M400_count = 0;

		while (getline(scaffoldGCode, scaffoldLine)) {
			// copy scaffold g code
			outputGCode << scaffoldLine << endl;
			if (scaffoldLine == LAYER_MARKER) {
				outputGCode << ";another scaffold layer***************" << endl;
				scaffLayerCount++;
				if (scaffLayerCount % NUM_OF_SCAFF_LAYERS == 0 && scaffLayerCount != 0) {
					printf("scaff layer count: %i\n", scaffLayerCount);
					scaffoldFlag = true;
				}
			}
			
			if (scaffoldFlag) {
				scaffoldFlag = false;
				while (getline(gelGCode, gelLine)){
					//string printline = gelLine;
					//cout << printline << endl;
					if (isGelShorterThanScaff) {
						break;
					}
					if (gelLine.find(FINAL_GEL_LINE) != string::npos) {
						printf("breaking here\n");
						isGelShorterThanScaff = true;
						break;
					}
					// move the gelLine to the point where we would want to start
					// copying over to the output file: essentially the G code
					// just past the skirt
					if (runOnce) {
						if (gelLine == SENTINEL) {
							gelFlag = true;
						}
						if (gelFlag) {
							if (gelLine == GEL_SENTINEL) {
								runOnce = false;
							}
						}
					}
					else {
						char firstCh = gelLine.at(0);
						char secCh = gelLine.at(1);
						if (firstCh == 'G' && gelLine.find('X') == string::npos) {
							outputGCode << gelLine << endl;
						}
						else if (firstCh == 'G' && M400_count %3 == 0) {
							// parse gel line and offset the x and y coordinates
							string newGelLine = findCoord(gelLine);
							outputGCode << "M400" << endl;
							outputGCode << newGelLine << endl;
							M400_count++;
						}
						else if (firstCh == 'G' && M400_count % 3 == 1) {
							string newGelLine = findCoord(gelLine);
							outputGCode << "M400" << endl;
							outputGCode << newGelLine << endl;
							M400_count++;
						}
						else if (firstCh == 'G' && M400_count % 3 == 2) {
							string newGelLine = findCoord(gelLine);
							outputGCode << newGelLine << endl;
						}
						else if (firstCh == 'G'){
							string newGelLine = findCoord(gelLine);
							outputGCode << newGelLine << endl;
						}
						if (gelLine == GEL_SENTINEL) {
							outputGCode << ";Gel layer added*****************" << endl;
							outputGCode << "M400" << endl;
							M400_count++;
							break;
						}
					}
				}
				//outputGCode << "M400" << endl;
			}
		}
		gelGCode.close();
		scaffoldGCode.close();
	}
	return 0;

}

static string findCoord(string line) {
	string delimiter = " ";
	int pos = 0;
	string token;
	vector<string> oneWord;
	bool pushLine = false;
	if (line.at(1) == '0') {
		// this means that the G code line is G0 X Y without an E at the end
		pushLine = true;
	}
	else {
		cout << line << endl;
	}
	while ((pos = line.find(delimiter)) != std::string::npos) {
		token = line.substr(0, pos);
		//printf("%s ", token.c_str());
		oneWord.push_back(token);
		line.erase(0, pos + delimiter.length());
	}
	if (pushLine) {
		oneWord.push_back(line);
		//printf("%s\n", line.c_str());
		pushLine = false;
	}
	int length = oneWord.size();
	double x_val;
	double y_val;
	for (int i = 0; i < length; i++) {
		string word = oneWord[i];
		int x_loc = word.find_last_of("X");
		if (x_loc != -1) {
			x_val = stod(word.substr(x_loc + 1));
		}
		int y_loc = word.find_last_of("Y");
		if (y_loc != -1) {
			y_val = stod(word.substr(y_loc + 1));
		}
	}
	double newX = x_val + X_OFFSET;
	string X = "X" + to_string(newX);
	double newY = y_val + Y_OFFSET;
	string Y = "Y" + to_string(newY);
	string fullLine = oneWord[0] + " " + X + " " + Y;
	//printf("%s\n", fullLine.c_str());
	return fullLine;
}

static string promptUserForFile(ifstream & input, string prompt) {
	while (true) {
		bool isGelPrompt = false;
		if (prompt == GEL_PROMPT) {
				isGelPrompt = true;
		}
		cout << prompt;
		string filename;
		getline(cin, filename);
		input.open(filename.c_str());
		if (!input.fail()) {
			return filename;
		}
		input.clear();
		cout << "Unable to open that file. Try again." << endl;
		if (prompt == "") {
			if (isGelPrompt) {
				prompt = GEL_PROMPT;
			}
			else {
				prompt = SCAFFOLD_PROMPT;
			}
		}
	}
}


