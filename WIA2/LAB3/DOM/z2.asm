org 100h

mov AH, 09h			; wyświetlanie całego stringa
mov DX, string 		; adres stringa
int 21h				; przerwanie 21h

mov AH, 09h			; wyświetlanie znaku nowej linii
mov DX, newline		; adres nowej linii
int 21h				; przerwanie 21h

mov AH, 09h				; wyświetlanie stringa do 3-ciego znaku
mov SI, string			; adres stringa
mov byte [si+3], '$'	; umieszczenie znaku końca stringa po 3-cim znaku
int 21h					; przerwanie 21h

mov AH, 00h			; zakończenie programu
int 21h				; przerwanie 21h

string db "Hello World!"	;
newline db 0Ah, 0Dh			; znak nowej linii