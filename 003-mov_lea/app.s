.file "app.s 003"
.data

       .text
       .global _start
_start:






      //exit
         movq $60,%rax
         movq $1,%rdi
         syscall
