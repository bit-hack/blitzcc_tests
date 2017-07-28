
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcameraclsmode
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-4],eax
	call	_fcreatequad
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],1073741824
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	[esp+4],1073741824
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,28
	mov	eax,[_vcamera]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	ebx,[_vcamera]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-28],eax
	sub	esp,8
	mov	ebx,[_vcamera]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-28]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[_vcamera]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityorder
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],512
	mov	[esp],512
	call	_fcreatetexture
	mov	[ebp-12],eax
	sub	esp,12
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-16],0
	jmp	_9
_10
	sub	esp,20
	mov	[esp],1132396544
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-28]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-28]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,16
	mov	[esp],1140850688
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],1140850688
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-28]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-16],1
_9
	cmp	[ebp-16],10000
	jle	_10
_3
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitytexture
	mov	[ebp-16],0
	jmp	_11
_12
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp],1092616192
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	[esp],1092616192
	mov	[esp+4],0
	call	_frnd
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	sub	esp,8
	mov	[esp],1092616192
	mov	[esp+4],0
	call	_frnd
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,28
	mov	[esp],1140457472
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],-1007026176
	mov	[esp+4],1140457472
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-28]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],-1007026176
	mov	[esp+4],1140457472
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-28]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,24
	mov	[esp],1124073472
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1115684864
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	[esp],1124073472
	mov	[esp+4],0
	call	_frnd
	mov	esi,1115684864
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,8
	mov	[esp],1124073472
	mov	[esp+4],0
	call	_frnd
	mov	esi,1115684864
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitycolor
	add	[ebp-16],1
_11
	cmp	[ebp-16],99
	jle	_12
_4
	sub	esp,8
	mov	[esp],4
	mov	[esp+4],0
	call	_fcreateplane
	mov	[ebp-24],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1128792064
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_fmovemouse
	jmp	_14
_13
	call	_fupdatecontrols
	sub	esp,8
	mov	eax,[_vcamera]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fupdateskyquad
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_14
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_13
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
_fupdatecontrols
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1048576000
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1048576000
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-12]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	mov	ebx,[_vcampitch]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vcampitch],ebx
	mov	ebx,[_vcamyaw]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vcamyaw],ebx
	mov	eax,[_vcampitch]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1029046272
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_15
	mov	[_vcampitch],-1029046272
_15
	mov	eax,[_vcampitch]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1118437376
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_16
	mov	[_vcampitch],1118437376
_16
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[_vcamyaw]
	mov	[esp+8],esi
	mov	ebx,[_vcampitch]
	mov	[esp+4],ebx
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_17
	mov	ebx,[_vmvx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1050253722
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vmvx],ebx
_17
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_18
	mov	ebx,[_vmvx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1050253722
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vmvx],ebx
_18
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_19
	mov	ebx,[_vmvz]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1050253722
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vmvz],ebx
_19
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_20
	mov	ebx,[_vmvz]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1050253722
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vmvz],ebx
_20
	sub	esp,4
	mov	[esp],30
	call	_fkeydown
	and	eax,eax
	jz	_21
	mov	ebx,[_vmvx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1050253722
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vmvx],ebx
_21
	sub	esp,4
	mov	[esp],32
	call	_fkeydown
	and	eax,eax
	jz	_22
	mov	ebx,[_vmvx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1050253722
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vmvx],ebx
_22
	sub	esp,4
	mov	[esp],17
	call	_fkeydown
	and	eax,eax
	jz	_23
	mov	ebx,[_vmvz]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1050253722
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vmvz],ebx
_23
	sub	esp,4
	mov	[esp],31
	call	_fkeydown
	and	eax,eax
	jz	_24
	mov	ebx,[_vmvz]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1050253722
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vmvz],ebx
_24
	mov	ebx,[_vmvx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1067030938
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vmvx],ebx
	mov	ebx,[_vmvz]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1067030938
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vmvz],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[_vmvz]
	mov	[esp+12],esi
	mov	esi,[_vmvx]
	mov	[esp+4],esi
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	eax,[_vcamera]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_25
	sub	esp,28
	mov	eax,[_vcamera]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vcamera]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	ebx,[_vcamera]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
_25
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdateskyquad
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,20
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	mov	ebx,1008981770
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-4]
	fchs
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositiontexture
	mov	ebx,eax
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fcreatequad
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-8],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],-1082130432
	mov	[esp+8],1065353216
	mov	[esp+4],-1082130432
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],-1082130432
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],-1082130432
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],-1082130432
	mov	[esp+8],-1082130432
	mov	[esp+4],-1082130432
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],3
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	mov	eax,[ebp-4]
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vcampitch	.dd	0
	.align	4
_vcamyaw	.dd	0
	.align	4
_vmvx	.dd	0
	.align	4
_vmvz	.dd	0
	.align	4
_vcamera	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
