    .file "app.s LESSON 34"
    .section .rdata, "dr"
str:
    //.ascii "Wadim & GAS in Windows 06.05.2025!\0 "
    .ascii "Вадим "
    .text
    .def main ;  .scl 2; .type 0x20; .endef
    .def printf; .scl 2; .type 0x20; .endef 
    .global main
main:
    endbr64                        #защита от ВОП
    push %rbp
    movq %rsp,%rbp                  #prologue
            ;//func printf
   // subq $32,%rsp                   #выделить 32 байта под функцию printf
   // leaq str(%rip),%rcx             #адрес начала строки загрузить в %rcx в Windows
   // callq printf                    # вызов функции printf
   // addq $32,%rsp

           ;//func write
    subq $32,%rsp

    movq $1,%rcx
    leaq str(%rip),%rdx
    movq $10,%r8
    call write

    addq $32 ,%rax


    movq %rbp,%rsp    ;//епилог
    pop %rbp   
    xor %al,%al       ;//%rax=0              
    
    retq
    
