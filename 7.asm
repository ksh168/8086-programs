;write an ALP to find the nature of the roots of the quadratic equation whose coefficients are stored
;in successive memory locations and output is 
;Output:
;2000: 00 if the roots are real and equal
; 01 if the roots are real and distinct
; 02 if the roots are imaginary


ASSUME CS:CODE, DS:DATA
DATA SEGMENT
    A DB 03H
    B DB 09H
    C DB 04H
DATA ENDS

CODE SEGMENT
START:

        MOV AX,DATA    ;why these two line are required?
        MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT (to link data segement)

        
        MOV AL,A
        MOV BL,C
        MUL BL          ;A*C

        MOV BL,04H
        MUL BL          ;4*A*C

        MOV CL,AL
        MOV AL,B
        MUL AL          ;B*B

        CMP AL,CL       ;B*B - 4AC

        JE EQUAL        ;JUMP IF EQUAL
        JNC DISTINCT    ;JUMP IF NOT CARRY
        JC IMAGINARY     ;JUMP IF CARRY 

    EQUAL:
        MOV BL,00H      ;00 if the roots are real and equal
        JMP NEXT
    DISTINCT:
        MOV BL,01H      ; 01 if the roots are real and distinct
        JMP NEXT
    IMAGINARY:
        MOV BL,02H      ; 02 if the roots are imaginary
        JMP NEXT

    NEXT:
        HLT


CODE ENDS
END START