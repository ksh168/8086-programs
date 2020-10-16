ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    STRING DB 'THIS IS A SAMPLE STRING', '$'
DATA ENDS

CODE SEGMENT

START:
    MOV AX,DATA
    MOV DS,AX
    LEA DX,STRING   ;lea means least effective address
    MOV AH,09H

    INT 21H             ;THIS IS REQUIRED(interrupt 21)

    MOV AH,4CH
    
    INT 21H             ;THIS IS REQUIRED(interrupt 21)

CODE ENDS

END START