
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	mov	[_voriginx],400
	mov	[_voriginy],300
	mov	[_vradius],100
	mov	[_vx1],0
	mov	[_vx2],0
	mov	[_vy1],0
	mov	[_vy2],0
	mov	[ebp-4],0
	jmp	_7
_8
	mov	ebx,[_vradius]
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vy1],ebx
	mov	ebx,[_vradius]
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vy2],ebx
	sub	esp,12
	mov	eax,[_vradius]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[_vy1]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-8]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1137180672
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vx1],ebx
	sub	esp,12
	mov	eax,[_vradius]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[_vy1]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-8]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1137180672
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vx2],ebx
	sub	esp,8
	mov	ebx,[_vy2]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1133903872
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vx1]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fplot
	add	[ebp-4],1
_7
	cmp	[ebp-4],90
	jle	_8
_3
	mov	[ebp-4],0
	jmp	_9
_10
	mov	ebx,[_vradius]
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vy1],ebx
	mov	ebx,[_vradius]
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vy2],ebx
	sub	esp,12
	mov	eax,[_vradius]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[_vy1]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-8]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1137180672
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vx1],ebx
	sub	esp,12
	mov	eax,[_vradius]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[_vy1]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-8]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1137180672
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vx2],ebx
	sub	esp,8
	mov	ebx,[_vy2]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1133903872
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vx2]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fplot
	add	[ebp-4],1
_9
	cmp	[ebp-4],90
	jle	_10
_4
	mov	[ebp-4],0
	jmp	_11
_12
	mov	ebx,[_vradius]
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vy1],ebx
	mov	ebx,[_vradius]
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vy2],ebx
	sub	esp,12
	mov	eax,[_vradius]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[_vy1]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-8]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1137180672
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vx1],ebx
	sub	esp,12
	mov	eax,[_vradius]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[_vy1]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-8]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1137180672
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vx2],ebx
	sub	esp,8
	mov	ebx,[_vy1]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1133903872
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vx2]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fplot
	add	[ebp-4],1
_11
	cmp	[ebp-4],90
	jle	_12
_5
	mov	[ebp-4],0
	jmp	_13
_14
	mov	ebx,[_vradius]
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vy1],ebx
	mov	ebx,[_vradius]
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vy2],ebx
	sub	esp,12
	mov	eax,[_vradius]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[_vy1]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-8]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1137180672
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vx1],ebx
	sub	esp,12
	mov	eax,[_vradius]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[_vy1]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-8]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1137180672
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vx2],ebx
	sub	esp,8
	mov	ebx,[_vy1]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1133903872
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vx1]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fplot
	add	[ebp-4],1
_13
	cmp	[ebp-4],90
	jle	_14
_6
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_voriginx	.dd	0
	.align	4
_voriginy	.dd	0
	.align	4
_vradius	.dd	0
	.align	4
_vx1	.dd	0
	.align	4
_vx2	.dd	0
	.align	4
_vy1	.dd	0
	.align	4
_vy2	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

