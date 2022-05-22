#ifndef VMPARSER_HPP
#define VMPARSER_HPP
#include <bitset>     // number to binary sting
#include <cstdint>    // this contains uint16_t
#include <iostream>   // display debug information in terminal
#include <map>        // indexable dictionary
#include <regex>      // regular expression
#include <stdexcept>  // throw exception
#include <string>     // process c++ string

#include "ASMWritter.hpp"

using namespace std;

class VMParser {
   public:
    VMParser();   // default constructor
    ~VMParser();  // destructor
    string parseVMLine(string vmLine);
};
#endif  // VMPARSER_HPP