
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
_fsortstrings
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
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-20]
	cmp	eax,ebx
	jle	_7
	jmp	_9
_8
	sub	esp,20
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_9
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-20]
	cmp	eax,ebx
	jg	_8
_4
	jmp	_10
_7
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-20],eax
	sub	esp,4
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
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-20]
	cmp	eax,ebx
	jle	_11
	jmp	_13
_12
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_13
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-20],eax
	sub	esp,4
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
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-20]
	cmp	eax,ebx
	jg	_12
_5
_11
_10
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_14
_15
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[ebp-12],eax
	cmp	[ebp-12],65
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-12],90
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_16
	sub	esp,12
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	call	_fasc
	mov	[ebp-12],eax
_16
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[ebp-16],eax
	cmp	[ebp-16],65
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-16],90
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_17
	sub	esp,12
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	call	_fasc
	mov	[ebp-16],eax
_17
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	jge	_18
	mov	eax,1
	jmp	_3_leave
	jmp	_19
_18
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	jle	_20
	mov	eax,0
	jmp	_3_leave
_20
_19
	add	[ebp-8],1
_14
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_15
_6
	mov	eax,-1
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp+24]
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
	ret	word 8
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
