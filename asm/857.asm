
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],3
	mov	[esp+4],2
	mov	[esp],1
	call	_fcollisions
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],16
	mov	[esp],16
	call	_fcreatetexture
	mov	[_vtexture],eax
	sub	esp,12
	mov	eax,[_vtexture]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],8
	mov	[esp+16],1
	mov	[esp+8],8
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,20
	mov	[esp+12],8
	mov	[esp+16],1
	mov	[esp+8],8
	mov	[esp+4],8
	mov	[esp],8
	call	_frect
	sub	esp,12
	mov	[esp+4],1056964608
	mov	[esp+8],1056964608
	mov	eax,[_vtexture]
	mov	[esp],eax
	call	_fscaletexture
	sub	esp,16
	mov	[esp+8],9
	mov	[esp+12],1
	mov	[esp+4],32
	mov	[esp],32
	call	_fcreatetexture
	mov	[_vgroundtexture],eax
	sub	esp,12
	mov	eax,[_vgroundtexture]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],1
	mov	[esp+8],32
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],0
	mov	[esp+8],32
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],1073741824
	mov	[esp+8],1073741824
	mov	eax,[_vgroundtexture]
	mov	[esp],eax
	call	_fscaletexture
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreateplane
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vgroundtexture]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityalpha
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1101004800
	mov	[esp+4],1106247680
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-12],eax
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,20
	mov	[esp+12],-1020329984
	mov	[esp+16],0
	mov	[esp+8],-1046478848
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1109393408
	mov	[esp+16],0
	mov	[esp+8],1124859904
	mov	[esp+4],1092616192
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1117126656
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vtexture]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,8
	mov	[esp],32
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-16],eax
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,20
	mov	[esp+12],1109393408
	mov	[esp+16],0
	mov	[esp+8],1109393408
	mov	[esp+4],1109393408
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vtexture]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	mov	eax,_avertarray
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_avertarray
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avertarray
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1056964608
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fadjusttriangles
	mov	[ebp-20],eax
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],0
	mov	[esp+4],1056964608
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fadjusttriangles
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fflipmesh
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1108082688
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1127481344
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,20
	mov	[esp+12],1109393408
	mov	[esp+16],0
	mov	[esp+8],1109393408
	mov	[esp+4],1109393408
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vtexture]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1127481344
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1108082688
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1109393408
	mov	[esp+16],0
	mov	[esp+8],1109393408
	mov	[esp+4],1109393408
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vtexture]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-28],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1132396544
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,20
	mov	[esp+12],-1038090240
	mov	[esp+16],0
	mov	[esp+8],1142292480
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,24
	mov	[esp+8],0
	mov	[esp+12],1073741824
	mov	[esp+4],1082130432
	mov	[esp],0
	call	_fwheelnew
	mov	[esp+4],eax
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	mov	[ebp-36],1096810496
_17
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	call	_fmousezspeed
	push	eax
	fild	[esp]
	pop	eax
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	sub	esp,40
	mov	[esp+32],1036831949
	mov	[esp+36],0
	mov	[esp+28],0
	mov	[esp+24],1084227584
	mov	[esp+20],0
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp-36]
	mov	[esp+12],esi
	mov	[esp+8],0
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fwheelcamera
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fwheelcontrol
	call	_fwheelupdate
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],10
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],20
	mov	[esp],10
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],30
	mov	[esp],10
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_17
_3
	call	_fend
	ret
_2_leave
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fwheelnew
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
	mov	ebx,_twheel
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,48
	mov	[esi],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],64
	call	_fcreatecylinder
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1119092736
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotatemesh
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityradius
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,48
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vtexture]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytexture
	mov	eax,[ebp-4]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
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
_fwheelupdate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,76
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_twheel
	call	__bbObjEachFirst
	and	eax,eax
	jz	_6
_23
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,-1121724662
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
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
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
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
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,44
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,32
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_23
_6
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_twheel
	call	__bbObjEachFirst
	and	eax,eax
	jz	_7
_24
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,56
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,60
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,64
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	[esp],1065353216
	call	_ftformvector
	sub	esp,24
	mov	[esp+16],1
	mov	[esp+20],1058642330
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-76],eax
	mov	eax,ebx
	call	_ftformedy
	mov	ebx,eax
	mov	eax,[ebp-76]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faligntovector
	mov	ebx,eax
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,68
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fentitycollided
	and	eax,eax
	jz	_25
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,68
	mov	[esi],ebx
	mov	[ebp-8],0
	mov	[ebp-12],0
	mov	[ebp-16],0
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcountcollisions
	mov	[ebp-20],eax
	mov	[ebp-24],1
	jmp	_26
_27
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fcollisionnx
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
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fcollisionny
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fcollisionnz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-32]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,32
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,-1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	ebx,-1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	mov	ebx,-1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,32
	mov	[esi],ebx
	add	[ebp-24],1
_26
	mov	ebx,[ebp-20]
	cmp	[ebp-24],ebx
	jle	_27
_8
	cmp	[ebp-20],0
	jle	_28
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	sub	esp,24
	mov	[esp+16],2
	mov	[esp+20],1065353216
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_faligntovector
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
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
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
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
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,925353388
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	edi,[ebp-4]
	mov	edi,[edi]
	add	edi,32
	mov	edi,[edi]
	mov	[esp+8],edi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	call	_ftformnormal
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-64],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-68],eax
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	[esp],0
	call	_ftformnormal
	call	_ftformedx
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-76],eax
	mov	eax,ebx
	call	_ftformedy
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	esi,[ebp-64]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	[ebp-76],eax
	mov	eax,ebx
	call	_ftformedz
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	esi,[ebp-68]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-72],eax
	call	_ftformedx
	mov	ebx,[ebp-72]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	call	_ftformedy
	mov	ebx,[ebp-72]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	call	_ftformedz
	mov	ebx,[ebp-72]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	sub	esp,28
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-76],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-76]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-76],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-76]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
_28
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,56
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,56
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,60
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,60
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,64
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,64
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,52
	mov	[ebx],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065017672
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065017672
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065017672
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,32
	mov	[esi],ebx
_25
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,20
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,32
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	call	_ftformvector
	call	_ftformedz
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_29
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,52
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1113927392
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,48
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	jmp	_30
_29
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,52
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	mov	esi,1113927392
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,48
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
_30
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityparent
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,36
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,40
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,44
	mov	[esi],ebx
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_24
_7
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fwheelcontrol
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,68
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_31
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_32
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1028443341
	mov	[esp+4],0
	mov	[esp],0
	call	_ftformvector
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,36
	mov	[ebx],eax
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,40
	mov	[ebx],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,44
	mov	[ebx],eax
_32
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_33
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1064346583
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1064346583
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1064346583
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,32
	mov	[esi],ebx
_33
_31
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	and	eax,eax
	jz	_34
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,40
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1028443341
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,40
	mov	[esi],ebx
_34
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_35
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
_35
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_36
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1073741824
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
_36
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fwheelcamera
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
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_ftformpoint
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	mov	[ebp-28],eax
	mov	eax,ebx
	call	_ftformedx
	mov	ebx,eax
	mov	eax,[ebp-28]
	fsubrp	st(1)
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	mov	[ebp-28],eax
	mov	eax,ebx
	call	_ftformedy
	mov	ebx,eax
	mov	eax,[ebp-28]
	fsubrp	st(1)
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	mov	[ebp-28],eax
	mov	eax,ebx
	call	_ftformedz
	mov	ebx,eax
	mov	eax,[ebp-28]
	fsubrp	st(1)
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,20
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+48]
	mov	[esp+8],esi
	mov	ebx,[ebp+44]
	mov	[esp+4],ebx
	mov	eax,[ebp+40]
	mov	[esp],eax
	call	_ftformpoint
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	mov	[ebp-28],eax
	mov	eax,ebx
	call	_ftformedx
	mov	ebx,eax
	mov	eax,[ebp-28]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	mov	[ebp-28],eax
	mov	eax,ebx
	call	_ftformedy
	mov	ebx,eax
	mov	eax,[ebp-28]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	mov	[ebp-28],eax
	mov	eax,ebx
	call	_ftformedz
	mov	ebx,eax
	mov	eax,[ebp-28]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fatan2
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fatan2
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,20
	mov	ebx,[ebp+56]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frotateentity
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 40
	.align	16
_fadjusttriangles
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	sub	esp,4
	mov	eax,_avertarray
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,65536
	mov	esi,_avertarray
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avertarray
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetparent
	mov	[esp],eax
	call	_fcreatemesh
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_37
_38
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcounttriangles
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	sub	eax,1
	mov	[ebp-24],eax
	mov	[ebp-28],0
	jmp	_39
_40
	mov	[ebp-32],0
	jmp	_41
_42
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	esi,[ebp-32]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-36],eax
	mov	ebx,1
	mov	esi,[ebp-36]
	shl	esi,byte 2
	add	esi,[_avertarray]
	mov	[esi],ebx
	add	[ebp-32],1
_41
	cmp	[ebp-32],2
	jle	_42
_14
	add	[ebp-28],1
_39
	mov	ebx,[ebp-24]
	cmp	[ebp-28],ebx
	jle	_40
_13
	mov	[ebp-40],0
	jmp	_43
_44
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_avertarray]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_45
	sub	esp,40
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+20],eax
	mov	[ebp-48],eax
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	_fvertexw
	mov	esi,eax
	mov	eax,[ebp-48]
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+24],esi
	mov	[ebp-48],eax
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	_fvertexu
	mov	esi,eax
	mov	eax,[ebp-48]
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	mov	[ebp-44],ebx
_45
	add	[ebp-40],1
_43
	mov	ebx,[ebp-20]
	cmp	[ebp-40],ebx
	jle	_44
_15
	mov	[ebp-28],0
	jmp	_46
_47
	sub	esp,28
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+8],eax
	mov	[ebp-48],eax
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-48]
	mov	[esp+12],esi
	mov	[ebp-48],eax
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-48]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-28],1
_46
	mov	ebx,[ebp-24]
	cmp	[ebp-28],ebx
	jle	_47
_16
	add	[ebp-8],1
_37
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-8],eax
	jle	_38
_12
	sub	esp,4
	mov	eax,_avertarray
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_avertarray
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avertarray
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fupdatenormals
	mov	ebx,[ebp+32]
	and	ebx,ebx
	jz	_48
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	_fentityfx
_48
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_49
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffreeentity
_49
	mov	eax,[ebp-4]
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
_vtexture	.dd	0
	.align	4
_vgroundtexture	.dd	0
	.align	4
_avertarray	.dd	0
	.dd	1
	.dd	1
	.dd	0
_18	.db	"Arrow keys to control wheel",0
_19	.db	"Space to lift wheel",0
_20	.db	"Scroll on mouse to zoom",0
	.align	4
_twheel	.dd	5
_21	.dd	0
	.dd	_21
	.dd	_21
	.dd	0
	.dd	-1
_22	.dd	0
	.dd	_22
	.dd	_22
	.dd	0
	.dd	-1
	.dd	18
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

