    .file "display.s Lesson 30"
    .text
    .global display
display:
    pushq %rbp
    movq %rsp,%rbp

    movq $1,%rax
    syscall

    popq %rbp
    retq
