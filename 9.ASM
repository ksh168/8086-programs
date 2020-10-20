;Write an ALP to find the largest element and lowest element of the given byte array.
;https://youtu.be/-eGM_EIn_Hw


ASSUME CS:CODE, DS:DATA
DATA SEGMENT
    ARR DB 34H,67H,89H,12H,55H,90H,0CDH,23H,67H,88H     ;ARRAY
    COUNT DW 10     ;IN DECIMAL NOT HEX (10H -> 16)

    LARGEST DB ?
    SMALLEST DB ?
DATA ENDS

CODE SEGMENT
START:
        MOV AX,DATA    ;why these two line are required?
        MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT (to link data segement)


        MOV SI,00
        MOV CX,COUNT        ;CX->SIZE OF ARR = 10
        MOV BL,ARR[SI]

        MOV DL,ARR[SI]

        DEC CX              ;CX = 9

    AGAIN:
        INC SI              ;INCREMENT POINTER

        ;LARGEST
        CMP BL,ARR[SI]      
            ;JNC NOSWAP     ;IF ARR[SI] IS SMALLER, (JUMP IF NO CARRY) DON'T SWAP
            JNC HERE        ;IF ARR[SI] IS SMALLER, (JUMP IF NO CARRY) DON'T SWAP AND JUMP TO WORK ON SMALLEST

        MOV BL,ARR[SI]      ;ELSE IT'S BIGGER, SWAP IT

    HERE:    
        ;SMALLEST 
        CMP DL,ARR[SI]      
            JC NOSWAP       ;IF ARR[SI] IS SMALLER, (JUMP IF CARRY) SWAP

         MOV DL,ARR[SI]      ;ELSE IT'S SMALLER, SWAP IT     
    
    NOSWAP: LOOP AGAIN      ;SORTA LIKE CONTINUE STATEMENT


        MOV LARGEST,BL
        MOV SMALLEST,DL
        

    HLT

CODE ENDS
END START