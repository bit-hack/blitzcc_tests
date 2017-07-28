
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
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
	sub	esp,20
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_10
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+12],ebx
	mov	[esp+4],1024
	mov	[esp],1024
	call	_finitgraphics
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[_vlight],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,20
	mov	[esp+12],-1063256064
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],981668463
	mov	[esp+8],1120403456
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreateplane
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1109393408
	mov	[esp+4],1106247680
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,16
	mov	[esp+8],-1
	mov	esi,[_vcamera]
	mov	[esp+12],esi
	mov	[esp+4],1065353216
	mov	[esp],1065353216
	call	_fcreatequad
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],1056964608
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1061997773
	call	_fentityalpha
	sub	esp,16
	mov	[esp+8],49
	mov	[esp+12],1
	mov	[esp+4],1024
	mov	[esp],1024
	call	_fcreatetexture
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,12
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-16],0
	jmp	_11
_12
	mov	[ebp-20],0
	jmp	_13
_14
	sub	esp,24
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+12],eax
	mov	[esp+8],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-20],1
_13
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ftexturewidth
	sub	eax,1
	cmp	[ebp-20],eax
	jle	_14
_4
	add	[ebp-16],1
_11
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ftextureheight
	sub	eax,1
	cmp	[ebp-16],eax
	jle	_12
_3
	sub	esp,12
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frendertexture
	jmp	_16
_15
	sub	esp,20
	mov	[esp+12],1056964608
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1056964608
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_17
	sub	esp,20
	mov	[esp+12],1036831949
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_ftranslateentity
_17
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_18
	sub	esp,20
	mov	[esp+12],-1110651699
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_ftranslateentity
_18
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_19
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1110651699
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_ftranslateentity
_19
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_20
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1036831949
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_ftranslateentity
_20
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frendertexture
	sub	esp,4
	mov	[esp],1
	call	_fflip
_16
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_15
_5
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
_frendertexture
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,40
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+28],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_ffrontbuffer
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+24],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	[esp+12],1024
	mov	[esp+8],1024
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_finitgraphics
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,12
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_21
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fapptitle
	jmp	_23
_21
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_24
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fapptitle
_23
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[ebp-4],eax
	sub	esp,4
	mov	esi,[ebp+32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fcreatequad
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
	cmp	[ebp+32],0
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_25
	sub	esp,4
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fcreatemesh
	mov	[ebp-20],eax
	jmp	_26
_25
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-20],eax
_26
	cmp	[ebp+28],0
	jz	_27
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fentityorder
_27
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-24],eax
	sub	esp,28
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1056964608
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-4],eax
	sub	esp,28
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],0
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1056964608
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-8],eax
	sub	esp,28
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1056964608
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-12],eax
	sub	esp,28
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],0
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1056964608
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-16],eax
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_faddtriangle
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
_9	.db	"Blitz3D Program",0
_10	.db	"",0
	.align	4
_vlight	.dd	0
	.align	4
_vcamera	.dd	0
_22	.db	"",0
_24	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

