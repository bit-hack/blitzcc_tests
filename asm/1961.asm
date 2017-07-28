
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,8
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawblock
	mov	[ebp-8],0
	jmp	_10
_11
	mov	[ebp-12],0
	jmp	_12
_13
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_tdot
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	add	[ebp-12],479
_12
	cmp	[ebp-12],479
	jle	_13
_4
	add	[ebp-8],639
_10
	cmp	[ebp-8],639
	jle	_11
_3
_14
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	mov	[ebp-48],eax
	cmp	[ebp-20],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	and	eax,eax
	jz	_15
	mov	[ebp-20],1
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_tdot
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbObjStore
	call	_fmousex
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	call	_fmousey
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
_15
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	ebx,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_16
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	call	_fmousex
	push	eax
	fild	[esp]
	pop	eax
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	call	_fmousey
	push	eax
	fild	[esp]
	pop	eax
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	sub	esp,16
	call	_fmousex
	mov	[esp+8],eax
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+12],ebx
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	mov	[ebp-20],0
_16
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_17
	jmp	_5
_17
	jmp	_14
_5
	mov	[ebp-12],0
	jmp	_18
_19
	mov	[ebp-8],0
	jmp	_20
_21
	mov	[ebp-24],0
	mov	[ebp-28],0
	mov	[ebp-32],0
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],_tdot
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_22
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-40]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,981668463
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fdivrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-44],esi
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-24],esi
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-28],esi
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_22
_8
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	sub	esp,28
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	eax,[ebp-8]
	push	eax
	fild	[esp]
	pop	eax
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_freadpixel
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-8],1
_20
	cmp	[ebp-8],639
	jle	_21
_7
	add	[ebp-12],1
_18
	cmp	[ebp-12],479
	jle	_19
_6
	call	_fwaitkey
	ret
_2_leave
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_9	.db	"image2.jpg",0
	.align	4
_tdot	.dd	5
_23	.dd	0
	.dd	_23
	.dd	_23
	.dd	0
	.dd	-1
_24	.dd	0
	.dd	_24
	.dd	_24
	.dd	0
	.dd	-1
	.dd	4
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

