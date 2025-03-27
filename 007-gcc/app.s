    .file "main.s"
    .data

str:
    .ascii "Wadim\n"
    .text
    .global main
main:
    endbr64
    movq %rsp,%rbp

    movq $1,%rax
    movq $1,%rdi
    lea str(%rip),%rsi
    movq $6,%rdx
    syscall

    movq %rbp,%rsp

    movl $0,%eax
    ret


//objdump -d main.exe  > d.txt
/* gcc app.s -o app.o
wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/007-gcc$ gcc app.o -o app.exe -no-pie
/usr/bin/ld: cannot use executable file 'app.o' as input to a link
collect2: error: ld returned 1 exit status
wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/007-gcc$ gcc -c app.s -o app.o
wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/007-gcc$ gcc app.o -o app.exe -no-pie
wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/007-gcc$ ./app.exe
*/

