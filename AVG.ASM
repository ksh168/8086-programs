;Write an ALP to find the mean of a data stored in successive memory locations.

ASSUME CS:CODE, DS:DATA
DATA SEGMENT
        ARR DB 01H,02H,03H,04H  ;ARRAY  
        MEAN DB ?
        TOTAL DB ?
DATA ENDS

CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX

;NOW LETS CALCULATE MEAN
        ;POINT SI AT OFFSET OF ARR(BEGINNING POINTER OF ARRAY) (SI ACTS AS POINTER)
        MOV SI,00H
        MOV AL,00H      ;CLEAR AX
        MOV CL,04H       ;TAKE ARRAY SIZE IN CL 

;SUM:
 ;       ADD AL,ARR[SI]
 ;       INC SI          ;INCREMENT POINTER
 ;           DEC CL
 ;       JNZ SUM         ;IF Z = 0, JUMP TO SUM

SUM:
           ADD AL,ARR[SI]
           INC SI
LOOP SUM

        MOV TOTAL,AL
        MOV DL,TOTAL
        
        ;MOV CL,04H       ;TAKE ARRAY SIZE IN CL 
        ;DIV CL          ;DIVIDE IT BY BL

        ;MOV MEAN,AL

        ;MOV [0000H],AX     ;STORE RESULT OF DIVISION INTO MEMORY   
    NOP

CODE ENDS
END START