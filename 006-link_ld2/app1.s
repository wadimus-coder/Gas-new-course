.data
str:
    .ascii "Saha\n"
.text
 .global text2
text2:

    movq %rsp,%rbp

    movq $1,%rax
    movq $1,%rdi
    movq $str,%rsi
    movq $5,%rdx
    syscall

    movq %rbp,%rsp

    //exit
    movq $60,%rax
    movq $0,%rdi
    syscall

