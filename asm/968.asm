
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,136
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	call	_fhidepointer
	mov	[ebp-4],1036831949
	mov	[ebp-8],11
	mov	[ebp-12],1
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreateplane
	mov	[ebp-20],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1112014848
	mov	[esp+4],1112014848
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1072483533
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vplayer],eax
	sub	esp,4
	mov	eax,[_vplayer]
	mov	[esp],eax
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],1120403456
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,16
	mov	[esp+8],1112014848
	mov	[esp+12],1128792064
	mov	[esp+4],1112014848
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,20
	mov	[esp+12],-1046478848
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1084227584
	mov	eax,[_vplayer]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[_vplayer]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	[ebp-136],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fcreatecube
	mov	ebx,eax
	mov	eax,[ebp-136]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp],eax
	mov	[esp+4],1063675494
	call	_fentityalpha
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],1080033280
	mov	[esp+4],1065353216
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],-1073741824
	mov	[esp+4],0
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp],eax
	call	_fpositionentity
	mov	[ebp-24],1075838976
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-28],eax
	sub	esp,20
	mov	[esp+12],1075838976
	mov	[esp+16],0
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	[esp+4],1075838976
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],1120403456
	mov	[esp+12],1120403456
	mov	[esp+4],1120403456
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],1050253722
	call	_fentityalpha
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-32],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityalpha
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fhideentity
_l_2mapdata
_l_2nodedata
	sub	esp,4
	mov	eax,_anodes
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,14
	mov	esi,_anodes
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_anodes
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,2
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,7
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,8
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,9
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,10
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,11
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,12
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,13
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,14
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_anode
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,14
	mov	esi,_anode
	add	esi,12
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_anode
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_anode
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,4
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,1
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,5
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,2
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,2
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,7
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,3
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,3
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,11
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,4
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,5
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,4
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,4
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,5
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,8
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,5
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,6
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,5
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,5
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,5
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,6
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,6
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,7
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,6
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,6
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,7
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,7
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,7
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,12
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,8
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,8
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,5
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,8
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,8
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,9
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,13
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,9
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,9
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,6
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,9
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,10
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,14
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,10
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,7
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,10
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,12
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,11
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,11
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,11
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,12
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,13
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,12
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,8
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,12
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,12
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,13
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,14
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,13
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,13
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,13
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,14
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,_anode
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,14
	shl	esi,byte 2
	add	esi,[_anode]
	mov	[esi],ebx
	mov	[ebp-36],0
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-40],0
	jmp	_20
_21
	sub	esp,8
	lea	eax,[ebp-44]
	mov	[esp],eax
	mov	[ebp-132],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-48],1
	jmp	_22
_23
	sub	esp,20
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_24
	add	[ebp-36],1
_24
	add	[ebp-48],1
_22
	cmp	[ebp-48],11
	jle	_23
_4
	add	[ebp-40],1
_20
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-40],ebx
	jle	_21
_3
	sub	esp,4
	mov	eax,_awpa
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-36]
	mov	esi,_awpa
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_awpa
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-52],0
	mov	[ebp-56],0
	mov	[ebp-40],0
	jmp	_26
_27
	sub	esp,8
	lea	eax,[ebp-44]
	mov	[esp],eax
	mov	[ebp-132],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-48],1
	jmp	_28
_29
	sub	esp,20
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_31
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_30
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	[ebp-60],eax
	sub	esp,20
	mov	ebx,[ebp-68]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1045220557
	mov	ebx,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-60]
	mov	[esp],eax
	call	_fpositionentity
	add	[ebp-52],1
_30
	sub	esp,20
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_33
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_32
	add	[ebp-56],1
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_awpa]
	mov	[ebx],eax
	sub	esp,20
	mov	ebx,[ebp-68]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],-1069547520
	mov	ebx,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_awpa]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
_32
	add	[ebp-72],1
	add	[ebp-64],5
	cmp	[ebp-72],11
	jnz	_34
	mov	[ebp-72],0
	add	[ebp-68],5
	mov	[ebp-64],0
_34
	add	[ebp-48],1
_28
	cmp	[ebp-48],11
	jle	_29
_6
	add	[ebp-40],1
_26
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-40],ebx
	jle	_27
_5
	sub	esp,8
	lea	eax,[ebp-76]
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_tbot
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,[ebp-76]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	mov	ebx,1
	mov	esi,[ebp-76]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],3
	mov	[esp+4],2
	mov	[esp],1
	call	_fcollisions
	jmp	_36
_35
	sub	esp,8
	mov	eax,[_vplayer]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-80],eax
	sub	esp,8
	mov	eax,[_vplayer]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-84],eax
	call	_l_2movecamera
	cmp	[ebp-12],0
	jle	_37
	call	_l_2movebot
	jmp	_38
_37
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrStore
_38
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,64
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_41
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	[ebp-136],eax
	mov	eax,ebx
	call	_ftrisrendered
	mov	ebx,eax
	mov	eax,[ebp-136]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],15
	mov	[esp],15
	call	_ftext
	sub	esp,72
	mov	eax,[_vplayer]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_44
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,12
	mov	eax,[_vplayer]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
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
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,12
	mov	eax,[_vplayer]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],30
	mov	[esp],15
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],400
	mov	[esp],15
	call	_ftext
	sub	esp,48
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-88]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_48
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-76]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],445
	mov	[esp],15
	call	_ftext
	sub	esp,64
	mov	eax,_49
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-92]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_50
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-96]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_51
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-100]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],460
	mov	[esp],15
	call	_ftext
	sub	esp,40
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_53
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],475
	mov	[esp],15
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],500
	mov	[esp],15
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_55
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],515
	mov	[esp],15
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_36
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_35
_7
	call	_fend
_l_2movecamera
	mov	ebx,-1098907648
	push	ebx
	fld	[esp]
	pop	ebx
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-104],ebx
	mov	ebx,1048576000
	push	ebx
	fld	[esp]
	pop	ebx
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-108],ebx
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-132],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-132]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],1
	mov	esi,[ebp-104]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[_vplayer]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp-108]
	mov	[esp+4],ebx
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	mov	[ebp-132],eax
	sub	esp,4
	mov	[esp],17
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	and	eax,eax
	jz	_56
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[_vplayer]
	mov	[esp],eax
	call	_fmoveentity
_56
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	mov	[ebp-132],eax
	sub	esp,4
	mov	[esp],31
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	and	eax,eax
	jz	_57
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[_vplayer]
	mov	[esp],eax
	call	_fmoveentity
_57
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	mov	[ebp-132],eax
	sub	esp,4
	mov	[esp],32
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	and	eax,eax
	jz	_58
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[_vplayer]
	mov	[esp],eax
	call	_fmoveentity
_58
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	mov	[ebp-132],eax
	sub	esp,4
	mov	[esp],30
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	and	eax,eax
	jz	_59
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vplayer]
	mov	[esp],eax
	call	_fmoveentity
_59
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_60
	cmp	[ebp-12],0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
_60
	ret
_l_2movebot
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp-76]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-112],ebx
	sub	esp,8
	mov	eax,[ebp-76]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-76]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_awpa]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fentitydistance
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_62
	mov	ebx,[ebp-112]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	[ebp-96],ebx
	mov	ebx,[ebp-76]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-88],ebx
	sub	esp,8
	mov	eax,[ebp-96]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-92],eax
	cmp	[ebp-92],0
	jnz	_63
	mov	[ebp-92],1
_63
	mov	ebx,_anode
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-92]
	add	ebx,[ebp-112]
	shl	ebx,byte 2
	add	ebx,[_anode]
	mov	ebx,[ebx]
	mov	[ebp-100],ebx
	mov	ebx,[ebp-100]
	mov	esi,[ebp-76]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_62
	sub	esp,8
	mov	eax,[ebp-76]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	shl	eax,byte 2
	add	eax,[_awpa]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-76]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-132]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-116],eax
	sub	esp,8
	mov	eax,[ebp-76]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	shl	eax,byte 2
	add	eax,[_awpa]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-76]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-132]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	sub	esp,12
	mov	eax,[ebp-116]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-128]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-120]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-124],eax
	mov	ebx,[ebp-116]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-124]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-116],ebx
	mov	ebx,[ebp-120]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-124]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-120],ebx
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],1036831949
	mov	esi,[ebp-120]
	mov	[esp+12],esi
	mov	[esp+8],0
	mov	esi,[ebp-116]
	mov	[esp+4],esi
	mov	eax,[ebp-76]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_faligntovector
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1028443341
	mov	[esp+4],0
	mov	eax,[ebp-76]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmoveentity
	ret
	ret
_2_leave
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[ebp-132],eax
	sub	esp,4
	mov	esi,[ebp-76]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-132]
	mov	[ebp-132],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-132]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_19	.db	"moving",0
	.align	4
_vplayer	.dd	0
	.align	4
_vcamera	.dd	0
	.align	4
_anodes	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_anode	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_25	.db	"3",0
	.align	4
_awpa	.dd	0
	.dd	1
	.dd	1
	.dd	0
_31	.db	"0",0
_33	.db	"3",0
_39	.db	"static",0
_40	.db	"Number of waypoints in level: ",0
_41	.db	" Number of wall blocks in level: ",0
_42	.db	" Triangles rendered: ",0
_43	.db	"Player X: ",0
_44	.db	" Player Y: ",0
_45	.db	" Player Z:",0
_46	.db	"mini Sausage Dweller - for Blitz3D users - by puki - 2004",0
_47	.db	"The bot is travelling from waypoint: ",0
_48	.db	" to waypoint: ",0
_49	.db	"The bot chose option ",0
_50	.db	" out of ",0
_51	.db	" options of where to head next - it is now heading for waypoint ",0
_52	.db	"The bot is currently ",0
_53	.db	" - Press 'SpaceBar' to toggle'",0
_54	.db	"NOTE: if the bot ping-pongs a few times between the same waypoints, it isn't a bug - it is just",0
_55	.db	"      doing it by chance based on the low number of choices it has to make (2-4)",0
_61	.db	"moving",0
	.align	4
_tbot	.dd	5
_64	.dd	0
	.dd	_64
	.dd	_64
	.dd	0
	.dd	-1
_65	.dd	0
	.dd	_65
	.dd	_65
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
_8	.db	"01000000000",0
_9	.db	"03111311130",0
_10	.db	"01000100010",0
_11	.db	"01000100010",0
_12	.db	"01000100010",0
_13	.db	"03111313130",0
_14	.db	"01000101010",0
_15	.db	"01000313130",0
_16	.db	"01000101010",0
_17	.db	"03111313130",0
_18	.db	"00000000000",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	4
	.dd	_8
	.dd	4
	.dd	_9
	.dd	4
	.dd	_10
	.dd	4
	.dd	_11
	.dd	4
	.dd	_12
	.dd	4
	.dd	_13
	.dd	4
	.dd	_14
	.dd	4
	.dd	_15
	.dd	4
	.dd	_16
	.dd	4
	.dd	_17
	.dd	4
	.dd	_18
	.dd	1
	.dd	1
	.dd	1
	.dd	4
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	5
	.dd	1
	.dd	3
	.dd	1
	.dd	0
	.dd	1
	.dd	3
	.dd	1
	.dd	7
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	4
	.dd	1
	.dd	11
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	5
	.dd	1
	.dd	4
	.dd	1
	.dd	8
	.dd	1
	.dd	6
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	6
	.dd	1
	.dd	5
	.dd	1
	.dd	9
	.dd	1
	.dd	7
	.dd	1
	.dd	0
	.dd	1
	.dd	7
	.dd	1
	.dd	6
	.dd	1
	.dd	10
	.dd	1
	.dd	3
	.dd	1
	.dd	0
	.dd	1
	.dd	8
	.dd	1
	.dd	12
	.dd	1
	.dd	9
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	1
	.dd	9
	.dd	1
	.dd	8
	.dd	1
	.dd	13
	.dd	1
	.dd	10
	.dd	1
	.dd	6
	.dd	1
	.dd	0
	.dd	1
	.dd	10
	.dd	1
	.dd	9
	.dd	1
	.dd	14
	.dd	1
	.dd	7
	.dd	1
	.dd	0
	.dd	1
	.dd	11
	.dd	1
	.dd	12
	.dd	1
	.dd	4
	.dd	1
	.dd	0
	.dd	1
	.dd	12
	.dd	1
	.dd	11
	.dd	1
	.dd	13
	.dd	1
	.dd	8
	.dd	1
	.dd	0
	.dd	1
	.dd	13
	.dd	1
	.dd	12
	.dd	1
	.dd	14
	.dd	1
	.dd	9
	.dd	1
	.dd	0
	.dd	1
	.dd	14
	.dd	1
	.dd	13
	.dd	1
	.dd	10
	.dd	1
	.dd	0
	.dd	0
