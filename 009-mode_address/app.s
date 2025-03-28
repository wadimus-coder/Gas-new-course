.file "app.s 009-mode_address"
.data
    .byte 0x12
    .byte 0x34
    .byte 0x56
    .byte 0x78
    .word 0x1234
    .word 0x5678
 M:   .word 0xabcd
    .word 0xcdef
.text
    .global _start
_start:
    endbr64

    #1.Прямая адресация
    //movw 0x402000,%ax
    // movw M,%ax

    #2.Косвенная адресация
    //movq $0x402008,%rbx
    //movq $M,%rbx
    leaq M,%rbx

    movw (%rbx),%ax


    //exit
    movq $60,%rax
    movq $0,%rdi
    syscall

    /*wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/009-mode_address$ gcc -c app.s -o app.o
wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/009-mode_address$ gcc app.o -o app.exe -no-pie
wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/009-mode_address$ ./app.exe
wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/009-mode_address$
*/
/*
Breakpoint 1, 0x0000000000401000 in _start ()
(gdb) disassemble
Dump of assembler code for function _start:
=> 0x0000000000401000 <+0>:     endbr64
   0x0000000000401004 <+4>:     lea    0x402008,%rbx
   0x000000000040100c <+12>:    mov    (%rbx),%ax
   0x000000000040100f <+15>:    mov    $0x3c,%rax
   0x0000000000401016 <+22>:    mov    $0x0,%rdi
   0x000000000040101d <+29>:    syscall
   */
   
