all:
	nasm -f elf64 q2.asm
	gcc -no-pie q2.o
	./a.out