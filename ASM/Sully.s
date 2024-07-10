section .data
	i dd 5
	vformat db "i dd %d", 0
	nformat db "Sully_%d.s", 0
	sformat db "", 0
	file db __?FILE?__
	dfile db "Sully.s", 0
	mode db "w", 0

section .bss
	fname db 20

section .text
	extern _fopen, _fprintf, _fclose, _strcmp, _sprintf
	global _main

_main:
	sub rsp, 8
	lea rdi, [rel file]
	lea rsi, [rel dfile]
	call _strcmp
	test rax, rax
	je .decnum
	mov rax, [i]
	dec rax
.decnum:
	test rax, rax
	je .done
	lea rdi, [rel fname]
	lea rsi, [rel nformat]
	mov rdx, rax
	call _sprintf
	




	call _fopen
	test rax, rax
	je .done
	mov r12, rax
	mov rdi, r12
	lea rsi, [rel %3]
	mov rdx, 0x22
	mov r8, 0x22
	mov r9, 0xa
	mov rcx, 0x07
	.loop_start1:
	push qword 0xa
	loop .loop_start1
	push qword 0x22
	lea rcx, [rel %2]
	push qword rcx
	push qword 0x22
	mov rcx, 0x29
	.loop_start2:
	push qword 0xa
	loop .loop_start2
	lea rcx, [rel %1]
	push qword 0x22
	push qword rsi
	push qword 0x22
	call _fprintf
	add rsp, 432
	mov rdi, r12
	call _fclose
.done:
	add rsp, 8
	ret
