
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
	sub	esp,12
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vsize],100
	sub	esp,4
	mov	eax,_acoldim
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_acoldim
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vsize]
	shl	ebx,byte 1
	mov	esi,_acoldim
	add	esi,16
	mov	[esi],ebx
	mov	ebx,[_vsize]
	shl	ebx,byte 1
	mov	esi,_acoldim
	add	esi,20
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_acoldim
	add	esi,24
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acoldim
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aradarbalk
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_aradarbalk
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aradarbalk
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	ebx,[_vsize]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vsize]
	shl	eax,byte 1
	mov	[esp],eax
	call	_fcreateimage
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aradarbalk]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[_vsize]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vsize]
	shl	eax,byte 1
	mov	[esp],eax
	call	_fcreateimage
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aradarbalk]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1500
	call	_fmakecolmap
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],200
	call	_fmakecolmap
	jmp	_14
_13
	call	_fcls
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	[esp+4],100
	mov	[esp],0
	call	_ftekenradar
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],1
	mov	[esp+8],20
	mov	ebx,[_vsize]
	sub	ebx,10
	mov	[esp+4],ebx
	mov	eax,[_vsize]
	add	eax,100
	sub	eax,10
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,[_vsize]
	shl	ebx,byte 1
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vsize]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],100
	call	_foval
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],200
	mov	[esp],100
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],220
	mov	[esp],100
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],240
	mov	[esp],100
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],260
	mov	[esp],100
	call	_ftext
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	[esp+4],300
	mov	[esp],1
	call	_ftekenradar
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],1
	mov	[esp+8],20
	mov	ebx,[_vsize]
	sub	ebx,10
	mov	[esp+4],ebx
	mov	eax,[_vsize]
	add	eax,300
	sub	eax,10
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,[_vsize]
	shl	ebx,byte 1
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vsize]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],300
	call	_foval
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],200
	mov	[esp],300
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],220
	mov	[esp],300
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],240
	mov	[esp],300
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],260
	mov	[esp],300
	call	_ftext
	add	[ebp-4],1
	cmp	[ebp-4],360
	jle	_23
	mov	[ebp-4],0
_23
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],1
	mov	[esp+8],20
	mov	[esp+4],320
	mov	[esp],50
	call	_foval
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],320
	mov	[esp],80
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],340
	mov	[esp],80
	call	_ftext
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	[esp+4],360
	mov	[esp],50
	call	_frect
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],360
	mov	[esp],80
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],380
	mov	[esp],80
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],420
	mov	[esp],80
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_14
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_13
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
_ftekenradar
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_aradarbalk]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,4
	mov	eax,[ebp+32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,[_vsize]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[_vsize]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],50
	mov	[esp],50
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-4]
	add	ebx,[_vsize]
	add	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	add	esi,[_vsize]
	add	esi,[ebp+28]
	mov	[esp+12],esi
	mov	esi,[_vsize]
	add	esi,[ebp+28]
	mov	[esp+4],esi
	mov	eax,[_vsize]
	add	eax,[ebp+24]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	esi,[ebp+20]
	mov	[esp+12],esi
	mov	esi,[_vsize]
	mov	[esp+4],esi
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fstraalpuntcol
	mov	[ebp-12],eax
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fmakecolmap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	jmp	_29
_30
	mov	[ebp-8],0
	jmp	_31
_32
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	cmp	eax,1
	jnz	_33
	mov	ebx,_acoldim
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp+20]
	mov	esi,_acoldim
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	ebx,esi
	mov	esi,_acoldim
	add	esi,20
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_acoldim]
	mov	esi,1
	mov	[ebx],esi
_33
	add	[ebp-8],1
_31
	mov	ebx,[_vsize]
	shl	ebx,byte 1
	cmp	[ebp-8],ebx
	jle	_32
_7
	add	[ebp-4],1
_29
	mov	ebx,[_vsize]
	shl	ebx,byte 1
	cmp	[ebp-4],ebx
	jle	_30
_6
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fstraalpuntcol
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
	sub	esp,12
	mov	eax,[ebp+28]
	shl	eax,byte 2
	add	eax,[_aradarbalk]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],250
	mov	[esp+8],10
	mov	[esp],10
	call	_fcolor
	mov	[ebp-4],0
	jmp	_34
_35
	sub	esp,4
	mov	eax,[ebp+20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	ebx,_acoldim
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+32]
	mov	esi,_acoldim
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	ebx,esi
	mov	esi,_acoldim
	add	esi,20
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_acoldim]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_36
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1072902963
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	call	_fcolorgreen
	push	eax
	fild	[esp]
	pop	eax
	fsubrp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	mov	eax,[ebp-16]
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
	jz	_37
	mov	[ebp-16],0
_37
	sub	esp,12
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fcolorblue
	mov	[esp+8],eax
	call	_fcolorred
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frect
	add	[ebp-20],1
_36
	add	[ebp-4],1
_34
	mov	ebx,[ebp+24]
	cmp	[ebp-4],ebx
	jle	_35
_9
	sub	[ebp+20],45
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	mov	[ebp-4],0
	jmp	_38
_39
	sub	esp,4
	mov	eax,[ebp+20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	ebx,_acoldim
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+32]
	mov	esi,_acoldim
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	ebx,esi
	mov	esi,_acoldim
	add	esi,20
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_acoldim]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_40
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frect
	add	[ebp-20],1
_40
	add	[ebp-4],1
_38
	mov	ebx,[ebp+24]
	cmp	[ebp-4],ebx
	jle	_39
_10
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,[ebp-20]
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
_11	.db	"Sound. Radar. (dutch english american)",0
_12	.db	"",0
	.align	4
_vsize	.dd	0
	.align	4
_acoldim	.dd	0
	.dd	1
	.dd	4
	.dd	0
	.dd	0
	.dd	0
	.dd	0
	.align	4
_aradarbalk	.dd	0
	.dd	1
	.dd	1
	.dd	0
_15	.db	"Onbekende geluiden.",0
_16	.db	"Onherkenbare geluiden.",0
_17	.db	"Unfamiliar sounds.",0
_18	.db	"Unrecognisable sounds.",0
_19	.db	"Bekende geluiden.",0
_20	.db	"Herkenbare geluiden.",0
_21	.db	"Familiar sounds..",0
_22	.db	"Recognisable geluiden.",0
_24	.db	"Het herkenbare of onherkenbare geluids uitzend punt.",0
_25	.db	"The recognisable or unrecognisable sound send point.",0
_26	.db	"Beweegpunt, attentiepunt.",0
_27	.db	"Movementpoint. attentionpoint.",0
_28	.db	"Please check the spelling and translations and definitions.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
