
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,76
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	call	_fbuilding
	mov	[ebp-4],eax
	call	_fbuilding
	mov	[ebp-8],eax
	call	_fbuilding
	mov	[ebp-12],eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fremovetris
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fremovetris
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fremovetris
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,12
	mov	[esp+4],3
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,12
	mov	[esp+4],4
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-16],eax
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,12
	mov	[esp+4],1084227584
	mov	[esp+8],1092616192
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentityradius
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1128792064
	mov	[esp+16],0
	mov	[esp+8],1112014848
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fresetentity
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],3
	mov	[esp+4],2
	mov	[esp],1
	call	_fcollisions
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],3
	mov	[esp+4],3
	mov	[esp],1
	call	_fcollisions
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],3
	mov	[esp+4],4
	mov	[esp],1
	call	_fcollisions
	sub	esp,8
	mov	[esp],400
	mov	[esp+4],300
	call	_fmovemouse
	call	_fmousexspeed
	call	_fmouseyspeed
_10
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,16
	mov	ebx,[ebp-28]
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
	mov	[esp+4],ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],3
	call	_fentitycollided
	and	eax,eax
	jz	_11
	sub	esp,20
	mov	ebx,[ebp-48]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
_11
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	call	_fmousexspeed
	neg	eax
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fturnentity
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	sub	esp,8
	mov	[esp],400
	mov	[esp+4],300
	call	_fmovemouse
	mov	eax,[ebp-52]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1029701632
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_12
	mov	[ebp-52],-1029701632
_12
	mov	eax,[ebp-52]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1117782016
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_13
	mov	[ebp-52],1117782016
_13
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	eax,[ebp-56]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-64],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[ebp-64]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	cmp	[ebp-68],0
	jle	_14
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065017672
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065017672
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ftranslateentity
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1063675494
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fentitycollided
	and	eax,eax
	jz	_15
	mov	[ebp-68],0
_15
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],4
	call	_fentitycollided
	and	eax,eax
	jz	_16
	mov	[ebp-68],0
_16
	sub	[ebp-68],1
	jmp	_17
_14
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1063675494
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1063675494
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp-36]
	and	ebx,ebx
	jz	_18
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-72],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],0
	mov	[esp+16],-1053818880
	mov	[esp+12],0
	mov	esi,[ebp-60]
	mov	[esp+8],esi
	mov	ebx,[ebp-72]
	mov	[esp+4],ebx
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_flinepick
	and	eax,eax
	jz	_19
	mov	[ebp-68],45
	mov	[ebp-24],1077936128
_19
	jmp	_20
_18
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[ebp-76]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fentitycollided
	cmp	eax,0
	jnz	_21
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1066024305
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-76],ebx
	jmp	_22
_21
	mov	[ebp-76],0
	sub	esp,4
	mov	[esp],30
	call	_fkeydown
	and	eax,eax
	jz	_23
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065437102
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
_23
	sub	esp,4
	mov	[esp],32
	call	_fkeydown
	and	eax,eax
	jz	_24
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065437102
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
_24
	sub	esp,4
	mov	[esp],31
	call	_fkeydown
	and	eax,eax
	jz	_25
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065437102
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
_25
	sub	esp,4
	mov	[esp],17
	call	_fkeydown
	and	eax,eax
	jz	_26
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065437102
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
_26
_22
_20
_17
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_10
_3
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
_fremovetris
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
	mov	[ebp-4],0
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fentityclass
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_29
	mov	[ebp-8],1
	jmp	_31
_32
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-12],eax
	mov	[ebp-16],0
	jmp	_33
_34
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-24],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexx
	mov	[ebp-84],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-84]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexy
	mov	[ebp-84],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-84]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexz
	mov	[ebp-84],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-84]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fvertexx
	mov	[ebp-84],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-84]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fvertexy
	mov	[ebp-84],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-84]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fvertexz
	mov	[ebp-84],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-84]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-52],eax
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-48]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-52]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-44]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_35
	mov	eax,[ebp-60]
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
	mov	[ebp-68],eax
	jmp	_36
_35
	mov	eax,[ebp-60]
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
	mov	[ebp-68],eax
_36
	sub	esp,4
	mov	eax,[ebp-60]
	mov	[esp],eax
	call	__bbFAbs
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-84]
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-84],eax
	mov	[ebp-88],eax
	sub	esp,4
	mov	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-88]
	mov	[ebp-88],eax
	sub	esp,4
	mov	esi,[ebp-64]
	mov	[esp],esi
	mov	eax,esi
	call	__bbFAbs
	mov	esi,eax
	mov	eax,[ebp-88]
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-84]
	and	eax,ebx
	mov	ebx,[ebp-68]
	and	eax,ebx
	mov	[ebp-72],eax
	mov	ebx,[ebp+24]
	and	ebx,ebx
	jz	_37
	cmp	[ebp-72],0
	setz	al
	movzx	eax,al
	mov	[ebp-72],eax
_37
	mov	ebx,[ebp-72]
	and	ebx,ebx
	jz	_38
	sub	esp,8
	lea	eax,[ebp-76]
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_tttriangle
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-20]
	mov	esi,[ebp-76]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	esi,[ebp-76]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	mov	esi,[ebp-76]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_38
	add	[ebp-16],1
_33
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	cmp	[ebp-16],eax
	jle	_34
_6
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclearsurface
	mov	[ebp-80],0
	sub	esp,8
	lea	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],_tttriangle
	call	__bbObjEachFirst
	and	eax,eax
	jz	_7
_39
	sub	esp,16
	mov	ebx,[ebp-76]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-76]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-76]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-80],1
	sub	esp,4
	lea	eax,[ebp-76]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_39
_7
	sub	esp,4
	mov	eax,_tttriangle
	mov	[esp],eax
	call	__bbObjDeleteEach
	add	[ebp-8],1
_31
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-8],eax
	jle	_32
_5
_29
	mov	[ebp-8],1
	jmp	_40
_41
	sub	esp,20
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	call	_fremovetris
	add	[ebp-8],1
_40
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountchildren
	cmp	[ebp-8],eax
	jle	_41
_8
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fupdatenormals
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fbuilding
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,16
	mov	[esp+8],9
	mov	[esp+12],1
	mov	[esp+4],16
	mov	[esp],16
	call	_fcreatetexture
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],0
	mov	[esp+8],16
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,40
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+28],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+24],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	[esp+12],16
	mov	[esp+8],16
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],1117782016
	mov	[esp+12],1133903872
	mov	[esp+4],1133903872
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fflipmesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,12
	mov	[esp+4],1008981770
	mov	[esp+8],1022739087
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscaletexture
	mov	eax,[ebp-8]
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_tttriangle	.dd	5
_27	.dd	0
	.dd	_27
	.dd	_27
	.dd	0
	.dd	-1
_28	.dd	0
	.dd	_28
	.dd	_28
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
_30	.db	"Mesh",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

