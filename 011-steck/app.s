    .file "app.s 011-steck"

    .data
data:
    .byte 0x12
    .byte 0x34
    .word 0x1234
    .word 0x5678

    .text
    .global _start
    _start:
    movq %rsp,%rbp
    subq $9,%rsp

    //movq $data,%rcx
    leaq data,%rcx
/*
    movb 0(%rcx),%dl
    movb %dl,0(%rsp)

    movb 1(%rcx),%dl
    movb %dl,1(%rsp)

    movw 2(%rcx),%dx
    movw %dx,2(%rsp)

    movw 4(%rcx),%dx
    movw %dx,4(%rsp)
    */

    movw $0xabcd,0(%rsp)
    movl $0x3577abcd,2(%rsp)
    movb $0xff,6(%rsp)
    movw $0x12cc,7(%rsp)

    pushw $0xffab
    //subq $2,%rsp
    //movw $0xffab,0(%rsp)

    #subq $6,%rsp
    #movb $0xff,6(%rsp)

    

M:
    movq %rbp,%rsp



    //exit
    movq $60,%rax
    movq $0, %rdi
    syscall


/* as app.s -o app.o
wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/011-steck$ ld app.o -o app.exe -no-pie
wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/011-steck$ ./app.exe
wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/011-steck$ objdump -s -j .data app.exe



*/