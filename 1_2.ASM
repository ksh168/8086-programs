;Store two 16-bit numbers in AX & BX. ADD them and save the result in AX
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
DATA ENDS

CODE SEGMENT

START:
        MOV AX,1005H
        MOV BX,1009H
        ADD AX,BX
        INT 21H              ;THIS IS REQUIRED(interrupt 21)   (can also use NOP)

CODE ENDS

END START