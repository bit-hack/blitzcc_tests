
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
_fcommandline_read
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+20],0
	jle	_9
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tcmdline
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tcmdline
	call	__bbObjEachFirst
	and	eax,eax
	jz	_4
_10
	add	[ebp-8],1
	mov	ebx,[ebp-8]
	cmp	[ebp+20],ebx
	jnz	_11
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
_11
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_10
_4
_9
	sub	esp,4
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	sub	esp,4
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fcommandline_init
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fcommandline
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
	mov	[ebp-12],0
	mov	[ebp-16],0
	mov	[ebp-20],0
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,0
	jnz	_16
	jmp	_l_5cmdreadend
_16
_l_5cmdread
	add	[ebp-20],1
	sub	esp,28
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,24
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	sub	esi,[ebp-8]
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_ftrim
	mov	[esp+4],eax
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[ebp-12],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_17
	cmp	[ebp-8],1
	jnz	_19
	sub	esp,12
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jle	_20
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	_fcmd_addtype
	mov	[ebp-16],eax
_20
	mov	ebx,[ebp-20]
	mov	[ebp-8],ebx
	jmp	_22
_19
	sub	esp,24
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	sub	esi,[ebp-8]
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_ftrim
	mov	[esp+4],eax
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_24
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jle	_23
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	_fcmd_addtype
	mov	[ebp-16],eax
_23
	mov	ebx,[ebp-20]
	mov	[ebp-8],ebx
_22
_17
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_25
	mov	eax,[ebp-20]
	sub	eax,[ebp-8]
	cmp	eax,0
	setg	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[ebp-12],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_26
	sub	esp,12
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jle	_27
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	_fcmd_addtype
	mov	[ebp-16],eax
_27
	mov	ebx,[ebp-20]
	mov	[ebp-8],ebx
_26
	cmp	[ebp-12],0
	jnz	_29
	mov	ebx,[ebp-20]
	add	ebx,1
	mov	[ebp-8],ebx
	mov	[ebp-12],1
	jmp	_30
_29
	sub	esp,12
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jle	_31
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	_fcmd_addtype
	mov	[ebp-16],eax
_31
	mov	ebx,[ebp-20]
	add	ebx,1
	mov	[ebp-8],ebx
	mov	[ebp-12],0
_30
_25
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-20],eax
	jle	_33
	sub	esp,12
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jle	_34
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	_fcmd_addtype
	mov	[ebp-16],eax
_34
	jmp	_l_5cmdreadend
_33
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_l_5cmdread
_l_5cmdreadend
	mov	eax,[ebp-16]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp-28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcmd_addtype
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	add	ebx,1
	mov	[ebp-4],ebx
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tcmdline
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,[ebp-4]
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
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
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_tcmdline	.dd	5
_7	.dd	0
	.dd	_7
	.dd	_7
	.dd	0
	.dd	-1
_8	.dd	0
	.dd	_8
	.dd	_8
	.dd	0
	.dd	-1
	.dd	1
	.dd	__bbStrType
_12	.db	"0",0
_13	.db	"",0
_14	.db	"",0
_15	.db	"",0
_18	.db	" ",0
_21	.db	"",0
_24	.db	"",0
_28	.db	"",0
_32	.db	"",0
_35	.db	"",0
_36	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

