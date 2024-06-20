section .bss
    fd resq 1
    count resq 1
    buffer resb 100

section .text
    global ft_write

ft_write:
    push rbp
    mov rbp, rsp

    mov rax, 1
    syscall
    ret
.error:
    mov rax, -1
    leave