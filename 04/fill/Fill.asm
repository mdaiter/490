// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.
//Storage bit - counter for rows
@0
D=M
M=D
//Storage bit - counter for columns
@1
D=M
M=D
@CHECKINIT
0;JMP

(CHECKINIT)
@24576
D=M
@WHITEINIT
D;JEQ
@BLACKINIT
D;JGE


//Method to check if keyboard is pressed
(CHECK)
//Register for keyboard
@24576
D=M
//If 0, jump to white
@WHITE
D;JEQ
//If 1, jump to black
@BLACK
D;JGT
//Else, freak out???

(WHITEINIT)
@0
M=0
@1
M=0
@WHITE
0;JMP

(BLACKINIT)
@0
M=0
@1
M=0
@BLACK
0;JMP

//Method to fill white
(WHITE)
@SCREEN
//Fill with white
M=0
//Check row size; if overflow, jump to new column
@0
D=M
M=D+1
@CHECK
0;JMP

(BLACK)
@SCREEN
M=0
@0
D=M
M=D+1
@CHECK
0;JMP

