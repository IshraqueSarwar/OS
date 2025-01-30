mov ah, 0x0e

mov bp, 0x8000
mov sp, bp


push 'S'
push 'I'
push 'A'
push 'M'

;when pushed the sp is decremented by 2, so 'S' is at 0x8000-2
;thats why it prints the 'S'
mov al, [0x7ffe]
int 0x10


;lets say I wanna print 'A' that addr is 0x8000-(2x3) = 0x7ffa
mov al, [0x7ffa]
int 0x10



; gets 'M'
pop bx
mov al, bl
int 0x10

;gets 'A'
pop bx
mov al, bl
int 0x10

;gets 'I'
pop bx
mov al, bl
int 0x10

; gets 'S'
pop bx
mov al, bl
int 0x10





jmp $
times 510-($-$$) db 0
dw 0xaa55
