
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	mov	eax,_apixdata
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5000
	mov	esi,_apixdata
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apixdata
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_11
_12
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_apixdata]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_tpoint
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-4],1
_11
	cmp	[ebp-4],5000
	jle	_12
_3
	call	_fgraphicsheight
	mov	[_vfillheight],eax
	call	_fgraphicswidth
	mov	[_vfillwidth],eax
	mov	[ebp-8],0
	jmp	_13
_14
	sub	esp,20
	mov	[esp],1132396544
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,28
	mov	[esp],1132068864
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1120403456
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1132068864
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1139802112
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	[esp],1142947840
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	add	[ebp-8],1
_13
	cmp	[ebp-8],150
	jle	_14
_4
	mov	[ebp-4],0
	jmp	_15
_16
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1199570944
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esi,1132462080
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-16]
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp],1142947840
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1139802112
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esi,1112014848
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	call	_ffloodfill
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_17
	jmp	_5
_17
	add	[ebp-4],1
_15
	cmp	[ebp-4],1000
	jle	_16
_5
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
_ffloodfill
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-4],eax
	mov	ebx,[ebp+28]
	cmp	[ebp-4],ebx
	jnz	_20
	jmp	_l_6endfunc
_20
	mov	[ebp-8],0
	jmp	_21
_22
	mov	ebx,0
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_apixdata]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_apixdata]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	add	[ebp-8],1
_21
	cmp	[ebp-8],5000
	jle	_22
_7
	mov	[ebp-12],0
	mov	[ebp-16],1
_23
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apixdata]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apixdata]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
_24
	sub	esp,12
	mov	ebx,[ebp+24]
	add	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	add	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	cmp	eax,[ebp-4]
	setz	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp+20]
	add	ebx,[ebp-20]
	cmp	ebx,0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	mov	[ebp-28],eax
	mov	ebx,[ebp+20]
	add	ebx,[ebp-20]
	cmp	ebx,[_vfillwidth]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	mov	[ebp-28],eax
	mov	ebx,[ebp+24]
	add	ebx,[ebp-24]
	cmp	ebx,0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	mov	[ebp-28],eax
	mov	ebx,[ebp+24]
	add	ebx,[ebp-24]
	cmp	ebx,[_vfillheight]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_25
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	add	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,12
	mov	ebx,[ebp+24]
	add	ebx,[ebp-24]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	add	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	cmp	eax,[ebp-4]
	jnz	_26
	mov	ebx,[ebp-20]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_apixdata]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	sub	ebx,1
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_apixdata]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	add	[ebp-16],1
	cmp	[ebp-16],5001
	jnz	_27
	mov	[ebp-16],0
_27
_26
	sub	esp,12
	mov	ebx,[ebp+24]
	add	ebx,[ebp-24]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	add	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	cmp	eax,[ebp-4]
	jnz	_28
	mov	ebx,[ebp-20]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_apixdata]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	add	ebx,1
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_apixdata]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	add	[ebp-16],1
	cmp	[ebp-16],5001
	jnz	_29
	mov	[ebp-16],0
_29
_28
	jmp	_30
_25
	jmp	_9
_30
	add	[ebp-20],1
	jmp	_24
_9
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apixdata]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	sub	ebx,1
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apixdata]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
_31
	sub	esp,12
	mov	ebx,[ebp+24]
	add	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	add	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	cmp	eax,[ebp-4]
	setz	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp+20]
	add	ebx,[ebp-20]
	cmp	ebx,0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	mov	[ebp-28],eax
	mov	ebx,[ebp+20]
	add	ebx,[ebp-20]
	cmp	ebx,[_vfillwidth]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	mov	[ebp-28],eax
	mov	ebx,[ebp+24]
	add	ebx,[ebp-24]
	cmp	ebx,0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	mov	[ebp-28],eax
	mov	ebx,[ebp+24]
	add	ebx,[ebp-24]
	cmp	ebx,[_vfillheight]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_32
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	add	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,12
	mov	ebx,[ebp+24]
	add	ebx,[ebp-24]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	add	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	cmp	eax,[ebp-4]
	jnz	_33
	mov	ebx,[ebp-20]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_apixdata]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	sub	ebx,1
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_apixdata]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	add	[ebp-16],1
	cmp	[ebp-16],5001
	jnz	_34
	mov	[ebp-16],0
_34
_33
	sub	esp,12
	mov	ebx,[ebp+24]
	add	ebx,[ebp-24]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	add	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	cmp	eax,[ebp-4]
	jnz	_35
	mov	ebx,[ebp-20]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_apixdata]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	add	ebx,1
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_apixdata]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	add	[ebp-16],1
	cmp	[ebp-16],5001
	jnz	_36
	mov	[ebp-16],0
_36
_35
	jmp	_37
_32
	jmp	_10
_37
	sub	[ebp-20],1
	jmp	_31
_10
	add	[ebp-12],1
	cmp	[ebp-12],5001
	jnz	_38
	mov	[ebp-12],0
_38
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	jnz	_23
_8
_l_6endfunc
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_apixdata	.dd	0
	.dd	5
	.dd	1
	.dd	0
	.align	4
_vfillheight	.dd	0
	.align	4
_vfillwidth	.dd	0
	.align	4
_tpoint	.dd	5
_18	.dd	0
	.dd	_18
	.dd	_18
	.dd	0
	.dd	-1
_19	.dd	0
	.dd	_19
	.dd	_19
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

