;Write an ALP to find the no occurrence of an element in a byte array

ASSUME CS:CODE, DS:DATA
DATA SEGMENT
    ARR DB 04H,06H,09H,07H,02H,01H,04H,02H,00H,25H,0CDH,02H
    N DW 12         ;NO. OF ELEMENTS IN ARRAY

    ELE DB 02H      ;ELEMENT WHOSE OCCURENCES TO COUNT
    COUNT DB ?      ;COUNT
DATA ENDS

CODE SEGMENT
START:
        MOV AX,DATA    ;why these two line are required?
        MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT (to link data segement)

        MOV SI,0
        MOV COUNT,0        ;COUNT
        MOV CX,0        ; cx-register is set to 0

    ;FOR LOOP
    AGAIN:
        MOV AL,ARR[SI]
  
        INC SI       ;INCREMENT BECAUASE IT NEEDS TO READ 8 BIT 
        
        CMP AL,ELE
            JNZ HERE       ;IF NOT EQUAL

        INC COUNT          ;ELSE INCREMENT COUNT IF EQUAL

    HERE:          
        INC CX      ; Increment
        cmp cx,N    ; Compare cx to the limit
        jle AGAIN   ; Loop while less or equal


    MOV BL,COUNT
    

    HLT

CODE ENDS
END START