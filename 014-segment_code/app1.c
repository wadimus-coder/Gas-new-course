#include <stdio.h>
// const int printf(char *format, ...);

int main(void)
{
    int wad = 1961;
    void *vptr = &wad;

    printf(" The value at vptr an int is : %d\n ", *((int *)vptr));
    printf("The value at vptr an char in 0x is : %x\n ", *((char *)vptr));
    printf("The value at vptr an char in 0d is in : %d\n ", *((char *)vptr));
    return 0;
}