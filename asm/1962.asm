
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],-1061158912
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[esp],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1110704128
	call	_frotateentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],1124073472
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],20
	call	_fcreatecone
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1132396544
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1065353216
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],20
	call	_fcreatecone
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],20
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fcreatesphere
	mov	[ebp-24],eax
	sub	esp,20
	mov	[esp+12],-1065353216
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionentity
	mov	[ebp-28],7
	cmp	[ebp-28],1
	jz	_8
	cmp	[ebp-28],2
	jz	_9
	cmp	[ebp-28],3
	jz	_10
	cmp	[ebp-28],4
	jz	_11
	cmp	[ebp-28],5
	jz	_12
	cmp	[ebp-28],6
	jz	_13
	cmp	[ebp-28],7
	jz	_14
	jmp	_7
_8
	sub	esp,32
	mov	[esp+24],1
	mov	[esp+28],-1
	mov	[esp+20],1064514355
	mov	[esp+16],1065353216
	mov	[esp+12],1065353216
	mov	[esp+8],0
	mov	[esp+4],1065353216
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreateblurlayer
	mov	[ebp-32],eax
	jmp	_7
_9
	sub	esp,32
	mov	[esp+24],3
	mov	[esp+28],-1
	mov	[esp+20],1065353216
	mov	[esp+16],1064849900
	mov	[esp+12],1065353216
	mov	[esp+8],0
	mov	[esp+4],1065353216
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreateblurlayer
	mov	[ebp-32],eax
	jmp	_7
_10
	sub	esp,32
	mov	[esp+24],3
	mov	[esp+28],-1
	mov	[esp+20],1065353216
	mov	[esp+16],1064849900
	mov	[esp+12],1065520988
	mov	[esp+8],1045220557
	mov	[esp+4],1065353216
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreateblurlayer
	mov	[ebp-32],eax
	jmp	_7
_11
	sub	esp,32
	mov	[esp+24],1
	mov	[esp+28],-1
	mov	[esp+20],1064514355
	mov	[esp+16],1065353216
	mov	[esp+12],1065437102
	mov	[esp+8],0
	mov	[esp+4],1065353216
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreateblurlayer
	mov	[ebp-32],eax
	jmp	_7
_12
	sub	esp,32
	mov	[esp+24],1
	mov	[esp+28],-1
	mov	[esp+20],1063675494
	mov	[esp+16],1065353216
	mov	[esp+12],1065437102
	mov	[esp+8],0
	mov	[esp+4],1065353216
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreateblurlayer
	mov	[ebp-32],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1130430464
	mov	[esp+4],1131413504
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fentitycolor
	jmp	_7
_13
	sub	esp,32
	mov	[esp+24],1
	mov	[esp+28],-1
	mov	[esp+20],1064514355
	mov	[esp+16],1065353216
	mov	[esp+12],1065353216
	mov	[esp+8],0
	mov	[esp+4],1066192077
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreateblurlayer
	mov	[ebp-32],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_frotateentity
	jmp	_7
_14
	sub	esp,32
	mov	[esp+24],1
	mov	[esp+28],-1
	mov	[esp+20],1063675494
	mov	[esp+16],1065353216
	mov	[esp+12],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],1065437102
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreateblurlayer
	mov	[ebp-32],eax
	sub	esp,32
	mov	[esp+24],1
	mov	[esp+28],-1
	mov	[esp+20],1061997773
	mov	[esp+16],1065353216
	mov	[esp+12],1065353216
	mov	[esp+8],-1082130432
	mov	[esp+4],1065520988
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreateblurlayer
	mov	[ebp-36],eax
	jmp	_7
_7
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	jmp	_16
_15
	sub	esp,20
	mov	[esp+12],1050253722
	mov	[esp+16],0
	mov	[esp+8],1045220557
	mov	[esp+4],1036831949
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,20
	mov	[esp+12],1045220557
	mov	[esp+16],0
	mov	[esp+8],1051931443
	mov	[esp+4],1057803469
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	_fupdateblurlayer
	mov	[ebp-40],eax
	mov	ebx,[ebp-36]
	and	ebx,ebx
	jz	_17
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fentitytexture
_17
	sub	esp,4
	mov	[esp],1
	call	_fflip
_16
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_15
_4
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcreateblurlayer
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
	call	_fgraphicswidth
	mov	[ebp-4],eax
	call	_fgraphicsheight
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcreatemesh
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-16],eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1149239296
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1149239296
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],-1082130432
	mov	[esp+4],-1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	esi,[ebp-20]
	mov	[esp+16],esi
	mov	[esp+12],0
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	ebx,[ebp-24]
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],1065353216
	mov	[esp+4],-1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	ebx,[ebp-24]
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	esi,[ebp-20]
	mov	[esp+16],esi
	mov	[esp+12],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],1
	mov	[esp+4],3
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,24
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-40]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-40],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-40]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcameraproject
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	call	_fprojectedx
	fsubrp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	call	_fprojectedy
	fsubrp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,16
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-8]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp-32]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	[esp+12],1065353216
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,20
	mov	ebx,-1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	esi,-1090519040
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-28]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	ebx,[ebp+28]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+32]
	mov	[esp+8],esi
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp+40]
	mov	[esp+4],ebx
	call	_fentityalpha
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp+44]
	mov	[esp+4],ebx
	call	_fentityblend
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	sub	esp,16
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-36]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-36]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp+48]
	mov	[esp+4],ebx
	call	_fentityorder
	mov	eax,[ebp-12]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	16
_fupdateblurlayer
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[ebp+24],0
	jnz	_18
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],1024
	mov	[esp],1024
	call	_fcreatetexture
	mov	[ebp+24],eax
_18
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,40
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+28],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+24],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	call	_fgraphicsheight
	mov	[esp+12],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	mov	eax,[ebp+24]
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

