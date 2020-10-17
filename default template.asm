;

ASSUME CS:CODE, DS:DATA
DATA SEGMENT
    
DATA ENDS

CODE SEGMENT
START:
    MOV AX,DATA    ;why these two line are required?
    MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT (to link data segement)

    

    NOP

CODE ENDS
END START