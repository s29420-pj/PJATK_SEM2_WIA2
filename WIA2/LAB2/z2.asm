org 100h

MOV AH, 09h
MOV DX, string
INT 21h

MOV AH, 00h
INT 21h

string db "Marek Lewanczyk$"		;/$ terminated string