section .text
extern _printf
global _main
;This program will print its own source when run.
_colleen:
lea rdi, [rel s]
mov rsi, 0xa
mov rdx, 0xa
mov rcx, 0xa
mov r8, 0xa
mov r9, 0xa
push qword 0xa
push qword 0x22
lea rax, [rel s]
push rax
push qword 0x22
xor rax, rax
.loop:
cmp rax, 0x1F
jge .done
push qword 0xa
inc rax
jmp .loop
.done:
xor rax, rax
call _printf
add rsp, 280
ret
_main:
;Another function in addition to the main function
sub rsp, 8
call _colleen
xor rax, rax
add rsp, 8
ret
section .data
s db "section .text%cextern _printf%cglobal _main%c;This program will print its own source when run.%c_colleen:%clea rdi, [rel s]%cmov rsi, 0xa%cmov rdx, 0xa%cmov rcx, 0xa%cmov r8, 0xa%cmov r9, 0xa%cpush qword 0xa%cpush qword 0x22%clea rax, [rel s]%cpush rax%cpush qword 0x22%cxor rax, rax%c.loop:%ccmp rax, 0x1F%cjge .done%cpush qword 0xa%cinc rax%cjmp .loop%c.done:%cxor rax, rax%ccall _printf%cadd rsp, 280%cret%c_main:%c;Another function in addition to the main function%csub rsp, 8%ccall _colleen%cxor rax, rax%cadd rsp, 8%cret%csection .data%cs db %c%s%c, 0%c", 0
