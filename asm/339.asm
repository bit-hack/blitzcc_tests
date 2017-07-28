
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics
	call	_fgraphicswidth
	mov	[ebp-4],eax
	call	_fgraphicsheight
	mov	[ebp-8],eax
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	mov	[ebp-12],ebx
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	[ebp-16],ebx
	mov	[ebp-20],1061997773
_l_2loop
	mov	[ebp-24],1110704128
	mov	[ebp-28],1073741824
	mov	[ebp-32],-1013579776
	mov	[ebp-36],0
	mov	[ebp-40],0
	mov	[ebp-44],0
	mov	[ebp-48],0
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
_4
	call	_fmillisecs
	sub	eax,[ebp-52]
	cmp	eax,100
	jle	_5
	sub	esp,8
	mov	[esp],1115684864
	mov	[esp+4],1132396544
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	shl	eax,byte 16
	mov	[ebp-68],eax
	sub	esp,8
	mov	[esp],1115684864
	mov	[esp+4],1132396544
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 8
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	[esp],1115684864
	mov	[esp+4],1132396544
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-68]
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-56],eax
	call	_fmillisecs
	mov	[ebp-52],eax
_5
	sub	esp,8
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFSgn
	mov	ebx,eax
	mov	eax,[ebp-68]
	fmulp	st(1)
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-44],esi
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	mov	ebx,[ebp-44]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-48]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-60],esi
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-64],esi
	cmp	[ebp-60],-1
	setg	al
	movzx	eax,al
	mov	[ebp-68],eax
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-60],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-68]
	and	eax,ebx
	mov	[ebp-68],eax
	cmp	[ebp-64],-1
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-68]
	and	eax,ebx
	mov	[ebp-68],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-64],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-68]
	and	eax,ebx
	and	eax,eax
	jz	_6
	sub	esp,16
	mov	ebx,[ebp-56]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-64]
	mov	[esp+4],esi
	mov	eax,[ebp-60]
	mov	[esp],eax
	call	_fwritepixelfast
_6
	sub	esp,4
	mov	[esp],200
	call	_fkeyhit
	and	eax,eax
	jz	_7
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	call	_fcls
	jmp	_l_2loop
_7
	sub	esp,4
	mov	[esp],208
	call	_fkeyhit
	and	eax,eax
	jz	_8
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	call	_fcls
	jmp	_l_2loop
_8
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_4
_3
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

