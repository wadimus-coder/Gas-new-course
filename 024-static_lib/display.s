    .file "display.s Lesson 32"
    .text
    .global display
display:
    pushq %rbp
    movq %rsp,%rbp

    movb $0x23,-2(%rsi,%rdx)

    movq $1,%rax
    syscall

    leave
    retq
