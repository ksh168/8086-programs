;Write an ALP to convert a hexadecimal to decimal number
;https://bit.ly/3kfLjXr


ASSUME DS:DATA,CS:CODE

DATA SEGMENT
     NUM DW 1234H
     RES  DB 10 DUP ('$')       ;declaration of Array initialized with ‘$’ which works as New Line Character. $ is used as (\n) NULL character in C program.
                                ;Here 10 DUP (‘$’) stands for N i.e. Size of Array or Array Size. DUP stands for Duplicate i.e. it will duplicate the value in All the Array with the value present in Bracket (i.e. $).
DATA ENDS
CODE SEGMENT
 
START:       
        MOV AX,DATA
        MOV DS,AX
   
        MOV AX,NUM
      
        LEA SI,RES          ;initialize RES to SI register  -> Load Effective Address of RES variable to SI Register. 
        CALL HEX2DEC        ;Call Procedure(FUNCTION) HEX2DEC
   
        LEA DX,RES          ;alternative ->MOV DX, OFFSET RES 
        MOV AH,9            ;PRINT the String or Message of the address present in DX register.
        INT 21H
         
    EXIT:     
        MOV AH,4CH
        INT 21H        
CODE ENDS       
       
;DEFINING A FUNCTION OUTSIDE
HEX2DEC PROC NEAR   ;NEAR is used to call the Procedure within the program whereas FAR is used to call the procedure outside the program

        MOV CX,0    ;divide the number till the Quotient BECOMES 0
        MOV BX,10   ;divide hexa number by 10.
   
    LOOP1: 
        MOV DX,0    ;CLEAR DX

        DIV BX      ;AX->QUOTIENT, DX->REMAINDER
        ;Remainder will be Decimal Digit and will always be less than 10 so the value will be in DL register only
        ;to make it printable on Console (Screen) we have to add 30H So that it will become a ASCII character and will be saved in Charater Array and will be printed as String later
        ADD DL,30H

        PUSH DX
        ;CX register as a counter and counting the numbers of digits in their ASCII form which are pushed into Stack. So that the same count will help to POP the values out of Stack.
        INC CX
 
        CMP AX,9
        JG LOOP1    ;Jump if AX greater THAN 9
     
        ADD AL,30H
        MOV [SI],AL
     
    LOOP2: 
        POP AX
        INC SI

        MOV [SI],AL

        LOOP LOOP2      ;end of loop

        RET             ;RETURN, THIS instruction is used only if  the control is been passed to the code outside Main like to Procedure. this return the control to the place where the Procudure was called.
HEX2DEC ENDP                ;PROCEDURE ENDS
   
END START                   ;PROGRAM ENDS