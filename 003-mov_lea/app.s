.file "app.s 003"
.data
data:
       .byte 0x12
       .byte 0x34
       .word 0x5678
       .space 6,0x0

.text
.global _start
_start:

//movb 0x402000,%al
//movb %al,0x402006

//movl 0x402000,%eax
//movl %eax,0x402004

//movl $0xabcd,0x402000
//movw $0xabcd,data

movw data,%ax
movq $data,%rbx
leaq data,%rbx


//exit
movq $60,%rax
movq $1,%rdi
syscall
