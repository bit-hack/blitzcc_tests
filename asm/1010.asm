
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	mov	[ebp-44],ebx
	mov	[ebp-48],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fhidepointer
	sub	esp,12
	mov	[esp+4],1107296256
	mov	[esp+8],1107296256
	mov	[esp],1107296256
	call	_fambientlight
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],1084227584
	mov	[esp+12],1084227584
	mov	[esp+4],1097859072
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitycolor
	mov	[ebp-12],0
	jmp	_21
_22
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-16],eax
	sub	esp,24
	mov	[esp],1065353216
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1092616192
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1092616192
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,24
	mov	[esp],-1020002304
	mov	[esp+4],1127481344
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-1020002304
	mov	[esp+4],1127481344
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-1028390912
	mov	[esp+4],1119092736
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frotatemesh
	sub	esp,24
	mov	[esp],-1027080192
	mov	[esp+4],1120403456
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-1027080192
	mov	[esp+4],1120403456
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-1027080192
	mov	[esp+4],1120403456
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_faddmesh
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ffreeentity
	add	[ebp-12],1
_21
	cmp	[ebp-12],20
	jle	_22
_3
	mov	[ebp-12],0
	jmp	_23
_24
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],1082130432
	mov	[esp+4],1101004800
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,16
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,24
	mov	[esp],-1027080192
	mov	[esp+4],1120403456
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-1027080192
	mov	[esp+4],1120403456
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-1027080192
	mov	[esp+4],1120403456
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_faddmesh
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ffreeentity
	add	[ebp-12],1
_23
	cmp	[ebp-12],20
	jle	_24
_4
	sub	esp,8
	mov	[esp],32
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-28],eax
	sub	esp,20
	mov	[esp+12],1120403456
	mov	[esp+16],0
	mov	[esp+8],1120403456
	mov	[esp+4],1120403456
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fflipmesh
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-32],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1109393408
	mov	[esp+4],1116471296
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1148846080
	mov	[esp+4],0
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fpointentity
	call	_fdl_init
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fdl_setreceiver
	sub	esp,16
	mov	[esp+8],512
	mov	[esp+12],0
	mov	[esp+4],512
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fdl_setlight
	mov	[ebp-36],1073741824
	mov	[ebp-40],1065353216
	mov	[ebp-44],0
	mov	[ebp-48],0
_25
	sub	esp,20
	mov	[esp],205
	call	_fkeydown
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],203
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-52]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],200
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],208
	mov	eax,esi
	call	_fkeydown
	mov	esi,eax
	mov	eax,[ebp-52]
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+8],0
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fmoveentity
	mov	ebx,eax
	sub	esp,20
	call	_fmousexspeed
	neg	eax
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
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[ebp-52],eax
	mov	eax,ebx
	call	_fmouseyspeed
	mov	ebx,eax
	mov	eax,[ebp-52]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1048576000
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[ebp-52],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],2
	call	_fkeydown
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],3
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-52]
	or	eax,ebx
	and	eax,eax
	jz	_26
	sub	esp,4
	mov	[esp],2
	call	_fkeydown
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],3
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-52]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1008981770
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	_fcamerazoom
_26
	sub	esp,8
	mov	[esp],320
	mov	[esp+4],240
	call	_fmovemouse
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	sub	esp,24
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fsin
	mov	esi,1101004800
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_frotateentity
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	sub	esp,24
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1120403456
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	esi,1112014848
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	esi,1112014848
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcameraprojmode
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitycolor
	call	_fdl_update
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fcameraprojmode
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-40]
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
	and	eax,eax
	jz	_25
_5
	call	_fdl_free
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
_fdl_init
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fcleartexturefilters
	sub	esp,16
	mov	[esp+8],305
	mov	[esp+12],1
	mov	[esp+4],512
	mov	[esp],512
	call	_fcreatetexture
	mov	[_vdl_tex],eax
	sub	esp,8
	mov	eax,[_vdl_tex]
	mov	[esp],eax
	mov	[esp+4],5
	call	_ftextureblend
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fcreatebrush
	mov	[_vdl_brush],eax
	sub	esp,8
	mov	eax,[_vdl_brush]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fbrushblend
	sub	esp,8
	mov	eax,[_vdl_brush]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fbrushfx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vdl_tex]
	mov	[esp+4],esi
	mov	eax,[_vdl_brush]
	mov	[esp],eax
	call	_fbrushtexture
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
_fdl_free
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tdl_receiver
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_31
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjDelete
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_31
_8
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tdl_light
	call	__bbObjEachFirst
	and	eax,eax
	jz	_9
_32
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjDelete
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_32
_9
	mov	ebx,[_vdl_tex]
	and	ebx,ebx
	jz	_33
	sub	esp,4
	mov	eax,[_vdl_tex]
	mov	[esp],eax
	call	_ffreetexture
_33
	mov	ebx,[_vdl_brush]
	and	ebx,ebx
	jz	_34
	sub	esp,4
	mov	eax,[_vdl_brush]
	mov	[esp],eax
	call	_ffreebrush
_34
	mov	[_vdl_tex],0
	mov	[_vdl_brush],0
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdl_setreceiver
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tdl_receiver
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcreatemesh
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vdl_brush]
	mov	[esp+4],ebx
	call	_fpaintsurface
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fdl_setlight
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tdl_light
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_35
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tdl_light
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
_35
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcreatecamera
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcameraprojmode
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],1148846080
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+12],ebx
	mov	esi,[ebp+28]
	mov	[esp+16],esi
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],990057071
	call	_fcamerazoom
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fdl_update
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,132
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
	mov	[ebp-44],ebx
	mov	[ebp-48],ebx
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	[ebp-88],ebx
	mov	[ebp-92],ebx
	mov	[ebp-96],ebx
	mov	[ebp-100],ebx
	mov	[ebp-104],ebx
	mov	[ebp-108],ebx
	mov	[ebp-112],ebx
	mov	[ebp-116],ebx
	mov	[ebp-120],ebx
	mov	[ebp-124],ebx
	mov	[ebp-128],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_tdl_light
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_36
	mov	eax,0
	jmp	_12_leave
_36
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tdl_receiver
	call	__bbObjEachFirst
	and	eax,eax
	jz	_13
_37
	sub	esp,4
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_37
_13
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fcameraprojmode
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,40
	mov	eax,[_vdl_tex]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+28],eax
	mov	[ebp-132],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+24],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tdl_receiver
	call	__bbObjEachFirst
	and	eax,eax
	jz	_14
_38
	sub	esp,4
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_38
_14
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentitypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityroll
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tdl_receiver
	call	__bbObjEachFirst
	and	eax,eax
	jz	_15
_39
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_40
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	mov	[ebp-132],eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	mov	[ebp-132],eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	mov	[ebp-132],eax
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,32
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	mov	[ebp-132],eax
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,36
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	mov	[ebp-132],eax
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,40
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	and	eax,eax
	jz	_41
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fclearsurface
	sub	esp,4
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcountsurfaces
	mov	[ebp-36],eax
	mov	[ebp-40],1
	jmp	_42
_43
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-44],eax
	sub	esp,4
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	mov	[ebp-48],eax
	mov	[ebp-52],0
	jmp	_44
_45
	sub	esp,12
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-56],eax
	sub	esp,12
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-60],eax
	sub	esp,12
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-64],eax
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	call	_fvertexx
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-132]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	call	_fvertexy
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-72],eax
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	call	_fvertexz
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-132]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-76],eax
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	ebx,[ebp-64]
	mov	[esp+4],ebx
	call	_fvertexx
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-132]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-80],eax
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	ebx,[ebp-64]
	mov	[esp+4],ebx
	call	_fvertexy
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-84],eax
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	ebx,[ebp-64]
	mov	[esp+4],ebx
	call	_fvertexz
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-132]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-88],eax
	mov	ebx,[ebp-72]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-88]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-76]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-84]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-92],ebx
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-68]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-88]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-96],ebx
	mov	ebx,[ebp-68]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-84]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-72]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-80]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-100],ebx
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	esi,[ebp-100]
	mov	[esp+8],esi
	mov	ebx,[ebp-96]
	mov	[esp+4],ebx
	mov	eax,[ebp-92]
	mov	[esp],eax
	call	_ftformnormal
	call	_ftformedz
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
	jz	_46
	sub	esp,36
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	mov	[ebp-104],ebx
	sub	esp,36
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	esi,[ebp-60]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	esi,[ebp-60]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	mov	[ebp-108],ebx
	sub	esp,36
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	ebx,[ebp-64]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	esi,[ebp-64]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	esi,[ebp-64]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	mov	[ebp-112],ebx
	sub	esp,16
	mov	ebx,[ebp-108]
	mov	[esp+8],ebx
	mov	esi,[ebp-112]
	mov	[esp+12],esi
	mov	esi,[ebp-104]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_faddtriangle
_46
	add	[ebp-52],1
_44
	mov	ebx,[ebp-48]
	cmp	[ebp-52],ebx
	jle	_45
_17
	add	[ebp-40],1
_42
	mov	ebx,[ebp-36]
	cmp	[ebp-40],ebx
	jle	_43
_16
_41
	jmp	_47
_40
	sub	esp,4
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcountvertices
	cmp	eax,0
	jnz	_48
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fclearsurface
	sub	esp,4
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcountsurfaces
	mov	[ebp-36],eax
	mov	[ebp-40],1
	jmp	_49
_50
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-44],eax
	sub	esp,4
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	mov	[ebp-48],eax
	mov	[ebp-52],0
	jmp	_51
_52
	sub	esp,12
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-56],eax
	sub	esp,12
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-60],eax
	sub	esp,12
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-64],eax
	sub	esp,36
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	mov	[ebp-104],ebx
	sub	esp,36
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	esi,[ebp-60]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	esi,[ebp-60]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	mov	[ebp-108],ebx
	sub	esp,36
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	ebx,[ebp-64]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	esi,[ebp-64]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	esi,[ebp-64]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	mov	[ebp-112],ebx
	sub	esp,16
	mov	ebx,[ebp-108]
	mov	[esp+8],ebx
	mov	esi,[ebp-112]
	mov	[esp+12],esi
	mov	esi,[ebp-104]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-52],1
_51
	mov	ebx,[ebp-48]
	cmp	[ebp-52],ebx
	jle	_52
_19
	add	[ebp-40],1
_49
	mov	ebx,[ebp-36]
	cmp	[ebp-40],ebx
	jle	_50
_18
_48
_47
	sub	esp,4
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	mov	[ebp-116],eax
	mov	[ebp-120],0
	jmp	_53
_54
	sub	esp,28
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-120]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	esi,[ebp-120]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	esi,[ebp-120]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftformpoint
	sub	esp,16
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-132],eax
	mov	eax,ebx
	call	_ftformedz
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-132],eax
	mov	eax,ebx
	call	_ftformedx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-124],eax
	call	_fprojectedy
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-128],eax
	sub	esp,24
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	esi,[ebp-128]
	mov	[esp+12],esi
	mov	ebx,[ebp-124]
	mov	[esp+8],ebx
	mov	esi,[ebp-120]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fvertextexcoords
	add	[ebp-120],1
_53
	mov	ebx,[ebp-116]
	cmp	[ebp-120],ebx
	jle	_54
_20
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_39
_15
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,32
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,36
	mov	[esi],ebx
	mov	ebx,[ebp-32]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,40
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcameraprojmode
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[ebp-132],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-132]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vdl_brush	.dd	0
	.align	4
_vdl_tex	.dd	0
	.align	4
_tdl_receiver	.dd	5
_27	.dd	0
	.dd	_27
	.dd	_27
	.dd	0
	.dd	-1
_28	.dd	0
	.dd	_28
	.dd	_28
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_tdl_light	.dd	5
_29	.dd	0
	.dd	_29
	.dd	_29
	.dd	0
	.dd	-1
_30	.dd	0
	.dd	_30
	.dd	_30
	.dd	0
	.dd	-1
	.dd	11
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbFltType
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
