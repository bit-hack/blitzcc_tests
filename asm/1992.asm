
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
_7
	call	_fcls
	sub	esp,8
	mov	[esp],100
	mov	[esp+4],540
	call	_frand
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],100
	mov	[esp+4],380
	call	_frand
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],100
	mov	[esp+4],540
	call	_frand
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],100
	mov	[esp+4],380
	call	_frand
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],100
	mov	[esp+4],540
	call	_frand
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],100
	mov	[esp+4],380
	call	_frand
	mov	[ebp-24],eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	mov	[ebp-28],0
	jmp	_8
_9
	mov	[ebp-32],0
	jmp	_10
_11
	sub	esp,32
	mov	ebx,[ebp-20]
	mov	[esp+24],ebx
	mov	esi,[ebp-24]
	mov	[esp+28],esi
	mov	esi,[ebp-16]
	mov	[esp+20],esi
	mov	ebx,[ebp-12]
	mov	[esp+16],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fintriangle
	and	eax,eax
	jz	_12
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fplot
_12
	add	[ebp-32],1
_10
	cmp	[ebp-32],479
	jle	_11
_5
	add	[ebp-28],1
_8
	cmp	[ebp-28],639
	jle	_9
_4
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-20]
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fline
	call	_fwaitkey
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_7
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fintriangle
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp+36]
	sub	ebx,[ebp+28]
	mov	esi,[ebp+48]
	sub	esi,[ebp+32]
	imul	ebx,esi
	mov	esi,[ebp+44]
	sub	esi,[ebp+28]
	mov	edi,[ebp+40]
	sub	edi,[ebp+32]
	imul	esi,edi
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+36]
	sub	ebx,[ebp+20]
	mov	esi,[ebp+48]
	sub	esi,[ebp+24]
	imul	ebx,esi
	mov	esi,[ebp+44]
	sub	esi,[ebp+20]
	mov	edi,[ebp+40]
	sub	edi,[ebp+24]
	imul	esi,edi
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+44]
	sub	ebx,[ebp+20]
	mov	esi,[ebp+32]
	sub	esi,[ebp+24]
	imul	ebx,esi
	mov	esi,[ebp+28]
	sub	esi,[ebp+20]
	mov	edi,[ebp+48]
	sub	edi,[ebp+24]
	imul	esi,edi
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+20]
	mov	esi,[ebp+40]
	sub	esi,[ebp+24]
	imul	ebx,esi
	mov	esi,[ebp+36]
	sub	esi,[ebp+20]
	mov	edi,[ebp+32]
	sub	edi,[ebp+24]
	imul	esi,edi
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_13
	mov	eax,1
	jmp	_6_leave
	jmp	_14
_13
	mov	eax,0
	jmp	_6_leave
_14
	mov	eax,0
	jmp	_6_leave
_6_leave
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
