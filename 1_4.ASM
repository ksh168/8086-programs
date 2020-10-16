;Store two 16-bit numbers in BX & CX. Subtract CX from BX save the result in AX.
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
DATA ENDS

CODE SEGMENT

START:
        MOV BX,5050H
        MOV CX,1100H
        SUB BX,CX
        MOV AX,BX        
        INT 21;INTERRUPT   (can also use NOP)

CODE ENDS

END START