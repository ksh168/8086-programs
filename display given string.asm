;Display a given string
;https://youtu.be/WwmY5GBUiNM

ASSUME CS:CODE, DS:DATA
DATA SEGMENT
    TEXT DB 'Hello World$'
DATA ENDS

CODE SEGMENT
START:
    MOV AX,DATA    ;why these two line are required?
    MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT (to link data segement)

    MOV DX,OFFSET TEXT  ;DX<= start address of string
    MOV AH,09H          ;define length of string
    
    NOP

CODE ENDS
END START