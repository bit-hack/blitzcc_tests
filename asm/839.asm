
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatecamera
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],-1054867456
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	[esp+4],1082130432
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],1092616192
	call	_flightrange
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],1073741824
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityalpha
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-20],eax
	sub	esp,16
	mov	[esp+8],1061997773
	mov	[esp+12],1061997773
	mov	[esp+4],1072064102
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],0
	mov	[esp+16],1073741824
	mov	[esp+12],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	[esp],1073741824
	call	_fcreateline
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],1065353216
	mov	esi,[ebp-24]
	mov	[esp+24],esi
	mov	[esp+16],1075000115
	mov	[esp+12],0
	mov	[esp+8],1065353216
	mov	[esp+4],1073741824
	mov	[esp],1065353216
	call	_fcreateline
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],1065353216
	mov	esi,[ebp-24]
	mov	[esp+24],esi
	mov	[esp+16],1073741824
	mov	[esp+12],-1082130432
	mov	[esp+8],1065353216
	mov	[esp+4],1075000115
	mov	[esp],0
	call	_fcreateline
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],1065353216
	mov	esi,[ebp-24]
	mov	[esp+24],esi
	mov	[esp+16],1065353216
	mov	[esp+12],-1073741824
	mov	[esp+8],1065353216
	mov	[esp+4],1073741824
	mov	[esp],-1082130432
	call	_fcreateline
	mov	[ebp-24],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,28
	mov	[esp+20],-1082130432
	mov	[esp+24],0
	mov	[esp+16],1073741824
	mov	[esp+12],1065353216
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	[esp],1073741824
	call	_fcreateline
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],-1082130432
	mov	esi,[ebp-24]
	mov	[esp+24],esi
	mov	[esp+16],1075000115
	mov	[esp+12],0
	mov	[esp+8],-1082130432
	mov	[esp+4],1073741824
	mov	[esp],1065353216
	call	_fcreateline
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],-1082130432
	mov	esi,[ebp-24]
	mov	[esp+24],esi
	mov	[esp+16],1073741824
	mov	[esp+12],-1082130432
	mov	[esp+8],-1082130432
	mov	[esp+4],1075000115
	mov	[esp],0
	call	_fcreateline
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],-1082130432
	mov	esi,[ebp-24]
	mov	[esp+24],esi
	mov	[esp+16],1065353216
	mov	[esp+12],-1073741824
	mov	[esp+8],-1082130432
	mov	[esp+4],1073741824
	mov	[esp],-1082130432
	call	_fcreateline
	mov	[ebp-24],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],0
	mov	[esp+16],1065353216
	mov	[esp+12],1077936128
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	[esp],-1069547520
	call	_fcreateline
	mov	[ebp-24],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,28
	mov	[esp+20],-1082130432
	mov	[esp+24],0
	mov	[esp+16],1065353216
	mov	[esp+12],1082130432
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	[esp],-1063256064
	call	_fcreateline
	mov	[ebp-24],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],0
	mov	[esp+16],-1082130432
	mov	[esp+12],1077936128
	mov	[esp+8],1065353216
	mov	[esp+4],-1082130432
	mov	[esp],-1065353216
	call	_fcreateline
	mov	[ebp-24],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,28
	mov	[esp+20],-1082130432
	mov	[esp+24],0
	mov	[esp+16],-1082130432
	mov	[esp+12],1084227584
	mov	[esp+8],-1082130432
	mov	[esp+4],-1082130432
	mov	[esp],-1069547520
	call	_fcreateline
	mov	[ebp-24],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],1108082688
	mov	[esp+16],0
	mov	[esp+8],1108082688
	mov	[esp+4],1108082688
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
	jmp	_6
_5
	call	_fmousezspeed
	mov	[ebp-28],eax
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_7
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	call	_fmousexspeed
	neg	eax
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fmouseyspeed
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
	jmp	_8
_7
	cmp	[ebp-28],0
	jz	_9
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-28]
	imul	esi,3
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmoveentity
	jmp	_10
_9
	call	_fmouseyspeed
	mov	[ebp-32],eax
	call	_fmousexspeed
	mov	[ebp-32],eax
	call	_fmousezspeed
	mov	[ebp-32],eax
_10
_8
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcameraclsmode
	sub	esp,4
	mov	[esp],0
	call	_fwireframe
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcameraclsmode
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_6
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_5
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
_fcreateline
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+44],0
	jnz	_11
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp+44],eax
	sub	esp,8
	mov	eax,[ebp+44]
	mov	[esp],eax
	mov	[esp+4],16
	call	_fentityfx
	sub	esp,8
	mov	eax,[ebp+44]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-4],eax
	mov	[ebp-8],0
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	ebx,[ebp+28]
	mov	[esp+12],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	jmp	_12
_11
	sub	esp,8
	mov	eax,[ebp+44]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	mov	[ebp-8],eax
_12
	sub	esp,28
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp+32]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	ebx,[ebp+40]
	mov	[esp+12],ebx
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,16
	mov	ebx,[ebp-8]
	add	ebx,2
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	add	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	mov	eax,[ebp+44]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

