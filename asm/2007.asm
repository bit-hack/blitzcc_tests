
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	eax,_aptc
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,12
	mov	esi,_aptc
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_aptc
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aptc
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aa
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_aa
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aa
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ab
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_ab
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ab
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ac
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_ac
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ac
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ad
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_ad
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ad
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atim
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,12
	mov	esi,_atim
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atim
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aoc
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_aoc
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aoc
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,28
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[esp],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1110704128
	mov	[esp+4],1110704128
	call	_frotateentity
	sub	esp,24
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],16
	sub	esp,4
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[esp],eax
	call	_fsetfont
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],1073741824
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	[esp+4],1073741824
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscaleentity
	mov	[ebp-12],0
	mov	[ebp-16],1133903872
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	mov	[ebp-20],1
	jmp	_10
_11
	sub	esp,8
	mov	[esp],-1046478848
	mov	[esp+4],1101004800
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],-1046478848
	mov	[esp+4],1101004800
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1101004800
	mov	[esp+4],1112014848
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	ebx,[ebp-12]
	mov	esi,_aptc
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aptc]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	mov	esi,_aptc
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aptc]
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	esi,_aptc
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aptc]
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_atim]
	mov	[esi],ebx
	sub	esp,20
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	[esp],1000
	mov	[esp+4],3000
	call	_frand
	add	[ebp-28],eax
	add	[ebp-20],1
_10
	cmp	[ebp-20],10
	jle	_11
_3
	mov	[ebp-32],0
	jmp	_12
_13
	mov	ebx,_aptc
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,10
	shl	ebx,byte 2
	add	ebx,[_aptc]
	mov	ebx,[ebx]
	mov	esi,_aptc
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aptc]
	mov	[esi],ebx
	mov	ebx,_aptc
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aptc]
	mov	ebx,[ebx]
	mov	esi,_aptc
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,11
	shl	esi,byte 2
	add	esi,[_aptc]
	mov	[esi],ebx
	mov	ebx,_aptc
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_aptc]
	mov	ebx,[ebx]
	mov	esi,_aptc
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,12
	shl	esi,byte 2
	add	esi,[_aptc]
	mov	[esi],ebx
	add	[ebp-32],1
_12
	cmp	[ebp-32],2
	jle	_13
_4
	mov	ebx,[ebp-28]
	mov	esi,11
	shl	esi,byte 2
	add	esi,[_atim]
	mov	[esi],ebx
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atim]
	mov	ebx,[ebx]
	add	ebx,[ebp-28]
	mov	esi,12
	shl	esi,byte 2
	add	esi,[_atim]
	mov	[esi],ebx
	mov	ebx,10
	shl	ebx,byte 2
	add	ebx,[_atim]
	mov	ebx,[ebx]
	sub	ebx,[ebp-28]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_atim]
	mov	[esi],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	add	[ebp-28],1
	mov	[ebp-20],11
_14
	mov	ebx,[ebp-20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atim]
	mov	ebx,[ebx]
	cmp	[ebp-28],ebx
	jle	_15
	add	[ebp-20],1
	cmp	[ebp-20],10
	jle	_16
	mov	[ebp-20],1
	mov	[ebp-36],0
	call	_fmillisecs
	mov	[ebp-40],eax
_16
	mov	[ebp-32],0
	jmp	_17
_18
	mov	ebx,_aptc
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_aptc]
	mov	ebx,[ebx]
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_ad]
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	add	ebx,1
	mov	esi,_aptc
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aptc]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	sub	esi,1
	mov	edi,_aptc
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp-32]
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_aptc]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-20]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_atim]
	mov	esi,[esi]
	mov	edi,[ebp-20]
	sub	edi,1
	shl	edi,byte 2
	add	edi,[_atim]
	mov	edi,[edi]
	sub	esi,edi
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_ac]
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	add	ebx,2
	mov	esi,_aptc
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aptc]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_aptc
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aptc]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-20]
	add	esi,2
	shl	esi,byte 2
	add	esi,[_atim]
	mov	esi,[esi]
	mov	edi,[ebp-20]
	shl	edi,byte 2
	add	edi,[_atim]
	mov	edi,[edi]
	sub	esi,edi
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	ebx,[ebp-20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atim]
	mov	ebx,[ebx]
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_atim]
	mov	esi,[esi]
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	ebx,[ebp-20]
	add	ebx,1
	mov	esi,_aptc
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aptc]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-48]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-32]
	shl	edi,byte 2
	add	edi,[_ac]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp-48]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-32]
	shl	edi,byte 2
	add	edi,[_ad]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_ab]
	mov	[ebx],esi
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_ab]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_ac]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-52]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aa]
	mov	[ebx],esi
	add	[ebp-32],1
_17
	cmp	[ebp-32],2
	jle	_18
_6
_15
	mov	[ebp-32],0
	jmp	_19
_20
	mov	ebx,[ebp-28]
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_atim]
	mov	esi,[esi]
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aa]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-60]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_ab]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-60]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_ac]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-56]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_ad]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_aoc]
	mov	[esi],ebx
	add	[ebp-32],1
_19
	cmp	[ebp-32],2
	jle	_20
_7
	sub	esp,20
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_aoc]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_aoc]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aoc]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,40
	mov	eax,981668463
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	mov	[ebp-32],1
	jmp	_23
_24
	sub	esp,16
	mov	ebx,_aptc
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aptc]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,_aptc
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_aptc]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,_aptc
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_aptc]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraproject
	sub	esp,24
	mov	eax,981668463
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_atim]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[ebp-64],eax
	mov	eax,ebx
	call	_fprojectedy
	mov	ebx,eax
	mov	eax,[ebp-64]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftext
	add	[ebp-32],1
_23
	cmp	[ebp-32],10
	jle	_24
_8
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fmillisecs
	sub	eax,[ebp-40]
	mov	[ebp-28],eax
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_14
_5
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_aptc	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_aa	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ab	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ac	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ad	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_atim	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aoc	.dd	0
	.dd	2
	.dd	1
	.dd	0
_9	.db	"Arial",0
_21	.db	"Time:",0
_22	.db	"s",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

