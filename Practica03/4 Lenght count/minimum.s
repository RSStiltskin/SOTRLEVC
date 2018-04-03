.section .data
data_items:
.long 73,67,34,222,45,75,25,13,54,34,33,28,11,255,49

.section .text
.globl _start
_start:
movl $0, %edi
movl data_items(,%edi,4),%eax
movl %eax, %ebx

start_loop:
cmpl $14, %edi
je loop_exit
incl %edi
movl data_items(,%edi,4),%eax
cmpl %ebx, %eax
jge start_loop
movl %eax, %ebx
jmp start_loop

loop_exit:
movl $1, %eax
int $0x80
