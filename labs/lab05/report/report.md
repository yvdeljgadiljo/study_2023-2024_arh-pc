---
## Front matter
title: "ОтчеТт по лабораторной работе №5"
subtitle: "дисциплина: Архитектура компьютера"
author: "Дельгадильо Валерия"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы 

> Приобретение практических навыков работы в Midnight Commander.
> Освоение инструкций языка ассемблера mov и int.

#  Теоретическое введение

## Основы работы с Midnight Commander

> Midnight Commander (или просто mc) --- это программа, которая
> позволяет просматривать структуру каталогов и выполнять основные
> операции по управлению файловой системой, т.е. mc является файловым
> менеджером. Midnight Commander позволяет сделать работу с файлами
> более удобной и наглядной.

## Структура программы на языке ассемблера NASM

> Программа на языке ассемблера NASM, как правило, состоит из трёх
> секций: секция кода программы (SECTION .text), секция инициированных
> (известных во время компиляции) данных (SECTION .data) и секция
> неинициализированных данных (тех, под которые во время компиляции
> только отводится память, а значение присваивается в ходе выполнения
> программы) (SECTION .bss).

# Лабораторной работы 

Откройте Midnight Commander
user@dk4n31:\~\$mc

![](image/image1.png){#fig:3.1 width=90%}

Пользуясь клавишами ↑ , ↓ и Enter перейдите в каталог \~/work/arch-pc
созданный при выполнении лабораторной работы №4.

![](image/image2.png){#fig:3.2 width=90%}

С помощью функциональной клавиши F7 создайте папку lab05 и перейдите в
созданный каталог.

![](image/image3.png){#fig:3.3 width=90%}

Пользуясь строкой ввода и командой touch создайте файл lab5-1.asm

![](image/image4.png){#fig:3.4 width=90%}

С помощью функциональной клавиши F4 откройте файл lab5-1.asm для
редактирования во встроенном редакторе. Как правило в качестве
встроенного редактора Midnight Commander используется редакторы nano или
mcedit.

![](image/image5.png){#fig:3.5 width=90%}

Введите текст программы из листинга (можно без комментариев), сохраните
изменения и закройте файл.

![](image/image6.png){#fig:3.6 width=90%}

Оттранслируйте текст программы lab5-1.asm в объектный файл. Выполните
компоновку объектного файла и запустите получившийся исполняемый файл.
Программа выводит строку \'Введите строку:\' и ожидает ввода с
клавиатуры. На запрос введите Ваши ФИО.

> user@dk4n31:\~\$ nasm -f elf lab5-1.asm

> user@dk4n31:\~\$ ld -m elf_i386 -o lab5-1 lab5-1.o

> user@dk4n31:\~\$ ./lab5-1

> Введите строку:

> Имя пользователя

> user@dk4n31:\~\$

![](image/image7.png){#fig:3.7 width=90%"}

**Подключение внешнего файла in_out.asm**

Скачайте файл in_out.asm со страницы курса в ТУИС

![](image/image8.png){#fig:3.8 width=90%}

Подключаемый файл in_out.asm должен лежать в том же каталоге, что и файл
с программой, в которой он используется.

![](image/image9.png){#fig:3.9 width=90%}

С помощью функциональной клавиши F6 создайте копию файла lab5-1.asm с
именем lab5-2.asm. Выделите файл lab5-1.asm, нажмите клавишу F6 ,
введите имя файла lab5-2.asm и нажмите клавишу Enter.

![](image/image10.png){#fig:3.10 width=90%}

Исправьте текст программы в файле lab5-2.asm с использование подпрограмм
из внешнего файла in_out.asm (используйте подпрограммы sprintLF, sread и
quit) в соответствии с листингом 5.2. Создайте исполняемый файл и
проверьте его работу

![](image/image11.png){#fig:3.11 width=90%}

Создаю объектный файл lab5-2.o, выполняю компоновку объектного файла и
запускаю исполняемый файл.

![](image/image12.png){#fig:3.12 width=90%}

В файле lab5-2.asm замените подпрограмму sprintLF на sprint. Создайте
исполняемый файл и проверьте его работу.

![](image/image13.png){#fig:3.13 width=90%}

Создаю объектный файл lab5-2.o, выполняю компоновку объектного файла и
запускаю исполняемый файл. Теперь ввод производится на той же
строке, что и вывод, убран символ перевода строки после вывода.

![](image/image14.png){#fig:3.14 width=90%}

# Задание для самостоятельной работы

## Создайте копию файла lab5-1.asm.

> ![](image/image15.png){#fig:4.1 width=90%}
>
> Изменяю код программы, добавляя вывод введенной строки.
>
> ![](image/image16.png){#fig:4.2 width=90%}
>
> Создаю объектный файл lab5-3.o, компоную его в исполняемый файл,
> запускаю исполняемый файл.
>
> ![](image/image17.png){#fig:4.3 width=90%}

Программа из пункта 1:

    ;------------------- Объявление переменных ----------------
    SECTION .data ; Секция инициированных данных
    msg: DB 'Введите строку:',10 ; сообщение плюс
    ; символ перевода строки
    msgLen: EQU $-msg ; Длина переменной 'msg'
    SECTION .bss ; Секция не инициированных данных
    buf1: RESB 80 ; Буфер размером 80 байт
    ;------------------- Текст программы -----------------
    SECTION .text ; Код программы
    GLOBAL _start ; Начало программы
    _start: ; Точка входа в программу
    mov eax,4 ; Системный вызов для записи (sys_write)
    mov ebx,1 ; Описатель файла 1 - стандартный вывод
    mov ecx,msg ; Адрес строки 'msg' в 'ecx'
    mov edx,msgLen ; Размер строки 'msg' в 'edx'
    int 80h ; Вызов ядра
    mov eax, 3 ; Системный вызов для чтения (sys_read)
    mov ebx, 0 ; Дескриптор файла 0 - стандартный ввод
    mov ecx, buf1 ; Адрес буфера под вводимую строку
    mov edx, 80 ; Длина вводимой строки
    int 80h ; Вызов ядра
    mov eax,4 ; Системный вызов для записи (sys_write)
    mov ebx,1 ; Описатель файла '1' - стандартный вывод
    mov ecx,buf1 ; Адрес строки buf1 в ecx
    mov edx,buf1 ; Размер строки buf1
    int 80h ; Вызов ядра
    mov eax,1 ; Системный вызов для выхода (sys_exit)
    mov ebx,0 ; Выход с кодом возврата 0 (без ошибок)
    int 80h ; Вызов ядра

## Создайте копию файла lab5-2.asm. 
> Исправьте текст программы с использование подпрограмм из внешнего файла in_out.asm, так чтобы она
> работала по следующему алгоритму:
>
- вывести приглашение типа "Введите строку:"

- ввести строку с клавиатуры

- вывести введённую строку на экран.

>
> Копирую файл lab5-2.asm с именем lab5-4.asm
>
> ![](image/image18.png){#fig:4.4 width=90%}

Изменяю код программы, добавляя вывод введенной строки.

![](image/image19.png){#fig:4.5 width=90%}

Создаю объектный файл lab6-3.o, компоную его в исполняемый файл,
запускаю исполняемый файл.

![](image/image20.png){#fig:4.6 width=90%}

Программа из пункта 2:

    ;--------------------------------------------------------------------
    ; Программа вывода сообщения на экран и ввода строки с клавиатуры
    ;---------------------------------------------------------------------
    %include 'in_out.asm' ; подключение внешнего файла
    SECTION .data ; Секция инициированных данных
    msg: DB 'Введите строку: ',0h ; сообщение
    SECTION .bss ; Секция не инициированных данных
    buf1: RESB 80 ; Буфер размером 80 байт
    SECTION .text ; Код программы
    GLOBAL _start ; Начало программы
    _start: ; Точка входа в программу
    mov eax, msg ; запись адреса выводимого сообщения в `EAX`
    call sprint ; вызов подпрограммы печати сообщения
    mov ecx, buf1 ; запись адреса переменной в `EAX`
    mov edx, 80 ; запись длины вводимого сообщения в `EBX`
    call sread ; вызов подпрограммы ввода сообщения
    mov eax,4 ; Системный вызов для записи (sys_write)
    mov ebx,1 ; Описатель файла '1' - стандартный вывод
    mov ecx,buf1 ; Адрес строки buf1 в ecx
    int 80h ; Вызов ядра
    call quit ; вызов подпрограммы завершения

#  Выводы

Я приобрела практические навыки работы в Midnight Commander и освоила
инструкции языка ассемблера mov и int.

# Список литературы

-   GDB: The GNU Project Debugger. --- URL:
    https://www.gnu.org/software/gdb/.

-   GNU Bash Manual. --- 2016. --- URL:
    https://www.gnu.org/software/bash/manual/.

-   Midnight Commander Development Center. --- 2021. --- URL:
    https://midnight-commander.org/.

-   NASM Assembly Language Tutorials. --- 2021. --- URL:
    https://asmtutor.com/.

-   Newham C. Learning the bash Shell: Unix Shell Programming. ---
    O'Reilly Media, 2005. --- 354 с. --- (In a Nutshell). ---
    ISBN 0596009658. --- URL:
    http://www.amazon.com/Learningbash-Shell-Programming-Nutshell/dp/0596009658.

-   Robbins A. Bash Pocket Reference. --- O'Reilly Media, 2016. --- 156
    с. --- ISBN 978-1491941591.

-   The NASM documentation. --- 2021. --- URL:
    https://www.nasm.us/docs.php.

-   Zarrelli G. Mastering Bash. --- Packt Publishing, 2017. --- 502 с.
    --- ISBN 9781784396879.

-   Колдаев В. Д., Лупин С. А. Архитектура ЭВМ. --- М. : Форум, 2018.

-   Куляс О. Л., Никитин К. А. Курс программирования на ASSEMBLER. ---
    М. : Солон-Пресс, 2017.

-   Новожилов О. П. Архитектура ЭВМ и систем. --- М. : Юрайт, 2016.

-   Расширенный ассемблер: NASM. --- 2021. --- URL:
    https://www.opennet.ru/docs/RUS/nasm/.

-   Робачевский А., Немнюгин С., Стесик О. Операционная система UNIX.
    --- 2-е изд. --- БХВПетербург, 2010. --- 656 с. --- ISBN
    978-5-94157-538-1.

-   Столяров А. Программирование на языке ассемблера NASM для ОС Unix.
    --- 2-е изд. --- М. : МАКС Пресс, 2011. --- URL:
    http://www.stolyarov.info/books/asm_unix.

-   Таненбаум Э. Архитектура компьютера. --- 6-е изд. --- СПб. :
    Питер, 2013. --- 874 с. --- (Классика Computer Science).

-   Таненбаум Э., Бос Х. Современные операционные системы. --- 4-е изд.
    --- СПб. : Питер, 2015. --- 1120 с. --- (Классика Computer Science).
