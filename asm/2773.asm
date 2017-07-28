
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
	sub	esp,12
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	call	_fgraphicswidth
	mov	[_vwidth],eax
	call	_fgraphicsheight
	mov	[_vheight],eax
	sub	esp,4
	mov	[esp],60
	call	_fcreatetimer
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],1065353216
	mov	esi,[_vwidth]
	add	esi,256
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,24
	mov	[esp+16],1065353216
	mov	[esp+20],1112014848
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	[esp+8],10
	mov	[esp+4],512
	mov	[esp],1132462080
	call	_finitradar
	mov	[ebp-12],eax
	sub	esp,12
	mov	[esp+4],2000
	mov	[esp+8],1148846080
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_finitobjects
	sub	esp,8
	mov	eax,[_vwidth]
	sar	eax,byte 1
	mov	[esp],eax
	mov	ebx,[_vheight]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	jmp	_25
_24
	mov	[ebp-16],256
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1065353216
	call	_fmovement
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_26
	mov	[ebp-16],128
_26
	sub	esp,20
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1119092736
	mov	[esp+8],1132462080
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fupdateradar
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwaittimer
	sub	esp,32
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],15
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_25
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_24
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
_finitobjects
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_31
_32
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tblip
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],16
	call	_fcreatecone
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],6
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fcreatesphere
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcreatecube
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1110651699
	mov	[esp+4],1036831949
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1110651699
	mov	[esp+4],1036831949
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1110651699
	mov	[esp+4],1036831949
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],255
	mov	[esp+4],1
	call	_frand
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,36
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],255
	mov	[esp+4],1
	call	_frand
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,40
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],255
	mov	[esp+4],1
	call	_frand
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,44
	mov	[ebx],eax
	mov	ebx,1073741824
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,48
	mov	[esi],ebx
	sub	esp,24
	mov	[esp+16],2
	mov	[esp+20],1065353216
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,32
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_faligntovector
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,40
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,44
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,36
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,48
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,48
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,12
	mov	[esp+4],1065353216
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityautofade
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],-100
	call	_fentityorder
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,40
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,44
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,36
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],-100
	call	_fentityorder
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,40
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,44
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,36
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	add	[ebp-4],1
_31
	mov	ebx,[ebp+24]
	cmp	[ebp-4],ebx
	jle	_32
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fmovement
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
	mov	[ebp-20],1
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	mov	[ebp-24],eax
	sub	esp,4
	mov	[esp],208
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-24]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	mov	[ebp-24],eax
	sub	esp,4
	mov	[esp],205
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-24]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],42
	call	_fkeydown
	mov	[ebp-24],eax
	sub	esp,4
	mov	[esp],54
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-24]
	or	eax,ebx
	mov	[ebp-24],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-24]
	or	eax,ebx
	and	eax,eax
	jz	_33
	mov	[ebp-20],10
_33
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],-1082130432
	mov	esi,[_vwidth]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	[esp+4],0
	call	_fmousex
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fnormalize
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],-1082130432
	mov	[esp+16],1065353216
	mov	esi,[_vheight]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	[esp+4],0
	call	_fmousey
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fnormalize
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
	jz	_34
	sub	esp,12
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,-1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	jmp	_35
_34
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	__bbFPow
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
_35
	mov	eax,[ebp-12]
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
	jz	_36
	sub	esp,12
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,-1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	jmp	_37
_36
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	__bbFPow
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
_37
	sub	esp,20
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1082130432
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1082130432
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,16
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmoveentity
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_finitradar
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	sub	esp,16
	mov	[esp+8],255
	mov	[esp+12],1065353216
	mov	[esp+4],255
	mov	[esp],255
	call	_fcreatequad
	mov	[ebp-4],eax
	sub	esp,12
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fcreategridtexture
	mov	[ebp-8],eax
	sub	esp,12
	mov	ebx,[ebp+36]
	mov	[esp+4],ebx
	mov	esi,[ebp+40]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcreateglowtexture
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+20]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	ebx,[_vheight]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1128267776
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[_vwidth]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],2
	call	_ftextureblend
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],3
	call	_ftextureblend
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityblend
	sub	esp,12
	mov	[esp+4],1
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	[esp],3
	call	_fcreatecone
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1106247680
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frotatemesh
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1023410176
	mov	[esp+16],0
	mov	[esp+8],1023410176
	mov	[esp+4],1023410176
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],-20
	call	_fentityorder
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],-10
	call	_fentityorder
	mov	eax,[ebp-4]
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fupdateradar
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
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1063675494
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	[ebp-44],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tblip
	call	__bbObjEachFirst
	and	eax,eax
	jz	_9
_38
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
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
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
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
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
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
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
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
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fentitydistance
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_39
	add	[ebp-44],1
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,20
	mov	[esp+12],0
	mov	esi,[ebp+20]
	mov	[esp+16],esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	call	_ftformpoint
	call	_ftformedx
	fchs
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	call	_ftformedz
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	call	_ftformedy
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,20
	mov	ebx,[ebp-36]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-32]
	mov	[esp+8],esi
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_ftranslateentity
	jmp	_40
_39
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
_40
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_38
_9
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1127481344
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_frotateentity
	mov	eax,[ebp-44]
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
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
	mov	[esp+16],1065353216
	mov	[esp+12],0
	mov	[esp+8],1065353216
	mov	[esp+4],-1082130432
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],0
	mov	[esp+8],-1082130432
	mov	[esp+4],-1082130432
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-24],eax
	sub	esp,24
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp+32]
	mov	[esp+20],esi
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp+32]
	mov	[esp+20],esi
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp+32]
	mov	[esp+20],esi
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp+32]
	mov	[esp+20],esi
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],1
	mov	[esp+4],3
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fflipmesh
	mov	eax,[ebp-4]
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fcreateglowtexture
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	mov	ebx,1140850688
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,16
	mov	[esp+8],3
	mov	[esp+12],1
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcreatetexture
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-16],0
	jmp	_41
_42
	mov	[ebp-20],0
	jmp	_43
_44
	mov	[ebp-36],0
	sub	esp,16
	mov	ebx,[ebp-36]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-20],1
_43
	mov	ebx,[ebp+20]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_44
_13
	add	[ebp-16],1
_41
	mov	ebx,[ebp+20]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_42
_12
	mov	[ebp-28],1
	jmp	_45
_46
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,4
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	eax,[ebp+20]
	sar	eax,byte 1
	sub	eax,2
	sub	eax,[ebp-28]
	push	eax
	fild	[esp]
	pop	eax
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fexp
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	cmp	[ebp-32],224
	jle	_47
	sub	esp,20
	mov	[esp+12],1130364928
	mov	[esp+16],0
	mov	[esp+8],1132396544
	mov	[esp+4],1130364928
	mov	eax,[ebp-32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fnormalize
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-32],eax
_47
	cmp	[ebp-32],0
	jge	_48
	mov	[ebp-32],0
_48
	mov	ebx,0
	imul	ebx,[ebp-32]
	shr	ebx,byte 8
	mov	[ebp-40],ebx
	mov	ebx,[ebp-32]
	shl	ebx,byte 7
	shr	ebx,byte 8
	mov	[ebp-44],ebx
	mov	ebx,255
	imul	ebx,[ebp-32]
	shr	ebx,byte 8
	mov	[ebp-48],ebx
	mov	ebx,[ebp-40]
	shl	ebx,byte 16
	add	ebx,-16777216
	mov	esi,[ebp-44]
	shl	esi,byte 8
	add	ebx,esi
	add	ebx,[ebp-48]
	mov	[ebp-36],ebx
	mov	[ebp-24],0
	jmp	_49
_50
	sub	esp,16
	mov	eax,[ebp+20]
	sub	eax,2
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	esi,[ebp-28]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+20]
	sub	ebx,2
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	_fcos
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	edi,[ebp-28]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	edi,[ebp-12]
	mov	[esp+12],edi
	call	_fwritepixelfast
	mov	ebx,[ebp-24]
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
	mov	[ebp-24],ebx
_49
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_50
_15
	add	[ebp-28],1
_45
	mov	ebx,[ebp+20]
	sar	ebx,byte 1
	sub	ebx,2
	cmp	[ebp-28],ebx
	jle	_46
_14
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,[ebp-8]
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fnormalize
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+24]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+32]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fmulp	st(1)
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	jmp	_16_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fcreategridtexture
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	mov	eax,[ebp+20]
	mov	ecx,[ebp+24]
	cdq
	idiv	ecx
	mov	[ebp-40],eax
	sub	esp,16
	mov	[esp+8],11
	mov	[esp+12],1
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcreatetexture
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[ebp-48],eax
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],16
	mov	[esp+8],32
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+20]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],192
	mov	[esp],0
	call	_fcolor
	mov	[ebp-4],0
	jmp	_51
_52
	mov	[ebp-8],0
	jmp	_53
_54
	sub	esp,20
	mov	ebx,[ebp-40]
	add	ebx,1
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-40]
	add	esi,1
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	imul	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	imul	eax,[ebp-40]
	mov	[esp],eax
	call	_frect
	add	[ebp-8],1
_53
	mov	ebx,[ebp+24]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_54
_19
	add	[ebp-4],1
_51
	mov	ebx,[ebp+24]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_52
_18
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_flockbuffer
	mov	ebx,[ebp+20]
	sar	ebx,byte 1
	sub	ebx,6
	mov	[ebp-12],ebx
	jmp	_55
_56
	mov	[ebp-16],0
	jmp	_57
_58
	mov	ebx,[ebp+20]
	sub	ebx,2
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fsin
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	sub	ebx,2
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcos
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	[ebp-24],0
	mov	ebx,[ebp+20]
	sar	ebx,byte 1
	cmp	[ebp-12],ebx
	jg	_59
	sub	esp,20
	mov	[esp+12],1132396544
	mov	[esp+16],0
	mov	esi,[ebp+20]
	sar	esi,byte 1
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	sar	ebx,byte 1
	sub	ebx,6
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fnormalize
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-24],eax
_59
	mov	ebx,0
	imul	ebx,[ebp-24]
	shr	ebx,byte 8
	mov	[ebp-28],ebx
	mov	ebx,[ebp-24]
	shl	ebx,byte 7
	shr	ebx,byte 8
	mov	[ebp-32],ebx
	mov	ebx,255
	imul	ebx,[ebp-24]
	shr	ebx,byte 8
	mov	[ebp-36],ebx
	mov	ebx,[ebp-28]
	shl	ebx,byte 16
	add	ebx,0
	mov	esi,[ebp-32]
	shl	esi,byte 8
	add	ebx,esi
	add	ebx,[ebp-36]
	mov	[ebp-20],ebx
	cmp	[ebp-4],0
	setge	al
	movzx	eax,al
	mov	[ebp-52],eax
	mov	ebx,[ebp+20]
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	mov	[ebp-52],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	mov	[ebp-52],eax
	mov	ebx,[ebp+20]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	and	eax,eax
	jz	_60
	sub	esp,16
	mov	ebx,[ebp-20]
	mov	[esp+8],ebx
	mov	esi,[ebp-48]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
_60
	mov	ebx,[ebp-16]
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
	mov	[ebp-16],ebx
_57
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_58
_21
	add	[ebp-12],1
_55
	mov	ebx,[ebp+20]
	cmp	[ebp-12],ebx
	jle	_56
_20
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,[ebp-44]
	jmp	_17_leave
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
_22	.db	"3D Elite Style Scanner",0
_23	.db	"",0
	.align	4
_vwidth	.dd	0
	.align	4
_vheight	.dd	0
_27	.db	"Scanner range....: ",0
_28	.db	"Objects / visible: 2000 / ",0
	.align	4
_tblip	.dd	5
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
	.dd	13
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbFltType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

