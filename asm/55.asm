
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	mov	[ebp-4],800
	mov	[ebp-8],600
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgraphics
	mov	[ebp-12],1131413504
	mov	[ebp-16],1065353216
	jmp	_12
_13
	mov	[ebp-20],1065353216
	jmp	_14
_15
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fperlinnoise_2d
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
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
	jz	_16
	mov	[ebp-24],1065353216
_16
	mov	eax,[ebp-24]
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
	jz	_17
	mov	[ebp-24],0
_17
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	sub	esp,12
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_18
	jmp	_l_2out
_18
	mov	ebx,[ebp-20]
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
	mov	[ebp-20],ebx
_14
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_15
_4
	mov	ebx,[ebp-16]
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
	mov	[ebp-16],ebx
_12
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_13
_3
_l_2out
	call	_fwaitkey
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
_fnoise
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1113849856
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-4],esi
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	__bbFMod
	mov	ebx,[ebp-4]
	shl	ebx,byte 13
	push	ebx
	fild	[esp]
	pop	ebx
	fsubrp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp-4]
	imul	ebx,[ebp-4]
	imul	ebx,15731
	add	ebx,789221
	imul	ebx,[ebp-4]
	add	ebx,1376312589
	mov	esi,2147483647
	and	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1317011456
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	jmp	_5_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fsmoothnoise
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,12
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+24]
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
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	call	_fnoise
	mov	[ebp-16],eax
	sub	esp,12
	mov	ebx,[ebp+20]
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
	mov	[esp],ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	edi,[ebp+28]
	mov	[esp+8],edi
	mov	eax,ebx
	call	_fnoise
	mov	ebx,eax
	mov	eax,[ebp-16]
	faddp	st(1)
	mov	[ebp-16],eax
	sub	esp,12
	mov	ebx,[ebp+20]
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
	mov	[esp],ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	edi,[ebp+28]
	mov	[esp+8],edi
	mov	eax,ebx
	call	_fnoise
	mov	ebx,eax
	mov	eax,[ebp-16]
	faddp	st(1)
	mov	[ebp-16],eax
	sub	esp,12
	mov	ebx,[ebp+20]
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
	mov	[esp],ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	edi,[ebp+28]
	mov	[esp+8],edi
	mov	eax,ebx
	call	_fnoise
	mov	ebx,eax
	mov	eax,[ebp-16]
	faddp	st(1)
	mov	ebx,1098907648
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	call	_fnoise
	mov	[ebp-16],eax
	sub	esp,12
	mov	ebx,[ebp+20]
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
	mov	[esp],ebx
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	edi,[ebp+28]
	mov	[esp+8],edi
	mov	eax,ebx
	call	_fnoise
	mov	ebx,eax
	mov	eax,[ebp-16]
	faddp	st(1)
	mov	[ebp-16],eax
	sub	esp,12
	mov	ebx,[ebp+24]
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
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	_fnoise
	mov	esi,eax
	mov	eax,[ebp-16]
	faddp	st(1)
	mov	[ebp-16],eax
	sub	esp,12
	mov	ebx,[ebp+24]
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
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	_fnoise
	mov	esi,eax
	mov	eax,[ebp-16]
	faddp	st(1)
	mov	ebx,1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fnoise
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	jmp	_6_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_finterpolatenoise
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffloor
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_ffloor
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsmoothnoise
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,12
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	call	_fsmoothnoise
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,12
	mov	ebx,[ebp-12]
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
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsmoothnoise
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,12
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-12]
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
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	call	_fsmoothnoise
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_flinear_interpolate
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,12
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_flinear_interpolate
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_flinear_interpolate
	jmp	_7_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fperlinnoise_2d
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
	mov	[ebp-4],0
	mov	[ebp-8],1061997773
	mov	[ebp-12],1084227584
	mov	[ebp-16],0
	jmp	_19
_20
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,1109393408
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	__bbFPow
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,12
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	call	_finterpolatenoise
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
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
	mov	ebx,[ebp-16]
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
	mov	[ebp-16],ebx
_19
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
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
	jz	_20
_9
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_8_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fcosine_interpolate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1127481344
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcos
	fsubp	st(1)
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-8]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	jmp	_10_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_flinear_interpolate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	jmp	_11_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

