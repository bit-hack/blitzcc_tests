
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],510
	mov	[esp],510
	call	_fgraphics
	mov	[ebp-4],50
	jmp	_10
_11
	sub	esp,20
	mov	[esp+12],200
	mov	[esp+16],1
	mov	[esp+8],90
	mov	[esp+4],50
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcc_set_color
	sub	esp,20
	mov	eax,[ebp-4]
	mov	ecx,3
	cdq
	idiv	ecx
	mov	[esp+4],eax
	mov	ebx,255
	sub	ebx,[ebp-4]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,255
	sub	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1067450368
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_foval
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],70
	mov	[esp+16],1
	mov	[esp+8],50
	mov	[esp+4],205
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcc_set_color
	sub	esp,20
	mov	eax,[ebp-4]
	mov	ecx,3
	cdq
	idiv	ecx
	mov	[esp+4],eax
	mov	ebx,255
	sub	ebx,[ebp-4]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,255
	sub	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1067450368
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1130102784
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp],esi
	mov	eax,esi
	call	_foval
	mov	esi,eax
	sub	esp,20
	mov	[esp+12],155
	mov	[esp+16],1
	mov	[esp+8],127
	mov	[esp+4],55
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcc_set_color
	sub	esp,20
	mov	eax,[ebp-4]
	mov	ecx,3
	cdq
	idiv	ecx
	add	eax,220
	mov	[esp+4],eax
	mov	ebx,255
	sub	ebx,[ebp-4]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,255
	sub	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1067450368
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_foval
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],200
	mov	[esp+16],1
	mov	[esp+8],90
	mov	[esp+4],250
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcc_set_color
	sub	esp,20
	mov	eax,[ebp-4]
	mov	ecx,3
	cdq
	idiv	ecx
	add	eax,220
	mov	[esp+4],eax
	mov	ebx,255
	sub	ebx,[ebp-4]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,255
	sub	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1067450368
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1130102784
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp],esi
	mov	eax,esi
	call	_foval
	mov	esi,eax
	sub	esp,4
	mov	[esp],1
	call	_fflip
	add	[ebp-4],1
_10
	cmp	[ebp-4],250
	jle	_11
_3
	mov	[ebp-4],0
	jmp	_12
_13
	sub	esp,20
	mov	[esp+12],150
	mov	[esp+16],1
	mov	[esp+8],30
	mov	[esp+4],90
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcc_set_color
	sub	esp,16
	call	_fgraphicswidth
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	mov	[esp+12],ebx
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_fline
	sub	esp,16
	call	_fgraphicswidth
	mov	[esp+8],eax
	mov	ebx,510
	sub	ebx,[ebp-4]
	mov	[esp+12],ebx
	mov	ebx,510
	sub	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_fline
	sub	esp,4
	mov	[esp],1
	call	_fflip
	add	[ebp-4],1
_12
	cmp	[ebp-4],255
	jle	_13
_4
	mov	[ebp-4],0
	jmp	_14
_15
	sub	esp,20
	mov	[esp+12],50
	mov	[esp+16],1
	mov	[esp+8],130
	mov	[esp+4],90
	mov	eax,255
	sub	eax,[ebp-4]
	mov	[esp],eax
	call	_fcc_set_color
	sub	esp,16
	mov	ebx,510
	sub	ebx,[ebp-4]
	mov	[esp+8],ebx
	call	_fgraphicsheight
	mov	[esp+12],eax
	mov	[esp+4],0
	mov	eax,510
	sub	eax,[ebp-4]
	mov	[esp],eax
	call	_fline
	sub	esp,20
	mov	[esp+12],50
	mov	[esp+16],1
	mov	[esp+8],130
	mov	[esp+4],90
	mov	eax,255
	sub	eax,[ebp-4]
	mov	[esp],eax
	call	_fcc_set_color
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	call	_fgraphicsheight
	mov	[esp+12],eax
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fline
	sub	esp,4
	mov	[esp],1
	call	_fflip
	add	[ebp-4],1
_14
	cmp	[ebp-4],255
	jle	_15
_5
	mov	[ebp-4],0
	jmp	_16
_17
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-4]
	shl	ebx,byte 1
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	ebx,255
	sub	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,255
	sub	eax,[ebp-4]
	mov	[esp],eax
	call	_frect
	sub	esp,4
	mov	[esp],1
	call	_fflip
	add	[ebp-4],1
_16
	cmp	[ebp-4],255
	jle	_17
_6
	mov	[ebp-4],50
	jmp	_18
_19
	sub	esp,20
	mov	[esp+12],200
	mov	[esp+16],1
	mov	[esp+8],90
	mov	[esp+4],250
	mov	eax,[ebp-4]
	sar	eax,byte 1
	mov	[esp],eax
	call	_fcc_set_color
	sub	esp,20
	mov	eax,[ebp-4]
	mov	ecx,3
	cdq
	idiv	ecx
	mov	[esp+4],eax
	mov	ebx,255
	sub	ebx,[ebp-4]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,255
	sub	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1067450368
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_foval
	mov	ebx,eax
	add	[ebp-4],1
_18
	cmp	[ebp-4],250
	jle	_19
_7
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],1
	mov	[esp],255
	call	_fcreateimage
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fgrabimage
	mov	[ebp-12],110
	mov	[ebp-16],-50
	mov	[ebp-20],0
	mov	[ebp-24],0
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
_20
	call	_fcls
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fdrawblock
	cmp	[ebp-24],0
	jnz	_21
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	jmp	_22
_21
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
_22
	cmp	[ebp-24],0
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[ebp-16],285
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_23
	mov	[ebp-24],1
_23
	mov	eax,[ebp-28]
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
	mov	[ebp-32],eax
	cmp	[ebp-24],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	ebx,eax
	and	ebx,ebx
	jz	_24
	mov	[ebp-24],0
_24
	cmp	[ebp-24],0
	jnz	_25
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
_25
	cmp	[ebp-24],1
	jnz	_26
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1041865114
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
_26
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
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
	jz	_20
_8
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcc_set_color
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
	cmp	[ebp+20],128
	jge	_28
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1123942400
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1123942400
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1123942400
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	jmp	_29
_28
	cmp	[ebp+20],127
	jle	_30
	sub	[ebp+20],128
	mov	ebx,255
	sub	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1123942400
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,255
	sub	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1123942400
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,255
	sub	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1123942400
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-16],esi
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-20],esi
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+32]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-24],esi
_30
_29
	cmp	[ebp+36],1
	jnz	_31
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcolor
_31
	mov	eax,[ebp-24]
	mov	ebx,[ebp-20]
	shl	ebx,byte 8
	or	eax,ebx
	mov	ebx,[ebp-16]
	shl	ebx,byte 16
	or	eax,ebx
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
_27	.db	"hit esc to quit",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

