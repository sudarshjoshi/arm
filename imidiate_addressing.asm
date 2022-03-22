 AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN
 LDR R0, =0x00120011
 LDR R1, =0x00000003
 LDR R2, VALUE1 ;00120011
 LDR R3, VALUE2 ;00000003
 LDR R4, MEM1 ;mem location of R2
 LDR R5, MEM2 ;mem location of R3
 LDR R6, [R4] ;R6 is loaded with data on memory location pointer by R4:=(R2)
 LDR R7, [R5] ;R7 is loaded with data on memory location pointer by R5:=(R3)
 ADD R8, R0, R1 ;immediate addressing
 ADD R9, R2, R3 ;direct addressing
 ADD R10, R6, R7 ;indirect addressing 
 LDR R11, =0x00000008
 STR R10, [R11]
 AREA PROGRAM, DATA, READONLY
VALUE1 DCD &00120011 ; DCD = Define Constant Double word
VALUE2 DCD &00000003
MEM1 DCD &00000000 ;memory address of 1st location
MEM2 DCD &00000004 ;memory address of 2nd location
 
 END