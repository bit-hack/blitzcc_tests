
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],1124073472
	mov	[esp+8],1124073472
	mov	[esp],1124073472
	call	_fambientlight
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fcameraprojmode
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1028443341
	call	_fcamerazoom
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],1124073472
	mov	[esp+12],1124073472
	mov	[esp+4],1124073472
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1084227584
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],-1065353216
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],1112014848
	mov	[esp+12],1112014848
	mov	[esp+4],1124073472
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1073741824
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-20],eax
	sub	esp,16
	mov	[esp+8],1112014848
	mov	[esp+12],1112014848
	mov	[esp+4],1124073472
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],-1061158912
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1073741824
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],8
	call	_fcreatecone
	mov	[ebp-24],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1119092736
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_frotatemesh
	sub	esp,16
	mov	[esp+8],1124073472
	mov	[esp+12],1119092736
	mov	[esp+4],1112014848
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitycolor
	mov	[ebp-28],1092616192
	mov	[ebp-32],1119092736
	sub	esp,20
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	[esp+8],1065353216
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcreatedisc
	mov	[_vviewcone],eax
	sub	esp,16
	mov	[esp+8],1112014848
	mov	[esp+12],1115684864
	mov	[esp+4],0
	mov	eax,[_vviewcone]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[_vviewcone]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	mov	ebx,[ebp-32]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-28]
	mov	[ebp-40],ebx
	jmp	_10
_9
	sub	esp,24
	mov	[esp],203
	call	_fkeydown
	mov	[ebp-68],eax
	sub	esp,4
	mov	[esp],205
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-68]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,20
	mov	[esp],200
	call	_fkeydown
	mov	[ebp-68],eax
	sub	esp,4
	mov	[esp],208
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-68]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],201
	call	_fkeydown
	mov	[ebp-68],eax
	sub	esp,4
	mov	[esp],209
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-68]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_11
	mov	[ebp-28],1065353216
_11
	sub	esp,4
	mov	[esp],210
	call	_fkeydown
	mov	[ebp-68],eax
	sub	esp,4
	mov	[esp],211
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-68]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
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
	mov	[ebp-32],1065353216
_12
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135869952
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
	mov	[ebp-32],1135869952
_13
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_14
	sub	esp,4
	mov	eax,[_vviewcone]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,20
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	[esp+8],1065353216
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcreatedisc
	mov	[_vviewcone],eax
	sub	esp,16
	mov	[esp+8],1112014848
	mov	[esp+12],1115684864
	mov	[esp+4],0
	mov	eax,[_vviewcone]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[_vviewcone]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	mov	ebx,[ebp-32]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-28]
	mov	[ebp-40],ebx
_14
	sub	esp,20
	mov	ebx,[ebp-28]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[_vviewcone]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],320
	call	_ftext
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	esi,[ebp-32]
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_flineofsight3d
	mov	[ebp-44],eax
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	esi,[ebp-32]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_flineofsight3d
	mov	[ebp-48],eax
	mov	ebx,[ebp-44]
	and	ebx,ebx
	jz	_16
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],40
	mov	[esp],320
	call	_ftext
	sub	esp,24
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-52],eax
	call	_fprojectedy
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,24
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-60],eax
	call	_fprojectedy
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-64],eax
	sub	esp,16
	mov	ebx,[ebp-60]
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	mov	[esp+12],esi
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fline
	jmp	_18
_16
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],40
	mov	[esp],320
	call	_ftext
	sub	esp,24
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-52],eax
	call	_fprojectedy
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,24
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-60],eax
	call	_fprojectedy
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-64],eax
	sub	esp,20
	mov	ebx,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],5
	mov	esi,[ebp-60]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-56]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-52]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fdottedline
_18
	mov	ebx,[ebp-48]
	and	ebx,ebx
	jz	_20
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],50
	mov	[esp],320
	call	_ftext
	sub	esp,24
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-52],eax
	call	_fprojectedy
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,24
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-60],eax
	call	_fprojectedy
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-64],eax
	sub	esp,16
	mov	ebx,[ebp-60]
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	mov	[esp+12],esi
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fline
	jmp	_22
_20
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],50
	mov	[esp],320
	call	_ftext
	sub	esp,24
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-52],eax
	call	_fprojectedy
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,24
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-60],eax
	call	_fprojectedy
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-64],eax
	sub	esp,20
	mov	ebx,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],5
	mov	esi,[ebp-60]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-56]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-52]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fdottedline
_22
	sub	esp,48
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[esp+4],440
	mov	[esp],320
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_10
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_9
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
_fdottedline
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
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	eax,[ebp-4]
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
	and	eax,eax
	jz	_26
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
_26
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_27
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
_27
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
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
	mov	ebx,[ebp-8]
	mov	[ebp-12],ebx
	jmp	_29
_28
	mov	ebx,[ebp-4]
	mov	[ebp-12],ebx
_29
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_30
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
_30
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	eax,[ebp+24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+32]
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
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
_31
	call	_fcolorred
	shl	eax,byte 8
	shl	eax,byte 8
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fcolorgreen
	mov	ebx,eax
	mov	eax,[ebp-32]
	shl	ebx,byte 8
	add	eax,ebx
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fcolorblue
	mov	ebx,eax
	mov	eax,[ebp-32]
	add	eax,ebx
	mov	[ebp-24],eax
	sub	esp,4
	call	_fgraphicsbuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-28],0
	jmp	_32
_33
	mov	eax,[ebp+20]
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
	mov	[ebp-32],eax
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	[ebp-36],eax
	mov	eax,esi
	call	_fgraphicswidth
	mov	esi,eax
	mov	eax,[ebp-36]
	sub	esi,1
	push	esi
	fild	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_34
	mov	eax,[ebp+24]
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
	mov	[ebp-32],eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	[ebp-36],eax
	mov	eax,esi
	call	_fgraphicsheight
	mov	esi,eax
	mov	eax,[ebp-36]
	sub	esi,1
	push	esi
	fild	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_35
	sub	esp,8
	mov	eax,[ebp-28]
	mov	ecx,[ebp+36]
	cdq
	idiv	ecx
	mov	[esp],eax
	mov	[esp+4],2
	call	__bbMod
	cmp	eax,0
	jnz	_36
	sub	esp,16
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fwritepixelfast
_36
_35
_34
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+20],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+24],ebx
	add	[ebp-28],1
_32
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	cmp	[ebp-28],eax
	jle	_33
_5
	sub	esp,4
	call	_fgraphicsbuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fcreatedisc
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	cmp	[ebp+20],1
	jge	_37
	mov	[ebp+20],1
_37
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcreatemesh
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-8],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-12],eax
	sub	esp,32
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fsin
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	mov	[ebp-16],ebx
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],1
	jmp	_38
_39
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-28],esi
	sub	esp,32
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fsin
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	mov	[ebp-32],ebx
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-32]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	mov	ebx,[ebp-32]
	mov	[ebp-16],ebx
	add	[ebp-24],1
_38
	mov	ebx,[ebp+20]
	cmp	[ebp-24],ebx
	jle	_39
_7
	mov	eax,[ebp-4]
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_flineofsight3d
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fentitydistance
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_40
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	[esp],0
	call	_ftformvector
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-36]
	fsubp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityy
	mov	ebx,eax
	mov	eax,[ebp-36]
	fsubp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-36]
	fsubp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-24]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-28]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	sub	esp,4
	mov	eax,[ebp+32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	xchg	ebx,eax
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_41
	sub	esp,28
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+20],esi
	mov	[esp+24],1008981770
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityy
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_flinepick
	cmp	eax,[ebp+24]
	jnz	_42
	mov	eax,1
	jmp	_8_leave
_42
_41
_40
	mov	eax,0
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
_vviewcone	.dd	0
_15	.db	"Arrows - move | Page Up/Down - view range | Insert\Delete - view angle",0
_17	.db	"Observer can see target 1",0
_19	.db	"Observer can NOT see target 1",0
_21	.db	"Observer can see target 2",0
_23	.db	"Observer can NOT see target 2",0
_24	.db	"View Range - ",0
_25	.db	"| View Angle - ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

