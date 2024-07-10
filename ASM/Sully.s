section .data
i dq 5
E db "Sully_%d", 0
N db "Sully_%d.s", 0
O db "Sully_%d.o", 0
C db "nasm -f macho64 %s -o %s && cc -o %s %s -lc && rm -f %s && ./%s", 0
V db "section .data%ci dq %d%c", 0
S db "E db %c%s%c, 0%cN db %c%s%c, 0%cO db %c%s%c, 0%cC db %c%s%c, 0%cV db %c%s%c, 0%cS db %c%s%c, 0%cF db __?FILE?__, 0%cD db %c%s%c, 0%cmode db %c%s%c, 0%csection .bss%cfname resb 20%coname resb 20%cobjname resb 20%ccompile resb 200%csection .text%cextern _fopen, _fprintf, _fclose, _strcmp, _sprintf, _system%cglobal _main%c_main:%csub rsp, 8%clea rdi, [rel F]%clea rsi, [rel D]%ccall _strcmp%ctest rax, rax%cmov r13, [rel i]%cje .skip%cdec r13%c.skip:%ccmp r13, -1%cjle .done%clea rdi, [rel fname]%clea rsi, [rel N]%cmov rdx, r13%ccall _sprintf%clea rdi, [rel oname]%clea rsi, [rel E]%cmov rdx, r13%ccall _sprintf%clea rdi, [rel objname]%clea rsi, [rel O]%cmov rdx, r13%ccall _sprintf%clea rdi, [rel fname]%clea rsi, [rel mode]%ccall _fopen%ctest rax, rax%cje .done%cmov r12, rax%cmov rdi, r12%clea rsi, [rel V]%cmov rdx, 0x0a%cmov rcx, r13%cmov r8, 0xa%ccall _fprintf%cmov rdi, r12%clea rsi, [rel S]%cmov rdx, 0x22%cmov r8, 0x22%cmov r9, 0xa%cmov rcx, 0x6e%cxor rax, rax%c.loop_start:%cpush qword 0xa%cloop .loop_start%cpush qword 0x22%clea rcx, [rel mode]%cpush qword rcx%cpush qword 0x22%cpush qword 0xa%cpush qword 0x22%clea rcx, [rel D]%cpush qword rcx%cpush qword 0x22%cpush qword 0xa%cpush qword 0xa%cpush qword 0x22%clea rcx, [rel S]%cpush qword rcx%cpush qword 0x22%cpush qword 0xa%cpush qword 0x22%clea rcx, [rel V]%cpush qword rcx%cpush qword 0x22%cpush qword 0xa%cpush qword 0x22%clea rcx, [rel C]%cpush qword rcx%cpush qword 0x22%cpush qword 0xa%cpush qword 0x22%clea rcx, [rel O]%cpush qword rcx%cpush qword 0x22%cpush qword 0xa%cpush qword 0x22%clea rcx, [rel N]%cpush qword rcx%cpush qword 0x22%clea rcx, [rel E]%ccall _fprintf%cadd rsp, 1104%cmov rdi, r12%ccall _fclose%clea rdi, [rel compile]%clea rsi, [rel C]%clea rdx, [rel fname]%clea rcx, [rel objname]%clea r8, [rel oname]%clea r9, [rel objname]%cpush r8%cpush r9%ccall _sprintf%cadd rsp, 16%clea rdi, [rel compile]%ccall _system%c.done:%cadd rsp, 8%cret%c", 0
F db __?FILE?__, 0
D db "Sully.s", 0
mode db "w", 0
section .bss
fname resb 20
oname resb 20
objname resb 20
compile resb 200
section .text
extern _fopen, _fprintf, _fclose, _strcmp, _sprintf, _system
global _main
_main:
sub rsp, 8
lea rdi, [rel F]
lea rsi, [rel D]
call _strcmp
test rax, rax
mov r13, [rel i]
je .skip
dec r13
.skip:
cmp r13, -1
jle .done
lea rdi, [rel fname]
lea rsi, [rel N]
mov rdx, r13
call _sprintf
lea rdi, [rel oname]
lea rsi, [rel E]
mov rdx, r13
call _sprintf
lea rdi, [rel objname]
lea rsi, [rel O]
mov rdx, r13
call _sprintf
lea rdi, [rel fname]
lea rsi, [rel mode]
call _fopen
test rax, rax
je .done
mov r12, rax
mov rdi, r12
lea rsi, [rel V]
mov rdx, 0x0a
mov rcx, r13
mov r8, 0xa
call _fprintf
mov rdi, r12
lea rsi, [rel S]
mov rdx, 0x22
mov r8, 0x22
mov r9, 0xa
mov rcx, 0x6e
xor rax, rax
.loop_start:
push qword 0xa
loop .loop_start
push qword 0x22
lea rcx, [rel mode]
push qword rcx
push qword 0x22
push qword 0xa
push qword 0x22
lea rcx, [rel D]
push qword rcx
push qword 0x22
push qword 0xa
push qword 0xa
push qword 0x22
lea rcx, [rel S]
push qword rcx
push qword 0x22
push qword 0xa
push qword 0x22
lea rcx, [rel V]
push qword rcx
push qword 0x22
push qword 0xa
push qword 0x22
lea rcx, [rel C]
push qword rcx
push qword 0x22
push qword 0xa
push qword 0x22
lea rcx, [rel O]
push qword rcx
push qword 0x22
push qword 0xa
push qword 0x22
lea rcx, [rel N]
push qword rcx
push qword 0x22
lea rcx, [rel E]
call _fprintf
add rsp, 1104
mov rdi, r12
call _fclose
lea rdi, [rel compile]
lea rsi, [rel C]
lea rdx, [rel fname]
lea rcx, [rel objname]
lea r8, [rel oname]
lea r9, [rel objname]
push r8
push r9
call _sprintf
add rsp, 16
lea rdi, [rel compile]
call _system
.done:
add rsp, 8
ret
