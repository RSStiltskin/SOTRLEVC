.section .data
data_items:
.long 3,67,34,222,45,75,255,1,54,34,33,22,11,0

.section .text
.globl _start
_start:
movl $0, %edi
movl data_items(,%edi,4),%eax
movl %eax, %ebx

start_loop:
cmpl $0xFF, %eax
je loop_exit
incl %edi
movl data_items(,%edi,4),%eax
cmpl %ebx, %eax
jge start_loop
movl %eax, %ebx
jmp start_loop

loop_exit:
mov $1, %eax
int $0x80
