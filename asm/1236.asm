
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-16],eax
	sub	esp,24
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fnewreplace
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	sub	esp,4
	mov	eax,_aoccpos
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_aoccpos
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aoccpos
	mov	[esp],eax
	call	__bbDimArray
	ret
_2_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fnewreplace
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
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-16],eax
	mov	[ebp-20],1
	jmp	_11
_12
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_13
	add	[ebp-4],1
_13
	add	[ebp-20],1
_11
	mov	ebx,[ebp-12]
	sub	ebx,[ebp-16]
	add	ebx,1
	cmp	[ebp-20],ebx
	jle	_12
_4
	mov	ebx,[ebp-4]
	cmp	[ebp+32],ebx
	jle	_14
	mov	ebx,[ebp-4]
	mov	[ebp+32],ebx
_14
	sub	esp,4
	mov	eax,_aoccpos
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp+32]
	mov	esi,_aoccpos
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aoccpos
	mov	[esp],eax
	call	__bbDimArray
	cmp	[ebp+32],0
	jnz	_15
	sub	esp,16
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+8],ebx
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freplace
	mov	ebx,eax
	jmp	_3_leave
	jmp	_16
_15
	mov	[ebp-20],1
	jmp	_17
_18
	cmp	[ebp-20],1
	jnz	_19
	sub	esp,16
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aoccpos]
	mov	[esi],ebx
	jmp	_20
_19
	sub	esp,16
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	ebx,[ebp-20]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aoccpos]
	mov	ebx,[ebx]
	add	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aoccpos]
	mov	[esi],ebx
_20
	add	[ebp-20],1
_17
	mov	ebx,[ebp+32]
	cmp	[ebp-20],ebx
	jle	_18
_5
	sub	esp,20
	mov	[esp+4],1
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_aoccpos]
	mov	esi,[esi]
	sub	esi,1
	mov	[esp+8],esi
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
	mov	[ebp-20],1
	jmp	_21
_22
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_aoccpos]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_23
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,[ebp-20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aoccpos]
	mov	ebx,[ebx]
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aoccpos]
	mov	esi,[esi]
	add	esi,[ebp-16]
	sub	ebx,esi
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aoccpos]
	mov	esi,[esi]
	add	esi,[ebp-16]
	mov	[esp+4],esi
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrStore
_23
	add	[ebp-20],1
_21
	mov	ebx,[ebp+32]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_22
_6
	mov	ebx,[ebp+32]
	shl	ebx,byte 2
	add	ebx,[_aoccpos]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_24
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,[ebp+32]
	shl	ebx,byte 2
	add	ebx,[_aoccpos]
	mov	ebx,[ebx]
	add	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],-1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrStore
_24
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
_16
	sub	esp,4
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp+24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
_7	.db	"Enter Source-String: ",0
_8	.db	"Enter Find$-string: ",0
_9	.db	"Enter Replace$-string: ",0
_10	.db	"Enter NumOfOcc%: ",0
	.align	4
_aoccpos	.dd	0
	.dd	1
	.dd	1
	.dd	0
_25	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
