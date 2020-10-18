;Write an ALP to find the mean square of a data stored in successive memory locations.

ASSUME CS:CODE, DS:DATA
DATA SEGMENT
        ARR DB 01H,02H,03H,04H  ;ARRAY
DATA ENDS

CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX

        MOV AX,0000H
        MOV BL,00H

        MOV DL,04H
        MOV CL,DL
        MOV SI,00h       ;pointing SI to start of ARR 

AGAIN:
        MOV AL,ARR[SI]          ;AL = ARR[SI]
        MUL AL                 ;AL = AL*AL
        ADD BL,AL               ;BL = BL+AL
        MOV ARR[SI],AL          ;ARR[SI] = AL (REPLACE IN THE ARRAY)

        INC SI                  ;INCREMENT POINTER
                DEC DL            
        JNZ AGAIN               ;JUMP TO AGAIN LOOP IF Z != 0,(CONTINUE IN THE LOOP UNTIL Z BECOMES 0) 

        MOV AL,BL               ;AL = BL
        DIV CL                  ;AL = AL/CL
        ;AX = AH(REMAINDER) + AL(QUOTIENT)

        HLT
CODE ENDS
END START