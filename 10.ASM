;Write an ALP to convert the given Fahrenheit temperature to Celsius temperature
;Hint: F=C*9/5+32 or C=(F-32)*5/9


ASSUME CS:CODE, DS:DATA
DATA SEGMENT
    FHT DB 98       ;Fahrenheit   ;OR 62H    
    CLS DB ?        ;Celsius
DATA ENDS

CODE SEGMENT
START:
    MOV AX,DATA    ;why these two line are required?
    MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT (to link data segement)

    
    MOV AL,FHT
    MOV DL,32
    SUB AL,DL       ;AL = AL-DL
    
    MOV BL,5
    MUL BL          ;AL = AL*BL

    MOV CL,9
    DIV CL          ;AL = AL/CL; QUOTIENT IN AL, REMAINDER IN AH

    MOV CLS,CL


    HLT

CODE ENDS
END START