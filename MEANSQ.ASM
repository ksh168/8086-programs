data segment
data ends
code segment
assume cs:code, ds:data
begin:  xor dl, dl
        mov si, 1000h
        mov cx,04
        l1:
        xor al, al
        mov al,[si]
        mul al
        add dl, al
        inc si
        loop l1

        mov bl, 04
        xor al, al
        mov al, dl
        div bl
        mov [si], al
        mov ah,4ch
        int 21h
        code ends
        end begin
