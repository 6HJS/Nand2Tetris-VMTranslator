# Nand2Tetris-VMTranslator

Part of the code is based on benvenutti's work at: https://github.com/benvenutti/nand2tetris

language: c++17

compiler: Mingw32 g++

tested on: Windows 10.0.19044

Compile: g++ ./*.cpp -o VMTranslator.exe

Execute: ./VMTranslator.exe VMsource.vm [ASMgenerated.asm]
