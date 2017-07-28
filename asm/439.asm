
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
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
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fambientlight
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[_vemitter],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[_vemitter]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],-1069547520
	mov	eax,[_vemitter]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[_vtarget],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vtarget]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1077936128
	mov	eax,[_vtarget]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1063256064
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,20
	mov	[esp+12],1036831949
	mov	[esp+16],0
	mov	[esp+8],1036831949
	mov	[esp+4],1036831949
	mov	eax,[_vemitter]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],1036831949
	mov	[esp+16],0
	mov	[esp+8],1036831949
	mov	[esp+4],1036831949
	mov	eax,[_vtarget]
	mov	[esp],eax
	call	_fscaleentity
	mov	[_vrange],0
	mov	[_vdivision],0
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vdummyentity],eax
	mov	[_vang],0
	jmp	_10
_9
	mov	ebx,[_vang]
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
	mov	[_vang],ebx
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[_vang]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1063256064
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fmoveentity
	call	_fresetlightning
	sub	esp,16
	mov	[esp+8],10
	mov	[esp+12],1056964608
	mov	esi,[_vtarget]
	mov	[esp+4],esi
	mov	eax,[_vemitter]
	mov	[esp],eax
	call	_fcreatelightning
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_10
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_9
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
_fresetlightning
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
	mov	[esp+4],_tlightningtype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_5
_13
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_14
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_15
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeentity
_15
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjDelete
_14
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_13
_5
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
	ret	word 0
	.align	16
_fcreatelightning
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
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-12],eax
	mov	[ebp-16],0
	sub	esp,28
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vdummyentity]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vdummyentity]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fentitydistance
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vrange],eax
	mov	ebx,[_vrange]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vdivision],ebx
	sub	esp,28
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	mov	[ebp-16],0
	jmp	_16
_17
	sub	esp,28
	mov	eax,[_vdummyentity]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[_vdummyentity]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[_vdummyentity]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,24
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	[esp+4],0
	call	_frnd
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp+32]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-24]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp+32]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,8
	mov	esi,[ebp+32]
	mov	[esp],esi
	mov	[esp+4],0
	mov	eax,esi
	call	_frnd
	mov	esi,eax
	mov	eax,[ebp-24]
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_tlightningtype
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbObjStore
	call	_fcreatesight
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fentitydistance
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],1017370378
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fscaleentity
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1119092736
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,28
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[_vdivision]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[_vdummyentity]
	mov	[esp],eax
	call	_fmoveentity
	add	[ebp-16],1
_16
	mov	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_17
_7
	sub	esp,28
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_tlightningtype
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbObjStore
	call	_fcreatesight
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fentitydistance
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],1017370378
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fscaleentity
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1119092736
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fcreatesight
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
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fcreatebrush
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fcreatesurface
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreebrush
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],0
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],1
	mov	[esp+4],3
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],17
	call	_fentityfx
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
_vcamera	.dd	0
	.align	4
_vemitter	.dd	0
	.align	4
_vtarget	.dd	0
	.align	4
_vrange	.dd	0
	.align	4
_vdivision	.dd	0
	.align	4
_vdummyentity	.dd	0
	.align	4
_vang	.dd	0
	.align	4
_tlightningtype	.dd	5
_11	.dd	0
	.dd	_11
	.dd	_11
	.dd	0
	.dd	-1
_12	.dd	0
	.dd	_12
	.dd	_12
	.dd	0
	.dd	-1
	.dd	1
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

