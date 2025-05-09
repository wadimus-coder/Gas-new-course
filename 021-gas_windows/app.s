    .file "app.s LESSON 34"
    .section .rdata, "dr"
str:
    .ascii "Wadim & GAS in Windows 06.05.2025!\0 "
    .text
    .def main ;  .scl 2; .type 0x20; .endef
    .def printf; .scl 2; .type 0x20; .endef 
    .global main
main:
    endbr64
    push %rbp
    movq %rsp,%rbp                  #prologue

    subq $32,%rsp                   #выделить 32 байта под функцию printf
    leaq str(%rip),%rcx             #адрес начала строки загрузить в %rcx в Windows
    callq printf                    # вызов функции printf
    addq $32,%rsp

    movq %rbp,%rsp
    pop %rbp
    xor %al,%al
    #movb $0,%al
    retq
    
