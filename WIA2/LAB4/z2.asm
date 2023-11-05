org 100h

MOV AH, 09h
MOV DX, string_1		; wyswietlenie informacji na konsoli
INT 21h

MOV AH, 01h				; pobranie znaku od użytkownika
INT 21h

cmp AL, '_'
JG wielkie
JL male				; porównanie znaków
JE rowne

wielkie:
cmp AL, 'Z'
JG err
cmp AL, 'A'
JL err
MOV AH, 09h
MOV DX, string_3		; wyswietlenie informacji na konsoli
INT 21h		
jmp koniec

male:
cmp AL, 'z'
JG err
cmp AL, 'a'
JL err
MOV AH, 09h
MOV DX, string_4		; wyswietlenie informacji na konsoli
INT 21h	
jmp koniec

rowne:
MOV AH, 09h
MOV DX, string_2		; wyswietlenie informacji na konsoli
INT 21h
jmp koniec

err:
MOV AH, 09h
MOV DX, string_5		; wyswietlenie informacji na konsoli
INT 21h
jmp koniec		

koniec:
MOV AH, 00h
INT 21h

string_1 db "Podaj znak: "		;/$ terminated string
string_2 db "=="
string_3 db "Wielkia Litera"
string_4 db "Mala Litera"
string_5 db "Error"