;Store two 8-bit numbers in AL & CL. Multiply AL and CL save the result in AX.
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
DATA ENDS

CODE SEGMENT

START:
        MOV AL,08H 
        MOV CL,03H
        MUL CL      ;AX = AL*CL
        INT 21H     ;interrupt   (can also use NOP)

CODE ENDS

END START