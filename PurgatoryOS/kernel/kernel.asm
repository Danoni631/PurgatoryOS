[ORG 0x0000]

kernel_main:
    mov ax, 0x1000
    mov ds, ax
    mov es, ax

    mov ah, 0x00
    mov al, 0xE3
    mov dx, 0
    int 0x14

    mov si, msg_welcome
    call print_string

%include "PurgatoryOS/drivers/kb.asm"
%include "PurgatoryOS/drivers/qemu.asm"
%include "PurgatoryOS/graphics/print.asm"
%include "PurgatoryOS/kernel/shell.asm"
%include "PurgatoryOS/kernel/extras.asm"
%include "PurgatoryOS/kernel/data.asm"