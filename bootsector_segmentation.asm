mov ah, 0x0e ;putting the ah register into tty mode

;this method doesn't work because the bootsector segment offset isnt added
mov al, [the_secret]
int 0x10


; adding the base addr to the data segment(ds) register
mov bx, 0x7c0
mov ds, bx ;so the ds is the data segment, whatever addr you put here works as the
; base addr shifted by 4 whenever you reference a new value for example as below

mov al, [the_secret]; here when we put the_secret its addr offset is added with the
; base in ds
int 0x10



;doing the same thing above but using Extra segment(es) register manually

;mov es, 0x7c0; this mov isnt allowed in x86 cause immediate to seg. reg. not allowed
; however reg to seg reg is allowed thats why

mov bx, 0x7c0
mov es, bx
mov al, [es:the_secret]
int 0x10



jmp $

the_secret:
	db "X"


times 510-($-$$) db 0
dw 0xaa55
