mov ah, 0x0e


;first attempt
mov al, "1"
int 0x10
mov al, the_secret
int 0x10

;second attempt
mov al, "2"
int 0x10
mov al, [the_secret]
int 0x10


;third attempt
mov al, "3"
int 0x10
mov bx, the_secret
add bx, 0x7c00
mov al, [bx]
int 0x10


;forth and final attempt
mov al, "4"
int 0x10
; we just do the steps in third attempt together below in one line
mov al, [0x7c2d]
int 0x10


jmp $


;defining the variable that contains the "X"
the_secret:
	db "X"


times 510-($-$$) db 0
dw 0xaa55
