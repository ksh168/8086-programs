;Store two 16-bit numbers in AX & BX. Multiply AX and BX save the result in CX and DX.
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
DATA ENDS

CODE SEGMENT

START:
        MOV AX,1700H
        MOV BX,0200H
        MUL BX
        MOV CX,AX
        INT 21H     ;interrupt   (can also use NOP)
        
CODE ENDS

END START