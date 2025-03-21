.file "app.s"
.data
    .byte 0x12
    .byte 0x34
    .word 0x1234
    .word 0x56
    .long 0x1234
    .quad 0xabcd
    .word 0x3456

    .fill  4,2,0xabcd
    .skip  8,0x12
    .space 2,0x44

.text
    .global _start

_start:



    //exit
     movq $60,%rax
     movq $1,%rdi
     syscall





