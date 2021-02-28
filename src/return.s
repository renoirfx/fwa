.text
.globl main

main:
	push %rbp
	mov %rsp, %rbp
	mov $0, %rax
	pop %rbp
	ret
