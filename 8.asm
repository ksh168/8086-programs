; Write an ALP to count the number of elements in a word array with the end of the array
; marked by 0000H

ASSUME CS:CODE, DS:DATA
DATA SEGMENT
	ARR DW 0001H,0003H,0005H,0009H,00C0H,0000H			;array
	COUNT DW ?
DATA ENDS

CODE SEGMENT
START:
		MOV AX,DATA    ;why these two line are required?
		MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT (to link data segement)


		MOV SI,0
		MOV COUNT,0        ;COUNT

	;HERE WE ARE USING A WHILE LOOP
	AGAIN:
		MOV AX,ARR[SI]

		INC COUNT
		ADD SI,02       ;INCREMENT BY 02 BECAUASE IT NEEDS TO READ 16 BIT DATA NOT 8 BIT

		CMP AX,0000H

		JNZ AGAIN

	NEXT:
		MOV BX,COUNT


	HLT

CODE ENDS
END START