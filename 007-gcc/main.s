    .file "main.s"
    .data

str:
    .ascii "Wadim\n"
    .text
    .global main
main:
    movq %rsp,%rbp

    movq $1,%rax
    movq $1,%rdi
    lea str(%rip),%rsi
    movq $6,%rdx
    syscall

    movq %rbp,%rsp

    movl $0,%eax
    ret
