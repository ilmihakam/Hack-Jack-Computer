// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//Initialize R2 to 0
@R2
M=0

//If R2 = 0, skip the loop
@R0
D=M
@END
D;JEQ

(LOOP)
@R1
D=M
@DONE
D;JEQ

@R0
D=M
@R2
M=D+M

@R1
M=M-1

@LOOP
0;JMP

(DONE)
@END
0;JMP

(END)
@END
0;JMP
