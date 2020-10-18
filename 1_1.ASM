;Store two 8-bit numbers in BL & DL. ADD them and save the result in CL
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
DATA ENDS

CODE SEGMENT

START:
        MOV BL,05H              ;BL = 05H
        MOV DL,09H              ;DL = 09H
        ADD BL,DL               ;BL = BL+DL
        MOV CL,BL               ;CL = BL
        ;INT 21H              ;THIS IS REQUIRED(interrupt 21)   (can also use NOP)

        HLT             ;HALT THE PROGRAM

CODE ENDS

END START