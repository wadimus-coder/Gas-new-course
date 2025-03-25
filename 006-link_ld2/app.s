.file "app.c"

.data
str:
    .ascii "Wadim\n"
.text
 .global text1
text1:

    movq %rsp,%rbp

    movq $1,%rax
    movq $1,%rdi
    movq $str,%rsi
    movq $6,%rdx
    syscall



    movq %rbp,%rsp
    //exit
    movq $60,%rax
    movq $0,%rdi
    syscall


