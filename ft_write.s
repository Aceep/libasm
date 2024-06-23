section .bss
    fd resq 1
    count resq 1
    buffer resb 100

section .text
    global ft_write
    extern __errno_location

ft_write:
    cmp rdi, 1
    jne .error

    cmp rdx, 0
    jle .error

    mov rax, 1
    syscall
    call __errno_location wrt ..plt
    ret
.error:
    mov rax, -1
    leave