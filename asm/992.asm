
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fkeygen
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	ret
_2_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	ret	word 0
	.align	16
_fkeygen
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,60
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
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
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
	call	__bbStrStore
	mov	[ebp-12],20
_14
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,[ebp-12]
	jg	_15
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-20],1
	jmp	_17
_18
	sub	esp,36
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	add	eax,1
	mov	[esp],eax
	call	_fchr
	mov	[esp+4],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrStore
	add	[ebp-20],1
_17
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-20],eax
	jle	_18
_5
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_15
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,[ebp-12]
	jle	_14
_4
	mov	[ebp-20],5
	jmp	_19
_20
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,[ebp-20]
	jnz	_21
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_21
	add	[ebp-20],5
_19
	cmp	[ebp-20],100
	jle	_20
_6
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-20],0
	jmp	_24
_25
	sub	esp,20
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-20],1
_24
	cmp	[ebp-20],19
	jle	_25
_7
	mov	[ebp-28],1
	mov	[ebp-32],1
	jmp	_26
_27
	mov	[ebp-20],1
	jmp	_28
_29
	sub	esp,16
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[ebp-36],eax
	sub	[ebp-36],32
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-40],1
	jmp	_31
_32
	sub	esp,16
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[ebp-44],eax
	mov	ebx,[ebp-28]
	cmp	[ebp-40],ebx
	jnz	_33
	sub	esp,28
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	add	eax,[ebp-44]
	mov	[esp],eax
	call	_fchr
	mov	[esp+4],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrStore
	jmp	_34
_33
	sub	esp,20
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_34
	add	[ebp-40],1
_31
	cmp	[ebp-40],20
	jle	_32
_10
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-28],1
	cmp	[ebp-28],20
	jnz	_35
	mov	[ebp-28],1
_35
	add	[ebp-20],1
_28
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-20],eax
	jle	_29
_9
	add	[ebp-32],1
_26
	cmp	[ebp-32],30
	jle	_27
_8
	sub	esp,8
	lea	eax,[ebp-48]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-28],1
	jmp	_37
_38
	sub	esp,24
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	[ebp-60],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-52],eax
	cmp	[ebp-52],0
	jnz	_39
	mov	[ebp-52],1
_39
	sub	esp,28
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-48]
	mov	[esp],eax
	call	__bbStrStore
	add	[ebp-28],1
_37
	cmp	[ebp-28],20
	jle	_38
_11
	sub	esp,68
	mov	[esp+4],1
	mov	[esp+8],5
	sub	esp,4
	lea	eax,[ebp-48]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,12
	mov	[esp+4],6
	mov	[esp+8],5
	mov	[ebp-60],eax
	sub	esp,4
	lea	esi,[ebp-48]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-60]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[esp+4],esi
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_41
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,12
	mov	[esp+4],11
	mov	[esp+8],5
	mov	[ebp-60],eax
	sub	esp,4
	lea	esi,[ebp-48]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-60]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[esp+4],esi
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,12
	mov	[esp+4],16
	mov	[esp+8],5
	mov	[ebp-60],eax
	sub	esp,4
	lea	esi,[ebp-48]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-60]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[esp+4],esi
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,4
	lea	eax,[ebp-48]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
	sub	esp,4
	mov	eax,_43
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp-48]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_12	.db	"rob@mentalillusion.co.uk",0
_13	.db	"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ",0
_16	.db	"",0
_22	.db	"~",0
_23	.db	"",0
_30	.db	"",0
_36	.db	"",0
_40	.db	"-",0
_41	.db	"-",0
_42	.db	"-",0
_43	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

