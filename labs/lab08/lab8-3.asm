%include "in_out.asm"
SECTION .data
msg db 'результат: '
SECTION .text
GLOBAL _start

_start:
pop ecx 
pop edx 
sub ecx,1 
mov esi, 1 

next:
cmp ecx,0h 
jz _end 

pop eax 
call atoi 
mul esi
mov esi, eax

loop next ; переход к обработке следующего аргумента

_end:
mov eax, msg ; вывод сообщения "Результат: "
call sprint
mov eax, esi ; записываем сумму в регистр `eax`
call iprintLF ; печать результата
call quit ; завершение программы

