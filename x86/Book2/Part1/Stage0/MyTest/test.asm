global _start

section .data
	myChar db 'K'

section .text

_start:
	mov rax, 1			;System Call Number : sys_write(1)
	mov rdi, 1			;File Discriptor : STDOUT(1)
	mov rsi, myChar 	;The address of 'myChar' to print
	mov rdx, 1			;The size of the byte to print
	syscall				;Kernel calling

	mov rax, 60			;System Call Number : sys_exit(60)
	mov rdi, 0			;Termination Code : Success(0)
	syscall				;Kernel calling
