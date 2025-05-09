    .file "app.s LESSON 36"
    .section .rdata,"dr"
.LC0:
    .ascii "cdcard Samsung_256gb cost :%-10.3s $ in  %.2s today - %c 100%% \0"  ;//создание форматной строки
str:
    .ascii "forty\0"  ;//создание вставляемой строки
str1:
    .ascii "Gomel\0"
letter:
    .byte 0x77 

    .text
    .def main; .scl 2;.type 32; .endef
    .def printf ;.scl 2; .type 32;.endef
    .global main
main:
    endbr64
    push %rbp
    movq %rsp,%rbp

    subq $32,%rsp
    leaq .LC0(%rip),%rcx
    leaq str(%rip),%rdx
    leaq str1(%rip),%r8
    xor %r9,%r9  ;//обнуляем регистр %r9

    movb letter(%rip),%r9b
  
    call printf
    addq $32,%rsp

    leave
    xor %al,%al
    retq


