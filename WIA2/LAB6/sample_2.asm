org 100h

; 12 8 + 2 6 * -

push 12
push 8
pop AX
pop BX

add AX, BX
push AX

push 2
push 6

pop AX
pop BX
mul BX
push AX

pop AX
pop BX
sub BX, AX
push BX

mov AH, 00h
int 21h

