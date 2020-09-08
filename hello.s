; vi:ft=nasm
section .data

hello: db 'Hello World!',10
helloLen: equ $-hello

section .text

global _start

_start:
	mov rax, 4
	mov rbx, 1
	mov rcx, hello
	mov rdx, helloLen
	int 80h

	mov rax, 1
	mov rbx, 0
	int 80h

