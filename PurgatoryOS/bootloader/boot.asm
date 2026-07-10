[bits 16]
[ORG 0x7C00]

xor ax, ax
mov ds, ax
mov es, ax
mov ss, ax
mov sp, 0x7C00

mov si, loading_msg
call print_string

mov ah, 0x00
int 0x13

mov bx, 0x1000
mov al, 4
mov ch, 0
mov cl, 2
mov dh, 0

int 0x13
jc disk_error

%include "PurgatoryOS/bootloader/auxiliars.asm"

times 510- ($ - $$) db 0x00
dw 0xAA55