;Store two 8-bit numbers in CL & DL. Subtract DL from CL save the result in CL
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
DATA ENDS

CODE SEGMENT

START:
        MOV CL,08H
        MOV DL,01H
        SUB CL,DL
        INT 21;INTERRUPT   (can also use NOP)

CODE ENDS

END START