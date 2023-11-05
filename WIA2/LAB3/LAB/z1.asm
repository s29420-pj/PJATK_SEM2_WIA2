org 100h

mov AH, 09h
mov DX, string
int 21h

mov AH, 00h
int 21h

string db "KOCHAM ASEMBLERA$"
