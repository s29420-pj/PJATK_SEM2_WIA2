org 100h

mov AH, 09h		;
mov DX, msg		; Wyświetlanie wstepu
int 21h			;

mov AH, 0AH		; Wczutanie ciągu znaków
mov DX, buffer	; adres bufora
int 21h

mov AH, 09h		; Wyświetlenei wiadomości do użytkownika
mov DX, msg2	;
int 21h			;

mov AH, 02h				;
mov DL, [buffer+2] ; trzeci znak wczytanego ciągu 0, 1, 2 dlatego buffer+2
int 21h					;

mov AH, 00h		; zakończenie programu
int 21h			; przerwanie 21


msg db "Podaj ciag znaków: $"
msg2 db "Trzeci znak stringa: "
buffer db 255,0 ; bufor do wczytania ciągu znaków (maks. 255 znaków)