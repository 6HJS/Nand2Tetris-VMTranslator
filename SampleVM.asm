	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@2 // push constant 2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // add
	AM=M-1
	D=M
	A=A-1
	M=D+M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // add
	AM=M-1
	D=M
	A=A-1
	M=D+M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@32767 // push constant 32767
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // add
	AM=M-1
	D=M
	A=A-1
	M=D+M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@2 // push constant 2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // sub
	AM=M-1
	D=M
	A=A-1
	M=M-D

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@2 // push constant 2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // sub
	AM=M-1
	D=M
	A=A-1
	M=M-D

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@32767 // push constant 32767
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // sub
	AM=M-1
	D=M
	A=A-1
	M=M-D

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // sub
	AM=M-1
	D=M
	A=A-1
	M=M-D

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // neg
	A=M
	A=A-1
	M=-M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // neg
	A=M
	A=A-1
	M=-M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@32767 // push constant 32767
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // neg
	A=M
	A=A-1
	M=-M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // eq
	AM=M-1
	D=M
	@SP
	AM=M-1
	D=M-D
	@JGT_TRUE_./SampleV_0
	D;JEQ
	D=0
	@JGT_FALSE_./SampleV_0
	0;JMP
(JGT_TRUE_./SampleV_0)
	D=-1
(JGT_FALSE_./SampleV_0)
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // eq
	AM=M-1
	D=M
	@SP
	AM=M-1
	D=M-D
	@JGT_TRUE_./SampleV_1
	D;JEQ
	D=0
	@JGT_FALSE_./SampleV_1
	0;JMP
(JGT_TRUE_./SampleV_1)
	D=-1
(JGT_FALSE_./SampleV_1)
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // eq
	AM=M-1
	D=M
	@SP
	AM=M-1
	D=M-D
	@JGT_TRUE_./SampleV_2
	D;JEQ
	D=0
	@JGT_FALSE_./SampleV_2
	0;JMP
(JGT_TRUE_./SampleV_2)
	D=-1
(JGT_FALSE_./SampleV_2)
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // gt
	AM=M-1
	D=M
	@SP
	AM=M-1
	D=M-D
	@JGT_TRUE_./SampleV_3
	D;JGT
	D=0
	@JGT_FALSE_./SampleV_3
	0;JMP
(JGT_TRUE_./SampleV_3)
	D=-1
(JGT_FALSE_./SampleV_3)
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // gt
	AM=M-1
	D=M
	@SP
	AM=M-1
	D=M-D
	@JGT_TRUE_./SampleV_4
	D;JGT
	D=0
	@JGT_FALSE_./SampleV_4
	0;JMP
(JGT_TRUE_./SampleV_4)
	D=-1
(JGT_FALSE_./SampleV_4)
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // gt
	AM=M-1
	D=M
	@SP
	AM=M-1
	D=M-D
	@JGT_TRUE_./SampleV_5
	D;JGT
	D=0
	@JGT_FALSE_./SampleV_5
	0;JMP
(JGT_TRUE_./SampleV_5)
	D=-1
(JGT_FALSE_./SampleV_5)
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // lt
	AM=M-1
	D=M
	@SP
	AM=M-1
	D=M-D
	@JLT_TRUE_./SampleV_6
	D;JLT
	D=0
	@JLT_FALSE_./SampleV_6
	0;JMP
(JLT_TRUE_./SampleV_6)
	D=-1
(JLT_FALSE_./SampleV_6)
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // lt
	AM=M-1
	D=M
	@SP
	AM=M-1
	D=M-D
	@JLT_TRUE_./SampleV_7
	D;JLT
	D=0
	@JLT_FALSE_./SampleV_7
	0;JMP
(JLT_TRUE_./SampleV_7)
	D=-1
(JLT_FALSE_./SampleV_7)
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // lt
	AM=M-1
	D=M
	@SP
	AM=M-1
	D=M-D
	@JLT_TRUE_./SampleV_8
	D;JLT
	D=0
	@JLT_FALSE_./SampleV_8
	0;JMP
(JLT_TRUE_./SampleV_8)
	D=-1
(JLT_FALSE_./SampleV_8)
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // and
	AM=M-1
	D=M
	A=A-1
	M=D&M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // and
	AM=M-1
	D=M
	A=A-1
	M=D&M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // and
	AM=M-1
	D=M
	A=A-1
	M=D&M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // or
	AM=M-1
	D=M
	A=A-1
	M=D|M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // or
	AM=M-1
	D=M
	A=A-1
	M=D|M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // or
	AM=M-1
	D=M
	A=A-1
	M=D|M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // not
	A=M
	A=A-1
	M=!M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // not
	A=M
	A=A-1
	M=!M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@32767 // push constant 32767
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // not
	A=M
	A=A-1
	M=!M

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

(myFunc) // function myFunc 2
	@SP
	AM=M+1
	A=A-1
	M=0
	@SP
	AM=M+1
	A=A-1
	M=0

	@42 // push constant 42
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@LCL // return
	D=M
	@R13
	M=D
	@R13
	D=M
	@5
	A=D-A
	D=M
	@R14
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@R13
	D=M
	@1
	A=D-A
	D=M
	@THAT
	M=D
	@R13
	D=M
	@2
	A=D-A
	D=M
	@THIS
	M=D
	@R13
	D=M
	@3
	A=D-A
	D=M
	@ARG
	M=D
	@R13
	D=M
	@4
	A=D-A
	D=M
	@LCL
	M=D
	@R14
	A=M
	0;JMP

(END) // END loop
	@END
	0;JMP

