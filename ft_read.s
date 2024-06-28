;rdi = file descriptor
;rsi = buffer
;rdx = count
section .data
    fmt db "oy", 0

section .bss
    var_8 resb 1
    buf resb 8

section .text
    global main
    extern __errno_location, printf

main:
    call ft_read
    ret

ft_read:
    mov rbx, buf
    mov rax, 3
    mov rdi, 0
    lea rsi, byte [var_8]
    mov rdx, 1
    syscall

    mov al, byte [var_8]
    mov byte [rbx], al
    inc rbx
    mov byte [rbx], 0

    mov rax, 1
    mov rdi, 1
    lea rsi, [buf]
    mov rdx, 2
    syscall
    ret
.error:
    leave