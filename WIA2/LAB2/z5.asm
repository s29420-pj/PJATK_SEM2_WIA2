ORG 100h     

MOV AH, 0Fh  ; 
INT 10h      ; 

MOV AH, 02h  ; 
MOV BH, 00h  ; 
MOV DH, 0Fh  ; pion
MOV DL, 3Eh  ; poziom
INT 10h      ; 

MOV AH, 09h  ; 
MOV AL, 'C'  ; wyświetlanie znaku
MOV BL, 0Fh  ; biały
MOV CX, 01h  ; ile razy wyświetlić znak
INT 10h      ; 

MOV AH, 00h  ; zakończ program
INT 21h      ; 