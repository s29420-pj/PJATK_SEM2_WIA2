org 100h

mov ax, litera        ; przeniesie do AX adres etykiety 'test' - adres literki A

mov ah, [litera]      ; przeniesie do AH 41h - ASCII litera 'A'
mov ax, [litera]      ; przeniesie do AX 6141h - ASCII litery 'Aa' - w odwrotnej kolejnosci

mov ah, [string]    ; przeniesie do AH 61h - ASCII litera 'a'
mov ax, [string]    ; przeniesie do AX 7361h - ASCII litery 'as'

mov ax, [string+3]  ; przeniesie do AX 626Dh - ASCII litery 'mb'

mov AH, 00h
int 21h

litera db 'A'
string db 'asembler jest super'