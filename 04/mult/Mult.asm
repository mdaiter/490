// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.
@0
D=M
@3
M=D
@1
D=M
@4
M=D
D=M
//Test if second is greater than first
@0
D=D-M
@LOOP1
D;JGT
@LOOP
//Else jumps into this automatically
0;JMP
(LOOP)
@3
D=M
@2
M=D+M
@4
D=M
M=M-1
D=M
@LOOP
D;JGT
@END
0;JMP
(LOOP1)
@4
D=M
@2
M=D+M
@3
D=M
M=M-1
D=M
@LOOP1
D;JGT
@END
0;JMP
(END)
@END
0;JMP
