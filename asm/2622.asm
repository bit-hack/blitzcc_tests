
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
_fhomekeeping
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vlocalx],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vlocaly],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vlocalz],eax
	jmp	_11
_10
	mov	ebx,[_vglobalx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vglobalx],ebx
	mov	ebx,[_vlocalx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vlocalx],ebx
	sub	esp,20
	mov	ebx,[_vlocalz]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vlocaly]
	mov	[esp+8],esi
	mov	ebx,[_vlocalx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp+28]
	neg	esi
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fmoveentity
_11
	mov	eax,[_vlocalx]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jnz	_10
_4
	jmp	_13
_12
	mov	ebx,[_vglobalx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vglobalx],ebx
	mov	ebx,[_vlocalx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vlocalx],ebx
	sub	esp,20
	mov	ebx,[_vlocalz]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vlocaly]
	mov	[esp+8],esi
	mov	ebx,[_vlocalx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fmoveentity
_13
	mov	eax,[_vlocalx]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+28]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jnz	_12
_5
	jmp	_15
_14
	mov	ebx,[_vglobaly]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vglobaly],ebx
	mov	ebx,[_vlocaly]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vlocaly],ebx
	sub	esp,20
	mov	ebx,[_vlocalz]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vlocaly]
	mov	[esp+8],esi
	mov	ebx,[_vlocalx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	ebx,[ebp+28]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fmoveentity
_15
	mov	eax,[_vlocaly]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jnz	_14
_6
	jmp	_17
_16
	mov	ebx,[_vglobaly]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vglobaly],ebx
	mov	ebx,[_vlocaly]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vlocaly],ebx
	sub	esp,20
	mov	ebx,[_vlocalz]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vlocaly]
	mov	[esp+8],esi
	mov	ebx,[_vlocalx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fmoveentity
_17
	mov	eax,[_vlocaly]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+28]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jnz	_16
_7
	jmp	_19
_18
	mov	ebx,[_vglobalz]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vglobalz],ebx
	mov	ebx,[_vlocalz]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vlocalz],ebx
	sub	esp,20
	mov	ebx,[_vlocalz]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vlocaly]
	mov	[esp+8],esi
	mov	ebx,[_vlocalx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp+28]
	neg	esi
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fmoveentity
_19
	mov	eax,[_vlocalz]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jnz	_18
_8
	jmp	_21
_20
	mov	ebx,[_vglobalz]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vglobalz],ebx
	mov	ebx,[_vlocalz]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vlocalz],ebx
	sub	esp,20
	mov	ebx,[_vlocalz]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vlocaly]
	mov	[esp+8],esi
	mov	ebx,[_vlocalx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fmoveentity
_21
	mov	eax,[_vlocalz]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+28]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jnz	_20
_9
	mov	ebx,[_vlocalx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vglobalx]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vsimx],ebx
	mov	ebx,[_vlocaly]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vglobaly]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vsimy],ebx
	mov	ebx,[_vlocalz]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vglobalz]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vsimz],ebx
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_vlocalx	.dd	0
	.align	4
_vlocaly	.dd	0
	.align	4
_vlocalz	.dd	0
	.align	4
_vglobalx	.dd	0
	.align	4
_vglobaly	.dd	0
	.align	4
_vglobalz	.dd	0
	.align	4
_vsimx	.dd	0
	.align	4
_vsimy	.dd	0
	.align	4
_vsimz	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

