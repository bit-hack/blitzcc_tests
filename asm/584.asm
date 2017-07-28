
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
	mov	[_vgamefps],60
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_voplayerpivot],eax
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],0
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	call	_fentityradius
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,12
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadanimmesh
	mov	[_voplayermesh],eax
	sub	esp,20
	mov	[esp+12],1045220557
	mov	[esp+16],0
	mov	[esp+8],1045220557
	mov	[esp+4],1045220557
	mov	eax,[_voplayermesh]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1
	mov	eax,[_voplayermesh]
	mov	[esp],eax
	call	_fanimate
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_votargetpivot],eax
	sub	esp,4
	mov	eax,[_votargetpivot]
	mov	[esp],eax
	call	_fcreatepivot
	mov	[_votargetorbitpivot],eax
	sub	esp,16
	mov	[esp+8],1084227584
	mov	[esp+12],1097859072
	mov	[esp+4],0
	mov	eax,[_votargetorbitpivot]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vocamerapivot],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcam],eax
	call	_fmillisecs
	mov	[_vwaitbeforecameraadjust],eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreateplane
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],1
	call	_floadtexture
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],1094713344
	mov	[esp+8],1094713344
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscaletexture
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],2
	mov	[esp+4],2
	mov	[esp],1
	call	_fcollisions
	mov	eax,1000
	mov	ecx,[_vgamefps]
	cdq
	idiv	ecx
	mov	[ebp-12],eax
	call	_fmillisecs
	sub	eax,[ebp-12]
	mov	[ebp-16],eax
	mov	[ebp-20],0
	mov	[ebp-24],0
	mov	[ebp-28],0
_12
_13
	call	_fmillisecs
	sub	eax,[ebp-16]
	mov	[ebp-32],eax
	mov	ebx,[ebp-32]
	and	ebx,ebx
	jz	_13
_4
	mov	eax,[ebp-32]
	mov	ecx,[ebp-12]
	cdq
	idiv	ecx
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	__bbMod
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	mov	[ebp-44],1
	jmp	_14
_15
	mov	ebx,[ebp-36]
	cmp	[ebp-44],ebx
	jnz	_16
	call	_fcaptureworld
_16
	mov	ebx,[ebp-12]
	add	[ebp-16],ebx
	call	_fupdategame
	add	[ebp-20],1
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	add	[ebp-44],1
_14
	mov	ebx,[ebp-36]
	cmp	[ebp-44],ebx
	jle	_15
_5
	sub	esp,4
	mov	[esp],17
	call	_fkeyhit
	and	eax,eax
	jz	_17
	mov	ebx,1
	sub	ebx,[ebp-48]
	mov	[ebp-48],ebx
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fwireframe
_17
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_frenderworld
	sub	esp,32
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],32
	mov	[esp],0
	call	_ftext
	call	_fmillisecs
	sub	eax,[ebp-24]
	cmp	eax,1000
	jle	_19
	call	_fmillisecs
	mov	[ebp-24],eax
	mov	ebx,[ebp-20]
	mov	[ebp-28],ebx
	mov	[ebp-20],0
_19
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_12
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
_fupdategame
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,28
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	ebx,[_voplayerpivot]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-16],eax
	sub	esp,8
	mov	ebx,[_voplayerpivot]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_votargetpivot]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	ebx,[_voplayerpivot]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-16],eax
	sub	esp,8
	mov	ebx,[_voplayerpivot]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_voplayermesh]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[_vocamerapivot]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	ebx,[_vocamerapivot]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-16],eax
	sub	esp,8
	mov	ebx,[_vocamerapivot]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[_votargetorbitpivot]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vocamerapivot]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,12
	mov	ebx,[_voplayerpivot]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fpointentity
	mov	[ebp-4],0
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_20
	sub	esp,32
	mov	eax,[_vcam]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fwrapangle
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	call	_frotateentity
	mov	[ebp-4],1
_20
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_21
	sub	esp,32
	mov	eax,[_vcam]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fwrapangle
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	call	_frotateentity
	mov	[ebp-4],2
_21
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_22
	cmp	[ebp-4],0
	jle	_23
	cmp	[ebp-4],1
	jnz	_24
	sub	esp,32
	mov	eax,[_vcam]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	mov	ebx,1110704128
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fwrapangle
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	call	_frotateentity
	jmp	_25
_24
	sub	esp,32
	mov	eax,[_vcam]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	mov	ebx,1110704128
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fwrapangle
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	call	_frotateentity
_25
	jmp	_26
_23
	sub	esp,32
	mov	eax,[_vcam]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fwrapangle
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	call	_frotateentity
_26
	mov	[ebp-4],3
_22
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_27
	cmp	[ebp-4],0
	jle	_28
	cmp	[ebp-4],1
	jnz	_29
	sub	esp,32
	mov	eax,[_vcam]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	mov	ebx,1124532224
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fwrapangle
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	call	_frotateentity
	jmp	_30
_29
	sub	esp,32
	mov	eax,[_vcam]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	mov	ebx,1124532224
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fwrapangle
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	call	_frotateentity
_30
	jmp	_31
_28
	sub	esp,32
	mov	eax,[_vcam]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fwrapangle
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	call	_frotateentity
_31
	mov	[ebp-4],4
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1095552205
	mov	[esp+4],0
	mov	eax,[_vocamerapivot]
	mov	[esp],eax
	call	_fmoveentity
_27
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_32
	sub	esp,8
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fentitycollided
	and	eax,eax
	jz	_33
	mov	ebx,[_vnjump]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vnjump],ebx
	mov	[ebp-4],5
_33
_32
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[_vnjump]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	call	_ftranslateentity
	mov	eax,[_vnjump]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_34
	mov	ebx,[_vnjump]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vnjump],ebx
_34
	sub	esp,8
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fentitycollided
	cmp	eax,0
	jnz	_35
	mov	[ebp-4],5
_35
	cmp	[ebp-4],0
	jle	_36
	call	_fmillisecs
	mov	[_vwaitbeforecameraadjust],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1056964608
	mov	[esp+4],0
	mov	eax,[_voplayerpivot]
	mov	[esp],eax
	call	_fmoveentity
_36
	sub	esp,8
	mov	eax,[_voplayermesh]
	mov	[esp],eax
	mov	ebx,[_voplayerpivot]
	mov	[esp+4],ebx
	call	_fcheck_doesentityneedtoturntotarget
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jz	_37
	cmp	[ebp-8],1
	jnz	_38
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1090519040
	mov	[esp+4],0
	mov	eax,[_voplayermesh]
	mov	[esp],eax
	call	_fturnentity
_38
	cmp	[ebp-8],-1
	jnz	_39
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1056964608
	mov	[esp+4],0
	mov	eax,[_voplayermesh]
	mov	[esp],eax
	call	_fturnentity
_39
_37
	cmp	[ebp-4],0
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-20]
	sub	ebx,[_vwaitbeforecameraadjust]
	cmp	ebx,500
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_40
	sub	esp,8
	mov	eax,[_vocamerapivot]
	mov	[esp],eax
	mov	ebx,[_votargetorbitpivot]
	mov	[esp+4],ebx
	call	_fentitydistance
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_41
	sub	esp,12
	mov	ebx,[_vocamerapivot]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_votargetpivot]
	mov	[esp],eax
	call	_fpointentity
	jmp	_42
_41
	sub	esp,12
	mov	eax,[_votargetpivot]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	mov	[ebp-16],eax
	sub	esp,8
	mov	ebx,[_voplayerpivot]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityyaw
	mov	ebx,eax
	mov	eax,[ebp-16]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fwrapangle
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_43
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	[esp+4],0
	mov	eax,[_votargetpivot]
	mov	[esp],eax
	call	_fturnentity
_43
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_44
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1073741824
	mov	[esp+4],0
	mov	eax,[_votargetpivot]
	mov	[esp],eax
	call	_fturnentity
_44
_42
_40
	sub	esp,12
	mov	ebx,[_votargetorbitpivot]
	mov	[esp+4],ebx
	mov	[esp+8],10
	mov	eax,[_vocamerapivot]
	mov	[esp],eax
	call	_fsmoothcam
	sub	esp,12
	mov	ebx,[_voplayerpivot]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fpointentity
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
_fwrapangle
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135837184
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_45
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+20],ebx
_45
	mov	eax,[ebp+20]
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
	jz	_46
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+20],ebx
_46
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fsmoothcam
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-4],esi
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-8],esi
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-12],esi
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionentity
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fcheck_doesentityneedtoturntotarget
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	eax,[ebp-8]
	cmp	[ebp-4],eax
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	sub	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbAbs
	mov	ebx,eax
	mov	eax,[ebp-16]
	cmp	ebx,4
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_47
	mov	eax,0
	jmp	_9_leave
_47
	cmp	[ebp-4],0
	jge	_48
	add	[ebp-4],360
_48
	cmp	[ebp-8],0
	jge	_49
	add	[ebp-8],360
_49
	sub	esp,4
	mov	eax,[ebp-4]
	sub	eax,[ebp-8]
	mov	[esp],eax
	call	__bbAbs
	cmp	eax,180
	jle	_50
	mov	ebx,[ebp-8]
	cmp	[ebp-4],ebx
	jle	_51
	mov	eax,1
	jmp	_9_leave
	jmp	_52
_51
	mov	eax,-1
	jmp	_9_leave
_52
	jmp	_53
_50
	mov	ebx,[ebp-8]
	cmp	[ebp-4],ebx
	jle	_54
	mov	eax,-1
	jmp	_9_leave
	jmp	_55
_54
	mov	eax,1
	jmp	_9_leave
_55
_53
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vgamefps	.dd	0
	.align	4
_voplayerpivot	.dd	0
	.align	4
_voplayermesh	.dd	0
_10	.db	"mariorun.x",0
	.align	4
_votargetpivot	.dd	0
	.align	4
_votargetorbitpivot	.dd	0
	.align	4
_vocamerapivot	.dd	0
	.align	4
_vcam	.dd	0
	.align	4
_vwaitbeforecameraadjust	.dd	0
	.align	4
_vnjump	.dd	0
_11	.db	"grass.jpg",0
_18	.db	"Frames per second = ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

