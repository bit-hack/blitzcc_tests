
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
_8
	sub	esp,8
	lea	eax,[ebp-4]
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
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_10
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_tsort
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
_10
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_8
_3
	sub	esp,8
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tsort
	call	__bbObjEachFirst
	and	eax,eax
	jz	_4
_14
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_14
_4
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_tsort
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbObjStore
_17
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_18
	jmp	_5
_18
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNext
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_19
	jmp	_5
_19
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jle	_20
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjPrev
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbObjInsBefore
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_tsort
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbObjCompare
	cmp	eax,0
	jz	_21
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjPrev
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbObjStore
_21
_20
	jmp	_17
_5
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tsort
	call	__bbObjEachFirst
	and	eax,eax
	jz	_6
_22
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_22
_6
_23
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_23
_7
	call	_fend
	ret
_2_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	ret	word 0
_9	.db	"",0
_11	.db	"",0
_12	.db	"",0
_13	.db	"",0
_15	.db	"",0
_16	.db	"",0
	.align	4
_tsort	.dd	5
_24	.dd	0
	.dd	_24
	.dd	_24
	.dd	0
	.dd	-1
_25	.dd	0
	.dd	_25
	.dd	_25
	.dd	0
	.dd	-1
	.dd	1
	.dd	__bbStrType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

