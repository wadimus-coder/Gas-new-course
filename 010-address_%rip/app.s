    .file "app.s 010-address_%rip"

    .data 
data:
    .byte 0x12
    .text
    .global _start
_start:
    movb data,%al
    movb data(%rip),%al
    movb data(%rbx),%al

    //exit
    movq $60,%rax
    movq $0 , %rdi
    syscall

/*
0000000000401000 <_start>:
  401000:       8a 04 25 00 20 40 00    mov    0x402000,%al
  401007:       48 c7 c0 3c 00 00 00    mov    $0x3c,%rax
  40100e:       48 c7 c7 00 00 00 00    mov    $0x0,%rdi
  401015:       0f 05                   syscall


  app.exe:     file format elf64-x86-64


Disassembly of section .text:

0000000000401000 <_start>:
  401000:       8a 04 25 00 20 40 00    mov    0x402000,%al
  401007:       8a 05 f3 0f 00 00       mov    0xff3(%rip),%al        # 402000 <data>
  40100d:       48 c7 c0 3c 00 00 00    mov    $0x3c,%rax
  401014:       48 c7 c7 00 00 00 00    mov    $0x0,%rdi
  40101b:       0f 05                   syscall



  Breakpoint 1, 0x0000000000401000 in _start ()
(gdb) disas
Dump of assembler code for function _start:
=> 0x0000000000401000 <+0>:     mov    0x402000,%al
   0x0000000000401007 <+7>:     mov    0xff3(%rip),%al        # 0x402000
   0x000000000040100d <+13>:    mov    0x402000(%rbx),%al
   0x0000000000401013 <+19>:    mov    $0x3c,%rax
   0x000000000040101a <+26>:    mov    $0x0,%rdi
   0x0000000000401021 <+33>:    syscall
  */