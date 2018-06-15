# Makefile for JamesM's kernel tutorials.
# The C and C++ rules are already setup by default.
# The only one that needs changing is the assembler 
# rule, as we use nasm instead of GNU as.

SOURCES= common.o monitor.o main.o boot.o

#CFLAGS=-nostdlib -nostdinc -fno-builtin
LDFLAGS=-t -T link.ld
ASFLAGS=-f elf32

all: $(SOURCES) link

clean:
	-rm kernel


link:
	ld -m elf_i386 $(LDFLAGS) -o kernel $(SOURCES)

#boot.o:
#	nasm -f elf32 boot.s -o boot.o

#main.o:
#	gcc -m32 main.c -o main 

#monitor.o:
#	gcc -m32 monitor.c -c

#common.o:
#	gcc -m32 common.c -c

