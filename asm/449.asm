
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,__DATA
	mov	[esp],eax
	call	__bbRestore
	sub	esp,4
	mov	eax,__LIBS
	mov	[esp],eax
	call	__bbLoadLibs
	call	_2_begin
	jmp	_2_leave
_2_begin
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_frectoverlap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+44]
	sub	eax,[ebp+20]
	mov	ebx,[ebp+36]
	sub	ebx,[ebp+28]
	xor	eax,ebx
	mov	ebx,[ebp+40]
	sub	ebx,[ebp+32]
	mov	esi,[ebp+48]
	sub	esi,[ebp+24]
	xor	ebx,esi
	and	eax,ebx
	mov	ebx,-2147483648
	and	eax,ebx
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

