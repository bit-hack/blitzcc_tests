
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fini_readvalue
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	sub	esp,28
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	sub	esp,4
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	sub	esp,4
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,32
	call	_fcurrentdir
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fini_filetostring
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-20],ebx
	cmp	[ebp-20],0
	jz	_15
	sub	esp,16
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-36]
	add	ebx,[ebp-20]
	add	ebx,1
	mov	[esp+8],ebx
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-24],ebx
	cmp	[ebp-24],0
	jz	_16
	sub	esp,16
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp-24]
	add	ebx,1
	mov	[esp+8],ebx
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-28],ebx
	cmp	[ebp-28],0
	jz	_18
	sub	esp,16
	mov	[esp],0
	call	_fchr
	mov	[esp+4],eax
	mov	ebx,[ebp-28]
	add	ebx,1
	mov	[esp+8],ebx
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-32],ebx
	cmp	[ebp-32],0
	jz	_19
	sub	esp,24
	mov	ebx,[ebp-28]
	add	ebx,1
	mov	[esp+4],ebx
	mov	esi,[ebp-32]
	sub	esi,[ebp-28]
	sub	esi,1
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_ftrim
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_19
_18
_16
_15
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_20
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
	jmp	_22
_20
	sub	esp,4
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
_22
	sub	esp,4
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	esi,[ebp+32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	esi,[ebp+24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fini_writevalue
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	sub	esp,28
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp+32]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,32
	call	_fcurrentdir
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fini_filetostring
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-16],0
	mov	[ebp-20],0
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-28],eax
	cmp	[ebp-28],0
	jnz	_29
	mov	eax,0
	jmp	_4_leave
_29
	mov	[ebp-32],1
	sub	esp,16
	mov	[esp],0
	call	_fchr
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-36],ebx
	jmp	_31
_30
	sub	esp,24
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	esi,[ebp-36]
	sub	esi,[ebp-32]
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_ftrim
	mov	[esp+4],eax
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_33
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_32
	sub	esp,20
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fleft
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[ebp-56],eax
	sub	esp,8
	mov	[ebp-60],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fright
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,_36
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-52]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	and	eax,eax
	jz	_34
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	cmp	[ebp-16],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	and	eax,eax
	jz	_37
	sub	esp,16
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+8],ebx
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fini_createkey
	mov	ebx,eax
	mov	[ebp-16],ebx
_37
	sub	esp,20
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	_fini_createsection
	mov	[esp],eax
	call	_fupper
	mov	[esp+4],eax
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_38
	mov	[ebp-20],1
_38
	jmp	_39
_34
	sub	esp,16
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-44],ebx
	cmp	[ebp-44],0
	jz	_41
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[ebp-56],eax
	sub	esp,4
	mov	[ebp-60],eax
	sub	esp,4
	mov	[ebp-64],eax
	sub	esp,8
	mov	[ebp-68],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp],ebx
	mov	esi,[ebp-44]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fleft
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	[ebp-56],eax
	sub	esp,4
	mov	[ebp-60],eax
	sub	esp,4
	lea	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-60]
	mov	[esp],esi
	mov	eax,esi
	call	_fupper
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-52]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	and	eax,eax
	jz	_42
	sub	esp,12
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_43
	sub	esp,16
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+8],ebx
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fini_createkey
	mov	ebx,eax
_43
	mov	[ebp-16],1
	jmp	_45
_42
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	_fwriteline
_45
_41
_39
_32
	mov	ebx,[ebp-36]
	add	ebx,1
	mov	[ebp-32],ebx
	sub	esp,16
	mov	[esp],0
	call	_fchr
	mov	[esp+4],eax
	mov	ebx,[ebp-32]
	mov	[esp+8],ebx
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-36],ebx
_31
	cmp	[ebp-36],0
	jnz	_30
_5
	cmp	[ebp-16],0
	jnz	_46
	cmp	[ebp-20],0
	jnz	_47
	sub	esp,12
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	_fini_createsection
	mov	[esp],eax
	call	__bbStrRelease
_47
	sub	esp,16
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+8],ebx
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fini_createkey
	mov	ebx,eax
_46
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,1
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[ebp-48],eax
	sub	esp,4
	mov	esi,[ebp-40]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-48]
	mov	[ebp-48],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-48]
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[ebp-48],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-48]
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[ebp-48],eax
	sub	esp,4
	mov	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-48]
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[ebp-48],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-48]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fini_filetostring
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
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_48
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jz	_49
	jmp	_51
_50
	sub	esp,28
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_51
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_feof
	cmp	eax,0
	jz	_50
_7
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
_49
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_6_leave
	sub	esp,4
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	jmp	_6_leave
_6_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp-4]
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
	ret	word 4
	.align	16
_fini_createsection
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffilepos
	cmp	eax,0
	jz	_53
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_54
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fwriteline
_53
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_8_leave
	sub	esp,4
	mov	eax,_55
	mov	[esp],eax
	call	__bbStrConst
	jmp	_8_leave
_8_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fini_createkey
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,28
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_56
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	mov	eax,1
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[ebp-4],eax
	sub	esp,4
	mov	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
_10	.db	"[",0
_11	.db	"]",0
_12	.db	"\",0
_13	.db	".ini",0
_14	.db	"",0
_17	.db	"=",0
_21	.db	"",0
_23	.db	"",0
_24	.db	"[",0
_25	.db	"]",0
_26	.db	"\",0
_27	.db	".ini",0
_28	.db	"",0
_33	.db	"",0
_35	.db	"[",0
_36	.db	"]",0
_40	.db	"=",0
_44	.db	"",0
_48	.db	"",0
_52	.db	"",0
_54	.db	"",0
_55	.db	"",0
_56	.db	"=",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
