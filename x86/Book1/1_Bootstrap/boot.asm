[org 0]
[bits 16]
        jmp 0x07C0 : start

start :
        mov ax, cs
        mov ds, ax

        mov ax, 0xB800
        mov es, ax
        mov di, 0
        mov ax, word [msgBack]
        mov cx, 0x7FF

paint :
        mov word [es:di], ax
        add di, 2
        dec cx
        jnz paint

        mov edi, 0
        mov byte [es:edi], 'E'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], 'n'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], ' '
        inc edi
        mov byte [es:edi], 0x05
        inc edi
        mov byte [es:edi], 'k'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], 'a'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], 'n'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], 'i'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], 'n'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], ' '
        inc edi
        mov byte [es:edi], 0x05
        inc edi
        mov byte [es:edi], 'o'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], 'g'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], ' '
        inc edi
        mov byte [es:edi], 0x05
        inc edi
        mov byte [es:edi], 't'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], 'o'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], ' '
        inc edi
        mov byte [es:edi], 0x05
        inc edi
        mov byte [es:edi], 'k'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], 'a'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], 't'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], 't'
        inc edi
        mov byte [es:edi], 0x03
        inc edi
        mov byte [es:edi], 'e'
        inc edi
        mov byte [es:edi], 0x03
        jmp $

msgBack db '.', 0x67

times 510-($-$$) db 0
dw 0xAA55