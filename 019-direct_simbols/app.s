    .file "app.s 019-direct_simbolls LESSON 22"
    .data 
    .type str,@object
    //.equ str,0x402000
     // .set str,0x402000
      //str = 0x402000
      .equiv str,0x402000 #diractive
#str:
    .ascii "Wadim!\n"
str1:                     #metka
    .ascii "Haifa!\n"

    .text
    .type _start , @function
    .global _start
_start:
    endbr64
    movq %rsp,%rbp      #prolog

    movq $1,%rax
    movq $1,%rdi
    leaq str,%rsi
    movq $7,%rdx
    syscall

    //.equ str,0x402007
    //.set str ,0x402007
    //  str = 0x402007
    //.equiv str1,0x402007
    movq $1,%rax
    movq $1,%rdi
    leaq str1(%rip),%rsi
    movq $7,%rdx
    syscall

    movq %rbp,%rsp

    //exit
    movq $60,%rax
    movq $0,%rdi
    syscall

/*
$ readelf -s app.exe

Symbol table '.symtab' contains 8 entries:
   Num:    Value          Size Type    Bind   Vis      Ndx Name
     0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND
     1: 0000000000000000     0 FILE    LOCAL  DEFAULT  ABS app.s 019-direct[...]
     2: 0000000000402000     0 OBJECT  LOCAL  DEFAULT  ABS str
     3: 0000000000402007     0 NOTYPE  LOCAL  DEFAULT    2 str1
     4: 0000000000401000     0 FUNC    GLOBAL DEFAULT    1 _start
     5: 000000000040200e     0 NOTYPE  GLOBAL DEFAULT    2 __bss_start
     6: 000000000040200e     0 NOTYPE  GLOBAL DEFAULT    2 _edata
     7: 0000000000402010     0 NOTYPE  GLOBAL DEFAULT    2 _end




     */
