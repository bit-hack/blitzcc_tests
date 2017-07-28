
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,88
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
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	[ebp-4],640
	mov	[ebp-8],480
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	eax,[ebp-4]
	sar	eax,byte 1
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],-1027080192
	mov	[esp+16],0
	mov	[esp+8],1120403456
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1106247680
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-16],eax
	mov	[ebp-20],0
	mov	[ebp-24],0
	mov	[ebp-28],0
	mov	[ebp-32],1112014848
	mov	[ebp-36],1112014848
	mov	[ebp-40],1112014848
	mov	[ebp-44],0
	mov	[ebp-48],0
	mov	[ebp-52],0
	mov	[ebp-56],1084227584
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-60],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-60]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,32
	mov	ebx,[ebp-36]
	mov	[esp+24],ebx
	mov	[esp+28],0
	mov	esi,[ebp-40]
	mov	[esp+20],esi
	mov	ebx,[ebp-32]
	mov	[esp+16],ebx
	mov	[esp+12],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-60]
	mov	[esp],eax
	call	_ffitmesh
	sub	esp,20
	mov	ebx,[ebp-28]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-60]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-64],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	ebx,[ebp-56]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-56]
	mov	[esp+8],esi
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	ebx,[ebp-52]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-48]
	mov	[esp+8],esi
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fpositionentity
	jmp	_6
_5
	call	_fmousexspeed
	add	[ebp-68],eax
	call	_fmouseyspeed
	add	[ebp-72],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[ebp-68]
	neg	esi
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-72]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,20
	mov	[esp],1
	call	_fmousedown
	mov	[ebp-88],eax
	sub	esp,4
	mov	[esp],2
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-88]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_7
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
_7
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_8
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
_8
	sub	esp,4
	mov	[esp],19
	call	_fkeydown
	and	eax,eax
	jz	_9
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
_9
	sub	esp,4
	mov	[esp],33
	call	_fkeydown
	and	eax,eax
	jz	_10
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
_10
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_11
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
_11
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_12
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
_12
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-76]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-84]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	sub	esp,20
	mov	ebx,[ebp-52]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-48]
	mov	[esp+8],esi
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,40
	mov	ebx,[ebp-36]
	mov	[esp+32],ebx
	mov	esi,[ebp-40]
	mov	[esp+36],esi
	mov	esi,[ebp-32]
	mov	[esp+28],esi
	mov	ebx,[ebp-28]
	mov	[esp+24],ebx
	mov	esi,[ebp-24]
	mov	[esp+20],esi
	mov	ebx,[ebp-20]
	mov	[esp+16],ebx
	mov	esi,[ebp-56]
	mov	[esp+12],esi
	mov	ebx,[ebp-52]
	mov	[esp+8],ebx
	mov	esi,[ebp-48]
	mov	[esp+4],esi
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fsphereboxintersection
	cmp	eax,1
	jnz	_13
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
_13
	sub	esp,4
	mov	[esp],1
	call	_fflip
_6
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_5
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
_fsphereboxintersection
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
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
	jz	_15
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-4],esi
	jmp	_16
_15
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_17
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp+48]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,[ebp+20]
	push	edi
	fld	[esp]
	pop	edi
	fsubrp	st(1)
	fmulp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
_17
_16
	mov	eax,[ebp+24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_18
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+40]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-4],esi
	jmp	_19
_18
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	eax,[ebp+24]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_20
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp+52]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,[ebp+24]
	push	edi
	fld	[esp]
	pop	edi
	fsubrp	st(1)
	fmulp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
_20
_19
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_21
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+44]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-4],esi
	jmp	_22
_21
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+56]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_23
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+56]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp+56]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	fsubrp	st(1)
	fmulp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
_23
_22
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_24
	mov	eax,1
	jmp	_4_leave
	jmp	_25
_24
	mov	eax,0
	jmp	_4_leave
_25
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 40
_14	.db	"Collision",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

