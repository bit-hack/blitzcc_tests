
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1041865114
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fboundentity3d
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],1084647014
	mov	[esp+12],1082130432
	mov	[esp+4],-1061158912
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-16],eax
	sub	esp,20
	mov	[esp+12],1107296256
	mov	[esp+16],0
	mov	[esp+8],1107296256
	mov	[esp+4],1107296256
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],1103101952
	call	_flightrange
	sub	esp,16
	mov	[esp+8],1128792064
	mov	[esp+12],1128792064
	mov	[esp+4],1128792064
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraclsmode
	sub	esp,12
	mov	[esp+4],1107296256
	mov	[esp+8],1107296256
	mov	[esp],1107296256
	call	_fambientlight
_10
	sub	esp,20
	mov	[esp+12],-1087163597
	mov	[esp+16],0
	mov	[esp+8],-1088841318
	mov	[esp+4],-1090519040
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,28
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1117782016
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	[ebp-28],eax
	sub	esp,4
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1126170624
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-28]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-24],eax
	sub	esp,4
	mov	[ebp-28],eax
	sub	esp,4
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1109393408
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-28]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,24
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1109393408
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	[ebp-28],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1109393408
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_11
	cmp	[ebp-20],0
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-20],0
	jnz	_12
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fshowentity
	jmp	_13
_12
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fhideentity
_13
_11
	cmp	[ebp-20],0
	jnz	_14
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1045220557
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fboundentity3d
_14
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	call	_fcls
	sub	esp,4
	mov	[esp],0
	call	_fwireframe
	sub	esp,12
	mov	[esp+4],1107296256
	mov	[esp+8],1107296256
	mov	[esp],1107296256
	call	_fambientlight
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraclsmode
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraclsmode
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fambientlight
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	cmp	[ebp-20],0
	jnz	_15
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fshowentity
_15
	cmp	[ebp-20],1
	jnz	_16
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],16
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fboundentity2d
_16
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_10
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
_fboundentity3d
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	cmp	[ebp+20],0
	jnz	_17
	mov	eax,0
	jmp	_4_leave
_17
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fentityclass
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_18
	mov	eax,0
	jmp	_4_leave
_18
	cmp	[ebp+24],0
	jnz	_20
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp+24],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],17
	call	_fentityfx
	sub	esp,16
	mov	[esp+8],49
	mov	[esp+12],1
	mov	[esp+4],256
	mov	[esp],256
	call	_fcreatetexture
	mov	[ebp-8],eax
	sub	esp,12
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],32
	mov	[esp+8],32
	mov	[esp],32
	call	_fcolor
	sub	esp,20
	mov	[esp+12],256
	mov	[esp+16],1
	mov	[esp+8],256
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],244
	mov	[esp+16],1
	mov	[esp+8],244
	mov	[esp+4],6
	mov	[esp],6
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],32
	mov	[esp+4],0
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],255
	mov	[esp+4],223
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	[esp+8],256
	mov	[esp+12],32
	mov	[esp+4],0
	mov	[esp],256
	call	_fline
	sub	esp,16
	mov	[esp+8],255
	mov	[esp+12],255
	mov	[esp+4],223
	mov	[esp],255
	call	_fline
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],0
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	[esp+8],255
	mov	[esp+12],0
	mov	[esp+4],0
	mov	[esp],223
	call	_fline
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],255
	mov	[esp+4],255
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	[esp+8],255
	mov	[esp+12],255
	mov	[esp+4],255
	mov	[esp],223
	call	_fline
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],3
	call	_fentityblend
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreetexture
_20
	mov	[ebp-12],-915135504
	mov	[ebp-16],-915135504
	mov	[ebp-20],-915135504
	mov	[ebp-24],1232348144
	mov	[ebp-28],1232348144
	mov	[ebp-32],1232348144
	mov	[ebp-36],1
	jmp	_21
_22
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-40],eax
	mov	[ebp-44],0
	jmp	_23
_24
	sub	esp,28
	mov	eax,[ebp-40]
	mov	[esp],eax
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	esi,[ebp-44]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp-40]
	mov	[esp],eax
	mov	esi,[ebp-44]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftformpoint
	call	_ftformedx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_25
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	jmp	_26
_25
	call	_ftformedx
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_27
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
_27
_26
	call	_ftformedy
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_28
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	jmp	_29
_28
	call	_ftformedy
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_30
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
_30
_29
	call	_ftformedz
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_31
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	jmp	_32
_31
	call	_ftformedz
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_33
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
_33
_32
	add	[ebp-44],1
_23
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-44],eax
	jle	_24
_6
	add	[ebp-36],1
_21
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-36],eax
	jle	_22
_5
	sub	esp,32
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-20]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,1073741824
	push	edx
	fld	[esp]
	pop	edx
	fmulp	st(1)
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+24],esi
	mov	[esp+28],0
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-12]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,1073741824
	push	edx
	fld	[esp]
	pop	edx
	fmulp	st(1)
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_ffitmesh
	mov	eax,[ebp+24]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fboundentity2d
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	cmp	[ebp+20],0
	setz	al
	movzx	eax,al
	mov	[ebp-44],eax
	cmp	[ebp+24],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	or	eax,ebx
	and	eax,eax
	jz	_34
	mov	eax,0
	jmp	_7_leave
_34
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fentityclass
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_35
	mov	eax,0
	jmp	_7_leave
_35
	call	_fgraphicswidth
	mov	[ebp-16],eax
	call	_fgraphicsheight
	mov	[ebp-20],eax
	mov	[ebp-24],1
	jmp	_37
_38
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-28],eax
	mov	[ebp-32],0
	jmp	_39
_40
	sub	esp,28
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-44],eax
	sub	esp,8
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftformpoint
	sub	esp,16
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_ftformedz
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_ftformedx
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-36],eax
	call	_fprojectedy
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-40],eax
	mov	ebx,[ebp-8]
	cmp	[ebp-36],ebx
	jle	_41
	mov	ebx,[ebp-36]
	mov	[ebp-8],ebx
_41
	mov	ebx,[ebp-16]
	cmp	[ebp-36],ebx
	jge	_42
	mov	ebx,[ebp-36]
	mov	[ebp-16],ebx
_42
	mov	ebx,[ebp-12]
	cmp	[ebp-40],ebx
	jle	_43
	mov	ebx,[ebp-40]
	mov	[ebp-12],ebx
_43
	mov	ebx,[ebp-20]
	cmp	[ebp-40],ebx
	jge	_44
	mov	ebx,[ebp-40]
	mov	[ebp-20],ebx
_44
	add	[ebp-32],1
_39
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-32],eax
	jle	_40
_9
	add	[ebp-24],1
_37
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-24],eax
	jle	_38
_8
	mov	ebx,[ebp+28]
	add	[ebp-8],ebx
	mov	ebx,[ebp+28]
	add	[ebp-12],ebx
	mov	ebx,[ebp+28]
	sub	[ebp-16],ebx
	mov	ebx,[ebp+28]
	sub	[ebp-20],ebx
	sub	esp,16
	mov	ebx,[ebp-8]
	sub	ebx,32
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	sub	esi,32
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-16]
	add	ebx,32
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	add	esi,32
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-16]
	add	ebx,32
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	sub	esi,32
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-8]
	sub	ebx,32
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	add	esi,32
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fline
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
_19	.db	"mesh",0
_36	.db	"mesh",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

