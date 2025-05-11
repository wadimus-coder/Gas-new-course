.file "input.s Lesson 32"
    .text
    .global input
input:
    pushq %rbp
    mov %rsp,%rbp

    movq $0,%rax
    syscall

    leave
    retq
