
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
_fradianstodegrees
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1127481344
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1078530011
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	jmp	_3_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

