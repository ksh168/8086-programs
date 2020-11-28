;
;This can be used as a default template for all your 8086 codes

ASSUME CS:CODE, DS:DATA
DATA SEGMENT

DATA ENDS

CODE SEGMENT
START:
        MOV AX,DATA    ;why these two line are required?
        MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT (to link data segement)

        ;write code here
    


     
    EXIT:     
        MOV AH,4CH
        INT 21H 

CODE ENDS
END START
