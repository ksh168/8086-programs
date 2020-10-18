;Write an ALP to find the mean of a data stored in successive memory locations.

ASSUME CS:CODE, DS:DATA
DATA SEGMENT
        ARR DB 01H,02H,03H,04H  ;ARRAY  
        TOTAL DB ?  
        MEAN Db ?
DATA ENDS

CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX

        MOV SI,0000H
        MOV AX,0000H
        MOV CL,04H
        MOV DL,CL
        
    AGAIN:
        MOV AL,ARR[SI]
        ADD BL,AL
        INC SI
            DEC CL
        JNZ AGAIN
        
        MOV TOTAL,BL
        MOV AL,BL
        DIV DL
        
        MOV MEAN,AL
        
        HLT 
CODE ENDS
END START