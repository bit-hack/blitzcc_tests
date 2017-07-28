
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	mov	[ebp-4],0
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,8
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],5
	mov	[esp+8],5
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgaussian_blur
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	call	_fend
	sub	esp,4
	mov	eax,_amaskdata
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_amaskdata
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amaskdata
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atexel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_atexel
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_atexel
	add	esi,16
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_atexel
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atexel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aresult
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_aresult
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_aresult
	add	esi,16
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_aresult
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aresult
	mov	[esp],eax
	call	__bbDimArray
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgaussian_blur
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,_atexel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_atexel
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,_atexel
	add	esi,16
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_atexel
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atexel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aresult
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_aresult
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,_aresult
	add	esi,16
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_aresult
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aresult
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-12],0
	jmp	_17
_18
	mov	[ebp-16],0
	jmp	_19
_20
	sub	esp,20
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-20],eax
	mov	ebx,[ebp-20]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_atexel
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	mov	edi,_atexel
	add	edi,16
	mov	edi,[edi]
	imul	edi,0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atexel]
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_atexel
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	mov	edi,_atexel
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atexel]
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	mov	esi,255
	and	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_atexel
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	mov	edi,_atexel
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 1
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atexel]
	mov	[esi],ebx
	add	[ebp-16],1
_19
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_20
_5
	add	[ebp-12],1
_17
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_18
_4
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	sub	esp,4
	mov	eax,_amaskdata
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_amaskdata
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amaskdata
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-32],0
	mov	[ebp-36],0
	jmp	_21
_22
	mov	[ebp-40],0
	jmp	_23
_24
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-44],esi
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-48],esi
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-48]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	sub	esp,4
	mov	eax,-1095552205
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fexp
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp-40]
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
	mov	[ebp-40],ebx
_23
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,[ebp-40]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_24
_7
	mov	ebx,[ebp-36]
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
	mov	[ebp-36],ebx
_21
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_22
_6
	mov	ebx,1065353216
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
	mov	[ebp-32],ebx
	mov	[ebp-36],0
	jmp	_25
_26
	mov	[ebp-40],0
	jmp	_27
_28
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-44],esi
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-48],esi
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-48]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	sub	esp,4
	mov	eax,-1095552205
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fexp
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-24]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp-40]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_amaskdata]
	mov	[esi],ebx
	mov	ebx,[ebp-40]
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
	mov	[ebp-40],ebx
_27
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,[ebp-40]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_28
_9
	mov	ebx,[ebp-36]
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
	mov	[ebp-36],ebx
_25
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_26
_8
	sub	esp,4
	mov	eax,_aresult
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_aresult
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,_aresult
	add	esi,16
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_aresult
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aresult
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-36],0
	jmp	_29
_30
	mov	[ebp-40],0
	jmp	_31
_32
	mov	[ebp-56],0
	mov	[ebp-60],0
	mov	[ebp-64],0
	mov	[ebp-68],0
	jmp	_33
_34
	mov	[ebp-72],0
	jmp	_35
_36
	mov	eax,[ebp-40]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-72]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	mov	[ebp-88],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
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
	mov	eax,[ebp-88]
	fsubp	st(1)
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-88],eax
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-68]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	mov	[ebp-92],eax
	sub	esp,4
	mov	esi,[ebp-28]
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
	mov	[esp],esi
	mov	eax,esi
	call	_ffloor
	mov	esi,eax
	mov	eax,[ebp-92]
	fsubp	st(1)
	mov	esi,0
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
	mov	eax,[ebp-88]
	or	eax,ebx
	mov	[ebp-88],eax
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-72]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	mov	[ebp-92],eax
	sub	esp,4
	mov	esi,[ebp-24]
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
	mov	[esp],esi
	mov	eax,esi
	call	_ffloor
	mov	esi,eax
	mov	eax,[ebp-92]
	fsubp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-88]
	or	eax,ebx
	mov	[ebp-88],eax
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-68]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	mov	[ebp-92],eax
	sub	esp,4
	mov	esi,[ebp-28]
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
	mov	[esp],esi
	mov	eax,esi
	call	_ffloor
	mov	esi,eax
	mov	eax,[ebp-92]
	fsubp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-88]
	or	eax,ebx
	and	eax,eax
	jz	_37
	mov	[ebp-76],0
	mov	[ebp-80],0
	mov	[ebp-84],0
	jmp	_38
_37
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-72]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-68]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	sub	esp,4
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	fsubp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	edi,_atexel
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	ebx,esi
	mov	esi,_atexel
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atexel]
	mov	ebx,[ebx]
	mov	[ebp-76],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-72]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-68]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	sub	esp,4
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	fsubp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	edi,_atexel
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	ebx,esi
	mov	esi,_atexel
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atexel]
	mov	ebx,[ebx]
	mov	[ebp-80],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-72]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-68]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	sub	esp,4
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	fsubp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	edi,_atexel
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	ebx,esi
	mov	esi,_atexel
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atexel]
	mov	ebx,[ebx]
	mov	[ebp-84],ebx
_38
	mov	ebx,[ebp-68]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-72]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_amaskdata]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-56],esi
	mov	ebx,[ebp-68]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-72]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_amaskdata]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	ebx,[ebp-80]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	esi,[ebp-60]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-60],esi
	mov	ebx,[ebp-68]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-72]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_amaskdata]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	ebx,[ebp-84]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	esi,[ebp-64]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-64],esi
	add	[ebp-72],1
_35
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	cmp	[ebp-72],ebx
	jle	_36
_13
	add	[ebp-68],1
_33
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	cmp	[ebp-68],ebx
	jle	_34
_12
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_aresult
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	add	esi,ebx
	mov	ebx,_aresult
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_aresult]
	mov	ebx,[ebp-56]
	mov	[esi],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_aresult
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	add	esi,ebx
	mov	ebx,_aresult
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_aresult]
	mov	ebx,[ebp-60]
	mov	[esi],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_aresult
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	add	esi,ebx
	mov	ebx,_aresult
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_aresult]
	mov	ebx,[ebp-64]
	mov	[esi],ebx
	mov	ebx,[ebp-40]
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
	mov	[ebp-40],ebx
_31
	mov	eax,[ebp-40]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	sub	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_32
_11
	mov	ebx,[ebp-36]
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
	mov	[ebp-36],ebx
_29
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_30
_10
	mov	[ebp-12],0
	jmp	_39
_40
	mov	[ebp-16],0
	jmp	_41
_42
	sub	esp,16
	mov	ebx,_aresult
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	mov	esi,_aresult
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aresult]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 16
	mov	esi,_aresult
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	mov	edi,_aresult
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_aresult]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 8
	add	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,_aresult
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	mov	edi,_aresult
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 1
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_aresult]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+12],eax
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-16],1
_41
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_42
_15
	add	[ebp-12],1
_39
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_40
_14
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_amaskdata
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_amaskdata
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amaskdata
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atexel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_atexel
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_atexel
	add	esi,16
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_atexel
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atexel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aresult
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_aresult
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_aresult
	add	esi,16
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_aresult
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aresult
	mov	[esp],eax
	call	__bbDimArray
	mov	eax,[ebp+20]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
_16	.db	"frame.png",0
	.align	4
_amaskdata	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_atexel	.dd	0
	.dd	2
	.dd	3
	.dd	0
	.dd	0
	.dd	0
	.align	4
_aresult	.dd	0
	.dd	2
	.dd	3
	.dd	0
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

