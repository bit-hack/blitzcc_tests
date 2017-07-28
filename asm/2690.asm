
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
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
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
	call	_fcreatemesh
	mov	[_vscreen],eax
	sub	esp,8
	mov	eax,[_vscreen]
	mov	[esp],eax
	mov	[esp+4],51
	call	_fentityfx
	sub	esp,8
	mov	eax,[_vscreen]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[_vscreensurface],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[_vlight],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vpivotyaw],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1101004800
	mov	[esp+4],0
	mov	eax,[_vpivotyaw]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1127481344
	mov	[esp+4],0
	mov	eax,[_vpivotyaw]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	eax,[_vpivotyaw]
	mov	[esp],eax
	call	_fcreatepivot
	mov	[_vpivotpitch],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vpivotpitch]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[_vpivotpitch]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	eax,[_vpivotpitch]
	mov	[esp],eax
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,8
	mov	eax,[_vcamera]
	mov	[esp],eax
	mov	[esp+4],1061997773
	call	_fcamerazoom
	sub	esp,16
	mov	[esp+8],3
	mov	[esp+12],1008981770
	mov	[esp+4],257
	sub	esp,4
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_ftexturetomodel
	sub	esp,8
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	sub	esp,8
	call	_fgraphicswidth
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fmovemouse
	call	_fmousexspeed
	call	_fmouseyspeed
	jmp	_23
_22
	sub	esp,4
	mov	[esp],2
	call	_fmousehit
	and	eax,eax
	jz	_24
	sub	esp,8
	call	_fgraphicswidth
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fmovemouse
	call	_fmousexspeed
	call	_fmouseyspeed
_24
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_25
	sub	esp,12
	mov	ebx,[_vpivotyaw]
	mov	[esp+4],ebx
	mov	[esp+8],1065353216
	mov	eax,[_vpivotpitch]
	mov	[esp],eax
	call	_ffunc_gtaturncamera
_25
	sub	esp,8
	mov	eax,[_vpivotyaw]
	mov	[esp],eax
	mov	[esp+4],1092616192
	call	_ffunc_moveentity
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],0
	call	_fflip
	sub	esp,4
	mov	[esp],10
	call	_fdelay
_23
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_22
_3
	sub	esp,4
	mov	eax,[_vscreen]
	mov	[esp],eax
	call	_ffreeentity
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
_fcreatepixel
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
	sub	esp,4
	mov	eax,[_vscreensurface]
	mov	[esp],eax
	call	_fcountvertices
	cmp	eax,16379
	jle	_26
	sub	esp,8
	mov	eax,[_vscreen]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[_vscreensurface],eax
_26
	mov	ebx,[_vscreensurface]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+48]
	mov	[ebp-24],ebx
	cmp	[ebp-24],1
	jz	_28
	cmp	[ebp-24],2
	jz	_29
	cmp	[ebp-24],3
	jz	_30
	jmp	_27
_28
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	ebx,[ebp+28]
	mov	[esp+12],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-8],eax
	sub	esp,28
	mov	ebx,[ebp+28]
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
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1056964608
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-12],eax
	sub	esp,28
	mov	ebx,[ebp+20]
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
	mov	[esp+4],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+28]
	mov	[esp+12],esi
	mov	edi,[ebp+24]
	mov	[esp+8],edi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-16],eax
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,24
	mov	[esp+16],0
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	[esp+12],0
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	[esp+16],0
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+8],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp+40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	[esp+12],0
	mov	[esp+8],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	jmp	_27
_29
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	ebx,[ebp+28]
	mov	[esp+12],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-8],eax
	sub	esp,28
	mov	ebx,[ebp+28]
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
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-12],eax
	sub	esp,28
	mov	ebx,[ebp+28]
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
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-16],eax
	sub	esp,28
	mov	ebx,[ebp+20]
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
	mov	[esp+4],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+28]
	mov	[esp+12],esi
	mov	edi,[ebp+24]
	mov	[esp+8],edi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-20],eax
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,24
	mov	[esp+16],0
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	[esp+12],0
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	[esp+16],0
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+8],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp+40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	[esp+12],0
	mov	[esp+8],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp+40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	jmp	_27
_30
	mov	[ebp-28],1051372203
	sub	esp,28
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp+52]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-8],eax
	sub	esp,28
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp+52]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-12],eax
	sub	esp,28
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-28]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-16],eax
	sub	esp,28
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-28]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-20],eax
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,24
	mov	[esp+16],0
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	[esp+12],0
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	[esp+16],0
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	[esp+12],0
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	[esp+16],0
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	[esp+12],0
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	[esp+16],0
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	[esp+12],0
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,28
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-28]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-8],eax
	sub	esp,28
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-28]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-12],eax
	sub	esp,28
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp+20]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+4],edi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-16],eax
	sub	esp,28
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp+20]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+4],edi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-20],eax
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,24
	mov	[esp+16],0
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+8],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	[esp+16],0
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+8],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	[esp+16],0
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+8],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	[esp+16],0
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+8],0
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,28
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp+20]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+4],edi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-8],eax
	sub	esp,28
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp+20]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+4],edi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-12],eax
	sub	esp,28
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,[ebp+52]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-16],eax
	sub	esp,28
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,[ebp+52]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-20],eax
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,24
	mov	ebx,[ebp+40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	[esp+12],0
	mov	[esp+8],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp+40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	[esp+12],0
	mov	[esp+8],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp+40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	[esp+12],0
	mov	[esp+8],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp+40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	[esp+12],0
	mov	[esp+8],0
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
	jmp	_27
_27
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 36
	.align	16
_ffunc_moveentity
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,24
	mov	[esp],17
	call	_fkeydown
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],31
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-4]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[_vcamera]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+4],0
	sub	esp,4
	mov	[esp],32
	call	_fkeydown
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],30
	mov	eax,esi
	call	_fkeydown
	mov	esi,eax
	mov	eax,[ebp-4]
	sub	eax,esi
	push	eax
	fild	[esp]
	pop	eax
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftformvector
	sub	esp,20
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+16],0
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_ftformedy
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftranslateentity
	mov	ebx,eax
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
_ffunc_gtaturncamera
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,20
	call	_fmousexspeed
	neg	eax
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,20
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fturnentity
	mov	ebx,eax
	sub	esp,28
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentitypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_frotateentity
	mov	ebx,eax
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-4]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fimagetomodel
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,56
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
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-8],eax
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_31
	sub	esp,24
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_33
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-16],eax
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_34
	sub	esp,8
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,12
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
_34
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-48],0
	jmp	_36
_37
	mov	[ebp-52],0
	jmp	_38
_39
	mov	[ebp-36],1065353216
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_40
	sub	esp,20
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fgetred
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fgetgreen
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fgetblue
	mov	[ebp-32],eax
	mov	ebx,[ebp-24]
	add	ebx,[ebp-28]
	add	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
_40
	sub	esp,20
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fgetred
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fgetgreen
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fgetblue
	mov	[ebp-32],eax
	mov	ebx,[ebp-24]
	mov	esi,[ebp-28]
	or	ebx,esi
	mov	esi,[ebp-32]
	or	ebx,esi
	and	ebx,ebx
	jz	_41
	sub	esp,36
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-52]
	push	esi
	fild	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+28]
	mov	[esp+28],ebx
	mov	edi,[ebp+32]
	mov	[esp+32],edi
	mov	edi,[ebp-36]
	mov	[esp+24],edi
	mov	ebx,[ebp-32]
	mov	[esp+20],ebx
	mov	edi,[ebp-28]
	mov	[esp+16],edi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	[esp+4],0
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,1056964608
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	eax,[ebp-12]
	sub	eax,[ebp-48]
	push	eax
	fild	[esp]
	pop	eax
	fsubrp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcreatepixel
_41
	add	[ebp-40],1
	add	[ebp-52],1
_38
	mov	ebx,[ebp-16]
	sub	ebx,1
	cmp	[ebp-52],ebx
	jle	_39
_10
	add	[ebp-48],1
_36
	mov	ebx,[ebp-12]
	sub	ebx,1
	cmp	[ebp-48],ebx
	jle	_37
_9
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_42
	sub	esp,12
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeimage
_42
	sub	esp,24
	mov	eax,_43
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeimage
	mov	eax,1
	jmp	_8_leave
_31
	sub	esp,24
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_46
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp+24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_ftexturetomodel
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
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_floadtexture
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_47
	sub	esp,24
	mov	eax,_48
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftexturewidth
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftextureheight
	mov	[ebp-12],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-44],0
	jmp	_50
_51
	mov	[ebp-48],0
	jmp	_52
_53
	sub	esp,20
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fgetred
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fgetgreen
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fgetblue
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fgetalpha
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,36
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+28]
	mov	[esp+28],ebx
	mov	edi,[ebp+32]
	mov	[esp+32],edi
	mov	edi,[ebp-32]
	mov	[esp+24],edi
	mov	ebx,[ebp-28]
	mov	[esp+20],ebx
	mov	edi,[ebp-24]
	mov	[esp+16],edi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	[esp+4],0
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,1056964608
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	eax,[ebp-8]
	sub	eax,[ebp-44]
	push	eax
	fild	[esp]
	pop	eax
	fsubrp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcreatepixel
	add	[ebp-36],1
	add	[ebp-48],1
_52
	mov	ebx,[ebp-12]
	sub	ebx,1
	cmp	[ebp-48],ebx
	jle	_53
_13
	add	[ebp-44],1
_50
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-44],ebx
	jle	_51
_12
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,24
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_55
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreetexture
	mov	eax,1
	jmp	_11_leave
_47
	sub	esp,24
	mov	eax,_56
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_57
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fgetred
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,16711680
	and	eax,ebx
	shr	eax,byte 16
	jmp	_14_leave
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fgetgreen
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,65280
	and	eax,ebx
	shr	eax,byte 8
	jmp	_15_leave
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fgetblue
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,255
	and	eax,ebx
	jmp	_16_leave
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fgetalpha
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,-16777216
	and	eax,ebx
	shr	eax,byte 24
	jmp	_17_leave
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vscreen	.dd	0
	.align	4
_vscreensurface	.dd	0
	.align	4
_vlight	.dd	0
	.align	4
_vpivotyaw	.dd	0
	.align	4
_vpivotpitch	.dd	0
	.align	4
_vcamera	.dd	0
_18	.db	"Texture.png",0
_19	.db	"Hold left mouse button to use Mouse Look",0
_20	.db	"WASD keys to move",0
_21	.db	"Press any key to start",0
_32	.db	"ImageToModel(",0
_33	.db	")",0
_35	.db	"ImageAlpha exists",0
_43	.db	"Done : ",0
_44	.db	"Pixels",0
_45	.db	"File (",0
_46	.db	") Not found",0
_48	.db	"TextureToModel(",0
_49	.db	")",0
_54	.db	"Done : ",0
_55	.db	"Pixels",0
_56	.db	"File (",0
_57	.db	") Not found",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

