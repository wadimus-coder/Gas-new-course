.data

str: .ascii "Wadim\n"
str1: .ascii "Daha\n"
addr: 
     //.quad 0x401023

     .quad 0

.text       ;//начало кода
.global _start
_start:
     //jmp M
     //jmp 0x401023 ;//первый вариант
     //jmp *addr    ;//второй вариант

     // movq $M,addr ;//третий вариант
     // jmp *addr

     //movq $M,%rax    ;//четвертый вариант
     //jmp *%rax

     movq %rsp,%rbp  ;//пятый вариант
     movq $M,-8(%rbp)
     jmpq * -8(%rbp)

    movq $1,%rax
    movq $1,%rdi
    movq $str,%rsi
    movq $5,%rdx
    syscall

M:
    movq $1,%rax
    movq $1,%rdi
    movq $str1,%rsi
    movq $5,%rdx
    syscall

;//exit
movq $60,%rax
movq $0,%rdi
syscall
