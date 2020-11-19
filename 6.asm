;Write an ALP to arrange the given elements of the array in ascending and descending order.
;ESSENTIALY BUBBLE SORT
;https://youtu.be/B1bkd1eBXck

;WHILE RUNNING THIS PROGRAM
;
;SEE THE "LOCATION NEXT TO AX" WHEN YOU PRESS "U CS:0000"
;THEN TYPE "D LOCATION:0"
;THEN YOU WILL SEE YOUR RESULT
;For Ex: if it's MOV AX, 076A
;then type D 076A:0


ASSUME CS:CODE, DS:DATA
DATA SEGMENT
    ARR DB 11H,99H,22H,88H,33H,77H,44H,66H  ;ARR
    COUNT DW 8         ;NO. OF ELEMENTS
DATA ENDS

CODE SEGMENT
START:
    MOV AX,DATA    ;why these two line are required?
    MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT (to link data segement)

    ;write code here
    MOV CX,COUNT    ;CX = 8
    DEC CX          ;CX = 7(WE WILL MAKE 7 COMPARISONS)

NEXTSCAN:
        MOV BX,CX   ;BX = CX
        MOV SI,0

    NEXTCOMP:
        MOV AL,ARR[SI]      ;MOVE FIRST ELEMENT INTO AL
        MOV DL,ARR[SI+1]    ;MOVE NEXT ELEMENT INTO DL
        CMP AL,DL           ;CY = 0, IF AL>DL; CY = 1, IF AL<DL

    ;IF ASCENDING    
        JC NOSWAP           ;JUMP IF CY = 1 TO NOSWAP(NO NEED TO SWAP IF AL<DL)
    ;IF DESCENDING
        ;JNC NOSWAP         

                            ;ELSE
        MOV ARR[SI],DL      ;SWAP ELEMENTS
        MOV ARR[SI+1],AL    ;

    NOSWAP:                 ;IF SWAP NOT REQUIRED
        INC SI              ;GO TO NEXT LOCATION
        DEC BX              ;WE HAVE TO LOOP 7 TIMES ; (O(N2) COMPLEXITY VISIBLE HERE -> FOR EACH LOOP, RUN IT 7 TIMES)
        JNZ NEXTCOMP        ;IF BX NOT ZERO, JUMP TO NEXTCOMP
        LOOP NEXTSCAN       ;ELSE GO TO NEXTSCAN TO SORT REMEAINING ARRAY


    HLT

CODE ENDS
END START