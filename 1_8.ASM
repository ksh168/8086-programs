;Store two 16-bit numbers in AX & BX. Divide AX and BX save the result in registers of your choice.
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
DATA ENDS

CODE SEGMENT

START:
        MOV AX,1500H
        MOV BX,0500H
        DIV BX
        NOP
        
CODE ENDS

END START