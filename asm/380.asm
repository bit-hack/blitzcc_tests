
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,12
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1115684864
	mov	[esp+12],1119879168
	mov	[esp+4],1107296256
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1063256064
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],1124073472
	mov	[esp+12],1115684864
	mov	[esp+4],1124073472
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],-1035468800
	mov	[esp+16],0
	mov	[esp+8],1101004800
	mov	[esp+4],-1027080192
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpointentity
_13
	sub	esp,20
	mov	[esp+12],1053609165
	mov	[esp+16],0
	mov	[esp+8],1045220557
	mov	[esp+4],1036831949
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_14
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1110651699
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftranslateentity
_14
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_15
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1036831949
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftranslateentity
_15
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_16
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1036831949
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftranslateentity
_16
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_17
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1110651699
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftranslateentity
_17
	sub	esp,4
	mov	[esp],30
	call	_fkeydown
	and	eax,eax
	jz	_18
	sub	esp,20
	mov	[esp+12],1036831949
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftranslateentity
_18
	sub	esp,4
	mov	[esp],44
	call	_fkeydown
	and	eax,eax
	jz	_19
	sub	esp,20
	mov	[esp+12],-1110651699
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftranslateentity
_19
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	and	eax,eax
	jz	_20
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],-1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftrimesh
	jmp	_21
_20
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1065353216
	call	_fentityalpha
_21
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_13
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
_ftrimesh
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,132
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
	mov	[ebp-128],ebx
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fentityinview
	and	eax,eax
	jz	_22
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	[ebp-4],1
	jmp	_23
_24
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-8],eax
	mov	[ebp-12],0
	jmp	_25
_26
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-16],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-68],ebx
	mov	ebx,[ebp-48]
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
	mov	[ebp-72],ebx
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-76],ebx
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-80],ebx
	mov	ebx,[ebp-60]
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
	mov	[ebp-84],ebx
	mov	ebx,[ebp-68]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-84]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-72]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-88],ebx
	mov	ebx,[ebp-72]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-76]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-84]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-64]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-92],ebx
	mov	ebx,[ebp-64]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-76]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-68]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-96],ebx
	sub	esp,4
	mov	eax,[ebp-88]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-92]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,[ebp-96]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-96]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-100],eax
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-100]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-88],ebx
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-100]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-92],ebx
	mov	ebx,[ebp-96]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-100]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-96],ebx
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-92]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-32]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-96]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-104],ebx
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	esi,[ebp+24]
	mov	[esp+16],esi
	mov	[esp+8],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftformpoint
	call	_ftformedx
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-132],eax
	mov	eax,ebx
	call	_ftformedy
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	esi,[ebp-92]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	[ebp-132],eax
	mov	eax,ebx
	call	_ftformedz
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	esi,[ebp-96]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,[ebp-104]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_27
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_ftformpoint
	sub	esp,16
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-132],eax
	mov	eax,ebx
	call	_ftformedz
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-132],eax
	mov	eax,ebx
	call	_ftformedx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-108],eax
	call	_fprojectedy
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-112],eax
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-48]
	mov	[esp+8],esi
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_ftformpoint
	sub	esp,16
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-132],eax
	mov	eax,ebx
	call	_ftformedz
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-132],eax
	mov	eax,ebx
	call	_ftformedx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-116],eax
	call	_fprojectedy
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-120],eax
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-60]
	mov	[esp+8],esi
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_ftformpoint
	sub	esp,16
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-132],eax
	mov	eax,ebx
	call	_ftformedz
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-132],eax
	mov	eax,ebx
	call	_ftformedx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-124],eax
	call	_fprojectedy
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-128],eax
	sub	esp,20
	mov	ebx,[ebp-120]
	mov	[esp+12],ebx
	mov	esi,[ebp+28]
	mov	[esp+16],esi
	mov	esi,[ebp-116]
	mov	[esp+8],esi
	mov	ebx,[ebp-112]
	mov	[esp+4],ebx
	mov	eax,[ebp-108]
	mov	[esp],eax
	call	_facidline
	sub	esp,20
	mov	ebx,[ebp-128]
	mov	[esp+12],ebx
	mov	esi,[ebp+28]
	mov	[esp+16],esi
	mov	esi,[ebp-124]
	mov	[esp+8],esi
	mov	ebx,[ebp-120]
	mov	[esp+4],ebx
	mov	eax,[ebp-116]
	mov	[esp],eax
	call	_facidline
	sub	esp,20
	mov	ebx,[ebp-112]
	mov	[esp+12],ebx
	mov	esi,[ebp+28]
	mov	[esp+16],esi
	mov	esi,[ebp-108]
	mov	[esp+8],esi
	mov	ebx,[ebp-128]
	mov	[esp+4],ebx
	mov	eax,[ebp-124]
	mov	[esp],eax
	call	_facidline
_27
	add	[ebp-12],1
_25
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_26
_6
	add	[ebp-4],1
_23
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-4],eax
	jle	_24
_5
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
_22
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_facidline
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,60
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
	mov	[ebp-4],0
	mov	[ebp-8],0
	call	_fgraphicswidth
	sub	eax,1
	mov	[ebp-12],eax
	call	_fgraphicsheight
	sub	eax,1
	mov	[ebp-16],eax
_28
	mov	[ebp-20],0
	mov	[ebp-24],0
	mov	ebx,[ebp-16]
	cmp	[ebp+24],ebx
	jle	_29
	mov	ebx,[ebp-20]
	mov	esi,1
	or	ebx,esi
	mov	[ebp-20],ebx
	jmp	_30
_29
	mov	ebx,[ebp-8]
	cmp	[ebp+24],ebx
	jge	_31
	mov	ebx,[ebp-20]
	mov	esi,2
	or	ebx,esi
	mov	[ebp-20],ebx
_31
_30
	mov	ebx,[ebp-12]
	cmp	[ebp+20],ebx
	jle	_32
	mov	ebx,[ebp-20]
	mov	esi,4
	or	ebx,esi
	mov	[ebp-20],ebx
	jmp	_33
_32
	mov	ebx,[ebp-4]
	cmp	[ebp+20],ebx
	jge	_34
	mov	ebx,[ebp-20]
	mov	esi,8
	or	ebx,esi
	mov	[ebp-20],ebx
_34
_33
	mov	ebx,[ebp-16]
	cmp	[ebp+32],ebx
	jle	_35
	mov	ebx,[ebp-24]
	mov	esi,1
	or	ebx,esi
	mov	[ebp-24],ebx
	jmp	_36
_35
	mov	ebx,[ebp-8]
	cmp	[ebp+32],ebx
	jge	_37
	mov	ebx,[ebp-24]
	mov	esi,2
	or	ebx,esi
	mov	[ebp-24],ebx
_37
_36
	mov	ebx,[ebp-12]
	cmp	[ebp+28],ebx
	jle	_38
	mov	ebx,[ebp-24]
	mov	esi,4
	or	ebx,esi
	mov	[ebp-24],ebx
	jmp	_39
_38
	mov	ebx,[ebp-4]
	cmp	[ebp+28],ebx
	jge	_40
	mov	ebx,[ebp-24]
	mov	esi,8
	or	ebx,esi
	mov	[ebp-24],ebx
_40
_39
	mov	ebx,[ebp-20]
	mov	esi,[ebp-24]
	or	ebx,esi
	cmp	ebx,0
	jnz	_41
	jmp	_8
_41
	mov	ebx,[ebp-20]
	mov	esi,[ebp-24]
	and	ebx,esi
	and	ebx,ebx
	jz	_42
	mov	eax,0
	jmp	_7_leave
_42
	mov	ebx,[ebp-20]
	mov	esi,1
	and	ebx,esi
	cmp	ebx,1
	jnz	_43
	mov	eax,[ebp+28]
	sub	eax,[ebp+20]
	mov	ebx,[ebp-16]
	sub	ebx,[ebp+24]
	imul	eax,ebx
	mov	ecx,[ebp+32]
	sub	ecx,[ebp+24]
	cdq
	idiv	ecx
	add	[ebp+20],eax
	mov	ebx,[ebp-16]
	mov	[ebp+24],ebx
	jmp	_l_7continue
_43
	mov	ebx,[ebp-20]
	mov	esi,2
	and	ebx,esi
	cmp	ebx,2
	jnz	_44
	mov	eax,[ebp+28]
	sub	eax,[ebp+20]
	mov	ebx,[ebp-8]
	sub	ebx,[ebp+24]
	imul	eax,ebx
	mov	ecx,[ebp+32]
	sub	ecx,[ebp+24]
	cdq
	idiv	ecx
	add	[ebp+20],eax
	mov	ebx,[ebp-8]
	mov	[ebp+24],ebx
	jmp	_l_7continue
_44
	mov	ebx,[ebp-20]
	mov	esi,4
	and	ebx,esi
	cmp	ebx,4
	jnz	_45
	mov	eax,[ebp+32]
	sub	eax,[ebp+24]
	mov	ebx,[ebp-12]
	sub	ebx,[ebp+20]
	imul	eax,ebx
	mov	ecx,[ebp+28]
	sub	ecx,[ebp+20]
	cdq
	idiv	ecx
	add	[ebp+24],eax
	mov	ebx,[ebp-12]
	mov	[ebp+20],ebx
	jmp	_l_7continue
_45
	mov	ebx,[ebp-20]
	mov	esi,8
	and	ebx,esi
	cmp	ebx,8
	jnz	_46
	mov	eax,[ebp+32]
	sub	eax,[ebp+24]
	mov	ebx,[ebp-4]
	sub	ebx,[ebp+20]
	imul	eax,ebx
	mov	ecx,[ebp+28]
	sub	ecx,[ebp+20]
	cdq
	idiv	ecx
	add	[ebp+24],eax
	mov	ebx,[ebp-4]
	mov	[ebp+20],ebx
	jmp	_l_7continue
_46
	mov	ebx,[ebp-24]
	mov	esi,1
	and	ebx,esi
	cmp	ebx,1
	jnz	_47
	mov	eax,[ebp+28]
	sub	eax,[ebp+20]
	mov	ebx,[ebp-16]
	sub	ebx,[ebp+24]
	imul	eax,ebx
	mov	ecx,[ebp+32]
	sub	ecx,[ebp+24]
	cdq
	idiv	ecx
	add	eax,[ebp+20]
	mov	[ebp+28],eax
	mov	ebx,[ebp-16]
	mov	[ebp+32],ebx
	jmp	_l_7continue
_47
	mov	ebx,[ebp-24]
	mov	esi,2
	and	ebx,esi
	cmp	ebx,2
	jnz	_48
	mov	eax,[ebp+28]
	sub	eax,[ebp+20]
	mov	ebx,[ebp-8]
	sub	ebx,[ebp+24]
	imul	eax,ebx
	mov	ecx,[ebp+32]
	sub	ecx,[ebp+24]
	cdq
	idiv	ecx
	add	eax,[ebp+20]
	mov	[ebp+28],eax
	mov	ebx,[ebp-8]
	mov	[ebp+32],ebx
	jmp	_l_7continue
_48
	mov	ebx,[ebp-24]
	mov	esi,4
	and	ebx,esi
	cmp	ebx,4
	jnz	_49
	mov	eax,[ebp+32]
	sub	eax,[ebp+24]
	mov	ebx,[ebp-12]
	sub	ebx,[ebp+20]
	imul	eax,ebx
	mov	ecx,[ebp+28]
	sub	ecx,[ebp+20]
	cdq
	idiv	ecx
	add	eax,[ebp+24]
	mov	[ebp+32],eax
	mov	ebx,[ebp-12]
	mov	[ebp+28],ebx
	jmp	_l_7continue
_49
	mov	ebx,[ebp-24]
	mov	esi,8
	and	ebx,esi
	cmp	ebx,8
	jnz	_50
	mov	eax,[ebp+32]
	sub	eax,[ebp+24]
	mov	ebx,[ebp-4]
	sub	ebx,[ebp+20]
	imul	eax,ebx
	mov	ecx,[ebp+28]
	sub	ecx,[ebp+20]
	cdq
	idiv	ecx
	add	eax,[ebp+24]
	mov	[ebp+32],eax
	mov	ebx,[ebp-4]
	mov	[ebp+28],ebx
	jmp	_l_7continue
_50
_l_7continue
	jmp	_28
_8
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+20]
	mov	[ebp-28],ebx
	mov	ebx,[ebp+32]
	sub	ebx,[ebp+24]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-28]
	mov	esi,[ebp-32]
	or	ebx,esi
	cmp	ebx,0
	jnz	_51
	sub	esp,16
	mov	ebx,[ebp+36]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritepixel
	mov	eax,0
	jmp	_7_leave
_51
	cmp	[ebp-28],0
	jl	_52
	mov	[ebp-36],1
	mov	ebx,[ebp-28]
	mov	[ebp-40],ebx
	jmp	_53
_52
	mov	[ebp-36],-1
	mov	ebx,[ebp-28]
	neg	ebx
	mov	[ebp-40],ebx
_53
	cmp	[ebp-32],0
	jl	_54
	mov	[ebp-44],1
	mov	ebx,[ebp-32]
	mov	[ebp-48],ebx
	jmp	_55
_54
	mov	[ebp-44],-1
	mov	ebx,[ebp-32]
	neg	ebx
	mov	[ebp-48],ebx
_55
	mov	ebx,[ebp-48]
	cmp	[ebp-40],ebx
	jle	_56
	mov	ebx,[ebp-48]
	add	ebx,[ebp-48]
	sub	ebx,[ebp-40]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-40]
	add	ebx,[ebp-40]
	mov	[ebp-56],ebx
	mov	ebx,[ebp-48]
	add	ebx,[ebp-48]
	mov	[ebp-60],ebx
	jmp	_58
_57
	sub	esp,16
	mov	ebx,[ebp+36]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritepixelfast
	mov	ebx,[ebp-36]
	add	[ebp+20],ebx
	mov	ebx,[ebp-60]
	add	[ebp-52],ebx
	cmp	[ebp-52],0
	jle	_59
	mov	ebx,[ebp-44]
	add	[ebp+24],ebx
	mov	ebx,[ebp-56]
	sub	[ebp-52],ebx
_59
	sub	[ebp-40],1
_58
	cmp	[ebp-40],-1
	jg	_57
_9
	jmp	_60
_56
	mov	ebx,[ebp-40]
	add	ebx,[ebp-40]
	sub	ebx,[ebp-48]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-48]
	add	ebx,[ebp-48]
	mov	[ebp-56],ebx
	mov	ebx,[ebp-40]
	add	ebx,[ebp-40]
	mov	[ebp-60],ebx
	jmp	_62
_61
	sub	esp,16
	mov	ebx,[ebp+36]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritepixelfast
	mov	ebx,[ebp-44]
	add	[ebp+24],ebx
	mov	ebx,[ebp-60]
	add	[ebp-52],ebx
	cmp	[ebp-52],0
	jle	_63
	mov	ebx,[ebp-36]
	add	[ebp+20],ebx
	mov	ebx,[ebp-56]
	sub	[ebp-52],ebx
_63
	sub	[ebp-48],1
_62
	cmp	[ebp-48],-1
	jg	_61
_10
_60
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
_11	.db	"TriMesh: Use cursors, plus A & Z... SPACE draws lines",0
_12	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

