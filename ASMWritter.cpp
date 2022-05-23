#include "ASMWritter.hpp"
ASMWritter::ASMWritter() {
    ss_ASM.str(string());
    moduleName = "MyModule";
    symbolCounter = 0;
    map_segments.clear();
    map_segments.insert(pair<string, VMsegments>("constant", seg_constant));
    map_segments.insert(pair<string, VMsegments>("static", seg_static));
    map_segments.insert(pair<string, VMsegments>("temp", seg_temp));
    map_segments.insert(pair<string, VMsegments>("pointer", seg_pointer));
    map_segments.insert(pair<string, VMsegments>("local", seg_local));
    map_segments.insert(pair<string, VMsegments>("argument", seg_argument));
    map_segments.insert(pair<string, VMsegments>("this", seg_this));
    map_segments.insert(pair<string, VMsegments>("that", seg_that));
}

ASMWritter::~ASMWritter() {
}

/** Generate Hack Assembly code for a VM add operation assessed in Project 07 */
string ASMWritter::vm_add() {
    ss_ASM.str(string());
    write("@SP // add");
    write("AM=M-1");
    write("D=M");
    write("A=A-1");
    write("M=D+M");
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM sub operation assessed in Project 07 */
string ASMWritter::vm_sub() {
    ss_ASM.str(string());
    write("@SP // sub");
    write("AM=M-1");
    write("D=M");
    write("A=A-1");
    write("M=M-D");
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM neg operation assessed in Project 07 */
string ASMWritter::vm_neg() {
    ss_ASM.str(string());
    write("@SP // neg");
    write("A=M");
    write("A=A-1");
    write("M=-M");
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM eq operation assessed in Project 07 */
string ASMWritter::vm_eq() {
    ss_ASM.str(string());
    string label("JEQ_" + moduleName + "_" + to_string(symbolCounter));

    write("@SP // eq");
    write("AM=M-1");
    write("D=M");
    write("@SP");
    write("AM=M-1");
    write("D=M-D");
    write("@" + label);
    write("D;JEQ");
    write("D=1");
    write("(" + label + ")");
    write("D=D-1");
    write("@SP");
    write("A=M");
    write("M=D");
    write("@SP");
    write("M=M+1");

    symbolCounter++;
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM gt operation assessed in Project 07 */
string ASMWritter::vm_gt() {
    ss_ASM.str(string());
    string labelTrue("JGT_TRUE_" + moduleName + "_" + to_string(symbolCounter));
    string labelFalse("JGT_FALSE_" + moduleName + "_" + to_string(symbolCounter));

    write("@SP // gt");
    write("AM=M-1");
    write("D=M");
    write("@SP");
    write("AM=M-1");
    write("D=M-D");
    write("@" + labelTrue);
    write("D;JGT");
    write("D=0");
    write("@" + labelFalse);
    write("0;JMP");
    write("(" + labelTrue + ")");
    write("D=-1");
    write("(" + labelFalse + ")");
    write("@SP");
    write("A=M");
    write("M=D");
    write("@SP");
    write("M=M+1");

    symbolCounter++;
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM lt operation assessed in Project 07 */
string ASMWritter::vm_lt() {
    ss_ASM.str(string());
    string labelTrue("JLT_TRUE_" + moduleName + "_" + to_string(symbolCounter));
    string labelFalse("JLT_FALSE_" + moduleName + "_" + to_string(symbolCounter));

    write("@SP // lt");
    write("AM=M-1");
    write("D=M");
    write("@SP");
    write("AM=M-1");
    write("D=M-D");
    write("@" + labelTrue);
    write("D;JLT");
    write("D=0");
    write("@" + labelFalse);
    write("0;JMP");
    write("(" + labelTrue + ")");
    write("D=-1");
    write("(" + labelFalse + ")");
    write("@SP");
    write("A=M");
    write("M=D");
    write("@SP");
    write("M=M+1");

    symbolCounter++;
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM and operation assessed in Project 07 */
string ASMWritter::vm_and() {
    ss_ASM.str(string());
    write("@SP // and");
    write("AM=M-1");
    write("D=M");
    write("A=A-1");
    write("M=D&M");
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM or operation assessed in Project 07 */
string ASMWritter::vm_or() {
    ss_ASM.str(string());
    write("@SP // or");
    write("AM=M-1");
    write("D=M");
    write("A=A-1");
    write("M=D|M");
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM not operation assessed in Project 07 */
string ASMWritter::vm_not() {
    ss_ASM.str(string());
    write("@SP // not");
    write("A=M");
    write("A=A-1");
    write("M=!M");
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM push operation assessed in Project 07 */
string ASMWritter::vm_push(string segment, int offset) {
    ss_ASM.str(string());
    string indexStr = to_string(offset);  // convert the offset (int) into string to be write to the command
    string registerStr = registerName(segment, offset);
    switch (map_segments[segment]) {
        case seg_constant:
            write("@" + indexStr + " // push " + segment + " " + indexStr);
            write("D=A");
            write("@SP");
            write("A=M");
            write("M=D");
            write("@SP");
            write("M=M+1");
            break;
        case seg_static:
        case seg_temp:
        case seg_pointer:
            write("@" + registerStr + " // push " + segment + " " + indexStr);
            write("D=M");
            write("@SP");
            write("A=M");
            write("M=D");
            write("@SP");
            write("M=M+1");
            break;
        default:
            write("@" + registerStr + " // push " + segment + " " + indexStr);
            write("D=M");
            write("@" + indexStr);
            write("A=D+A");
            write("D=M");
            write("@SP");
            write("A=M");
            write("M=D");
            write("@SP");
            write("M=M+1");
            break;
    }
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM pop operation assessed in Project 07 */
string ASMWritter::vm_pop(string segment, int offset) {
    ss_ASM.str(string());
    string indexStr = to_string(offset);
    string registerStr = registerName(segment, offset);
    switch (map_segments[segment]) {
        case seg_constant:
            throw runtime_error("vm_pop(): cannot pop to constant");
            break;
        case seg_static:
        case seg_temp:
        case seg_pointer:
            write("@SP // pop " + segment + " " + indexStr);
            write("AM=M-1");
            write("D=M");
            write("@" + registerStr);
            write("M=D");
            break;
        default:
            write("@" + registerStr + " // pop " + segment + " " + indexStr);
            write("D=M");
            write("@" + indexStr);
            write("D=D+A");
            write("@R13");
            write("M=D");
            write("@SP");
            write("AM=M-1");
            write("D=M");
            write("@R13");
            write("A=M");
            write("M=D");
            break;
    }
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM label operation assessed in Project 08 */
string ASMWritter::vm_label(string label) {
    ss_ASM.str(string());
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM goto operation assessed in Project 08 */
string ASMWritter::vm_goto(string label) {
    ss_ASM.str(string());
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM if-goto operation assessed in Project 08 */
string ASMWritter::vm_if(string label) {
    ss_ASM.str(string());
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM function operation assessed in Project 08 */
string ASMWritter::vm_function(string function_name, int n_vars) {
    ss_ASM.str(string());
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM call operation assessed in Project 08 */
string ASMWritter::vm_call(string function_name, int n_args) {
    ss_ASM.str(string());
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM return operation assessed in Project 08 */
string ASMWritter::vm_return() {
    ss_ASM.str(string());
    return ss_ASM.str() + "\n";
}

/** Generate Hack Assembly code for a VM not operation assessed in Project 07 */
string ASMWritter::vm_end() {
    ss_ASM.str(string());
    write("(END)");
    write("@END");
    write("0;JMP");
    return ss_ASM.str() + "\n";
}

void ASMWritter::write(string vmCode) {
    if (vmCode.find("(") == string::npos)
        ss_ASM << "\t";  // put TAB if the ASM command is not a label
    ss_ASM << vmCode << endl;
}

string ASMWritter::registerName(string segment, int index) {
    if (segment == "local") return "LCL";
    if (segment == "argument") return "ARG";
    if (segment == "this") return "THIS";
    if (segment == "that") return "THAT";
    if (segment == "pointer") return "R" + to_string(3 + index);
    if (segment == "temp") return "R" + to_string(5 + index);

    return moduleName + "." + to_string(index);  // else it is static
}