org 100h

mov AX, 2137h

push AX
push 6969h
push word [a]
push 1

pop BX
pop word [a]
pop CX

mov AH, 00h
int 21h

a dw 420h