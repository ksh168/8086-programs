;Store two 8-bit numbers in AL & BL. Divide AL and BL save the result in registersof your choice.
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
DATA ENDS

CODE SEGMENT

START:
        MOV AX,0016H
        MOV BL,0002H
        DIV BL          ;DIVIDE AND STORE THE RESULT IN BL
        NOP
        
CODE ENDS

END START