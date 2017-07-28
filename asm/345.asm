
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
	sub	esp,12
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],250
	mov	[esp],350
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	jmp	_9
_8
	call	_fcls
	sub	esp,44
	mov	[esp+36],0
	mov	[esp+40],3
	mov	[esp+32],0
	mov	[esp+28],-10
	mov	[esp+24],-20
	mov	[esp+20],75
	mov	[esp+16],300
	mov	[esp+12],50
	mov	[esp+8],100
	mov	[esp+4],180
	mov	[esp],50
	call	_fcspline
	sub	esp,4
	mov	[esp],1
	call	_fflip
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_8
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
_fcspline
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,108
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
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	mov	ebx,[ebp+20]
	mov	[ebp-12],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-16],ebx
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-16]
	sub	ebx,16
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,4
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],3
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	mov	ebx,[ebp-12]
	add	ebx,[ebp+28]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-16]
	add	ebx,[ebp+32]
	mov	[ebp-24],ebx
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-24]
	sub	ebx,16
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	sub	eax,4
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],3
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],0
	mov	[esp],200
	call	_fcolor
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+52]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,[ebp+60]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	mov	esi,[ebp+44]
	imul	esi,[ebp+60]
	add	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-28],esi
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+56]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,[ebp+60]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	mov	esi,[ebp+48]
	imul	esi,[ebp+60]
	add	esi,[ebp+40]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-32],esi
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-32]
	sub	ebx,16
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	sub	eax,4
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],3
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	mov	ebx,[ebp+36]
	mov	[ebp-36],ebx
	mov	ebx,[ebp+40]
	mov	[ebp-40],ebx
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-40]
	sub	ebx,16
	mov	[esp+4],ebx
	mov	eax,[ebp-36]
	sub	eax,4
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],3
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_frect
	mov	ebx,3
	imul	ebx,[ebp-28]
	mov	[ebp-80],ebx
	mov	ebx,3
	imul	ebx,[ebp-20]
	mov	[ebp-84],ebx
	mov	ebx,6
	imul	ebx,[ebp-20]
	mov	[ebp-88],ebx
	mov	ebx,3
	imul	ebx,[ebp-12]
	mov	[ebp-92],ebx
	mov	ebx,3
	imul	ebx,[ebp-32]
	mov	[ebp-96],ebx
	mov	ebx,3
	imul	ebx,[ebp-24]
	mov	[ebp-100],ebx
	mov	ebx,6
	imul	ebx,[ebp-24]
	mov	[ebp-104],ebx
	mov	ebx,3
	imul	ebx,[ebp-16]
	mov	[ebp-108],ebx
	mov	ebx,[ebp-36]
	sub	ebx,[ebp-80]
	add	ebx,[ebp-84]
	sub	ebx,[ebp-12]
	mov	[ebp-44],ebx
	mov	ebx,[ebp-80]
	sub	ebx,[ebp-88]
	add	ebx,[ebp-92]
	mov	[ebp-48],ebx
	mov	ebx,[ebp-84]
	sub	ebx,[ebp-92]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-12]
	mov	[ebp-56],ebx
	mov	ebx,[ebp-40]
	sub	ebx,[ebp-96]
	add	ebx,[ebp-100]
	sub	ebx,[ebp-16]
	mov	[ebp-60],ebx
	mov	ebx,[ebp-96]
	sub	ebx,[ebp-104]
	add	ebx,[ebp-108]
	mov	[ebp-64],ebx
	mov	ebx,[ebp-100]
	sub	ebx,[ebp-108]
	mov	[ebp-68],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-72],ebx
	mov	[ebp-76],0
	jmp	_14
_15
	sub	esp,8
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	__bbFPow
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	sub	esp,8
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-52]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp-76]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-56]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	__bbFPow
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	sub	esp,8
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	esi,[ebp-64]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-68]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp-76]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-72]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fplot
	mov	ebx,[ebp-76]
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
	mov	[ebp-76],ebx
_14
	mov	eax,[ebp-76]
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
	jz	_15
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 44
_6	.db	"Cubic Spline Interpolation",0
_7	.db	"",0
_10	.db	"S",0
_11	.db	"1",0
_12	.db	"2",0
_13	.db	"E",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

