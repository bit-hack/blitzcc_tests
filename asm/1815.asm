
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,12
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1110704128
	mov	[esp+4],1110704128
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	[esp],128
	mov	[esp+4],128
	call	_fmaketesttexture
	mov	[ebp-12],eax
	mov	[ebp-16],0
	mov	ebx,[ebp-16]
	mov	[ebp-20],ebx
	cmp	[ebp-20],0
	jz	_29
	cmp	[ebp-20],1
	jz	_30
	cmp	[ebp-20],2
	jz	_31
	cmp	[ebp-20],3
	jz	_32
	cmp	[ebp-20],4
	jz	_33
	cmp	[ebp-20],5
	jz	_34
	jmp	_28
_29
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fcreatecube
	mov	[ebp-28],eax
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1106247680
	mov	[esp+16],0
	mov	[esp+8],-1041235968
	mov	[esp+4],1106247680
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_frotateentity
	jmp	_28
_30
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-24],eax
	sub	esp,8
	mov	[esp],8
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fcreatesphere
	mov	[ebp-28],eax
	sub	esp,20
	mov	[esp+12],-1082130432
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpositionentity
	jmp	_28
_31
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],8
	call	_fcreatecylinder
	mov	[ebp-24],eax
	sub	esp,12
	mov	[esp+4],1
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	[esp],8
	call	_fcreatecylinder
	mov	[ebp-28],eax
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],-1041235968
	mov	[esp+16],0
	mov	[esp+8],1106247680
	mov	[esp+4],1106247680
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_frotateentity
	jmp	_28
_32
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],8
	call	_fcreatecone
	mov	[ebp-24],eax
	sub	esp,12
	mov	[esp+4],1
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	[esp],8
	call	_fcreatecone
	mov	[ebp-28],eax
	sub	esp,20
	mov	[esp+12],-1082130432
	mov	[esp+16],0
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpositionentity
	jmp	_28
_33
	sub	esp,12
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadmesh
	mov	[ebp-24],eax
	jmp	_28
_34
	sub	esp,12
	mov	eax,_36
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadanimmesh
	mov	[ebp-24],eax
	jmp	_28
_28
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitytexture
	mov	ebx,[ebp-28]
	and	ebx,ebx
	jz	_37
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fentitytexture
_37
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+12],13421772
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fsavemesh3ds
	mov	[ebp-36],eax
	sub	esp,12
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadmesh
	mov	[ebp-44],eax
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,0
	jnz	_39
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fentitytexture
_39
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1073741824
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1073741824
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fpositionentity
	jmp	_41
_40
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],1036831949
	mov	[esp+16],0
	mov	[esp+8],1045220557
	mov	[esp+4],1050253722
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,20
	mov	[esp+12],1036831949
	mov	[esp+16],0
	mov	[esp+8],1045220557
	mov	[esp+4],1050253722
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],17
	call	_fkeyhit
	and	eax,eax
	jz	_42
	cmp	[ebp-48],0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fwireframe
_42
	sub	esp,48
	mov	eax,_43
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
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
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
_41
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_40
_4
	ret
_2_leave
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-40]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsavemesh3ds
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,92
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
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_45
	mov	eax,0
	jmp	_5_leave
_45
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-8],eax
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_46
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	add	eax,1
	mov	[ebp-16],eax
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	add	eax,1
	mov	[ebp-20],eax
	mov	ebx,[ebp+20]
	mov	[ebp-24],ebx
	jmp	_48
_47
	mov	[ebp-32],1
	jmp	_49
_50
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-28],eax
	add	[ebp-36],1
	cmp	[ebp-36],10
	jge	_51
	sub	esp,20
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_53
_51
	sub	esp,20
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_53
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	add	eax,1
	mov	[ebp-44],eax
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcounttriangles
	shl	eax,byte 2
	add	eax,6
	mov	[ebp-48],eax
	mov	ebx,8
	add	ebx,[ebp-16]
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcounttriangles
	shl	eax,byte 1
	add	ebx,eax
	mov	[ebp-52],ebx
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcounttriangles
	shl	eax,byte 2
	shl	eax,byte 1
	add	eax,8
	add	eax,[ebp-52]
	add	eax,[ebp-48]
	mov	[ebp-56],eax
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcountvertices
	shl	eax,byte 1
	add	eax,8
	mov	[ebp-60],eax
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcountvertices
	shl	eax,byte 1
	shl	eax,byte 2
	add	eax,8
	mov	[ebp-64],eax
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcountvertices
	imul	eax,3
	shl	eax,byte 2
	add	eax,8
	mov	[ebp-68],eax
	mov	ebx,6
	add	ebx,[ebp-68]
	add	ebx,[ebp-64]
	add	ebx,[ebp-60]
	add	ebx,54
	add	ebx,[ebp-56]
	mov	[ebp-72],ebx
	mov	ebx,6
	add	ebx,[ebp-44]
	add	ebx,[ebp-72]
	add	[ebp-76],ebx
	add	[ebp-32],1
_49
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-32],eax
	jle	_50
_7
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fnextchild
	mov	[ebp-24],eax
_48
	mov	ebx,[ebp-24]
	and	ebx,ebx
	jnz	_47
_6
	mov	ebx,6
	add	ebx,[ebp-16]
	add	ebx,6
	add	ebx,45
	add	ebx,84
	add	ebx,10
	mov	[ebp-80],ebx
	cmp	[ebp-20],1
	jle	_55
	mov	ebx,6
	add	ebx,[ebp-20]
	add	ebx,6
	add	[ebp-80],ebx
_55
	mov	ebx,16
	add	ebx,[ebp-80]
	add	ebx,10
	add	ebx,[ebp-76]
	mov	[ebp-84],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],19789
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,16
	add	ebx,[ebp-84]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],10
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],3
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],15677
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-84]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],15678
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],10
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],3
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],45055
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-80]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],40960
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,6
	add	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	_fwritestringascii
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],40976
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],15
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],17
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],9
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],6710886
	call	_fwritergbcolor
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],40992
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],15
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],17
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],9
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	_fwritergbcolor
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],41008
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],15
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],17
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],9
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],16777215
	call	_fwritergbcolor
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],41024
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],14
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],48
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],8
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],75
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],41025
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],14
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],48
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],8
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],20
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],41040
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],14
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],48
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],8
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],41042
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],14
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],48
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],8
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],41043
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],14
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],48
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],8
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],41092
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],14
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],48
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],8
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],41095
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],10
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1065353216
	call	_fwritefloat
	cmp	[ebp-20],1
	jle	_56
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],41472
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,6
	add	ebx,[ebp-20]
	add	ebx,6
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],41728
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,6
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	_fwritestringascii
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwritebyte
_56
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],256
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],10
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1065353216
	call	_fwritefloat
	mov	ebx,[ebp+20]
	mov	[ebp-24],ebx
	mov	[ebp-36],0
	jmp	_58
_57
	mov	[ebp-32],1
	jmp	_59
_60
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-28],eax
	add	[ebp-36],1
	cmp	[ebp-36],10
	jge	_61
	sub	esp,20
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_63
_61
	sub	esp,20
	mov	eax,_64
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_63
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	add	eax,1
	mov	[ebp-44],eax
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcounttriangles
	shl	eax,byte 2
	add	eax,6
	mov	[ebp-48],eax
	mov	ebx,8
	add	ebx,[ebp-16]
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcounttriangles
	shl	eax,byte 1
	add	ebx,eax
	mov	[ebp-52],ebx
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcounttriangles
	shl	eax,byte 2
	shl	eax,byte 1
	add	eax,8
	add	eax,[ebp-52]
	add	eax,[ebp-48]
	mov	[ebp-56],eax
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcountvertices
	shl	eax,byte 1
	add	eax,8
	mov	[ebp-60],eax
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcountvertices
	shl	eax,byte 1
	shl	eax,byte 2
	add	eax,8
	mov	[ebp-64],eax
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcountvertices
	imul	eax,3
	shl	eax,byte 2
	add	eax,8
	mov	[ebp-68],eax
	mov	ebx,6
	add	ebx,[ebp-68]
	add	ebx,[ebp-64]
	add	ebx,[ebp-60]
	add	ebx,54
	add	ebx,[ebp-56]
	mov	[ebp-72],ebx
	mov	ebx,6
	add	ebx,[ebp-44]
	add	ebx,[ebp-72]
	mov	[ebp-76],ebx
	sub	esp,28
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-92],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-92]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-92],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-92]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-92],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-92]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-92],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-92]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],16384
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-76]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	_fwritestringascii
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],16640
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-72]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],16656
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-68]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcountvertices
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	_fwriteshort
	mov	[ebp-88],0
	jmp	_65
_66
	sub	esp,28
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-92],eax
	sub	esp,8
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	esi,[ebp-88]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-92]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	esi,[ebp-88]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftformpoint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-92],eax
	mov	eax,ebx
	call	_ftformedx
	mov	ebx,eax
	mov	eax,[ebp-92]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fwritefloat
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-92],eax
	mov	eax,ebx
	call	_ftformedz
	mov	ebx,eax
	mov	eax,[ebp-92]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fwritefloat
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-92],eax
	mov	eax,ebx
	call	_ftformedy
	mov	ebx,eax
	mov	eax,[ebp-92]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fwritefloat
	add	[ebp-88],1
_65
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-88],eax
	jle	_66
_10
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],16704
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-64]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcountvertices
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	_fwriteshort
	mov	[ebp-88],0
	jmp	_67
_68
	sub	esp,20
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritefloat
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fvertexv
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritefloat
	mov	ebx,eax
	add	[ebp-88],1
_67
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-88],eax
	jle	_68
_11
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],16657
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcountvertices
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	_fwriteshort
	mov	[ebp-88],0
	jmp	_69
_70
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1792
	call	_fwriteshort
	add	[ebp-88],1
_69
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-88],eax
	jle	_70
_12
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],16736
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],54
	call	_fwriteint
	mov	[ebp-88],0
	jmp	_71
_72
	cmp	[ebp-88],0
	jnz	_73
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1065353216
	call	_fwritefloat
	jmp	_74
_73
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwritefloat
_74
	cmp	[ebp-88],1
	jnz	_75
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1065353216
	call	_fwritefloat
	jmp	_76
_75
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwritefloat
_76
	cmp	[ebp-88],2
	jnz	_77
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1065353216
	call	_fwritefloat
	jmp	_78
_77
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwritefloat
_78
	add	[ebp-88],1
_71
	cmp	[ebp-88],3
	jle	_72
_13
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],16672
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcounttriangles
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	_fwriteshort
	mov	[ebp-88],0
	jmp	_79
_80
	sub	esp,20
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteshort
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteshort
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteshort
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1031
	call	_fwriteshort
	add	[ebp-88],1
_79
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	cmp	[ebp-88],eax
	jle	_80
_14
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],16688
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	_fwritestringascii
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcounttriangles
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	_fwriteshort
	mov	[ebp-88],0
	jmp	_81
_82
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	call	_fwriteshort
	add	[ebp-88],1
_81
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	cmp	[ebp-88],eax
	jle	_82
_15
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],16720
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	call	_fwriteint
	mov	[ebp-88],0
	jmp	_83
_84
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fwriteint
	add	[ebp-88],1
_83
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	cmp	[ebp-88],eax
	jle	_84
_16
	add	[ebp-32],1
_59
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-32],eax
	jle	_60
_9
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fnextchild
	mov	[ebp-24],eax
_58
	mov	ebx,[ebp-24]
	and	ebx,ebx
	jnz	_57
_8
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,1
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	esi,[ebp-40]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fwritestringascii
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_85
_86
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+24]
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fasc
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwritebyte
	add	[ebp-4],1
_85
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-4],eax
	jle	_86
_18
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fwritergbcolor
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	esi,16711680
	and	ebx,esi
	shr	ebx,byte 16
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritebyte
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritebyte
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	esi,255
	and	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritebyte
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fnextchild
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
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountchildren
	cmp	eax,0
	jle	_87
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetchild
	jmp	_20_leave
_87
	mov	[ebp-4],0
	mov	[ebp-8],0
	jmp	_89
_88
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetparent
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jz	_90
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcountchildren
	cmp	eax,1
	jle	_91
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcountchildren
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	_fgetchild
	cmp	eax,[ebp+20]
	jz	_92
	mov	[ebp-20],1
	jmp	_93
_94
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[ebp-16],eax
	mov	ebx,[ebp+20]
	cmp	[ebp-16],ebx
	jnz	_95
	mov	[ebp-4],1
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[ebp-8],eax
_95
	add	[ebp-20],1
_93
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcountchildren
	cmp	[ebp-20],eax
	jle	_94
_22
_92
_91
_90
	mov	ebx,[ebp-12]
	mov	[ebp+20],ebx
_89
	cmp	[ebp-4],0
	setz	al
	movzx	eax,al
	mov	[ebp-24],eax
	cmp	[ebp+20],0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	and	eax,ebx
	and	eax,eax
	jnz	_88
_21
	mov	eax,[ebp-8]
	jmp	_20_leave
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fmaketesttexture
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcreatetexture
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-12],0
	jmp	_96
_97
	mov	[ebp-8],0
	jmp	_98
_99
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1199570944
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-12]
	shl	esi,byte 8
	add	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-16],esi
	sub	esp,24
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+12],eax
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-8],1
_98
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftexturewidth
	sub	eax,1
	cmp	[ebp-8],eax
	jle	_99
_25
	add	[ebp-12],1
_96
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftextureheight
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_97
_24
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],30
	mov	[esp+16],1
	mov	[esp+8],30
	mov	[esp+4],40
	mov	[esp],40
	call	_foval
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_100
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],50
	mov	[esp],50
	call	_ftext
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,[ebp-4]
	jmp	_23_leave
	mov	eax,0
	jmp	_23_leave
_23_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
_26	.db	"Save Mesh 3DS",0
_27	.db	"",0
_35	.db	"yourname.x",0
_36	.db	"yourname.x",0
_38	.db	"test.3ds",0
_43	.db	"ok=",0
_44	.db	" filename$=",0
_46	.db	"Material",0
_52	.db	"mesh0",0
_54	.db	"mesh",0
_62	.db	"mesh0",0
_64	.db	"mesh",0
_100	.db	"3DS",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

