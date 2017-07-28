
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,88
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
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-4],1092616192
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1101004800
	call	_flightrange
	sub	esp,20
	mov	[esp+12],-1054867456
	mov	[esp+16],0
	mov	[esp+8],1097859072
	mov	[esp+4],1092616192
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],1112014848
	mov	[esp+8],1112014848
	mov	[esp],1112014848
	call	_fambientlight
	sub	esp,8
	mov	[esp],64
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],1020054733
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1020054733
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityshininess
	sub	esp,8
	mov	[esp],64
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-16],eax
	sub	esp,20
	mov	[esp+12],1020054733
	mov	[esp+16],0
	mov	[esp+8],1020054733
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1132396544
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityshininess
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-20],eax
	sub	esp,20
	mov	[esp+12],1028443341
	mov	[esp+16],0
	mov	[esp+8],1028443341
	mov	[esp+4],1028443341
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityshininess
	sub	esp,8
	mov	[esp],64
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-24],eax
	sub	esp,20
	mov	[esp+12],1028443341
	mov	[esp+16],0
	mov	[esp+8],1028443341
	mov	[esp+4],1028443341
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1125842944
	mov	[esp+4],1125842944
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityshininess
	sub	esp,8
	mov	[esp],64
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-28],eax
	sub	esp,20
	mov	[esp+12],1028443341
	mov	[esp+16],0
	mov	[esp+8],1028443341
	mov	[esp+4],1028443341
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1125842944
	mov	[esp+4],1125842944
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityshininess
	sub	esp,8
	mov	[esp],64
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-32],eax
	sub	esp,20
	mov	[esp+12],1028443341
	mov	[esp+16],0
	mov	[esp+8],1028443341
	mov	[esp+4],1028443341
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1125842944
	mov	[esp+4],1125842944
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityshininess
	sub	esp,8
	mov	[esp],64
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-36],eax
	sub	esp,20
	mov	[esp+12],1028443341
	mov	[esp+16],0
	mov	[esp+8],1028443341
	mov	[esp+4],1028443341
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1125842944
	mov	[esp+4],1125842944
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityshininess
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-40],eax
	mov	[ebp-44],1
	jmp	_7
_8
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-48],eax
	sub	esp,8
	mov	eax,[ebp-48]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityalpha
	sub	esp,24
	mov	[esp],1132396544
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-84],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-84]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-84],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-84]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-48]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityshininess
	sub	esp,28
	mov	[esp],-50
	mov	[esp+4],50
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-84],eax
	sub	esp,8
	mov	[esp],-50
	mov	[esp+4],50
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-84]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-84],eax
	sub	esp,8
	mov	[esp],-50
	mov	[esp+4],50
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-84]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fpositionentity
	add	[ebp-44],1
_7
	cmp	[ebp-44],800
	jle	_8
_3
_9
	call	_fcls
	sub	esp,16
	call	_fmousey
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	mov	[esp+12],ebx
	mov	[ebp-84],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fcamerapick2
	sub	esp,20
	call	_fpickedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+16],0
	mov	[ebp-84],eax
	mov	eax,ebx
	call	_fpickedy
	mov	ebx,eax
	mov	eax,[ebp-84]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	call	_fpickedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],0
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	call	_fmousey
	mov	[esp+8],eax
	mov	[ebp-84],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fcamerapick3
	push	eax
	fstp	[esp]
	pop	eax
	sub	esp,20
	mov	ebx,[_vpicked3z]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vpicked3y]
	mov	[esp+8],esi
	mov	ebx,[_vpicked3x]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	ebx,[_vpicked3z]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vpicked3y]
	mov	[esp+8],esi
	mov	ebx,[_vpicked3x]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	call	_fmousex
	sub	eax,100
	mov	[ebp-52],eax
	call	_fmousey
	sub	eax,100
	mov	[ebp-56],eax
	call	_fmousex
	add	eax,100
	mov	[ebp-60],eax
	call	_fmousey
	sub	eax,100
	mov	[ebp-64],eax
	call	_fmousex
	sub	eax,100
	mov	[ebp-68],eax
	call	_fmousey
	add	eax,100
	mov	[ebp-72],eax
	call	_fmousex
	add	eax,100
	mov	[ebp-76],eax
	call	_fmousey
	add	eax,100
	mov	[ebp-80],eax
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],0
	mov	[esp+12],1073741824
	mov	ebx,[ebp-56]
	mov	[esp+8],ebx
	mov	esi,[ebp-52]
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fcamerapick3
	push	eax
	fstp	[esp]
	pop	eax
	sub	esp,20
	mov	ebx,[_vpicked3z]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vpicked3y]
	mov	[esp+8],esi
	mov	ebx,[_vpicked3x]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],0
	mov	[esp+12],1073741824
	mov	ebx,[ebp-64]
	mov	[esp+8],ebx
	mov	esi,[ebp-60]
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fcamerapick3
	push	eax
	fstp	[esp]
	pop	eax
	sub	esp,20
	mov	ebx,[_vpicked3z]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vpicked3y]
	mov	[esp+8],esi
	mov	ebx,[_vpicked3x]
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],0
	mov	[esp+12],1073741824
	mov	ebx,[ebp-72]
	mov	[esp+8],ebx
	mov	esi,[ebp-68]
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fcamerapick3
	push	eax
	fstp	[esp]
	pop	eax
	sub	esp,20
	mov	ebx,[_vpicked3z]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vpicked3y]
	mov	[esp+8],esi
	mov	ebx,[_vpicked3x]
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],0
	mov	[esp+12],1073741824
	mov	ebx,[ebp-80]
	mov	[esp+8],ebx
	mov	esi,[ebp-76]
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fcamerapick3
	push	eax
	fstp	[esp]
	pop	eax
	sub	esp,20
	mov	ebx,[_vpicked3z]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vpicked3y]
	mov	[esp+8],esi
	mov	ebx,[_vpicked3x]
	mov	[esp+4],ebx
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	ebx,[ebp-72]
	sub	ebx,[ebp-56]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-60]
	sub	esi,[ebp-52]
	mov	[esp+8],esi
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_frect
	sub	esp,16
	mov	ebx,[ebp-76]
	mov	[esp+8],ebx
	mov	esi,[ebp-80]
	mov	[esp+12],esi
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-68]
	mov	[esp+8],ebx
	mov	esi,[ebp-72]
	mov	[esp+12],esi
	mov	esi,[ebp-64]
	mov	[esp+4],esi
	mov	eax,[ebp-60]
	mov	[esp],eax
	call	_fline
	sub	esp,12
	mov	[esp+4],90
	mov	[esp+8],90
	mov	[esp],255
	call	_fcolor
	sub	esp,64
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	[ebp-88],eax
	mov	eax,ebx
	call	_fpickedx
	mov	ebx,eax
	mov	eax,[ebp-88]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	[ebp-88],eax
	mov	eax,ebx
	call	_fpickedy
	mov	ebx,eax
	mov	eax,[ebp-88]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	[ebp-88],eax
	mov	eax,ebx
	call	_fpickedz
	mov	ebx,eax
	mov	eax,[ebp-88]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],5
	mov	[esp],20
	call	_ftext
	sub	esp,12
	mov	[esp+4],90
	mov	[esp+8],255
	mov	[esp],90
	call	_fcolor
	sub	esp,64
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,[_vpicked3x]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,[_vpicked3y]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,[_vpicked3z]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],35
	mov	[esp],20
	call	_ftext
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],60
	mov	[esp],40
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_17
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
_17
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_18
	mov	ebx,[ebp-4]
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
	mov	[ebp-4],ebx
_18
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_19
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fturnentity
_19
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_20
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fturnentity
_20
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1069547520
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_21
	mov	[ebp-4],1069547520
_21
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1106247680
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_22
	mov	[ebp-4],1106247680
_22
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_9
_4
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
_fcamerapick2
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
	mov	[ebp-28],ebx
	cmp	[_vpickmesh],0
	jnz	_23
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[_vpickmesh],eax
	sub	esp,8
	mov	eax,[_vpickmesh]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-4],eax
	mov	[ebp-8],100
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-8]
	neg	esi
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-8]
	neg	esi
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-24],eax
	sub	esp,16
	mov	ebx,[ebp-20]
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[_vpickmesh]
	mov	[esp],eax
	call	_fentitypickmode
	jmp	_24
_23
	sub	esp,4
	mov	eax,[_vpickmesh]
	mov	[esp],eax
	call	_fshowentity
_24
	mov	ebx,[ebp-28]
	cmp	[ebp+20],ebx
	jz	_25
	mov	ebx,[ebp+20]
	mov	[ebp-28],ebx
	sub	esp,12
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vpickmesh]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vpickmesh]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcamerapick
_25
	sub	esp,4
	mov	eax,[_vpickmesh]
	mov	[esp],eax
	call	_fhideentity
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fcamerapick3
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
	cmp	[ebp+36],0
	jnz	_26
	call	_fgraphicswidth
	mov	[ebp+36],eax
_26
	cmp	[ebp+40],0
	jnz	_27
	call	_fgraphicsheight
	mov	[ebp+40],eax
_27
	mov	ebx,[ebp+36]
	sar	ebx,byte 1
	sub	[ebp+24],ebx
	mov	ebx,[ebp+40]
	sar	ebx,byte 1
	sub	[ebp+28],ebx
	cmp	[_vcp3piv],0
	jnz	_28
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vcp3piv],eax
_28
	mov	ebx,[ebp+40]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	fchs
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,12
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vcp3piv]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[_vcp3piv]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[_vcp3piv]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vpicked3x],eax
	sub	esp,8
	mov	eax,[_vcp3piv]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vpicked3y],eax
	sub	esp,8
	mov	eax,[_vcp3piv]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vpicked3z],eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	4
_vpickmesh	.dd	0
	.align	4
_vpastpickcam	.dd	0
	.align	4
_vcp3piv	.dd	0
	.align	4
_vpicked3x	.dd	0
	.align	4
_vpicked3y	.dd	0
	.align	4
_vpicked3z	.dd	0
_10	.db	"CameraPick2 cam,MouseX(),MouseY(),10   =   X=",0
_11	.db	", Y=",0
_12	.db	", Z=",0
_13	.db	"CameraPick3 cam,MouseX(),MouseY(),10   =   X=",0
_14	.db	", Y=",0
_15	.db	", Z=",0
_16	.db	"Use mouse buttons to control the depth, and cursor-keys left & right to turn camera",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
