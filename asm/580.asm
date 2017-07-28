
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
	call	_fvrml_demo
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fvrml_demo
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fnameentity
	sub	esp,12
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fvrml_export
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fvrml_export
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
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,20
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fcurrentdate
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fentityname
	mov	[esp],eax
	call	__bbStrToInt
	and	eax,eax
	jz	_23
	sub	esp,20
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fentityname
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
_23
	mov	[ebp-8],1
	jmp	_25
_26
	sub	esp,20
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,16
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fvrml_surfacename
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvrml_tex
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvrml_verts
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_31
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_33
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvrml_uvs
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_34
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvrml_faces
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	add	[ebp-8],1
_25
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-8],eax
	jle	_26
_5
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fvrml_surfacename
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgetsurfacebrush
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fgetbrushtexture
	mov	[ebp-12],eax
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftexturename
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvrml_strippath
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_41
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_6_leave
	jmp	_43
_41
	sub	esp,12
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	jmp	_6_leave
_43
	sub	esp,4
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	jmp	_6_leave
_6_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fvrml_strippath
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
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,0
	jle	_46
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	jmp	_47
_48
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_50
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,_51
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-20]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_49
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_7_leave
	jmp	_52
_49
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_52
	add	[ebp-4],-1
_47
	cmp	[ebp-4],1
	jge	_48
_8
_46
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_7_leave
	sub	esp,4
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	jmp	_7_leave
_7_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fvrml_verts
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
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_54
_55
	sub	esp,68
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_56
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_57
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_58
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_59
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwriteline
	add	[ebp-8],1
_54
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-8],eax
	jle	_55
_10
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fvrml_faces
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
	mov	[ebp-16],ebx
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_60
_61
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_62
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-16],0
	jmp	_63
_64
	sub	esp,40
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_65
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrStore
	add	[ebp-16],1
_63
	cmp	[ebp-16],2
	jle	_64
_13
	sub	esp,20
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_66
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_fwriteline
	add	[ebp-8],1
_60
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	cmp	[ebp-8],eax
	jle	_61
_12
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fvrml_uvs
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
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_67
_68
	sub	esp,56
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_69
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_70
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,16
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_71
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwriteline
	add	[ebp-8],1
_67
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-8],eax
	jle	_68
_15
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fvrml_tex
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_72
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,36
	mov	eax,_73
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_74
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_75
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_76
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_77
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_78
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_79
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_80
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_81
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_82
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteline
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
_17	.db	"Cube",0
_18	.db	"cube.wrl",0
_19	.db	"#VRML V1.0 ascii",0
_20	.db	"# Blitz mesh to VRML converted on ",0
_21	.db	"# Braneloc's BlitzVRML Exporter 1.1 (Apr 2004)",0
_22	.db	"#",0
_24	.db	"# ",0
_27	.db	"Separator { # surface ",0
_28	.db	"	Coordinate3 {",0
_29	.db	"		point [",0
_30	.db	"		]",0
_31	.db	"	}",0
_32	.db	"	TextureCoordinate2 {",0
_33	.db	"		point [",0
_34	.db	"		]",0
_35	.db	"	}",0
_36	.db	"	IndexedFaceSet {",0
_37	.db	"		coordIndex [",0
_38	.db	"		]",0
_39	.db	"	}",0
_40	.db	"}",0
_42	.db	"",0
_44	.db	".bmp",0
_45	.db	"",0
_50	.db	"\",0
_51	.db	"/",0
_53	.db	"",0
_56	.db	"			",0
_57	.db	" ",0
_58	.db	" ",0
_59	.db	",",0
_62	.db	"			",0
_65	.db	",",0
_66	.db	"-1,",0
_69	.db	"			",0
_70	.db	" ",0
_71	.db	",",0
_72	.db	"		Texture2 {",0
_73	.db	"			filename ",0
_74	.db	"			wrapS REPEAT",0
_75	.db	"			wrapT REPEAT",0
_76	.db	"		}",0
_77	.db	"		Texture2Transform {",0
_78	.db	"			rotation     0",0
_79	.db	"			center       0 0",0
_80	.db	"			translation  0 0",0
_81	.db	"			scaleFactor  1 1",0
_82	.db	"		}",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

