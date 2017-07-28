
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	mov	[ebp-40],ebx
	call	_fwindowed3d
	and	eax,eax
	jz	_7
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	jmp	_8
_7
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
_8
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],1092616192
	mov	[esp+12],-1046478848
	mov	[esp+4],1101004800
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmoveentity
	mov	[ebp-12],1008981770
	mov	[ebp-16],1065185444
	call	_l_2create_objects
	call	_l_2define_types
	mov	[ebp-20],1101004800
_9
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],_tball
	call	__bbObjEachFirst
	and	eax,eax
	jz	_4
_10
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,32
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
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
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,32
	mov	[esi],ebx
	mov	eax,[ebp-24]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_11
	sub	esp,4
	mov	eax,[ebp-24]
	mov	eax,[eax]
	add	eax,32
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,40
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
_11
	sub	esp,20
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_10
_4
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrFromFloat
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
	cmp	eax,1
	jnz	_9
_3
_l_2create_objects
	sub	esp,8
	mov	[esp],6
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-28],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1112014848
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreateplane
	mov	[ebp-32],eax
	sub	esp,16
	mov	[esp+8],1084227584
	mov	[esp+12],1084227584
	mov	[esp+4],1131413504
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fentitycolor
	ret
_l_2define_types
	mov	[ebp-36],1
	jmp	_12
_13
	mov	[ebp-40],1
	jmp	_14
_15
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_tball
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	mov	ebx,[ebp-36]
	shl	ebx,byte 2
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,1106247680
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1060320051
	mov	[esp+4],1063507722
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,40
	mov	[ebx],eax
	sub	esp,24
	mov	[esp],1065353216
	mov	[esp+4],1132396544
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1132396544
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-44],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1132396544
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	mov	ebx,1058642330
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,44
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-24]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,44
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fentityalpha
	add	[ebp-40],1
_14
	cmp	[ebp-40],8
	jle	_15
_6
	add	[ebp-36],1
_12
	cmp	[ebp-36],8
	jle	_13
_5
	ret
	ret
_2_leave
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_tball	.dd	5
_16	.dd	0
	.dd	_16
	.dd	_16
	.dd	0
	.dd	-1
_17	.dd	0
	.dd	_17
	.dd	_17
	.dd	0
	.dd	-1
	.dd	12
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

