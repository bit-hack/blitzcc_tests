
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	mov	[_vgamefps],50
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
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
	mov	[ebp-4],eax
	sub	esp,20
	call	_fgraphicswidth
	mov	[esp+12],eax
	mov	[ebp-64],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+16],ebx
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fcopyentity
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fcopyentity
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fcopyentity
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fcopyentity
	mov	[ebp-24],eax
	sub	esp,20
	mov	[esp+12],1082130432
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],1075838976
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1089470464
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1092616192
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1112014848
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1112014848
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1035993088
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-28],eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp-28]
	and	ebx,ebx
	jz	_8
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fload3dsound
	mov	[ebp-36],eax
	sub	esp,16
	mov	[esp+8],1097859072
	mov	[esp+12],1073741824
	mov	[esp+4],1056964608
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatelistener
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_femitsound
	jmp	_9
_8
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadsound
	mov	[ebp-36],eax
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fplaysound
_9
	mov	eax,1000
	mov	ecx,[_vgamefps]
	cdq
	idiv	ecx
	mov	[ebp-40],eax
	call	_fmillisecs
	sub	eax,[ebp-40]
	mov	[ebp-44],eax
_10
_11
	call	_fmillisecs
	sub	eax,[ebp-44]
	mov	[ebp-48],eax
	mov	ebx,[ebp-48]
	and	ebx,ebx
	jz	_11
_4
	mov	eax,[ebp-48]
	mov	ecx,[ebp-40]
	cdq
	idiv	ecx
	mov	[ebp-52],eax
	sub	esp,8
	mov	eax,[ebp-48]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	__bbMod
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	mov	[ebp-60],1
	jmp	_12
_13
	mov	ebx,[ebp-52]
	cmp	[ebp-60],ebx
	jnz	_14
	call	_fcaptureworld
_14
	mov	ebx,[ebp-40]
	add	[ebp-44],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1090519040
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	add	[ebp-60],1
_12
	mov	ebx,[ebp-52]
	cmp	[ebp-60],ebx
	jle	_13
_5
	sub	esp,4
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],20
	mov	[esp],20
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	mov	ebx,-1025769472
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-64],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-64]
	or	eax,ebx
	and	eax,eax
	jz	_10
_3
	call	_fend
	ret
_2_leave
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vgamefps	.dd	0
_6	.db	"Enter 0 for normal sound or 1 for 3D Doppler: ",0
_7	.db	"amtrak%20290%20train%20horn%20for%20public%20crossing%20at%20grade.wav",0
_15	.db	"Crap train comin' through!",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

