
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
_furlencode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	mov	[ebp-4],1
	mov	[ebp-8],0
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	mov	[ebp-16],0
	jmp	_8
_7
	sub	esp,16
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-20],ebx
	cmp	[ebp-20],0
	jz	_10
	sub	esp,20
	mov	[esp+4],1
	mov	esi,[ebp-20]
	sub	esi,1
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-20]
	add	ebx,3
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-20]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],2
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fhex2dec
	mov	[ebp-36],eax
	cmp	[ebp-36],-1
	jz	_11
	sub	esp,28
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_11
	mov	ebx,[ebp-20]
	add	ebx,1
	mov	[ebp-4],ebx
	jmp	_12
_10
	mov	[ebp-16],1
_12
_8
	mov	eax,[ebp-12]
	cmp	[ebp-4],eax
	setl	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-16],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jnz	_7
_4
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	esi,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	esi,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fhex2dec
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
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-4],1
	jmp	_14
_15
	sub	esp,28
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fupper
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	ebx,1
	mov	esi,[ebp-8]
	shl	esi,byte 4
	or	esi,ebx
	mov	[ebp-8],esi
	add	[ebp-4],1
_14
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-4],eax
	jle	_15
_6
	mov	eax,[ebp-8]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
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
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_9	.db	"%",0
_13	.db	"0123456789ABCDEF",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

