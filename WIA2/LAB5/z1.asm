; rozmiar ma znaczenie

org 100h

INC AX						; przyjmuje jeden argument
DEC	word [a]				; [word/byte] wartość z pamięci, 
							; trzeba mu powiedzieć jednostke pamieci

INC byte [c]				; przeskoczyło nam do 0 bo zwiększyliśmy 255 o 1 byte
INC word [c]				; przeskoczyło nam do 256 bo zwiększyliśmy o słowo

ADD AX, [c]					; możemy dodawać adres, rejest, konkretną wartość
SUB byte [a], 07h			; licznik cofnie się do 256, nie ma liczb ujemnych
SUB word [a], 07h			; 


; 8-bit x 8-bit = 16-bit, 16-bit x 16-bit = 32-bit { MNOŻENIE
MOV AX, 10h
MOV BL, 5h

MUL BL

; 8-bit = 16-bit / 8-bit { DZIELENIE

mov AH, 00h
int 21h

a dw 05h					; rozmiar operacji ma znaczenie
b dw 03h
c dw 0xFF
d dw 00h


; DZIELENIE MOŻE BYĆ NA KOLOWKIUM
; ROZMIARY REJESTRÓW