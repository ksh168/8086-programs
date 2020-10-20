;Write an ALP using the loop instructions with indirect addressing that "copies"(not inplace)
;a string from source to target reversing the character order in the process.
;Input: “This is the string”
;Output: “gnirts eht si siht”

;https://youtu.be/aOheFNXcIRI


ASSUME CS:CODE, DS:DATA
DATA SEGMENT
    STR1 DB 'HELLO THERE!'      ;INPUT STRING: 'HELLO THERE!'
                                ;OUTPUT STRING: '!EREHT OLLEH'
    STR2 DB 12 DUP(?)           ;DUP->DUPLICATE

    COUNT DW 12
DATA ENDS

CODE SEGMENT
START:
        MOV AX,DATA    ;why these two line are required?
        MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT (to link data segement)
                        ;SI BY DEFAULT USES DS
                        ;DI BY DEFAULT USES ES
        MOV ES,AX       ;BECAUSE WE WANT TO USE BOTH SI AND DI REGISTERS

        MOV CX,COUNT    ;CX = 12

        MOV SI,00       ;(POINTS AT FIRST MEMORY LOCATION IN STR1)
        MOV DI,00       ;(POINTS AT FIRST MEMORY LOCATION IN STR2)

        ADD DI,COUNT    ;DI = DI+COUNT (POINTS AT NEXT TO LAST MEMORY LOCATION(NULL) IN STR2)
        DEC DI          ;NOW IT POINTS TO LAST LOCATION IN STR2

    AGAIN:                  ;WILL EXECUTE CX TIMES
        MOV AL,STR1[SI]      ;AL = STR1[SI]
        MOV STR2[DI],AL      ;PUT FIRST OF STR1 IN LAST LOCATION OF STR2
        
        INC SI
        DEC DI
        ;DEC CX         ;NO NEED TO WRITE THIS, IT'S DECREMENTED AUTOMATICALLY 
    LOOP AGAIN


    HLT

CODE ENDS
END START