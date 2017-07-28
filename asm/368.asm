
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcorrectoffset
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftformpoint
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmeshwidth
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmeshheight
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmeshdepth
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,32
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+24],ebx
	mov	[esp+28],1
	mov	esi,[ebp-24]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+20],esi
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp-28]
	neg	esi
	sar	esi,byte 1
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-24]
	neg	ebx
	sar	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	neg	esi
	sar	esi,byte 1
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffitmesh
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-40]
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_ftformpoint
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	mov	ebx,[ebp-8]
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
	mov	[ebp-44],ebx
	mov	ebx,[ebp-12]
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
	mov	[ebp-48],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	sub	esp,20
	mov	ebx,[ebp-52]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-48]
	mov	[esp+8],esi
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftranslateentity
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

