ORG 100h

MOV AH, 09h
MOV DX, info
INT 21h

MOV AH, 01h		; program zwraca nam AL z odczytanym znakiem
INT 21h			;

MOV AX, 02h
MOV DL, AL
INT 21h

MOV AH, 00h
INT 21h

info db "Wprowadz znak: $"