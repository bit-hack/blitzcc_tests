
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
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	mov	[ebp-8],50
	jmp	_11
_12
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	eax,[ebp-8]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fhorizontalblur
	sub	esp,4
	mov	eax,[ebp-8]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fverticalblur
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_13
	call	_fend
_13
	add	[ebp-8],5
_11
	cmp	[ebp-8],100
	jle	_12
_3
	call	_fwaitkey
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
_fhorizontalblur
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	mov	[ebp-4],0
	mov	[ebp-8],0
	mov	[ebp-12],0
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_14
	mov	[ebp+20],1112014848
_14
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1120272384
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_15
	mov	[ebp+20],1120272384
_15
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	[ebp-16],0
	jmp	_16
_17
	mov	[ebp-20],0
	jmp	_18
_19
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixel
	mov	[ebp-24],eax
	mov	ebx,[ebp-24]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-28],ebx
	mov	ebx,[ebp-24]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	mov	[ebp-32],ebx
	mov	ebx,[ebp-24]
	mov	esi,16711680
	and	ebx,esi
	shr	ebx,byte 16
	mov	[ebp-36],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1120403456
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[ebp-4]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1120403456
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[ebp-8]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1120403456
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[ebp-12]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,16
	mov	ebx,[ebp-8]
	shl	ebx,byte 8
	add	ebx,[ebp-12]
	mov	esi,[ebp-4]
	shl	esi,byte 16
	add	ebx,esi
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-20],1
_18
	cmp	[ebp-20],639
	jle	_19
_6
	add	[ebp-16],1
_16
	cmp	[ebp-16],479
	jle	_17
_5
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fverticalblur
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	mov	[ebp-4],0
	mov	[ebp-8],0
	mov	[ebp-12],0
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_20
	mov	[ebp+20],1112014848
_20
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1120272384
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_21
	mov	[ebp+20],1120272384
_21
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	[ebp-16],0
	jmp	_22
_23
	mov	[ebp-20],0
	jmp	_24
_25
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadpixel
	mov	[ebp-24],eax
	mov	ebx,[ebp-24]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-28],ebx
	mov	ebx,[ebp-24]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	mov	[ebp-32],ebx
	mov	ebx,[ebp-24]
	mov	esi,16711680
	and	ebx,esi
	shr	ebx,byte 16
	mov	[ebp-36],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1120403456
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[ebp-4]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1120403456
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[ebp-8]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1120403456
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[ebp-12]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,16
	mov	ebx,[ebp-8]
	shl	ebx,byte 8
	add	ebx,[ebp-12]
	mov	esi,[ebp-4]
	shl	esi,byte 16
	add	ebx,esi
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-20],1
_24
	cmp	[ebp-20],479
	jle	_25
_9
	add	[ebp-16],1
_22
	cmp	[ebp-16],639
	jle	_23
_8
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_10	.db	"monkey4.jpg",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

