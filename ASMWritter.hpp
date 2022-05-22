#ifndef ASMWRITTER_HPP
#define ASMWRITTER_HPP
#include <bitset>      // number to binary sting
#include <cstdint>     // this contains uint16_t
#include <functional>  // use hash
#include <map>         // indexable dictionary
#include <regex>       // regular expression
#include <sstream>     // string stream
#include <stdexcept>   // throw exception
#include <string>      // process c++ string

using namespace std;
extern string moduleName;
class ASMWritter {
   public:
    ASMWritter();   // default constructor
    ~ASMWritter();  // destructor

    /** Project 07 functions */
    // 9 arithmetic / logical commands
    string vm_add();
    string vm_sub();
    string vm_neg();
    string vm_eq();
    string vm_gt();
    string vm_lt();
    string vm_and();
    string vm_or();
    string vm_not();
    // 2 memory access commands
    string vm_push(string segment, int offset);
    string vm_pop(string segment, int offset);

    /** Project 08 functions */
    string vm_label(string label);
    string vm_goto(string label);
    string vm_if(string label);
    string vm_function(string function_name, int n_vars);
    string vm_call(string function_name, int n_args);
    string vm_return();

   private:
    void write(string vmCode);
    string registerName(string segment, int index);
    int symbolCounter; /**< Counter of symbols in the program. */
    enum VMsegments { seg_constant,
                      seg_static,
                      seg_temp,
                      seg_pointer,
                      seg_local,
                      seg_argument,
                      seg_this,
                      seg_that };
    map<string, VMsegments> map_segments;
    stringstream ss_ASM;
};
#endif  // VMPARSER_HPP