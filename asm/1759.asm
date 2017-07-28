
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],-1054867456
	mov	[esp+16],0
	mov	[esp+8],1101004800
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],32
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fcreatesphere
	mov	[ebp-20],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1132396544
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],1045220557
	call	_fentityalpha
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	[esp],-10
	mov	[esp+4],10
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	mov	[ebp-24],1090519040
	sub	esp,8
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	[ebp-28],eax
	sub	esp,28
	mov	[esp+20],1
	mov	[esp+24],1
	mov	[esp+16],1065353216
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fareasound_create
	mov	[ebp-32],eax
	jmp	_16
_15
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_17
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fturnentity
_17
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_18
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fturnentity
_18
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_19
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1110651699
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmoveentity
_19
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_20
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1036831949
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmoveentity
_20
	sub	esp,4
	mov	[esp],49
	call	_fkeydown
	and	eax,eax
	jz	_21
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1028443341
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fareasound_setemitterrange
_21
	sub	esp,4
	mov	[esp],50
	call	_fkeydown
	and	eax,eax
	jz	_22
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
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fareasound_setemitterrange
_22
	mov	ebx,1120403456
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,1120403456
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,1120403456
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	sub	esp,20
	mov	ebx,[ebp-44]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-40]
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fscaleentity
	call	_fareasound_update
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fareasound_getcurrentvolume
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],40
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_16
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_15
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
_fareasound_create
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
	mov	ebx,_ttareasound
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
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	and	ebx,ebx
	jz	_28
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_floopsound
_28
	mov	ebx,[ebp+44]
	and	ebx,ebx
	jz	_29
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fplaysound
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
_29
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fareasound_calc
	cmp	[ebp+40],0
	jnz	_30
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjDelete
_30
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjToHandle
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
	ret	word 28
	.align	16
_fareasound_update
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
	mov	[esp+4],_ttareasound
	call	__bbObjEachFirst
	and	eax,eax
	jz	_6
_31
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fareasound_calc
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_31
_6
	mov	eax,0
	jmp	_5_leave
_5_leave
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
	ret	word 0
	.align	16
_fareasound_getcurrentvolume
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],_ttareasound
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
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
	ret	word 4
	.align	16
_fareasound_setemitvolume
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],_ttareasound
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fareasound_calc
	mov	eax,0
	jmp	_8_leave
_8_leave
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
	ret	word 8
	.align	16
_fareasound_setemitterrange
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],_ttareasound
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fareasound_calc
	mov	eax,0
	jmp	_9_leave
_9_leave
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
	ret	word 8
	.align	16
_fareasound_play
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],_ttareasound
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	mov	ebx,[ebp+24]
	and	ebx,ebx
	jz	_32
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_floopsound
_32
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fplaysound
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fareasound_calc
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
	ret	word 8
	.align	16
_fareasound_stop
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],_ttareasound
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fstopchannel
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
	ret	word 4
	.align	16
_fareasound_cleanup
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,_ttareasound
	mov	[esp],eax
	call	__bbObjDeleteEach
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fareasound_calc
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fentitydistance
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
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
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],esi
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fchannelvolume
	jmp	_34
_33
	mov	ebx,0
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fchannelvolume
_34
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_14	.db	"your_sound_here.mp3",0
_23	.db	"Move Listener with Cursor-Keys",0
_24	.db	"Set Emitter Range with 'N' and 'M' Keys - Range: ",0
_25	.db	"Emitter Sound Volume: ",0
	.align	4
_ttareasound	.dd	5
_26	.dd	0
	.dd	_26
	.dd	_26
	.dd	0
	.dd	-1
_27	.dd	0
	.dd	_27
	.dd	_27
	.dd	0
	.dd	-1
	.dd	7
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbFltType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

