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
        MOV SI,0000H
        MOV AX,0000H
        MOV CL,04H
        MOV DL,CL

    SUM:
        MOV AL,ARR[SI]
        ADD BL,AL
        INC SI          ;INCREMENT POINTER
           DEC CL
    JNZ SUM         ;IF Z = 0, JUMP TO SUM

        MOV TOTAL,BL
        MOV AL,BL
        DIV DL
        
        MOV MEAN,AL         ;Remainder is AH, Quotient is AL
        
        HLT   

CODE ENDS
END START