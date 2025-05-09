    .file "input.s Lesson 30"
    .text
    .global input_str
input_str:
    pushq %rbp
    movq %rsp,%rbp

    subq $16,%rsp
    movq %rsi,0(%rsp)

    movq $0,%rax
    syscall

    movq 0(%rsp),%rsi
    movb $0,0(%rsi,%rax)

    //movq %rbp,%rsp
    //popq %rbp
    leave

    retq
