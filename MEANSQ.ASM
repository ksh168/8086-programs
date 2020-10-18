data segment
data ends
code segment
assume cs:code, ds:data
begin:  xor dl, dl;TO INITIALISE AL TO 0 (XOR of a no. with itself is 0)
                ;could have also written MOV DL,00H
                ;THis method is "fast"
                ;But no the original author is smart, so........

        mov si, 1000h
        mov cx,04
        l1:
        xor al, al;TO INITIALISE AL TO 0 (XOR of a no. with itself is 0)
        mov al,[si]
        mul al
        add dl, al
        inc si
        loop l1

        mov bl, 04
        xor al, al;TO INITIALISE AL TO 0 (XOR of a no. with itself is 0)
        mov al, dl
        div bl
        mov [si], al
        mov ah,4ch
        int 21h
        code ends
        end begin
