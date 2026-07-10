disk_error:
    mov si, error_msg
    call print_string
    cli
    hlt

print_string:
    lodsb
    or al, al
    mov ah, 0x0E
    int 0x10
    jmp print_string
    ret

loading_msg: db "Loading PurgatoryOS kernel...", 0x0D, 0x0A, 0
error_msg: db "Disk read error!", 0xD, 0x0A, 0