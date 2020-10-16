;Store two 8-bit numbers in BL & DL. ADD them and save the result in CL
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
DATA ENDS

CODE SEGMENT

START:
        MOV BL,05H
        MOV DL,09H
        ADD BL,DL
        MOV CL,BL
        INT 21H              ;THIS IS REQUIRED(interrupt 21)   (can also use NOP)

CODE ENDS

END START