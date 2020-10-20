;;Write the GCD of two 8-bit numbers.
;Input: 1000: 12H   1001:0CH
;Output: 2000:06H
;https://bit.ly/35dUQIt

ASSUME CS:CODE, DS:DATA
DATA SEGMENT

DATA ENDS

CODE SEGMENT
START:
        MOV AX,DATA    ;why these two line are required?
        MOV DS,AX      ;find here -> https://bit.ly/3lMPeeT (to link data segement)

        mov bx,d2       ;initialize ax and bx 
        mov ax,d1 
  
        call gcd    ;find gcd of two numbers  
  
        mov ax,cx      ;load the gcd in ax 
  
        CALL PRINT      ;print the value 
  

    MOV AH,4CH ;interrupt to exit
    INT 21H 
  
        MAIN ENDP 
        GCD PROC 
  
    ;if
    bx is 0 
    cmp bx, 0 
    jne continue
  
    ;then gcd is ax 
    mov cx,ax 
    ret 
  
    continue: 
  
;else gcd(b, a % b) 
    xor dx, dx 
  
;divide ax by bx 
    div bx 
  
;initialize ax as bx 
    mov ax, bx 
  
;and  
bx as ax % bx 
    mov bx, dx 
  
;recursively call gcd 
    call GCD 
        ret 
            GCD ENDP 
                PRINT PROC 
  
;initilize count 
    mov cx, 0 
    mov dx, 0 

label1: 
;iF
    ax is zero 
    cmp ax,0 
    je print1 
  
;initialize bx to 10 mov bx, 10 
  
;extract the last digit 
    div bx 
  
;push it in the stack 
    push dx 
  
;increment the count 
    inc cx 
  
;set dx to 0 
    xor dx,dx 
    jmp label1 

print1: 
  
;check if count 
;is greater than zero 
    cmp cx,0 
    je exit
  
;pop the top of stack 
    pop dx 
  
;add 48 so that it 
;represents the ASCII 
;value of digits 
    add dx,48 
  
;interrupt to print a 
;character 
    mov ah,02h 
    int 21h 
  
;decrease the count 
    dec cx 
    jmp print1 
    


    HLT

CODE ENDS
END START