BITS 64

global _start

section .rodata

	pathname db "directory", 0

section .text

_start:
	mov rax, 0x53
	mov rdi, pathname
	mov rsi, 755 
	syscall
	jmp _exit

_exit:
	mov rax, 0x3C
	mov rdi, 0
	syscall
