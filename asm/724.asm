
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_tinfo
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_3
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,1063675494
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjToHandle
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fnameentity
	mov	ebx,[ebp-8]
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	and	ebx,ebx
	jz	_4
	sub	esp,24
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentityname
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp],eax
	mov	[esp+4],_tinfo
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp],eax
	call	_fprint
_4
	ret
_2_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_3	.db	"bowling ball",0
	.align	4
_tinfo	.dd	5
_5	.dd	0
	.dd	_5
	.dd	_5
	.dd	0
	.dd	-1
_6	.dd	0
	.dd	_6
	.dd	_6
	.dd	0
	.dd	-1
	.dd	8
	.dd	__bbStrType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

