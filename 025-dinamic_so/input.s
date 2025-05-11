    .file "input.s Lesson32"
    .data 
    .text
    .global input
    .type input,@function
   
input:
    pushq %rbp
    movq %rsp,%rbp  ;//prologue

    movq $0,%rax
    syscall

    leave   ;//epilogue
    retq
        .size input,.-input
