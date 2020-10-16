;Write an ALP to form a square of each element of the given byte array
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
        ARR DB 01H,03H,05H,02H,06H,08H,07H  ;ARRAY
DATA ENDS

CODE SEGMENT

START:
        MOV AX,DATA
        MOV DS,AX
        MOV CL,05H
        MOV SI,OFFSET ARR   ;ARRAY
AGAIN:
        MOV AL,[SI]
        MUL AL
        MOV [SI],AL
        INC SI
        LOOP AGAIN
        NOP
        MOV AH,4CH
        NOP
        
CODE ENDS
END START