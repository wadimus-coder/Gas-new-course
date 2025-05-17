    .file "app.s 025-dinamic_so ,Lesson 32"
    .data 
str:
    .space 15,0
    .text
    .global main
    .type main,@function
    
main:
    endbr64
    push %rbp
    movq %rsp,%rbp

    movq $1,%rdi
    leaq str(%rip),%rsi
    movq $14,%rdx
    callq input@PLT

    movq $1,%rdi
    leaq str(%rip),%rsi
    movq %rax,%rdx
    callq print@PLT

    leave
    xor %al,%al
    retq
        .size main,.-main

        ;//gcc app.s -o app.exe -L . ./lib_io.so
        ;//gcc app.o -o app.exe -L / /mnt/c/GasCatalog/New_course/025-dinamic_so/lib.so
                                                          