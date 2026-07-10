main_loop:
    mov si, prompt
    call print_string
    
    mov di, cmd_buffer
    call read_string

    mov si, cmd_buffer
    mov di, cmd_help
    call str_compare
    jc .show_help

    mov si, cmd_buffer
    mov di, cmd_status
    call str_compare
    jc .show_status

    mov si, cmd_buffer
    mov di, cmd_reboot
    call str_compare
    jc reboot

    mov si, cmd_buffer
    mov di, cmd_shutdown
    call str_compare
    jc shutdown

    mov si, msg_unknown
    call print_string
    jmp main_loop

.show_help:
    mov si, msg_help_text
    call print_string
    jmp main_loop

.show_status:
    mov si, msg_status_text
    call print_string
    mov si, msg_serial_log
    call send_serial
    jmp main_loop