print:
	pusha


start:
	;put the char in bx register on al
	mov al, [bx]
	;check if the char is empty
	cmp al, 0
	;if empty we are done
	je done
	;if the char isn't empty we put ah to tty mode for printing
	mov ah, 0x0e
	int 0x10
	; adding 1 to the bx addr so that it points to the next char in the string
	add bx, 1
	jmp start


done:
	popa
	ret



print_nl:
	pusha
	mov ah, 0x0e
	mov al, 0x0a
	int 0x10
	mov al, 0x0d
	int 0x10
	popa
	ret
