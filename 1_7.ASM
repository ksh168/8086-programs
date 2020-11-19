;Store two 8-bit numbers in AL & BL. Divide AL and BL save the result in registersof your choice.
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
	A DB 28h
	B DB 02h
DATA ENDS

CODE SEGMENT

START:
		MOV AX,DATA
		MOV DS,AX
		
		MOV AX,0000H
		MOV BX,0000H

		MOV AL,A
		MOV BL,B
		DIV B         ;DIVIDE AND STORE THE RESULT IN AL
   
    
    HLT

CODE ENDS

END START