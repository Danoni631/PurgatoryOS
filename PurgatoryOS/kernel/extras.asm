str_compare:
    .loop:
        mov al, [si]
        mov bl, [di]
        cmp al, bl
        jne .not_equal
        or al, al
        jz .equal
        inc si
        inc di
        jmp .loop

    .not_equal:
        clc
        ret

    .equal:
        stc
        ret

    send_serial:
        lodsb
        or al, al
        jz .done
        mov ah, 0x01
        mov dx, 0
        int 0x14
        jmp send_serial

    .done:
        ret