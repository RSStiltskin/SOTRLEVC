.section .data
.section .text
.globl _start
_start:
pushl $9

call square
addl $4, %esp
#movl %eax, %ebx
movl $1, %eax
int $0x80


.type square,@function
square:
pushl %ebp
movl %esp, %ebp
movl 8(%ebp), %ebx
imull %ebx, %ebx
end_square:
movl %ebp, %esp
popl %ebp
ret
