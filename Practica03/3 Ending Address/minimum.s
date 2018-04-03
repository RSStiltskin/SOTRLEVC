.section .data
data_items:
.long 73,67,3,222,45,75,25,13,54,34,33,28,11,255,49
data_end:

.section .text
.globl _start
_start:
movl $0, %edi
movl data_items(,%edi,4),%eax
movl %eax, %ebx
leal data_end, %ecx		#Load and save ending address

start_loop:
leal data_items(,%edi,4),%eax   #Get the address of the next value
cmpl %eax, %ecx			#Check to see if we hit the end
je loop_exit
incl %edi
movl (%eax),%eax		#Load value
cmpl %ebx, %eax
jge start_loop
movl %eax, %ebx
jmp start_loop

loop_exit:
movl $1, %eax
int $0x80
#movl $1,%eax
#pushl %ebx
#pushl 0
#int $0x80
