
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	mov	[ebp-4],0
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
_7
	call	_fcls
	mov	[ebp-4],0
	jmp	_8
_9
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],1133903872
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],1128792064
	call	_fgetheight
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fmousez
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1137180672
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fplot
	mov	ebx,eax
	add	[ebp-4],1
_8
	cmp	[ebp-4],600
	jle	_9
_4
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_7
_3
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgetheight
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	[esp+16],0
	mov	esi,[ebp+32]
	mov	[esp+20],esi
	mov	esi,[ebp+28]
	mov	[esp+12],esi
	mov	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpointdistance
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_10
	sub	esp,28
	mov	[esp+16],0
	mov	esi,[ebp+32]
	mov	[esp+20],esi
	mov	esi,[ebp+28]
	mov	[esp+12],esi
	mov	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpointdistance
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	fchs
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	jmp	_5_leave
_10
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fpointdistance
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	jmp	_6_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

