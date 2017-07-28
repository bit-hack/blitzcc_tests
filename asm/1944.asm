
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
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
	sub	esp,4
	mov	[esp],2040000
	call	_fcreatebank
	mov	[ebp-4],eax
	mov	[ebp-8],-17
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	mov	eax,_acol
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_acol
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acol
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-12],0
	jmp	_7
_8
	mov	ebx,[ebp-12]
	imul	ebx,65793
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_acol]
	mov	[esi],ebx
	add	[ebp-12],1
_7
	cmp	[ebp-12],255
	jle	_8
_3
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
_9
	mov	[ebp-12],1
	jmp	_10
_11
	add	[ebp-8],17
	sub	esp,20
	mov	[esp],800
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokefloat
	sub	esp,12
	mov	ebx,[ebp-8]
	add	ebx,4
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokefloat
	sub	esp,20
	mov	[esp],-1082130432
	mov	[esp+4],1065353216
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	add	ebx,8
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokefloat
	sub	esp,20
	mov	[esp],1073741824
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	add	ebx,12
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokefloat
	sub	esp,20
	mov	[esp],1115684864
	mov	[esp+4],1132396544
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	add	ebx,16
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-12],1
_10
	cmp	[ebp-12],400
	jle	_11
_5
	call	_fcls
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-12],0
	jmp	_13
_12
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fpeekfloat
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-12]
	add	esi,8
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fpeekfloat
	mov	ebx,eax
	mov	eax,[ebp-24]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	add	ebx,4
	mov	[esp+4],ebx
	call	_fpeekfloat
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-12]
	add	esi,12
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fpeekfloat
	mov	ebx,eax
	mov	eax,[ebp-24]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	mov	eax,[ebp-16]
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
	seta	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1145552896
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
	mov	eax,[ebp-24]
	or	eax,ebx
	mov	[ebp-24],eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1142276096
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
	mov	eax,[ebp-24]
	or	eax,ebx
	and	eax,eax
	jz	_14
	sub	esp,20
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	[esp+16],17
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcopybank
	sub	[ebp-8],17
	jmp	_15
_14
	sub	esp,24
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	add	ebx,12
	mov	[esp+4],ebx
	call	_fpeekbyte
	shl	eax,byte 2
	add	eax,[_acol]
	mov	eax,[eax]
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokefloat
	sub	esp,12
	mov	ebx,[ebp-12]
	add	ebx,4
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokefloat
	add	[ebp-12],17
_15
_13
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_12
_6
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_9
_4
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_acol	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

