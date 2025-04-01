#include <stdio.h>
int a = 4170;
int b = 3700;
int c;

int main()

{

    __asm__(
        "endbr64\n"
        "movl a,%eax\n"
        "movl b , %ebx\n"
        "subl %ebx,%eax\n"
        "movl %eax,c(%rip)\n"

    );
    printf("%d -%d = %d\n", a, b, c);
}