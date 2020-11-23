;A company makes several parts. Each part is coded below. The code is 16-bit width with 4-bits for
;part number and 8-bits for serial number. Find the total number of items with part number=4
;Model No. Part No, Serial No.
;4-bit 4-bit 8-bit

ASSUME CS:CODE, DS:DATA

DATA SEGMENT
DATA ENDS

CODE SEGMENT
START:
        MOV SI,1000H
        MOV CL,[SI] 
        
        INC SI 
        MOV BL,00H 
        
    BACK: 
        MOV AX,[SI]
        MOV AL,OFH 
        AND AH,AL 
        MOV AL,04H 
        CMP AH,AL 
        JNZ L1 
        
        INC BL 
    L1: 
        ADD SI,02H 
        LOOP BACK 
        MOV SI,1020H 
        MOV [SI],BL 

        HLT
CODE ENDS 
END START 
