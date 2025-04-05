.file "app.s 018-tab_simbols LESSON 21"
.data 
    .type str, @object
str: 
    .ascii "Lampanel & Masm\n"

    .text
    .global main
    .type _main, @function
main:

    endbr64    #defense from rop

    movq %rsp,%rbp   #prolog
     /*
    movq $1, %rax
   
    movq $1,%rax
    movq $1, %rdi
    leaq str(%rip),%rsi
    movq $16,%rdx
    syscall

    movq %rbp,%rsp #epilog

    movb $0,%al
    retq

/*
 gcc -c app.s -o app.o
 ld app.o -o app.exe
 readelf -s app.exe

Symbol table '.symtab' contains 7 entries:
   Num:    Value          Size Type    Bind   Vis      Ndx Name
     0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND
     1: 0000000000000000     0 FILE    LOCAL  DEFAULT  ABS app.s 018-tab_si[...]
     2: 0000000000402000     0 NOTYPE  LOCAL  DEFAULT    2 str
     3: 0000000000401000     0 NOTYPE  GLOBAL DEFAULT    1 _start
     4: 0000000000402010     0 NOTYPE  GLOBAL DEFAULT    2 __bss_start
     5: 0000000000402010     0 NOTYPE  GLOBAL DEFAULT    2 _edata
     6: 0000000000402010     0 NOTYPE  GLOBAL DEFAULT    2 _end


    Symbol table '.symtab' contains 7 entries:
   Num:    Value          Size Type    Bind   Vis      Ndx Name
     0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND
     1: 0000000000000000     0 FILE    LOCAL  DEFAULT  ABS app.s 018-tab_si[...]
     2: 0000000000402000     0 OBJECT  LOCAL  DEFAULT    2 str
     3: 0000000000401000     0 FUNC    GLOBAL DEFAULT    1 _start
     4: 0000000000402010     0 NOTYPE  GLOBAL DEFAULT    2 __bss_start
     5: 0000000000402010     0 NOTYPE  GLOBAL DEFAULT    2 _edata
     6: 0000000000402010     0 NOTYPE  GLOBAL DEFAULT    2 _end
     */

