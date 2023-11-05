org 100h

mov AH, 09h			; wyświetlanie wiadomości dla użytkownika
mov DX, msg 		; adres stringa
int 21h				; przerwanie 21h

mov AH, 0AH			; Wczytanie ciągu znaków
mov DX, input		; adres inputu
int 21h

mov AH, 09h			; wyświetlanie znaku nowej linii
mov DX, newline		; adres nowej linii
int 21h				; przerwanie 21h

mov AH, 09h			; wyświetlanie inputu wprowadzonego przez użytkownika
mov DX, input 		; adres inputu
int 21h				; przerwanie 21h

mov byte [input+1], '$' ; dodanie znaku $ na koniec inputu

mov AH, 00h			; zakończenie programu
int 21h				; przerwanie 21h

msg db "Wprowadź ciąg znaków: $"	; wiadomość dla użytkownika
buffer db 80						; maks. długość bufora
input db 80							; maks. długość inputu
newline db 0Ah, 0Dh			; znak nowej linii			