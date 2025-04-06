    .file "019a-func-directive"
    .data 
    .type str,@object
    .set str,0x402000
    .ascii "Jagur2015!\n"

    .text
    .set sys_write,1
    .set sys_exit,60
    .type _start,@function
    .global _start
_start:

    endbr64
    movq %rsp,%rbp  #prologe

    movq $sys_write,%rax
    movq $1,%rdi
    leaq str,%rsi
    movq $11,%rdx
    syscall

    movq %rbp,%rsp

    //exit
    movq $sys_exit,%rax
    movq $0,%rdi
    syscall



