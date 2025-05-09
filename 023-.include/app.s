    .file "app.s Lesson 30"
    .include "input.s"
    .include "display.s"
    
    .data  ;//segment data
str:
    .space 10,0

    .text  ;//segment code
    .global main
    .type main,@function
main:
    endbr64

    pushq %rbp
    movq %rsp,%rbp 

    movq $1,%rdi
    leaq str(%rip),%rsi
    movq $9,%rdx
    callq input_str

    movq $1,%rdi
    leaq str(%rip),%rsi
    movq %rax,%rdx
    callq display

    leave
    retq
    




