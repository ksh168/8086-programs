;Write an ALP to find the number of 1's in a "word"(16bits) stored in "consecutive memory locations"(because 2 registers will hold 16 bits together)
;https://youtu.be/2Cl5684P45Q
;23h -> 0010 0011  (bit manipulation)  no of ones->3
;rol, shift operation, jmp on carry

ASSUME CS:CODE, DS:DATA
DATA SEGMENT
     NUM DW 01FFH   ;0 is added if first digit is an alphabet
     COUNT DW ?     ;count(not intialised)
DATA ENDS

CODE SEGMENT
START:
     MOV AX,DATA    ;why these two line are required?
     MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT

                    ;NUM = 005F -> 0101 1111(for 8 bits only)
     MOV AX,NUM     ;16 bit num (F1FFH -> 13 ones)     
     MOV CX,10H     ;counter for rotating 16 times(to iterate over all bits)
     MOV BX,00H     ;initialise count as 0(no. of 1s)

AGAIN:              ;this loop will run "CX" times
     SHR AX,1       ;shift right AL by 1 bit
     JNC NOADD      ;if no carry(carry flag(cy) is not 1) -> jump to NOADD 
     INC BX         ;else if carry flag(cy) is 1 -> count++
NOADD: LOOP AGAIN   ;it's like a continue statement in a loop(so the value of BX will not be incremented)

     MOV COUNT,BX   ;store count in BL reg.
     NOP

CODE ENDS
END START