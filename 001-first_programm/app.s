 .file "app.s"
 .data
str:
       .ascii "Wadik\n"


       .text
       .global _start
_start:

        movq $1,%rax  ;/* sys write */
        movq $1,%rdx
        movq $str,%rsi
        movq $6,%rdx
        syscall

        // exit 
        movq $60,%rax
        movq $0,%rdi
        syscall
