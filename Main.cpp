#include <algorithm>  // STL algorithms like sort, search, copy, remove element...
#include <fstream>    // read write files
#include <iostream>   // display debug information in terminal
#include <queue>      //internal buffer between each pass
#include <string>     //instruction are saved as C++ stings.

#include "VMParser.hpp"

using namespace std;

VMParser vmp;
string moduleName;

int main(int argc, char const *argv[]) {
    string fnameIn, fnameOut;
    ifstream fIn;
    ofstream fOut;

    /* handling parameters*/
    if (argc < 2) {
        throw runtime_error("main(): plseas specify input file VMTranslator *.vm [*.asm]");
    } else {
        fnameIn = string(argv[1]);
        // check the input file is a .asm?
        if (fnameIn.find(".vm") == string::npos)
            throw runtime_error("main(): input fime must be .vm");
        fIn.open(fnameIn);
        // check the specified file is able to open?
        if (!fIn.is_open()) {
            throw runtime_error("main(): unable to open file " + fnameIn);
        }
        string::size_type idx = fnameIn.find_last_of('.');  // find the base name
        if (argc == 2) {
            fnameOut = fnameIn.substr(0, idx) + ".asm";  // change to .hack
        } else if (argc == 3) {
            fnameOut = string(argv[2]);
        } else {
            throw runtime_error("main(): too many parameters");
        }
        fOut.open(fnameOut, ofstream::trunc);
        if (!fOut.is_open()) {
            throw runtime_error("main(): unable to open file " + fnameOut);
        }
        moduleName = fnameIn.substr(0, idx);

        cout << "output to " << fnameOut << endl;

        /* Pre pass: read source file clean-up the code */
        string line;
        /* read each line from the .asm file */
        while (getline(fIn, line)) {
            string wtof = vmp.parseVMLine(line);
            fOut << wtof;
        }

        fIn.close();
        fOut.close();
    }
    return 0;
}
