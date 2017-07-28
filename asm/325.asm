
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
_fcreateshadowmap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,128
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
	mov	[ebp-92],ebx
	mov	[ebp-96],ebx
	mov	[ebp-100],ebx
	mov	[ebp-104],ebx
	mov	[ebp-108],ebx
	mov	[ebp-112],ebx
	mov	[ebp-116],ebx
	mov	[ebp-120],ebx
	mov	[ebp-124],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fkeyhit
	cmp	eax,0
	jnz	_7
	mov	eax,0
	jmp	_3_leave
_7
	call	_fflushkeys
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-128],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-128]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	[esp+4],35
	sub	esp,4
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,12
	mov	[esp+4],250
	mov	[esp+8],150
	mov	[esp],250
	call	_fcolor
	sub	esp,20
	call	_fgraphicsheight
	sar	eax,byte 1
	mov	ebx,60
	imul	ebx,[ebp-20]
	sub	eax,ebx
	mov	[esp+4],eax
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[ebp-128],eax
	sub	esp,4
	lea	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-128]
	mov	[esp+8],esi
	mov	[ebp-128],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-128]
	sar	ebx,byte 1
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftext
	mov	ebx,eax
	mov	[ebp-24],400
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	[ebp-28],eax
	call	_fgraphicsheight
	sar	eax,byte 1
	add	eax,50
	mov	[ebp-32],eax
	mov	[ebp-36],20
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],200
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-36]
	add	ebx,8
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-24]
	add	esi,8
	mov	[esp+8],esi
	mov	ebx,[ebp-32]
	sub	ebx,4
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	sub	eax,4
	mov	[esp],eax
	call	_frect
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,8
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-52],esi
	mov	ebx,[ebp+52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-56],esi
	mov	ebx,[ebp-52]
	mov	[ebp-60],ebx
	mov	ebx,[ebp-56]
	mov	[ebp-64],ebx
	sub	esp,20
	mov	ebx,[ebp-64]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fpositionentity
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-68],ebx
	mov	ebx,[ebp+52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-72],ebx
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-76],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-80],eax
	mov	ebx,[ebp+40]
	mov	[ebp-84],ebx
	mov	ebx,[ebp+48]
	mov	[ebp-88],ebx
	sub	esp,36
	mov	[esp+8],0
	mov	esi,[ebp-88]
	mov	[esp+12],esi
	mov	esi,[ebp-84]
	mov	[esp+4],esi
	mov	eax,[ebp+36]
	mov	[esp],eax
	call	_fterrainy
	mov	ebx,1045220557
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-88]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	ebx,[ebp-84]
	mov	[esp+4],ebx
	mov	eax,[ebp-80]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp+60]
	mov	[esp+4],ebx
	mov	esi,[ebp+60]
	mov	[esp+8],esi
	mov	eax,[ebp+60]
	mov	[esp],eax
	call	_fgetrgb
	mov	[ebp-92],eax
	sub	esp,12
	mov	ebx,[ebp+56]
	mov	[esp+4],ebx
	mov	esi,[ebp+56]
	mov	[esp+8],esi
	mov	eax,[ebp+56]
	mov	[esp],eax
	call	_fgetrgb
	mov	[ebp-96],eax
	mov	[ebp-100],0
	jmp	_10
_11
	mov	[ebp-104],0
	jmp	_12
_13
	sub	esp,12
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,8
	mov	eax,[ebp-80]
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	_fentityvisible
	cmp	eax,0
	jnz	_14
	mov	ebx,[ebp-92]
	mov	[ebp-108],ebx
	jmp	_15
_14
	mov	ebx,[ebp-96]
	mov	[ebp-108],ebx
_15
	sub	esp,24
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+12],eax
	mov	ebx,[ebp-108]
	mov	[esp+8],ebx
	mov	esi,[ebp-104]
	mov	[esp+4],esi
	mov	eax,[ebp-100]
	mov	[esp],eax
	call	_fwritepixelfast
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-72]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-88],ebx
	sub	esp,36
	mov	[esp+8],0
	mov	esi,[ebp-88]
	mov	[esp+12],esi
	mov	esi,[ebp-84]
	mov	[esp+4],esi
	mov	eax,[ebp+36]
	mov	[esp],eax
	call	_fterrainy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-88]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	ebx,[ebp-84]
	mov	[esp+4],ebx
	mov	eax,[ebp-80]
	mov	[esp],eax
	call	_fpositionentity
	mov	ebx,[ebp-112]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-72]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-112],ebx
	sub	esp,20
	mov	ebx,[ebp-60]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_16
	call	_fend
_16
	add	[ebp-104],1
_12
	mov	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-104],ebx
	jle	_13
_5
	mov	ebx,[ebp+40]
	mov	[ebp-88],ebx
	mov	ebx,[ebp-84]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-68]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-84],ebx
	sub	esp,12
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],200
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-36]
	add	ebx,8
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-24]
	add	esi,8
	mov	[esp+8],esi
	mov	ebx,[ebp-32]
	sub	ebx,4
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	sub	eax,4
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-24]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-100]
	add	esi,1
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-36]
	mov	[esp+12],esi
	mov	[esp+16],1
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],250
	mov	[esp+8],150
	mov	[esp],250
	call	_fcolor
	sub	esp,20
	call	_fgraphicsheight
	sar	eax,byte 1
	mov	ebx,60
	imul	ebx,[ebp-20]
	sub	eax,ebx
	mov	[esp+4],eax
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[ebp-128],eax
	sub	esp,4
	lea	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-128]
	mov	[esp+8],esi
	mov	[ebp-128],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-128]
	sar	ebx,byte 1
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftext
	mov	ebx,eax
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,12
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp+60]
	mov	[esp+4],ebx
	mov	esi,[ebp+60]
	mov	[esp+8],esi
	mov	eax,[ebp+60]
	mov	[esp],eax
	call	_fcolor
	add	[ebp-100],1
_10
	mov	ebx,[ebp+24]
	sub	ebx,1
	cmp	[ebp-100],ebx
	jle	_11
_4
	sub	esp,16
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsaveimage
	mov	ebx,eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,4
	mov	eax,[ebp-80]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,20
	mov	ebx,[ebp-48]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,1142292480
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	lea	eax,[ebp-116]
	mov	[esp],eax
	mov	[ebp-128],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-128]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1114636288
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_18
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1114636288
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-120],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1114636288
	call	__bbFMod
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-124],eax
	jmp	_19
_18
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-124],ebx
_19
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-128],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-128]
	sar	ebx,byte 1
	sub	ebx,60
	mov	[esp+4],ebx
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ffreefont
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	[esp+4],30
	sub	esp,4
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],200
	call	_fcolor
	sub	esp,56
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-128],eax
	sub	esp,4
	mov	ebx,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-128]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-128],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-128]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-128],eax
	sub	esp,4
	mov	ebx,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-128]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-128],eax
	sub	esp,4
	lea	ebx,[ebp-116]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-128]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[ebp-128],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-128]
	sar	ebx,byte 1
	sub	ebx,30
	mov	[esp+4],ebx
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-128],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-128]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ffreefont
	call	_fwaitkey
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-128],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-128]
	mov	[ebp-128],eax
	sub	esp,4
	mov	esi,[ebp-116]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-128]
	mov	[ebp-128],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-128]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 44
	.align	16
_fgetrgb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+28]
	mov	ebx,[ebp+24]
	shl	ebx,byte 8
	or	eax,ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 16
	or	eax,ebx
	mov	ebx,-16777216
	or	eax,ebx
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
_8	.db	"Creating Shadow Map, please wait...!",0
_9	.db	"Arial",0
_17	.db	" Min",0
_20	.db	"Shadow Map done!",0
_21	.db	"Arial",0
_22	.db	"Time elapsed: ",0
_23	.db	":",0
_24	.db	"Hit any key to continue...",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
