    .file "app.s 012-ascii_string"

    .data 
str:
    .string "Wadim & "
    .ascii "Grusha\n"
    .byte 0x74
    .byte 0x65
    .byte 0x73
    .byte 0x74
    .byte 0x0a
    .asciz "GasAsm\n"

    .text

    endbr64
    .global _start
_start:
    movq $1,%rax
    movq $1,%rdi
    leaq str(%rip),%rsi
    movq $28,%rdx
    syscall


    //exit
    movq $60,%rax
    movq $0,%rdi
    syscall


    /*g$ as app.s -o app.o
wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/012-ascii_string$ ld app.o -o app.exe -no-pie
wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/012-ascii_string$ objdump -s -j .data app.exe

app.exe:     file format elf64-x86-64

Contents of section .data:
 402000 57616469 6d202620 47727573 68610a00  Wadim & Grusha..
wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/012-ascii_string$

Contents of section .data:
 402000 57616469 6d202620 00477275 7368610a  Wadim & .Grusha.
 402010 74657374 0a476173 41736d0a 00        test.GasAsm..
*/

