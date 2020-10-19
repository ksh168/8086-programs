;Write an ALP to form a square of each element of the given byte array
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
        ARR DB 01H,03H,05H,02H,06H,08H,07H      ;ARRAY
        ;DB->define byte(8bit), DW->define word(16bit)
DATA ENDS

CODE SEGMENT

START:
        MOV AX,DATA
        MOV DS,AX
        ;POINT SI AT OFFSET OF ARR(BEGINNING POINTER OF ARRAY) (SI ACTS AS POINTER)
        MOV SI,00h      ;int i = 0      ;SI->pointer
        MOV CL,07H       ;TAKE ARRAY SIZE IN CL(size->N) 
        
AGAIN:
        MOV AL,ARR[SI]     ;LOAD DATA FROM MEMORY TO AL         ;arr[i]
        MUL AL          ;AL = AL*AL
        MOV ARR[SI],AL     ;STORE AL TO MEMORY POINTED BY SI (replace)
        INC SI          ;INCREMENT POINTER (MOVE TO NEXT ADDRESS)
LOOP AGAIN              ;LOOP ENDS(I GUESS...?)

        HLT
        
CODE ENDS
END START