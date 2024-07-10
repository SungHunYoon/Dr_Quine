%define FNAME "Grace_kid.s"
%define FCONTENT "%%define FNAME %c%s%c%c%%define FCONTENT %c%s%c%c%%macro FT 3%csub rsp, 8%clea rdi, [rel %%1]%clea rsi, [rel %%2]%ccall _fopen%ctest rax, rax%cje .done%cmov r12, rax%cmov rdi, r12%clea rsi, [rel %%3]%cmov rdx, 0x22%cmov r8, 0x22%cmov r9, 0xa%cmov rcx, 0x07%c.loop_start1:%cpush qword 0xa%cloop .loop_start1%cpush qword 0x22%clea rcx, [rel %%2]%cpush qword rcx%cpush qword 0x22%cmov rcx, 0x29%c.loop_start2:%cpush qword 0xa%cloop .loop_start2%clea rcx, [rel %%1]%cpush qword 0x22%cpush qword rsi%cpush qword 0x22%ccall _fprintf%cadd rsp, 432%cmov rdi, r12%ccall _fclose%c.done:%cadd rsp, 8%cret%c%%endmacro%csection .data%cfname db FNAME, 0%cformat db FCONTENT, 0%cmode db %c%s%c, 0%csection .text%cextern _fopen, _fprintf, _fclose%cglobal _main%c; This program will print its own source when run.%c_main:%cFT fname, mode, format%c"
%macro FT 3
sub rsp, 8
lea rdi, [rel %1]
lea rsi, [rel %2]
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
%endmacro
section .data
fname db FNAME, 0
format db FCONTENT, 0
mode db "w", 0
section .text
extern _fopen, _fprintf, _fclose
global _main
; This program will print its own source when run.
_main:
FT fname, mode, format
