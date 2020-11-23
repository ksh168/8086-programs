;Write an ALP to add two BCD numbers

ASSUME CS:CODE, DS:DATA
DATA SEGMENT
    A DB 13H
    B DB 59H
    RES DW ? 
DATA ENDS

CODE SEGMENT
START:
        MOV AX,DATA    ;why these two line are required?
        MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT (to link data segement)

        
        MOV AX,0000H
        MOV AL,A
        ADD CL,B
        
        ADD AL,CL
        DAA
        
    HLT 

CODE ENDS
END START