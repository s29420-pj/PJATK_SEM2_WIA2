ORG 100h

MOV AH, 0Fh  ; 
INT 10h      ;

MOV AH, 02h		; video - set cursor position
MOV DH, 00h		; top
MOV DL, 00h		; left
INT 10h

MOV AX, 02h		;
MOV DL, 'A'		; wydruk literki a
INT 21h

MOV AH, 00h
INT 21h
