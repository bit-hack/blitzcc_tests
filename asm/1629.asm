
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],2
	mov	[esp+4],1
	mov	[esp],2
	call	_fcollisions
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1110704128
	mov	[esp+4],1101004800
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],-1041235968
	mov	[esp+16],0
	mov	[esp+8],1094713344
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fflipmesh
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fupdatenormals
	sub	esp,20
	mov	[esp+12],1092616192
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	[esp+4],1092616192
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_tblock
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	mov	ebx,0
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjToHandle
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	_fnameentity
	sub	esp,8
	mov	[esp],16
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-20],eax
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_tplayer
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	mov	ebx,1036831949
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,1045220557
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	jmp	_5
_4
	sub	esp,8
	mov	eax,[ebp-24]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentitycollided
	and	eax,eax
	jz	_6
	sub	esp,8
	mov	eax,[ebp-24]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fcollisionentity
	mov	[ebp-28],eax
	sub	esp,24
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fentityname
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp],eax
	mov	[esp+4],_tblock
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	mov	ebx,[ebp-32]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_7
	mov	ebx,0
	mov	esi,[ebp-32]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	jmp	_8
_7
	mov	ebx,1
	mov	esi,[ebp-32]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_8
	sub	esp,8
	mov	eax,[ebp-24]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fcollisionnx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp-24]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fcollisionny
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[ebp-24]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fcollisionnz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-40]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-44]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,4
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
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-60]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
_6
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1017370378
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	sub	esp,20
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,32
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_5
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_4
_3
	call	_fend
	ret
_2_leave
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	esi,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-64]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_9	.db	"state of b\state: ",0
	.align	4
_tplayer	.dd	5
_10	.dd	0
	.dd	_10
	.dd	_10
	.dd	0
	.dd	-1
_11	.dd	0
	.dd	_11
	.dd	_11
	.dd	0
	.dd	-1
	.dd	4
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.align	4
_tblock	.dd	5
_12	.dd	0
	.dd	_12
	.dd	_12
	.dd	0
	.dd	-1
_13	.dd	0
	.dd	_13
	.dd	_13
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
