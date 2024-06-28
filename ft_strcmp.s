section
section .text
    global ft_strcmp
    extern __errno_location, printf

ft_strcmp:
    mov 
    lea rdi, [rel rdi]
    call printf wrt ..plt
    ret