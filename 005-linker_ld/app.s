.file "app.s 005-ld"

.data
.global str
str:
    .ascii "Wadim\n"

.text
.global _start
_start:
    movq %rsp,%rbp
/*
    movq $1,%rax
    movq $1,%rdi
    //movq $str,%rsi
    leaq str(%rip),%rsi
    movq $6,%rdx
    syscall
    */
    call print

    movq %rbp,%rsp

//exit
movq $60,%rax
movq $0,%rdi
syscall

