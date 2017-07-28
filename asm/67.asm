
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,140
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
	mov	[ebp-132],ebx
	mov	[ebp-136],ebx
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,_4
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadterrain
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],3000
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fterraindetail
	sub	esp,20
	mov	[esp+12],1112014848
	mov	[esp+16],0
	mov	[esp+8],1148846080
	mov	[esp+4],1112014848
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],-1018691584
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1018691584
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],1
	call	_floadtexture
	mov	[ebp-12],eax
	sub	esp,12
	mov	[esp+4],1053609165
	mov	[esp+8],1053609165
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaletexture
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fterrainshading
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,12
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadmesh
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],1120403456
	mov	[esp+12],1120403456
	mov	[esp+4],1120403456
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmeshdepth
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmeshwidth
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmeshheight
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmeshheight
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,32
	mov	ebx,[ebp-28]
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
	mov	[esp+20],ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+24],esi
	mov	[esp+28],0
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-20]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+8],0
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-24]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ffitmesh
	mov	[ebp-36],0
	mov	[ebp-40],1128792064
	mov	[ebp-44],1142292480
	mov	[ebp-48],1139802112
	mov	[ebp-52],0
	mov	[ebp-56],0
	mov	[ebp-60],0
	mov	[ebp-64],0
	mov	[ebp-68],0
	mov	[ebp-72],0
	sub	esp,20
	mov	ebx,[ebp-48]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-76],eax
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],1137180672
	mov	[esp+4],1084227584
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-80],eax
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],1084227584
	mov	[esp+4],1084227584
	mov	eax,[ebp-80]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-84],eax
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],1084227584
	mov	[esp+4],1084227584
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-88],eax
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],1084227584
	mov	[esp+4],1084227584
	mov	eax,[ebp-88]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-92],eax
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],1084227584
	mov	[esp+4],1084227584
	mov	eax,[ebp-92]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-96],eax
	sub	esp,20
	mov	[esp+12],1120403456
	mov	[esp+16],0
	mov	[esp+8],1135542272
	mov	[esp+4],1133903872
	mov	eax,[ebp-96]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-96]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],1230748160
	mov	eax,[ebp-96]
	mov	[esp],eax
	call	_fcamerarange
	jmp	_8
_7
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	mov	eax,[ebp-52]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1054867456
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-140],eax
	sub	esp,4
	mov	[esp],208
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-140]
	and	ebx,eax
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	mov	eax,[ebp-52]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-140],eax
	sub	esp,4
	mov	[esp],200
	mov	eax,esi
	call	_fkeydown
	mov	esi,eax
	mov	eax,[ebp-140]
	and	esi,eax
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,1056964608
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	mov	[ebp-140],eax
	sub	esp,4
	mov	[esp],205
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-140]
	sub	eax,ebx
	mov	[ebp-100],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[ebp-100]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-104],eax
	mov	ebx,[ebp-104]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-108],ebx
	sub	esp,4
	mov	eax,[ebp-108]
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-20]
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
	mov	[ebp-112],ebx
	sub	esp,4
	mov	eax,[ebp-108]
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-116],ebx
	sub	esp,16
	mov	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	esi,[ebp-116]
	mov	[esp+12],esi
	mov	esi,[ebp-112]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fterrainy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,20
	mov	ebx,[ebp-116]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-56]
	mov	[esp+8],esi
	mov	ebx,[ebp-112]
	mov	[esp+4],ebx
	mov	eax,[ebp-80]
	mov	[esp],eax
	call	_fpositionentity
	mov	ebx,[ebp-104]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-108],ebx
	sub	esp,4
	mov	eax,[ebp-108]
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-20]
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
	mov	[ebp-112],ebx
	sub	esp,4
	mov	eax,[ebp-108]
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-116],ebx
	sub	esp,16
	mov	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	esi,[ebp-116]
	mov	[esp+12],esi
	mov	esi,[ebp-112]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fterrainy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	sub	esp,20
	mov	ebx,[ebp-116]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-60]
	mov	[esp+8],esi
	mov	ebx,[ebp-112]
	mov	[esp+4],ebx
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fpositionentity
	mov	ebx,[ebp-104]
	mov	[ebp-108],ebx
	sub	esp,4
	mov	eax,[ebp-108]
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-24]
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
	mov	[ebp-112],ebx
	sub	esp,4
	mov	eax,[ebp-108]
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-116],ebx
	sub	esp,16
	mov	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	esi,[ebp-116]
	mov	[esp+12],esi
	mov	esi,[ebp-112]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fterrainy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-64],eax
	sub	esp,20
	mov	ebx,[ebp-116]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-64]
	mov	[esp+8],esi
	mov	ebx,[ebp-112]
	mov	[esp+4],ebx
	mov	eax,[ebp-88]
	mov	[esp],eax
	call	_fpositionentity
	mov	ebx,[ebp-104]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1127481344
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-108],ebx
	sub	esp,4
	mov	eax,[ebp-108]
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-24]
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
	mov	[ebp-112],ebx
	sub	esp,4
	mov	eax,[ebp-108]
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-116],ebx
	sub	esp,16
	mov	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	esi,[ebp-116]
	mov	[esp+12],esi
	mov	esi,[ebp-112]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fterrainy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-68],eax
	sub	esp,20
	mov	ebx,[ebp-116]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-68]
	mov	[esp+8],esi
	mov	ebx,[ebp-112]
	mov	[esp+4],ebx
	mov	eax,[ebp-92]
	mov	[esp],eax
	call	_fpositionentity
	mov	ebx,[ebp-20]
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
	mov	[ebp-120],ebx
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-124],ebx
	sub	esp,8
	mov	eax,[ebp-120]
	mov	[esp],eax
	mov	ebx,[ebp-124]
	mov	[esp+4],ebx
	call	_fatan2
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	mov	ebx,[ebp-24]
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
	mov	[ebp-128],ebx
	mov	ebx,[ebp-68]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-64]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-132],ebx
	sub	esp,8
	mov	eax,[ebp-128]
	mov	[esp],eax
	mov	ebx,[ebp-132]
	mov	[esp+4],ebx
	call	_fatan2
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-136],eax
	sub	esp,20
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-136]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1119092736
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	edi,[ebp-104]
	mov	[esp+8],edi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frotateentity
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-60]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-64]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-68]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-72],ebx
	sub	esp,20
	mov	ebx,[ebp-48]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-72]
	mov	[esp+8],esi
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-52]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,20
	mov	ebx,[ebp-48]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-72]
	mov	[esp+8],esi
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-136]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1119092736
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	edi,[ebp-104]
	mov	[esp+8],edi
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,20
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1133903872
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1128792064
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1137180672
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-96]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-96]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_8
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_7
_3
	call	_fstop
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_4	.db	"heightmap_256.bmp",0
_5	.db	"coolfloor2.bmp",0
_6	.db	"747.x",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

