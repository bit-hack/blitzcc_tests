
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
_fgetttfdata
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,128
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
	sub	esp,4
	mov	[esp],12
	call	_fcreatebank
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_10
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,28
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ftrim
	mov	[esp],eax
	mov	[esp+4],4
	call	_fright
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-120],eax
	mov	[ebp-124],eax
	sub	esp,4
	mov	[ebp-128],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-128]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffiletype
	mov	ebx,eax
	mov	eax,[ebp-124]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-120]
	and	eax,ebx
	and	eax,eax
	jz	_11
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],12
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbytes
	mov	[ebp-16],0
	jmp	_13
_14
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	shl	ebx,byte 4
	add	ebx,12
	mov	[esp+4],ebx
	call	_fseekfile
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-24],1
	jmp	_16
_17
	sub	esp,20
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadbyte
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-24],1
_16
	cmp	[ebp-24],4
	jle	_17
_5
	sub	esp,16
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_18
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	[esp],eax
	call	_fint_swapendian
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	[esp],eax
	call	_fint_swapendian
	mov	[ebp-32],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	[esp],eax
	call	_fint_swapendian
	mov	[ebp-36],eax
	jmp	_20
_18
	sub	esp,16
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_21
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	[esp],eax
	call	_fint_swapendian
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	[esp],eax
	call	_fint_swapendian
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	[esp],eax
	call	_fint_swapendian
	mov	[ebp-48],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	call	_fseekfile
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadshort
	mov	[esp],eax
	call	_fshort_swapendian
	mov	[ebp-52],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadshort
	mov	[esp],eax
	call	_fshort_swapendian
	mov	[ebp-56],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadshort
	mov	[esp],eax
	call	_fshort_swapendian
	mov	[ebp-60],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadshort
	mov	[esp],eax
	call	_fshort_swapendian
	mov	[ebp-64],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	[esp],eax
	call	_fint_swapendian
	mov	[ebp-68],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-68]
	mov	[esp+4],ebx
	call	_fseekfile
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadshort
	mov	[esp],eax
	call	_fshort_swapendian
	mov	[ebp-72],eax
	sub	esp,44
	lea	eax,[ebp-76]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_24
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-72]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_21
_20
	sub	esp,28
	lea	eax,[ebp-76]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-16],1
_13
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],5
	call	_fpeekshort
	sub	eax,1
	cmp	[ebp-16],eax
	jle	_14
_4
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fseekfile
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadshort
	mov	[esp],eax
	call	_fshort_swapendian
	mov	[ebp-80],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadshort
	mov	[esp],eax
	call	_fshort_swapendian
	mov	[ebp-84],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadshort
	mov	[esp],eax
	call	_fshort_swapendian
	mov	[ebp-88],eax
	jmp	_27
_26
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadshort
	mov	[esp],eax
	call	_fshort_swapendian
	mov	[ebp-60],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadshort
	mov	[esp],eax
	call	_fshort_swapendian
	mov	[ebp-64],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadshort
	mov	[esp],eax
	call	_fshort_swapendian
	mov	[ebp-96],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadshort
	mov	[esp],eax
	call	_fshort_swapendian
	mov	[ebp-92],eax
	mov	ebx,[ebp+24]
	cmp	[ebp-92],ebx
	jnz	_28
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadshort
	mov	[esp],eax
	call	_fshort_swapendian
	mov	[ebp-100],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadshort
	mov	[esp],eax
	call	_fshort_swapendian
	mov	[ebp-104],eax
	jmp	_29
_28
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-108],eax
_29
_27
	mov	eax,[ebp+24]
	cmp	[ebp-92],eax
	setnz	al
	movzx	eax,al
	mov	[ebp-120],eax
	mov	[ebp-124],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_feof
	mov	ebx,eax
	mov	eax,[ebp-124]
	cmp	ebx,1
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-120]
	and	eax,ebx
	and	eax,eax
	jnz	_26
_6
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	add	ebx,[ebp-88]
	add	ebx,[ebp-104]
	mov	[esp+4],ebx
	call	_fseekfile
	mov	[ebp-24],1
	jmp	_30
_31
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-112],eax
	cmp	[ebp-112],0
	jz	_32
	sub	esp,20
	lea	eax,[ebp-116]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-112]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-116]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_32
	add	[ebp-24],1
_30
	mov	ebx,[ebp-100]
	cmp	[ebp-24],ebx
	jle	_31
_7
	sub	esp,4
	lea	eax,[ebp-116]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclosefile
_11
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[ebp-120],eax
	sub	esp,4
	mov	esi,[ebp-116]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-120]
	mov	[ebp-120],eax
	sub	esp,4
	mov	esi,[ebp-20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-120]
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[ebp-120],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-120]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fint_swapendian
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,255
	and	eax,ebx
	shl	eax,byte 24
	mov	ebx,[ebp+20]
	mov	esi,65280
	and	ebx,esi
	shl	ebx,byte 8
	or	eax,ebx
	mov	ebx,[ebp+20]
	mov	esi,16711680
	and	ebx,esi
	shr	ebx,byte 8
	or	eax,ebx
	mov	ebx,[ebp+20]
	mov	esi,-16777216
	and	ebx,esi
	shr	ebx,byte 24
	or	eax,ebx
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fshort_swapendian
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,255
	and	eax,ebx
	shl	eax,byte 8
	mov	ebx,[ebp+20]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	or	eax,ebx
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_10	.db	"",0
_12	.db	".ttf",0
_15	.db	"",0
_19	.db	"name",0
_22	.db	"cmap",0
_23	.db	"|",0
_24	.db	">",0
_25	.db	"|",0
_33	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

