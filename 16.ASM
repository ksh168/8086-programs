;. Write the GCD of two 8-bit numbers.
;Input: 1000: 12H
;1001:0CH
;Output: 2000:06H
;https://youtu.be/E01vvQd61T0


ASSUME CS:CODE, DS:DATA
DATA SEGMENT
    NUM1 DW 0012H
    NUM2 DW 000CH

    GCD DW ?
DATA ENDS

CODE SEGMENT
START:
        MOV AX,DATA    ;why these two line are required?
        MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT (to link data segement)

        
        MOV AX,NUM1
        MOV BX,NUM2

    AGAIN:
        CMP AX,BX
        JE HERE        ;IF BOTH NOS ARE EQUAL
        JG L1          ;IF AX > BX

        ;IF AX < BX THEN REPEATED SUBSTRACTION
        SUB BX,AX       ;BX = BX-AX
    JMP AGAIN

    L1:                ;ALTERNATIVE -> EXCHANGE THE NOS
        SUB AX,BX
        JMP AGAIN

    HERE:
        MOV GCD,BX

     
    EXIT:     
        MOV AH,4CH
        INT 21H 

CODE ENDS
END START