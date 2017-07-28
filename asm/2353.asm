
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
	sub	esp,4
	mov	eax,_apixeldata
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5000
	mov	esi,_apixeldata
	add	esi,12
	mov	[esi],ebx
	mov	ebx,5000
	mov	esi,_apixeldata
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apixeldata
	mov	[esp],eax
	call	__bbDimArray
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawimagealpha
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,88
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-36],ebx
	mov	[ebp-40],ebx
	mov	[ebp-44],ebx
	mov	[ebp-48],ebx
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	ebx,1065353216
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
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-20],0
	jmp	_8
_9
	mov	[ebp-24],0
	jmp	_10
_11
	mov	eax,[ebp-20]
	add	eax,[ebp+24]
	cmp	eax,[ebp-28]
	setl	al
	movzx	eax,al
	mov	[ebp-88],eax
	mov	ebx,[ebp-24]
	add	ebx,[ebp+28]
	cmp	ebx,[ebp-32]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-88]
	and	eax,ebx
	and	eax,eax
	jz	_12
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,_apixeldata
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_apixeldata]
	mov	[ebx],eax
_12
	add	[ebp-24],1
_10
	mov	ebx,[ebp-16]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_11
_5
	add	[ebp-20],1
_8
	mov	ebx,[ebp-12]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_9
_4
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-20],0
	jmp	_13
_14
	mov	[ebp-24],0
	jmp	_15
_16
	mov	eax,[ebp-20]
	add	eax,[ebp+24]
	cmp	eax,[ebp-28]
	setl	al
	movzx	eax,al
	mov	[ebp-88],eax
	mov	ebx,[ebp-24]
	add	ebx,[ebp+28]
	cmp	ebx,[ebp-32]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-88]
	and	eax,ebx
	and	eax,eax
	jz	_17
	sub	esp,12
	mov	ebx,[ebp-24]
	add	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-20]
	add	eax,[ebp+24]
	mov	[esp],eax
	call	_freadpixelfast
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	mov	ebx,_apixeldata
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_apixeldata]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	sar	ebx,byte 16
	mov	[ebp-44],ebx
	mov	ebx,[ebp-44]
	shl	ebx,byte 16
	mov	[ebp-48],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	sar	ebx,byte 8
	mov	[ebp-52],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-52]
	shl	esi,byte 8
	add	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	sar	ebx,byte 16
	mov	[ebp-60],ebx
	mov	ebx,[ebp-60]
	shl	ebx,byte 16
	mov	[ebp-64],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-64]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	sar	ebx,byte 8
	mov	[ebp-68],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-68]
	shl	esi,byte 8
	add	esi,[ebp-64]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-72],ebx
	cmp	[ebp-60],0
	setg	al
	movzx	eax,al
	mov	[ebp-88],eax
	cmp	[ebp-68],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-88]
	or	eax,ebx
	mov	[ebp-88],eax
	cmp	[ebp-72],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-88]
	or	eax,ebx
	and	eax,eax
	jz	_18
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-60]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-76],ebx
	mov	ebx,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-68]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-80],ebx
	mov	ebx,[ebp-56]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-72]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-84],ebx
	sub	esp,16
	mov	ebx,[ebp-76]
	shl	ebx,byte 16
	mov	esi,[ebp-80]
	shl	esi,byte 8
	add	ebx,esi
	add	ebx,[ebp-84]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-24]
	add	esi,[ebp+28]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	add	eax,[ebp+24]
	mov	[esp],eax
	call	_fwritepixelfast
_18
_17
	add	[ebp-24],1
_15
	mov	ebx,[ebp-16]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_16
_7
	add	[ebp-20],1
_13
	mov	ebx,[ebp-12]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_14
_6
	sub	esp,4
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	4
_apixeldata	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

