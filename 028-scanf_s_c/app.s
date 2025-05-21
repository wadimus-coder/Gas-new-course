    .file "app.s 028-scanf_s_c Lesson 38"

    .section .rdata,"dr"
.LC0:
    .ascii "login :%s password :%s bank :%s\0" ;//формат входных данных
.LC1:
    .ascii "%s\n %s\n %s\0"     ;//формат выходных данных
    .data 
name:
    .space 30,0          ;//для сохранения введенных данных
password:
    .space 30,0          ;//для сохранения введенных данных
bank:
    .space 30,0

    .align 16
    .text
    .def main;.scl 2; .type 0x20;.endef
    .def scanf;.scl 2; .type 0x20;.endef
    .def printf;.scl 2;.type 0x20;.endef

    .global main
main:
    endbr64
    push %rbp
    movq %rsp,%rbp

    subq $32,%rsp   ;//выделить 32 байта на стеке перед вызовом функции
    leaq .LC0(%rip),%rcx ;//первый параметр в Windows
    leaq name(%rip),%rdx   ;// второй параметр в Windows
    leaq password(%rip),%r8
    leaq bank(%rip),%r9

    call scanf     ;//вызов scanf

    leaq .LC1(%rip),%rcx ;//форматная строка
    leaq name(%rip),%rdx
    leaq password(%rip),%r8
    leaq bank(%rip),%r9
    call printf   ;//вызов printf
    addq $32,%rsp

    xor %al,%al
    leave
    retq
