    .file "print.s 025-dinamic_so ,Lesson32 "
    .data 
    .text
    .global print
    .type print,@function
   
 print:
    push %rbp
    movq %rsp,%rbp

    movb $0x23,-2(%rsi,%rdx)
    movq $1,%rax
    syscall

    leave
    retq
        .size print,.-print
