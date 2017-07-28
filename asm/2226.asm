
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
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	jmp	_7
_6
	call	_fcls
	sub	esp,16
	call	_fmousex
	mov	[esp+8],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+4],240
	mov	[esp],320
	call	_fangle360
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,32
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],4
	mov	[esp+16],1
	mov	[esp+8],4
	call	_fmousey
	sub	eax,2
	mov	[esp+4],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-8]
	sub	ebx,2
	mov	[esp],ebx
	mov	eax,ebx
	call	_frect
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],4
	mov	[esp+16],1
	mov	[esp+8],4
	mov	[esp+4],238
	mov	[esp],318
	call	_frect
	sub	esp,16
	call	_fmousex
	mov	[esp+8],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+4],240
	mov	[esp],320
	call	_fline
	sub	esp,16
	call	_fmousex
	mov	[esp+8],eax
	mov	[esp+12],240
	mov	[esp+4],240
	mov	[esp],320
	call	_fline
	sub	esp,16
	mov	[esp+8],320
	call	_fmousey
	mov	[esp+12],eax
	mov	[esp+4],240
	mov	[esp],320
	call	_fline
	sub	esp,4
	mov	[esp],1
	call	_fflip
_7
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_6
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
_fangle360b
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	eax,[ebp+32]
	sub	eax,[ebp+24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fatan2
	mov	ebx,1138819072
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1135869952
	call	__bbFMod
	jmp	_4_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fangle360
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
	sub	esp,4
	mov	eax,[ebp+28]
	sub	eax,[ebp+20]
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+32]
	sub	eax,[ebp+24]
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	imul	eax,[ebp-4]
	mov	ebx,[ebp-8]
	imul	ebx,[ebp-8]
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	eax,[ebp-12]
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
	and	eax,eax
	jz	_9
	mov	[ebp-12],1065353216
_9
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jg	_10
	sub	esp,4
	mov	eax,[ebp-8]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fasin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	jmp	_11
_10
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_facos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
_11
	mov	eax,[ebp+20]
	cmp	[ebp+28],eax
	setg	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp+24]
	cmp	[ebp+32],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_12
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	jmp	_13
_12
	mov	eax,[ebp+20]
	cmp	[ebp+28],eax
	setg	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp+24]
	cmp	[ebp+32],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_14
	mov	ebx,1119092736
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
	mov	[ebp-16],ebx
	jmp	_15
_14
	mov	eax,[ebp+20]
	cmp	[ebp+28],eax
	setle	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp+24]
	cmp	[ebp+32],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_16
	mov	ebx,1132920832
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	jmp	_17
_16
	mov	eax,[ebp+20]
	cmp	[ebp+28],eax
	setle	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp+24]
	cmp	[ebp+32],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_18
	mov	ebx,1132920832
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
	mov	[ebp-16],ebx
_18
_17
_15
_13
	mov	eax,[ebp-16]
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
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_19
	mov	[ebp-16],0
_19
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
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
	ret	word 16
_8	.db	"angle#=",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
