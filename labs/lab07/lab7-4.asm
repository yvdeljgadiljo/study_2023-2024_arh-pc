%include 'in_out.asm'
SECTION .data
    input1 db "Введите х: ",0h
    input2 db "Ввведите а: ",0h
section .bss
    max resb 10
    x resb 10
    a resb 10
section .text
global _start
_start:
    ; ---------- Ввод 'X'
    mov eax,input1
    call sprint
    mov ecx, x
    mov edx,10
    call sread
    ; ---------- Ввод 'A'
    mov eax,input2
    call sprint
    mov ecx, a
    mov edx,10
    call sread
    ; ---------- Преобразование 'x' из символа в число
    mov eax, x
    call atoi
    mov [x], eax
    ; ---------- Преобразование 'a' из символа в число
    mov eax, a
    call atoi
    mov [a], eax
    
    mov ebx, [x]
    cmp ebx, [a]
    jbe check
    
    mov eax, [a]
    mov ebx, [x]
    add eax, ebx
    call iprintLF
    call quit
  
    check:
    mov eax, [x]
    call iprintLF
    call quit
