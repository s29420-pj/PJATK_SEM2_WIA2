org 100h			;wymagane przez plik .COM - zawsze

MOV AH, 02h			;/
MOV DL, 'A'			;/wydruk literki 'A'
INT 21h				;/(wskazana w DL)

MOV AH, 02h			;/
MOV DL, 'g'			;/wydruk literki 'D'
INT 21h				;/

MOV AH, 00h			;/zamykanie programu
INT 21h				;/