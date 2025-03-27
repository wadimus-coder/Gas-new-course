.file "app.s 008-write"

.data
str:
    .ascii "Wadim & Oleg\n"

.text
    .globl main
main:
    endbr64
    movq %rsp,%rbp

    movq $0,%rax

    movq $1,%rdi
    movq $str,%rsi
    movq $13,%rdx
    callq write

    movq %rbp,%rsp
    movb $0,%al
    ret

