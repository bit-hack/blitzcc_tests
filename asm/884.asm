
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
	mov	[ebp-4],0
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1137180672
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1084227584
	call	_fcamerazoom
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vent1],eax
	sub	esp,8
	mov	eax,[_vent1]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vent2],eax
	sub	esp,8
	mov	eax,[_vent2]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[_vintersectsphere],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[_vintersectsphere]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[_vintersectsphere]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,4
	mov	eax,[_vintersectsphere]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,20
	mov	[esp+12],1092616192
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1101004800
	mov	eax,[_vent1]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1110704128
	mov	[esp+4],0
	mov	eax,[_vent1]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,20
	mov	[esp+12],-1046478848
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vent2]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vent2]
	mov	[esp],eax
	call	_frotateentity
_7
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1036831949
	mov	[esp+4],0
	mov	eax,[_vent1]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1036831949
	mov	[esp+4],0
	mov	eax,[_vent2]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_8
	call	_fresetentities
_8
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],400
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],20
	mov	[esp],400
	call	_ftext
	sub	esp,8
	mov	eax,[_vent1]
	mov	[esp],eax
	mov	ebx,[_vent2]
	mov	[esp+4],ebx
	call	_fcollisioncourse
	and	eax,eax
	jz	_11
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],300
	mov	[esp],400
	call	_ftext
	sub	esp,4
	call	_fmillisecs
	imul	eax,5
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
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
	jz	_13
	sub	esp,4
	mov	eax,[_vintersectsphere]
	mov	[esp],eax
	call	_fshowentity
	jmp	_14
_13
	sub	esp,4
	mov	eax,[_vintersectsphere]
	mov	[esp],eax
	call	_fhideentity
_14
	sub	esp,20
	mov	ebx,[_vintersection_y]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[_vintersection_x]
	mov	[esp+4],ebx
	mov	eax,[_vintersectsphere]
	mov	[esp],eax
	call	_fpositionentity
	jmp	_15
_11
	sub	esp,4
	mov	eax,[_vintersectsphere]
	mov	[esp],eax
	call	_fhideentity
_15
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_7
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
_fresetentities
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,28
	mov	[esp],-1046478848
	mov	[esp+4],1101004800
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],-1046478848
	mov	[esp+4],1101004800
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[_vent1]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	sub	esp,28
	mov	[esp],1135869952
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[_vent1]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,28
	mov	[esp],-1046478848
	mov	[esp+4],1101004800
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],-1046478848
	mov	[esp+4],1101004800
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[_vent2]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	sub	esp,28
	mov	[esp],1135869952
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[_vent2]
	mov	[esp],eax
	call	_frotateentity
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcollisioncourse
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	[esp],0
	call	_ftformvector
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	[esp],0
	call	_ftformvector
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,32
	mov	ebx,[ebp-20]
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
	mov	[esp+24],ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-32]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+28],esi
	mov	esi,[ebp-24]
	mov	[esp+20],esi
	mov	ebx,[ebp-20]
	mov	[esp+16],ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-16]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-12]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_flines_intersect
	cmp	eax,0
	jnz	_16
	mov	eax,0
	jmp	_5_leave
	jmp	_17
_16
	mov	eax,[_vintersection_ab]
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
	setbe	al
	movzx	eax,al
	mov	[ebp-36],eax
	mov	ebx,[_vintersection_cd]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	jmp	_5_leave
_17
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_flines_intersect
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
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fmulp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	mov	edi,[ebp+48]
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,[ebp+40]
	push	edx
	fld	[esp]
	pop	edx
	fsubp	st(1)
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+48]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+40]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fmulp	st(1)
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+24]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	mov	edi,[ebp+44]
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,[ebp+36]
	push	edx
	fld	[esp]
	pop	edx
	fsubp	st(1)
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	eax,[ebp-8]
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
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_18
	mov	eax,0
	jmp	_6_leave
	jmp	_19
_18
	mov	ebx,[ebp+24]
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
	mov	edi,[ebp+20]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fmulp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	mov	edi,[ebp+32]
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,[ebp+24]
	push	edx
	fld	[esp]
	pop	edx
	fsubp	st(1)
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vintersection_ab],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vintersection_cd],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[_vintersection_ab]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vintersection_x],ebx
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[_vintersection_ab]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vintersection_y],ebx
	mov	eax,1
	jmp	_6_leave
_19
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	4
_vintersection_x	.dd	0
	.align	4
_vintersection_y	.dd	0
	.align	4
_vintersection_ab	.dd	0
	.align	4
_vintersection_cd	.dd	0
	.align	4
_vent1	.dd	0
	.align	4
_vent2	.dd	0
	.align	4
_vintersectsphere	.dd	0
_9	.db	"Space to reset entities",0
_10	.db	"Flashing yellow sphere indicates intersection point",0
_12	.db	"ENTITIES ARE ON A COLLISION COURSE!",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

