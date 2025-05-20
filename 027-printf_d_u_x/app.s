    .file "027-printf_d_U_x Lesson 37"

    .section .rodata
.LC0 :
    .ascii " My number is : %#012x\0"

    .text
    .def main;.scl 2 ;.type 32;.endef
    .def printf;.scl 2; .type 32;.endef
    .global main
main:
    endbr64
    pushq %rbp
    movq %rsp,%rbp

    subq $32,%rsp
    leaq .LC0(%rip),%rcx
    movq $0x1991,%rdx
    call printf
    add $32,%rsp


    leaveq
    retq
        

