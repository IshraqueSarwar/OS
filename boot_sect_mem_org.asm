[org 0x7c00]
mov ah, 0x0e

mov al, "0"
int 0x10
mov al, "x"
int 0x10
mov al, "7"
int 0x10
mov al, "c"
int 0x10
mov al, "0"
int 0x10
mov al, "0"
int 0x10
mov al, "+"
int 0x10
mov al, "b"
int 0x10
mov al, "a"
int 0x10
mov al, "s"
int 0x10
mov al, "e"
int 0x10
mov al, "_"
int 0x10
mov al, "t"
int 0x10
mov al, "s"
int 0x10
mov al, [the_secret]
int 0x10




jmp $

the_secret:
	db "X"

times 510-($-$$) db 0
dw 0xaa55

