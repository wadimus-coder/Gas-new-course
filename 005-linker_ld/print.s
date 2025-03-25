.file "print.s"

.text
.global print
print:
    movq $1,%rax
    movq $1,%rdi
    movq $str,%rsi
    movq $6,%rdx
    syscall
    ret
