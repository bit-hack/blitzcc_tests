
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	sub	esp,20
	mov	[esp+12],-1018691584
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vcube],eax
	sub	esp,16
	mov	[esp+8],1112014848
	mov	[esp+12],1112014848
	mov	[esp+4],1112014848
	mov	eax,[_vcube]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,8
	mov	eax,[_vcube]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fentityfx
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[_vlight],eax
	sub	esp,20
	mov	[esp+12],-1027080192
	mov	[esp+16],0
	mov	[esp+8],1109393408
	mov	[esp+4],0
	mov	eax,[_vlight]
	mov	[esp],eax
	call	_fpositionentity
	jmp	_15
_14
	sub	esp,20
	mov	[esp+12],1045220557
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1056964608
	mov	eax,[_vcube]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,16
	mov	[esp+8],1107296256
	mov	[esp+12],1107296256
	mov	[esp+4],1107296256
	mov	eax,[_vcube]
	mov	[esp],eax
	call	_fsetvertexlightambience
	sub	esp,48
	mov	eax,[_vlight]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+16],eax
	mov	[esp+32],1140457472
	mov	[esp+36],1
	mov	[esp+28],1132396544
	mov	[esp+24],1132396544
	mov	[esp+20],1132396544
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[_vlight]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityy
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	sub	esp,8
	mov	eax,[_vlight]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+4],1
	mov	eax,[_vcube]
	mov	[esp],eax
	call	_fvertexlightmesh
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_15
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_14
_3
	call	_fend
	mov	[_vlpick],0
	mov	[_vvertexlightambiencer],0
	mov	[_vvertexlightambienceg],0
	mov	[_vvertexlightambienceb],0
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsetvertexlightambience
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
	mov	[ebp-4],1
	jmp	_20
_21
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-8],eax
	mov	[ebp-12],0
	jmp	_22
_23
	sub	esp,24
	mov	ebx,[ebp+32]
	mov	[esp+16],ebx
	mov	[esp+20],1065353216
	mov	esi,[ebp+28]
	mov	[esp+12],esi
	mov	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexcolor
	add	[ebp-12],1
_22
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_23
_6
	add	[ebp-4],1
_20
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-4],eax
	jle	_21
_5
	mov	ebx,[ebp+24]
	mov	[_vvertexlightambiencer],ebx
	mov	ebx,[ebp+28]
	mov	[_vvertexlightambienceg],ebx
	mov	ebx,[ebp+32]
	mov	[_vvertexlightambienceb],ebx
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
_fcreatevertexlight
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
	mov	ebx,_tlighttype
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
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	ebx,[ebp+44]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp+48]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	ebx,[ebp+52]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,32
	mov	[esi],ebx
	mov	ebx,[ebp+56]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,36
	mov	[esi],ebx
	mov	ebx,[ebp+60]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,40
	mov	[esi],ebx
	mov	ebx,[ebp+64]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,44
	mov	[esi],ebx
	mov	eax,0
	jmp	_7_leave
_7_leave
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
	ret	word 48
	.align	16
_fadjustvertexlight
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
	mov	[esp+4],_tvertexlighttype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_9
_24
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_25
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,[ebp+20]
	jnz	_26
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,[ebp+24]
	jnz	_27
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-8],eax
	sub	esp,32
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexgreen
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
	mov	[esp+12],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexblue
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],1065353216
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexred
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexcolor
	cmp	[ebp+40],1
	jnz	_28
	cmp	[ebp+44],1
	jnz	_29
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vvertexlightambiencer]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_30
	mov	ebx,[_vvertexlightambiencer]
	mov	[ebp+28],ebx
_30
	mov	eax,[ebp+32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vvertexlightambienceg]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_31
	mov	ebx,[_vvertexlightambienceg]
	mov	[ebp+32],ebx
_31
	mov	eax,[ebp+36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vvertexlightambienceb]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_32
	mov	ebx,[_vvertexlightambienceb]
	mov	[ebp+36],ebx
_32
_29
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	sub	esp,32
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexgreen
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexblue
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],1065353216
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexred
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexcolor
_28
_27
_26
_25
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_24
_9
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	ret	word 28
	.align	16
_fvertexlightmesh
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-12],eax
	mov	eax,[ebp+40]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vvertexlightambiencer]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_33
	mov	ebx,[_vvertexlightambiencer]
	mov	[ebp+40],ebx
_33
	mov	eax,[ebp+44]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vvertexlightambienceg]
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
	mov	ebx,[_vvertexlightambienceg]
	mov	[ebp+44],ebx
_34
	mov	eax,[ebp+48]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vvertexlightambienceb]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_35
	mov	ebx,[_vvertexlightambienceb]
	mov	[ebp+48],ebx
_35
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp+48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	sub	esp,24
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-44],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frotatemesh
	sub	esp,20
	mov	[esp+12],1008981770
	mov	[esp+16],0
	mov	[esp+8],1008981770
	mov	[esp+4],1008981770
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,20
	mov	[esp+12],1008981770
	mov	[esp+16],0
	mov	[esp+8],1008981770
	mov	[esp+4],1008981770
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	ebx,[ebp+36]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+32]
	mov	[esp+8],esi
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	mov	[ebp-28],1
	jmp	_36
_37
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-32],eax
	mov	[ebp-36],0
	jmp	_38
_39
	sub	esp,32
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp+32]
	mov	[esp+16],ebx
	mov	esi,[ebp+36]
	mov	[esp+20],esi
	mov	esi,[ebp+28]
	mov	[esp+12],esi
	mov	[ebp-44],eax
	sub	esp,8
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	esi,[ebp-36]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	esi,[ebp-36]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fdistance
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+52]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_40
	sub	esp,28
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	esi,[ebp-36]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-44],eax
	sub	esp,8
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	esi,[ebp-36]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1176256512
	call	_fentitypick
	mov	[_vlpick],eax
	mov	ebx,[ebp-12]
	cmp	[_vlpick],ebx
	jnz	_41
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_tvertexlighttype
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[ebp-40]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-40]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-40]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],esi
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-40]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],esi
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+48]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-40]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],esi
	mov	ebx,[ebp-28]
	mov	esi,[ebp-40]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	ebx,[ebp-36]
	mov	esi,[ebp-40]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	sub	esp,24
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-4]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp+48]
	push	edi
	fld	[esp]
	pop	edi
	fsubrp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+16],edi
	mov	[esp+20],1065353216
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-4]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp+40]
	push	edi
	fld	[esp]
	pop	edi
	fsubrp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+8],edi
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fvertexcolor
_41
_40
	add	[ebp-36],1
_38
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-36],eax
	jle	_39
_12
	add	[ebp-28],1
_36
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-28],eax
	jle	_37
_11
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fupdatenormals
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,24
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frotatemesh
	sub	esp,24
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentitypitch
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	[esp+12],0
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_frotatemesh
	mov	ebx,eax
	sub	esp,24
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityroll
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frotatemesh
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-40]
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
	ret	word 40
	.align	16
_fdistance
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	fmulp	st(1)
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+40]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
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
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_13_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	4
_vcamera	.dd	0
	.align	4
_vcube	.dd	0
	.align	4
_vlight	.dd	0
	.align	4
_vlpick	.dd	0
	.align	4
_vvertexlightambiencer	.dd	0
	.align	4
_vvertexlightambienceg	.dd	0
	.align	4
_vvertexlightambienceb	.dd	0
	.align	4
_tlighttype	.dd	5
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
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.align	4
_tvertexlighttype	.dd	5
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
	.dd	7
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

