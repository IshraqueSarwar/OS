[org 0x7c00]



mov bx, FIRST_LINE
call print

call print_nl


mov bx, SECOND_LINE
call print

call print_nl



jmp $

%include "func_def.asm"


FIRST_LINE:
	db "Hey sup? I thought you were better.", 0


SECOND_LINE:
	db "But, you are the same as every other one it seems!", 0


times 510-($-$$) db 0
dw 0xaa55
