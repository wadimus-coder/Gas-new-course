    .file "app.s 013-ext_bin"

    .data 
str:
    .byte 0x41
    .byte 0x20
    .byte 0x73
    .byte 0x20
    .byte 0x6d
    .byte 0x0a

    .text
    .globl _start
_start:
 
    endbr64

    movq $1,%rax
    movq $1,%rdi
    leaq str(%rip),%rsi
    movq $6,%rdx
    syscall

//exit 
movq $60,%rax
movq $0,%rdi
syscall


/*wadim@MEGABOOK-2023:/mnt/c/GasCatalog/New_course/013-text_bin$ hexdump -C file1

00000000  20 20 20 20 2e 66 69 6c  65 20 22 61 70 70 2e 73  |    .file "app.s|
00000010  20 30 31 33 2d 65 78 74  5f 62 69 6e 22 0d 0a 0d  | 013-ext_bin"...|
00000020  0a 20 20 20 20 2e 64 61  74 61 20 0d 0a 73 74 72  |.    .data ..str|
00000030  3a 0d 0a 20 20 20 20 2e  62 79 74 65 20 30 78 34  |:..    .byte 0x4|
00000040  31 0d 0a 20 20 20 20 2e  62 79 74 65 20 30 78 32  |1..    .byte 0x2|
00000050  30 0d 0a 20 20 20 20 2e  62 79 74 65 20 30 78 37  |0..    .byte 0x7|
00000060  33 0d 0a 20 20 20 20 2e  62 79 74 65 20 30 78 32  |3..    .byte 0x2|
00000070  30 0d 0a 20 20 20 20 2e  62 79 74 65 20 30 78 36  |0..    .byte 0x6|
00000080  64 0d 0a 20 20 20 20 2e  62 79 74 65 20 30 78 30  |d..    .byte 0x0|
00000090  61 0d 0a 0d 0a 20 20 20  20 2e 74 65 78 74 0d 0a  |a....    .text..|
000000a0  20 20 20 20 2e 67 6c 6f  62 6c 20 5f 73 74 61 72  |    .globl _star|
000000b0  74 0d 0a 5f 73 74 61 72  74 3a 0d 0a 20 0d 0a 20  |t.._start:.. .. |
000000c0  20 20 20 65 6e 64 62 72  36 34 0d 0a 0d 0a 20 20  |   endbr64....  |
000000d0  20 20 6d 6f 76 71 20 24  31 2c 25 72 61 78 0d 0a  |  movq $1,%rax..|
000000e0  20 20 20 20 6d 6f 76 71  20 24 31 2c 25 72 64 69  |    movq $1,%rdi|
000000f0  0d 0a 20 20 20 20 6c 65  61 71 20 73 74 72 28 25  |..    leaq str(%|
00000100  72 69 70 29 2c 25 72 73  69 0d 0a 20 20 20 20 6d  |rip),%rsi..    m|
00000110  6f 76 71 20 24 36 2c 25  72 64 78 0d 0a 20 20 20  |ovq $6,%rdx..   |
00000120  20 73 79 73 63 61 6c 6c  0d 0a 0d 0a 2f 2f 65 78  | syscall....//ex|
00000130  69 74 20 0d 0a 6d 6f 76  71 20 24 36 30 2c 25 72  |it ..movq $60,%r|
00000140  61 78 0d 0a 6d 6f 76 71  20 24 30 2c 25 72 64 69  |ax..movq $0,%rdi|
00000150  0d 0a 73 79 73 63 61 6c  6c 0d 0a 0d 0a 0d 0a     |..syscall......|
0000015f
*/


