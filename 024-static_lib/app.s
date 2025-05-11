    .file "app.s Lesson 31"
    .data 
str:
    .space 10,0

    .text
    .global main
main:
    endbr64
    pushq %rbp
    movq %rsp,%rbp

    movq $1,%rdi
    leaq str(%rip),%rsi
    movq $9,%rdx
    call input

    movq $1,%rdi
    leaq str(%rip),%rsi
    movq %rax,%rdx
    call display

    leave
    xor %al,%al
    retq

    ;//ar rs lib_io.a  input.o display.o 
    ;//  gcc app.s -o app.exe -L . lib_io.a
