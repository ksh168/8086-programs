ASSUME CS:CODE, DS:DATA

DATA SEGMENT
        N1 DB 01H,02H,03H,04H,05H
DATA ENDS

CODE SEGMENT

START:
        MOV AX,DATA
        MOV DS,AX
        MOV CL,05H
        MOV SI,OFFSET N1
AGAIN:
        MOV AL,[SI]
        MUL AL
        MOV [SI],AL
        INC SI
        LOOP AGAIN
        NOP
        MOV AH,4CH
        
        INT 21H                         ;THIS IS REQUIRED(interrupt 21)

CODE ENDS
END START