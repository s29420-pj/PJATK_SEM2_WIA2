org 100h

MOV AH, 09h
MOV DX, string_1		; wyswietlenie informacji na konsoli
INT 21h

znak:
MOV AH, 01h				; pobranie znaku od użytkownika
INT 21h

cmp AL, 'Q'				; czy wcisnieto Q?
JE koniec
JNE wydruk

wydruk:
MOV AH, 02h			;/
MOV DL, AL			;/wydruk literki 'A'
INT 21h				;/(wskazana w DL)
jmp znak

koniec:
MOV AH, 00h
INT 21h

string_1 db "Podaj znak: "		;/$ terminated string