    .file "016-register_%rip"

    .data 
 str:
    .string "Test\n"

    .text
    .global _start
_start:

   // endbr64
    leaq (%rip),%rax
/*
    movq $1,%rax
    movq $1,%rdi
    leaq str(%rip),%rsi 
    movq $5,%rdx
    syscall
    */

    //exit
    movq $60,%rax
    movq $0,%rdi
    syscall

