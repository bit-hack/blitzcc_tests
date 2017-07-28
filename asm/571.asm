
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
	mov	eax,_avertex
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,512
	mov	esi,_avertex
	add	esi,12
	mov	[esi],ebx
	mov	ebx,512
	mov	esi,_avertex
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avertex
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vimdivider],1092616192
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmeshplane
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	[ebp+20],1
	sub	[ebp+24],1
	cmp	[ebp+20],127
	jle	_15
	mov	[ebp+20],127
_15
	cmp	[ebp+24],127
	jle	_16
	mov	[ebp+24],127
_16
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-8],eax
	mov	[ebp-12],0
	jmp	_17
_18
	mov	[ebp-16],0
	jmp	_19
_20
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	sub	esp,28
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	[esp+8],0
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	[ebx],eax
	add	[ebp-16],1
_19
	mov	ebx,[ebp+24]
	add	ebx,1
	cmp	[ebp-16],ebx
	jle	_20
_5
	add	[ebp-12],1
_17
	mov	ebx,[ebp+20]
	add	ebx,1
	cmp	[ebp-12],ebx
	jle	_18
_4
	mov	[ebp-12],0
	jmp	_21
_22
	mov	[ebp-16],0
	jmp	_23
_24
	sub	esp,16
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	add	esi,1
	mov	edi,_avertex
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,[ebp-12]
	add	edi,1
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_avertex]
	mov	edi,[edi]
	mov	[esp+12],edi
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-12]
	add	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	edi,_avertex
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp-16]
	add	ebx,edi
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	edi,_avertex
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp-16]
	add	edi,[ebp-12]
	shl	edi,byte 2
	add	edi,[_avertex]
	mov	edi,[edi]
	mov	[esp+12],edi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-16],1
_23
	mov	ebx,[ebp+24]
	cmp	[ebp-16],ebx
	jle	_24
_7
	add	[ebp-12],1
_21
	mov	ebx,[ebp+20]
	cmp	[ebp-12],ebx
	jle	_22
_6
	sub	esp,12
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentityparent
	mov	eax,[ebp-4]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_floadmeshterrain
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,92
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
	mov	[ebp-88],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_25
	sub	esp,16
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_25
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	cmp	eax,[ebp-12]
	jz	_27
	sub	esp,12
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fresizeimage
_27
	call	_fgraphicsbuffer
	mov	[ebp-20],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcolorred
	mov	[ebp-24],eax
	call	_fcolorgreen
	mov	[ebp-28],eax
	call	_fcolorblue
	mov	[ebp-32],eax
	cmp	[ebp-8],128
	jl	_28
	mov	[ebp-44],1
	jmp	_29
_30
	mov	[ebp-48],1
	jmp	_31
_32
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],0
	mov	[esp+4],128
	mov	[esp],128
	call	_fmeshplane
	mov	[ebp-52],eax
	cmp	[ebp-44],1
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	cmp	[ebp-48],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_33
	mov	ebx,[ebp-52]
	mov	[ebp-16],ebx
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fentityparent
	jmp	_34
_33
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fentityparent
_34
	sub	esp,8
	mov	eax,[ebp-44]
	sub	eax,1
	mov	[esp],eax
	mov	ebx,[ebp-48]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_forigin
	mov	[ebp-56],0
	jmp	_35
_36
	mov	[ebp-60],0
	jmp	_37
_38
	sub	esp,8
	mov	eax,[ebp-56]
	mov	[esp],eax
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	call	_fgetcolor
	call	_fcolorred
	mov	[ebp-64],eax
	sub	esp,8
	mov	eax,[ebp-52]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	[ebp-68],eax
	sub	esp,8
	mov	eax,[ebp-68]
	mov	[esp],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-72],eax
	mov	ebx,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vimdivider]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-76],ebx
	sub	esp,8
	mov	eax,[ebp-68]
	mov	[esp],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-80],eax
	sub	esp,20
	mov	ebx,[ebp-76]
	mov	[esp+12],ebx
	mov	esi,[ebp-80]
	mov	[esp+16],esi
	mov	esi,[ebp-72]
	mov	[esp+8],esi
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_fvertexcoords
	add	[ebp-60],1
_37
	cmp	[ebp-60],128
	jle	_38
_12
	add	[ebp-56],1
_35
	cmp	[ebp-56],128
	jle	_36
_11
	sub	esp,20
	mov	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[esp+8],0
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fpositionentity
	add	[ebp-48],128
_31
	mov	ebx,[ebp-8]
	cmp	[ebp-48],ebx
	jle	_32
_10
	add	[ebp-44],128
_29
	mov	ebx,[ebp-8]
	cmp	[ebp-44],ebx
	jle	_30
_9
	jmp	_39
_28
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmeshplane
	mov	[ebp-52],eax
	mov	ebx,[ebp-52]
	mov	[ebp-16],ebx
	mov	[ebp-56],0
	jmp	_40
_41
	mov	[ebp-60],0
	jmp	_42
_43
	sub	esp,8
	mov	eax,[ebp-56]
	mov	[esp],eax
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	call	_fgetcolor
	call	_fcolorred
	mov	[ebp-64],eax
	sub	esp,8
	mov	eax,[ebp-52]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	[ebp-68],eax
	sub	esp,8
	mov	eax,[ebp-68]
	mov	[esp],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-72],eax
	mov	ebx,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vimdivider]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-76],ebx
	sub	esp,8
	mov	eax,[ebp-68]
	mov	[esp],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-80],eax
	sub	esp,20
	mov	ebx,[ebp-76]
	mov	[esp+12],ebx
	mov	esi,[ebp-80]
	mov	[esp+16],esi
	mov	esi,[ebp-72]
	mov	[esp+8],esi
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_fvertexcoords
	add	[ebp-60],1
_42
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-60],ebx
	jle	_43
_14
	add	[ebp-56],1
_40
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-56],ebx
	jle	_41
_13
_39
	sub	esp,12
	mov	ebx,[ebp-84]
	mov	[esp+4],ebx
	mov	esi,[ebp-88]
	mov	[esp+8],esi
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_forigin
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentityparent
	mov	eax,[ebp-16]
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_avertex	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vimdivider	.dd	0
_26	.db	"Mesh does not exist: ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
