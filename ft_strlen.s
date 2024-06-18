section .bss
    count resb 4

section .text
    global ft_strlen

ft_strlen:
    push rbp
    mov rbp, rsp
    mov rcx, 0

.str_loop:
    cmp byte [rdi], 0
    je .end
    inc rdi
    inc rcx
    jmp .str_loop

.end:
    pop rbp
    mov rax, rcx
    ret


