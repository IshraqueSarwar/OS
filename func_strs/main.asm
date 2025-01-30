[org 0x7c00]




;prints the content in data label HELLO
mov bx, HELLO
call print

; newline print
call print_nl

;prints the content in data label GOODBYE
mov bx, GOODBYE





jmp $


;include the files that contain the subroutines
%include "f_print.asm"
%include "f_print_hex.asm"

HELLO:
	db 'Hello, World', 0

GOODBYE:
	db 'Goodbye', 0



times 510-($-$$) db 0
dw 0xaa55
