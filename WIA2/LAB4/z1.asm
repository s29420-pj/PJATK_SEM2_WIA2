org 100h

MOV AH, 09h
MOV DX, string_1		; wyswietlenie informacji na konsoli
INT 21h

MOV AH, 01h				; pobranie znaku od użytkownika
INT 21h

cmp AL, '_'
JG wieksze
JL mniejsze				; porównanie znaków
JE rowne

wieksze:
mov AH, 02h
mov DL, '>'				; wyświetlenie informacji zwrotnej
int 21h
jmp koniec

mniejsze:
mov AH, 02h
mov DL, '<'				; wyświetlenie informacji zwrotnej
int 21h
jmp koniec

rowne:
MOV AH, 09h
MOV DX, string_2		; wyswietlenie informacji na konsoli
INT 21h			

koniec:
MOV AH, 00h
INT 21h

string_1 db "Podaj znak: "		;/$ terminated string
string_2 db "=="