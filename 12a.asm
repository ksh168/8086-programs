;Write an ALP to add two ASCII numbers

ASSUME CS:CODE, DS:DATA
DATA SEGMENT
    CHAR1 DB '8'
    CHAR2 DB '4'
    RES DW ? 
DATA ENDS

CODE SEGMENT
START:
        MOV AX,DATA    ;why these two line are required?
        MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT (to link data segement)

        
        MOV AX,0000H
        MOV AL,CHAR1
        ADD AL,CHAR1
        
        AAA

        MOV RES,AX
        
     
    EXIT:     
        MOV AH,4CH
        INT 21H 

CODE ENDS
END START