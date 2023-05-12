#include "VMParser.hpp"
ASMWritter asmw;
VMParser::VMParser()
{ // functions are hard-coded, nothing to be initialized
}
VMParser::~VMParser()
{ // nothing to be desctructed.
}

string VMParser::parseVMLine(string vmLine)
{
    regex endl_re("\\r*\\n+");
    regex space_re("\\s+");
    vmLine = regex_replace(vmLine, endl_re, "");
    vmLine = regex_replace(vmLine, space_re, " ");
    vector<string> tokens;
    stringstream ss(vmLine);
    string token;

    while (getline(ss, token, ' '))
    {
        tokens.push_back(token);
    }

    if (tokens.size() == 1)
    {
        if (tokens[0] == "add")
        {
            return asmw.vm_add();
        }
        else if (tokens[0] == "sub")
        {
            return asmw.vm_sub();
        }
        else if (tokens[0] == "neg")
        {
            return asmw.vm_neg();
        }
        else if (tokens[0] == "eq")
        {
            return asmw.vm_eq();
        }
        else if (tokens[0] == "gt")
        {
            return asmw.vm_gt();
        }
        else if (tokens[0] == "lt")
        {
            return asmw.vm_lt();
        }
        else if (tokens[0] == "and")
        {
            return asmw.vm_and();
        }
        else if (tokens[0] == "or")
        {
            return asmw.vm_or();
        }
        else if (tokens[0] == "not")
        {
            return asmw.vm_not();
        }
        else if (tokens[0] == "end")
        {
            return asmw.vm_end();
        }
        else if (tokens[0] == "return")
        {
            return asmw.vm_return();
        }
    }
    else if (tokens.size() == 2)
    {
        if (tokens[0] == "label")
        {
            return asmw.vm_label(tokens[1]);
        }
        else if (tokens[0] == "goto")
        {
            return asmw.vm_goto(tokens[1]);
        }
        else if (tokens[0] == "if-goto")
        {
            return asmw.vm_if_goto(tokens[1]);
        }
    }
    else if (tokens.size() == 3)
    {
        int t2;
        try
        {
            t2 = stoi(tokens[2]);
        }
        catch (const invalid_argument &ia)
        {
            cerr << "Unable to parse int." << tokens[2];
        }
        if (tokens[0] == "push")
        {
            return asmw.vm_push(tokens[1], t2);
        }
        else if (tokens[0] == "pop")
        {
            return asmw.vm_pop(tokens[1], t2);
        }
        else if (tokens[0] == "function")
        {
            return asmw.vm_function(tokens[1], t2);
        }
        else if (tokens[0] == "call")
        {
            return asmw.vm_call(tokens[1], t2);
        }
    }
    return "";
}