
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,220
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
	mov	[ebp-132],ebx
	mov	[ebp-136],ebx
	mov	[ebp-140],ebx
	mov	[ebp-144],ebx
	mov	[ebp-148],ebx
	mov	[ebp-152],ebx
	mov	[ebp-156],ebx
	mov	[ebp-160],ebx
	mov	[ebp-164],ebx
	mov	[ebp-168],ebx
	mov	[ebp-172],ebx
	mov	[ebp-176],ebx
	mov	[ebp-180],ebx
	mov	[ebp-184],ebx
	mov	[ebp-188],ebx
	mov	[ebp-192],ebx
	mov	[ebp-196],ebx
	mov	[ebp-200],ebx
	mov	[ebp-204],ebx
	mov	[ebp-208],ebx
	mov	[ebp-212],ebx
	sub	esp,4
	mov	eax,_afg
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5
	mov	esi,_afg
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afg
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aa
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
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
	mov	ebx,1
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
	mov	ebx,1
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
	mov	ebx,1
	mov	esi,_ad
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ad
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aoc
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_aoc
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aoc
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],1
	call	_fantialias
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatecamera
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],-1059061760
	mov	[esp+16],0
	mov	[esp+8],1080033280
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1106247680
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcameraclsmode
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1110704128
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frotateentity
	mov	[ebp-16],0
	jmp	_22
_23
	call	__bbReadInt
	mov	[ebp-20],eax
	call	__bbReadInt
	mov	[ebp-24],eax
	call	__bbReadInt
	mov	[ebp-28],eax
	call	__bbReadInt
	mov	[ebp-32],eax
	call	__bbReadInt
	mov	[ebp-36],eax
	call	__bbReadInt
	mov	[ebp-40],eax
	call	__bbReadInt
	mov	[ebp-44],eax
	mov	[ebp-48],0
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_afg]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_afg]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,8
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_afg]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-52],eax
	mov	[ebp-56],2
	jmp	_24
_25
	mov	ebx,[ebp-24]
	mov	[ebp-60],ebx
	mov	ebx,[ebp-28]
	mov	[ebp-64],ebx
	mov	ebx,[ebp-32]
	mov	[ebp-68],ebx
	mov	ebx,[ebp-36]
	mov	[ebp-72],ebx
	mov	ebx,[ebp-40]
	mov	[ebp-76],ebx
	mov	ebx,[ebp-44]
	mov	[ebp-80],ebx
	call	__bbReadInt
	mov	[ebp-24],eax
	call	__bbReadInt
	mov	[ebp-28],eax
	call	__bbReadInt
	mov	[ebp-32],eax
	call	__bbReadInt
	mov	[ebp-36],eax
	call	__bbReadInt
	mov	[ebp-40],eax
	call	__bbReadInt
	mov	[ebp-44],eax
	sub	esp,4
	mov	eax,[ebp-60]
	sub	eax,[ebp-24]
	mov	ebx,[ebp-60]
	sub	ebx,[ebp-24]
	imul	eax,ebx
	mov	ebx,[ebp-64]
	sub	ebx,[ebp-28]
	mov	esi,[ebp-64]
	sub	esi,[ebp-28]
	imul	ebx,esi
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1028443341
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-84],ebx
	mov	[ebp-88],0
	jmp	_26
_27
	mov	ebx,[ebp-88]
	and	ebx,ebx
	jz	_28
	mov	ebx,[ebp-64]
	mov	[ebp-92],ebx
	mov	ebx,[ebp-28]
	mov	[ebp-96],ebx
	mov	ebx,[ebp-84]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-80]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-88]
	shl	esi,byte 2
	add	esi,[_ac]
	mov	[esi],ebx
	mov	ebx,[ebp-84]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-100],ebx
	jmp	_29
_28
	mov	ebx,[ebp-60]
	mov	[ebp-92],ebx
	mov	ebx,[ebp-24]
	mov	[ebp-96],ebx
	mov	ebx,[ebp-84]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-76]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-88]
	shl	esi,byte 2
	add	esi,[_ac]
	mov	[esi],ebx
	mov	ebx,[ebp-84]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-100],ebx
_29
	mov	ebx,[ebp-92]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-88]
	shl	esi,byte 2
	add	esi,[_ad]
	mov	[esi],ebx
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-96]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-100]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-88]
	shl	edi,byte 2
	add	edi,[_ac]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-88]
	shl	edi,byte 2
	add	edi,[_ad]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-88]
	shl	esi,byte 2
	add	esi,[_ab]
	mov	[esi],ebx
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-88]
	shl	esi,byte 2
	add	esi,[_ab]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-100]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,[ebp-88]
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
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-88]
	shl	ebx,byte 2
	add	ebx,[_aa]
	mov	[ebx],esi
	add	[ebp-88],1
_26
	cmp	[ebp-88],1
	jle	_27
_5
	mov	[ebp-104],0
	mov	[ebp-108],0
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	ebx,[ebx]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_aoc]
	mov	[esi],ebx
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	ebx,[ebx]
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_aoc]
	mov	[esi],ebx
	cmp	[ebp-56],2
	jnz	_30
	sub	esp,4
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fvertexes
	mov	[ebp-112],eax
_30
_31
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aoc]
	mov	ebx,[ebx]
	mov	[ebp-116],ebx
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aoc]
	mov	ebx,[ebx]
	mov	[ebp-120],ebx
	mov	ebx,-1069547520
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_aa]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-108]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1
	shl	edi,byte 2
	add	edi,[_ab]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp-104]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ac]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-124],ebx
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_aa]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-108]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,0
	shl	edi,byte 2
	add	edi,[_ab]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp-104]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_ac]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-128],ebx
	mov	eax,[ebp-124]
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
	setz	al
	movzx	eax,al
	mov	[ebp-216],eax
	mov	ebx,[ebp-128]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-216]
	and	eax,ebx
	and	eax,eax
	jz	_32
	mov	ebx,[ebp-64]
	sub	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-124],ebx
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-128],ebx
_32
	mov	ebx,[ebp-124]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	mov	esi,[ebp-116]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-128]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-120]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-132],ebx
	sub	esp,4
	mov	eax,[ebp-124]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-124]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-128]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-128]
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
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-136],eax
_33
	mov	ebx,[ebp-104]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,981668463
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-104],ebx
	mov	eax,[ebp-104]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_34
	mov	[ebp-104],1065353216
_34
	mov	ebx,[ebp-104]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-104]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-108],ebx
	mov	[ebp-88],0
	jmp	_35
_36
	mov	ebx,[ebp-88]
	shl	ebx,byte 2
	add	ebx,[_aa]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-108]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-104]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-88]
	shl	esi,byte 2
	add	esi,[_ab]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-108]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-88]
	shl	esi,byte 2
	add	esi,[_ac]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-104]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-88]
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
	mov	esi,[ebp-88]
	shl	esi,byte 2
	add	esi,[_aoc]
	mov	[esi],ebx
	add	[ebp-88],1
_35
	cmp	[ebp-88],1
	jle	_36
_8
	sub	esp,4
	mov	eax,[ebp-116]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aoc]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,[ebp-116]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_aoc]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	fmulp	st(1)
	mov	ebx,[ebp-120]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_aoc]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-120]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1
	shl	edi,byte 2
	add	edi,[_aoc]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1106247680
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_37
	jmp	_7
_37
	sub	esp,4
	mov	eax,[ebp-124]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aoc]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-128]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_aoc]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,[ebp-132]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,[ebp-136]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-216],eax
	mov	ebx,[ebp-104]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-216]
	or	ebx,eax
	and	ebx,ebx
	jz	_33
_7
	sub	esp,4
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fvertexes
	mov	[ebp-140],eax
	mov	ebx,[ebp-48]
	add	ebx,[ebp-112]
	mov	[ebp-144],ebx
	mov	[ebp-148],0
	mov	[ebp-152],0
_38
	mov	ebx,[ebp-148]
	add	ebx,1
	imul	ebx,[ebp-140]
	mov	esi,[ebp-152]
	add	esi,1
	imul	esi,[ebp-112]
	cmp	ebx,esi
	jge	_39
	add	[ebp-148],1
	mov	ebx,[ebp-160]
	mov	[ebp-156],ebx
	sub	esp,8
	mov	eax,[ebp-148]
	mov	[esp],eax
	mov	ebx,[ebp-112]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-160],eax
	sub	esp,16
	mov	ebx,[ebp-48]
	add	ebx,[ebp-156]
	mov	[esp+8],ebx
	mov	esi,[ebp-48]
	add	esi,[ebp-160]
	mov	[esp+12],esi
	mov	esi,[ebp-144]
	add	esi,[ebp-164]
	mov	[esp+4],esi
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_faddtriangle
	jmp	_40
_39
	add	[ebp-152],1
	mov	ebx,[ebp-164]
	mov	[ebp-168],ebx
	sub	esp,8
	mov	eax,[ebp-152]
	mov	[esp],eax
	mov	ebx,[ebp-140]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-164],eax
	sub	esp,16
	mov	ebx,[ebp-144]
	add	ebx,[ebp-164]
	mov	[esp+8],ebx
	mov	esi,[ebp-144]
	add	esi,[ebp-168]
	mov	[esp+12],esi
	mov	esi,[ebp-48]
	add	esi,[ebp-160]
	mov	[esp+4],esi
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_faddtriangle
_40
	cmp	[ebp-160],0
	setz	al
	movzx	eax,al
	mov	[ebp-216],eax
	cmp	[ebp-164],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-216]
	and	eax,ebx
	and	eax,eax
	jz	_38
_9
	mov	ebx,[ebp-144]
	mov	[ebp-48],ebx
	mov	ebx,[ebp-140]
	mov	[ebp-112],ebx
	mov	eax,[ebp-104]
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
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_41
	jmp	_6
_41
	jmp	_31
_6
	add	[ebp-56],1
_24
	mov	ebx,[ebp-20]
	cmp	[ebp-56],ebx
	jle	_25
_4
	sub	esp,4
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_afg]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fupdatenormals
	add	[ebp-16],1
_22
	cmp	[ebp-16],5
	jle	_23
_3
	sub	esp,12
	mov	eax,_42
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadmesh
	mov	[ebp-172],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1056964608
	mov	[esp+4],1056964608
	mov	eax,[ebp-172]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],-1119040307
	mov	[esp+4],0
	mov	eax,[ebp-172]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,4
	mov	eax,[ebp-172]
	mov	[esp],eax
	call	_fupdatenormals
	sub	esp,8
	mov	eax,[ebp-172]
	mov	[esp],eax
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_afg]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_faddmesh
	sub	esp,4
	mov	eax,[ebp-172]
	mov	[esp],eax
	call	_ffreeentity
	mov	[ebp-116],0
	jmp	_43
_44
	mov	[ebp-120],0
	jmp	_45
_46
	mov	[ebp-176],-1
	mov	eax,[ebp-120]
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
	setz	al
	movzx	eax,al
	mov	[ebp-216],eax
	mov	ebx,[ebp-120]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1088421888
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-216]
	or	eax,ebx
	and	eax,eax
	jz	_47
	sub	esp,16
	mov	ebx,[ebp-116]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,_48
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-176],eax
_47
	mov	eax,[ebp-120]
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
	setz	al
	movzx	eax,al
	mov	[ebp-216],eax
	mov	ebx,[ebp-120]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1086324736
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-216]
	or	eax,ebx
	and	eax,eax
	jz	_49
	mov	[ebp-176],5
_49
	cmp	[ebp-176],0
	jl	_50
	sub	esp,8
	mov	eax,[ebp-176]
	shl	eax,byte 2
	add	eax,[_afg]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	[ebp-176],eax
	sub	esp,20
	mov	ebx,[ebp-116]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1080033280
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-120]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1080033280
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	[esp+8],0
	mov	eax,[ebp-176]
	mov	[esp],eax
	call	_fpositionentity
	mov	eax,[ebp-120]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	shl	eax,byte 7
	add	eax,48
	mov	[ebp-180],eax
	mov	eax,[ebp-120]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_51
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1127481344
	mov	[esp+4],0
	mov	eax,[ebp-176]
	mov	[esp],eax
	call	_frotateentity
_51
	sub	esp,16
	mov	ebx,[ebp-180]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-180]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-180]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-176]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-176]
	mov	[esp],eax
	mov	[esp+4],1065353216
	call	_fentityshininess
_50
	mov	ebx,[ebp-120]
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
	mov	[ebp-120],ebx
_45
	mov	eax,[ebp-120]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1088421888
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_46
_11
	mov	ebx,[ebp-116]
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
	mov	[ebp-116],ebx
_43
	mov	eax,[ebp-116]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1088421888
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_44
_10
	sub	esp,12
	mov	[esp+4],600
	mov	[esp+8],1
	mov	[esp],800
	call	_fcreateimage
	mov	[ebp-184],eax
	sub	esp,12
	mov	eax,[ebp-184]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-120],0
	jmp	_52
_53
	sub	esp,12
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-120]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1142292480
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	[esp+8],800
	mov	esi,[ebp-120]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-120]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	[esp],0
	call	_fline
	mov	ebx,[ebp-120]
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
	mov	[ebp-120],ebx
_52
	mov	eax,[ebp-120]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1142292480
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_53
_12
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],256
	mov	[esp],256
	call	_fcreatetexture
	mov	[ebp-188],eax
	sub	esp,12
	mov	eax,[ebp-188]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-116],0
	jmp	_54
_55
	mov	ebx,[ebp-116]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 2
	mov	[ebp-192],ebx
	mov	[ebp-120],0
	jmp	_56
_57
	mov	ebx,[ebp-120]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 2
	mov	[ebp-196],ebx
	mov	[ebp-180],1
	mov	eax,[ebp-116]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-216],eax
	mov	ebx,[ebp-116]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1114636288
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-216]
	and	eax,ebx
	mov	[ebp-216],eax
	mov	ebx,[ebp-120]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-216]
	and	eax,ebx
	mov	[ebp-216],eax
	mov	ebx,[ebp-120]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1114636288
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-216]
	and	eax,ebx
	and	eax,eax
	jz	_58
	sub	esp,4
	mov	eax,[ebp-116]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,1088421888
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	mov	[ebp-216],eax
	sub	esp,4
	mov	ebx,[ebp-120]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1088421888
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffloor
	mov	ebx,eax
	mov	eax,[ebp-216]
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,1
	and	eax,ebx
	and	eax,eax
	jz	_59
	mov	[ebp-180],0
_59
	jmp	_60
_58
	mov	eax,[ebp-116]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-216],eax
	mov	ebx,[ebp-116]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1114898432
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-216]
	and	eax,ebx
	mov	[ebp-216],eax
	mov	ebx,[ebp-120]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-216]
	and	eax,ebx
	mov	[ebp-216],eax
	mov	ebx,[ebp-120]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1114898432
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-216]
	and	eax,ebx
	and	eax,eax
	jz	_61
	mov	[ebp-180],0
_61
_60
	mov	ebx,[ebp-192]
	mov	[ebp-200],ebx
	jmp	_62
_63
	mov	ebx,[ebp-196]
	mov	[ebp-204],ebx
	jmp	_64
_65
	sub	esp,20
	mov	[esp],-8
	mov	[esp+4],8
	call	_frand
	mov	ebx,[ebp-180]
	shl	ebx,byte 7
	add	eax,ebx
	add	eax,16
	mov	[esp+4],eax
	mov	[ebp-216],eax
	sub	esp,8
	mov	[esp],-8
	mov	[esp+4],8
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-216]
	add	ebx,16
	mov	[esp+8],ebx
	mov	[ebp-216],eax
	sub	esp,8
	mov	[esp],-8
	mov	[esp+4],8
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-216]
	mov	esi,192
	imul	esi,[ebp-180]
	add	ebx,esi
	add	ebx,16
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-200]
	mov	[esp],eax
	mov	ebx,[ebp-204]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-204],1
_64
	mov	ebx,[ebp-196]
	add	ebx,3
	cmp	[ebp-204],ebx
	jle	_65
_16
	add	[ebp-200],1
_62
	mov	ebx,[ebp-192]
	add	ebx,3
	cmp	[ebp-200],ebx
	jle	_63
_15
	mov	ebx,[ebp-120]
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
	mov	[ebp-120],ebx
_56
	mov	eax,[ebp-120]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1115422720
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_57
_14
	mov	ebx,[ebp-116]
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
	mov	[ebp-116],ebx
_54
	mov	eax,[ebp-116]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1115422720
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_55
_13
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-208],eax
	sub	esp,8
	mov	eax,[ebp-208]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	[ebp-52],eax
	mov	[ebp-212],0
	jmp	_66
_67
	sub	esp,8
	mov	eax,[ebp-52]
	mov	[esp],eax
	mov	ebx,[ebp-212]
	mov	[esp+4],ebx
	call	_fvertexy
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
	jz	_68
	sub	esp,36
	mov	ebx,[ebp-212]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	[esp+12],1027604480
	mov	ebx,[ebp-212]
	mov	[esp+4],ebx
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fvertextexcoords
_68
	add	[ebp-212],1
_66
	cmp	[ebp-212],23
	jle	_67
_17
	sub	esp,20
	mov	[esp+12],1083328805
	mov	[esp+16],0
	mov	[esp+8],1048576000
	mov	[esp+4],1083328805
	mov	eax,[ebp-208]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1098907648
	mov	[esp+4],0
	mov	eax,[ebp-208]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-188]
	mov	[esp+4],esi
	mov	eax,[ebp-208]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
_69
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1053609165
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,20
	mov	[esp+12],1050253722
	mov	[esp+16],0
	mov	[esp+8],1050253722
	mov	[esp+4],1045220557
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-184]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,32
	mov	eax,_70
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-216],eax
	sub	esp,4
	mov	[ebp-220],eax
	mov	eax,ebx
	call	_ftrisrendered
	mov	ebx,eax
	mov	eax,[ebp-220]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-216]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_69
_18
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fvertexes
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	ebx,1137180672
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_aoc]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,1133903872
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-4],esi
	mov	ebx,1142292480
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_aoc]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,1133903872
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-8],esi
	sub	esp,4
	mov	eax,1137180672
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aoc]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	eax,1082130432
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	shl	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_71
	mov	[ebp-12],1
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_faddvertex
	jmp	_72
_71
	sub	esp,8
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	mov	eax,1065353216
	push	eax
	fld	[esp]
	pop	eax
	fsubrp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_facos
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	fdivrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fceil
	mov	ebx,eax
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],0
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
_73
	sub	esp,32
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-4]
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
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcos
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	mov	ebx,[ebp-16]
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
	mov	[ebp-16],ebx
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135866675
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_74
	jmp	_20
_74
	jmp	_73
_20
_72
	mov	eax,[ebp-12]
	jmp	_19_leave
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fmax
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	cmp	[ebp+20],ebx
	jle	_75
	mov	eax,[ebp+20]
	jmp	_21_leave
	jmp	_76
_75
	mov	eax,[ebp+24]
	jmp	_21_leave
_76
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_afg	.dd	0
	.dd	1
	.dd	1
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
_aoc	.dd	0
	.dd	2
	.dd	1
	.dd	0
_42	.db	"knight.3ds",0
_48	.db	"43210234",0
_70	.db	" Triangles rendered: ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	24
	.dd	1
	.dd	400
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	391
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	391
	.dd	1
	.dd	26
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	377
	.dd	1
	.dd	26
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	377
	.dd	1
	.dd	36
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	391
	.dd	1
	.dd	36
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	391
	.dd	1
	.dd	62
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	352
	.dd	1
	.dd	79
	.dd	1
	.dd	-5
	.dd	1
	.dd	31
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	331
	.dd	1
	.dd	74
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	355
	.dd	1
	.dd	162
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-53
	.dd	1
	.dd	0
	.dd	1
	.dd	355
	.dd	1
	.dd	177
	.dd	1
	.dd	53
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	355
	.dd	1
	.dd	190
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-53
	.dd	1
	.dd	0
	.dd	1
	.dd	355
	.dd	1
	.dd	205
	.dd	1
	.dd	53
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	326
	.dd	1
	.dd	205
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-69
	.dd	1
	.dd	0
	.dd	1
	.dd	326
	.dd	1
	.dd	219
	.dd	1
	.dd	69
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	373
	.dd	1
	.dd	219
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	341
	.dd	1
	.dd	462
	.dd	1
	.dd	-10
	.dd	1
	.dd	28
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	351
	.dd	1
	.dd	473
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-33
	.dd	1
	.dd	14
	.dd	1
	.dd	295
	.dd	1
	.dd	573
	.dd	1
	.dd	0
	.dd	1
	.dd	28
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	305
	.dd	1
	.dd	573
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	305
	.dd	1
	.dd	584
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	295
	.dd	1
	.dd	584
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	295
	.dd	1
	.dd	599
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	400
	.dd	1
	.dd	599
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	20
	.dd	1
	.dd	400
	.dd	1
	.dd	45
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	380
	.dd	1
	.dd	53
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	391
	.dd	1
	.dd	62
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	352
	.dd	1
	.dd	79
	.dd	1
	.dd	-5
	.dd	1
	.dd	31
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	331
	.dd	1
	.dd	74
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	30
	.dd	1
	.dd	39
	.dd	1
	.dd	355
	.dd	1
	.dd	162
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-53
	.dd	1
	.dd	0
	.dd	1
	.dd	355
	.dd	1
	.dd	177
	.dd	1
	.dd	53
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	355
	.dd	1
	.dd	190
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-53
	.dd	1
	.dd	0
	.dd	1
	.dd	355
	.dd	1
	.dd	205
	.dd	1
	.dd	53
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	326
	.dd	1
	.dd	205
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-69
	.dd	1
	.dd	0
	.dd	1
	.dd	326
	.dd	1
	.dd	219
	.dd	1
	.dd	69
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	373
	.dd	1
	.dd	219
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	341
	.dd	1
	.dd	462
	.dd	1
	.dd	-10
	.dd	1
	.dd	28
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	351
	.dd	1
	.dd	473
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-33
	.dd	1
	.dd	14
	.dd	1
	.dd	295
	.dd	1
	.dd	573
	.dd	1
	.dd	0
	.dd	1
	.dd	28
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	305
	.dd	1
	.dd	573
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	305
	.dd	1
	.dd	584
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	295
	.dd	1
	.dd	584
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	295
	.dd	1
	.dd	599
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	400
	.dd	1
	.dd	599
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	18
	.dd	1
	.dd	400
	.dd	1
	.dd	84
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-46
	.dd	1
	.dd	1
	.dd	1
	.dd	392
	.dd	1
	.dd	107
	.dd	1
	.dd	24
	.dd	1
	.dd	8
	.dd	1
	.dd	6
	.dd	1
	.dd	13
	.dd	1
	.dd	369
	.dd	1
	.dd	162
	.dd	1
	.dd	-29
	.dd	1
	.dd	33
	.dd	1
	.dd	-29
	.dd	1
	.dd	33
	.dd	1
	.dd	366
	.dd	1
	.dd	253
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-53
	.dd	1
	.dd	0
	.dd	1
	.dd	366
	.dd	1
	.dd	266
	.dd	1
	.dd	53
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	366
	.dd	1
	.dd	292
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-53
	.dd	1
	.dd	0
	.dd	1
	.dd	366
	.dd	1
	.dd	304
	.dd	1
	.dd	53
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	346
	.dd	1
	.dd	304
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-69
	.dd	1
	.dd	0
	.dd	1
	.dd	346
	.dd	1
	.dd	317
	.dd	1
	.dd	69
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	380
	.dd	1
	.dd	317
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	352
	.dd	1
	.dd	497
	.dd	1
	.dd	-10
	.dd	1
	.dd	28
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	359
	.dd	1
	.dd	505
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-19
	.dd	1
	.dd	15
	.dd	1
	.dd	309
	.dd	1
	.dd	577
	.dd	1
	.dd	-5
	.dd	1
	.dd	20
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	321
	.dd	1
	.dd	577
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	321
	.dd	1
	.dd	586
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	309
	.dd	1
	.dd	586
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	309
	.dd	1
	.dd	599
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	400
	.dd	1
	.dd	599
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	9
	.dd	1
	.dd	400
	.dd	1
	.dd	475
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	333
	.dd	1
	.dd	475
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	345
	.dd	1
	.dd	493
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	297
	.dd	1
	.dd	578
	.dd	1
	.dd	-2
	.dd	1
	.dd	20
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	310
	.dd	1
	.dd	578
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	310
	.dd	1
	.dd	586
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	297
	.dd	1
	.dd	586
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	297
	.dd	1
	.dd	599
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	400
	.dd	1
	.dd	599
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	20
	.dd	1
	.dd	400
	.dd	1
	.dd	181
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	332
	.dd	1
	.dd	181
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	332
	.dd	1
	.dd	161
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	316
	.dd	1
	.dd	161
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	316
	.dd	1
	.dd	193
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	332
	.dd	1
	.dd	193
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	332
	.dd	1
	.dd	215
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	344
	.dd	1
	.dd	215
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	344
	.dd	1
	.dd	238
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	359
	.dd	1
	.dd	238
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	359
	.dd	1
	.dd	268
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	346
	.dd	1
	.dd	454
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	333
	.dd	1
	.dd	460
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	342
	.dd	1
	.dd	473
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	309
	.dd	1
	.dd	577
	.dd	1
	.dd	-2
	.dd	1
	.dd	20
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	321
	.dd	1
	.dd	577
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	321
	.dd	1
	.dd	586
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	309
	.dd	1
	.dd	586
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	309
	.dd	1
	.dd	599
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	400
	.dd	1
	.dd	599
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	13
	.dd	1
	.dd	400
	.dd	1
	.dd	209
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-37
	.dd	1
	.dd	0
	.dd	1
	.dd	375
	.dd	1
	.dd	283
	.dd	1
	.dd	31
	.dd	1
	.dd	11
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	339
	.dd	1
	.dd	334
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	382
	.dd	1
	.dd	334
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-1
	.dd	1
	.dd	46
	.dd	1
	.dd	355
	.dd	1
	.dd	501
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	339
	.dd	1
	.dd	498
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	346
	.dd	1
	.dd	512
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	309
	.dd	1
	.dd	577
	.dd	1
	.dd	-2
	.dd	1
	.dd	20
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	321
	.dd	1
	.dd	577
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	321
	.dd	1
	.dd	586
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	309
	.dd	1
	.dd	586
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	309
	.dd	1
	.dd	599
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	400
	.dd	1
	.dd	599
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	0

