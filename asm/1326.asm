
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,112
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
	sub	esp,4
	mov	eax,_acrc_table
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_acrc_table
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acrc_table
	mov	[esp],eax
	call	__bbDimArray
	call	_fcrc_init
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,24
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],4
	call	_fright
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_14
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_14
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,24
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],4
	call	_fright
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_18
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_18
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-12],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-16],eax
	cmp	[ebp-12],0
	jnz	_21
	sub	esp,16
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_21
	cmp	[ebp-16],0
	jnz	_23
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,_24
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_23
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-32],eax
	mov	[ebp-36],0
	jmp	_26
_25
	sub	esp,36
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_27
	mov	[ebp-36],1
	jmp	_3
_27
	mov	ebx,[ebp-24]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-28]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-32]
	mov	[ebp-28],ebx
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-32],eax
_26
	cmp	[ebp-40],0
	jz	_25
_3
	cmp	[ebp-36],0
	jnz	_29
	sub	esp,8
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_29
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffilepos
	sub	eax,8
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	call	_fseekfile
	mov	[ebp-48],0
	mov	[ebp-52],0
	jmp	_31
_32
	mov	ebx,[ebp-48]
	shl	ebx,byte 8
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadbyte
	add	ebx,eax
	mov	[ebp-48],ebx
	add	[ebp-52],1
_31
	cmp	[ebp-52],3
	jle	_32
_4
	sub	esp,4
	mov	eax,4
	add	eax,[ebp-48]
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-56],eax
	mov	[ebp-52],0
	jmp	_33
_34
	sub	esp,12
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadbyte
	mov	[esp+8],eax
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fpokeint
	add	[ebp-52],1
_33
	sub	esp,4
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fbanksize
	sub	eax,1
	cmp	[ebp-52],eax
	jle	_34
_5
	sub	esp,8
	lea	eax,[ebp-60]
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fupper
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_35
	sub	esp,16
	mov	eax,_37
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	lea	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_35
	sub	esp,8
	lea	eax,[ebp-60]
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_38
	sub	esp,8
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_38
	sub	esp,8
	lea	eax,[ebp-60]
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-64],eax
	mov	ebx,3
	imul	ebx,[ebp-64]
	cmp	ebx,[ebp-48]
	jz	_41
	sub	esp,32
	mov	eax,_42
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	[ebp-108],eax
	sub	esp,4
	mov	[ebp-112],eax
	sub	esp,4
	lea	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-112]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrToInt
	mov	ebx,eax
	mov	eax,[ebp-108]
	imul	ebx,6
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_41
	mov	[ebp-52],0
	jmp	_44
_45
	sub	esp,8
	lea	eax,[ebp-60]
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-104],eax
	sub	esp,4
	lea	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-68],ebx
	sub	esp,20
	mov	[esp+4],1
	mov	esi,[ebp-68]
	sub	esi,1
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-72]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,16
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp-68]
	add	ebx,1
	mov	[esp+8],ebx
	mov	[ebp-104],eax
	sub	esp,4
	lea	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-76],ebx
	sub	esp,20
	mov	ebx,[ebp-68]
	add	ebx,1
	mov	[esp+4],ebx
	mov	esi,[ebp-76]
	sub	esi,[ebp-68]
	sub	esi,1
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-80]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-76]
	add	ebx,1
	mov	[esp+4],ebx
	sub	esp,8
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	eax,[ebp-76]
	mov	[esp+8],eax
	sub	esp,4
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-84]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	mov	ebx,3
	imul	ebx,[ebp-52]
	add	ebx,4
	mov	[esp+4],ebx
	sub	esp,8
	lea	eax,[ebp-72]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp+8],eax
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,12
	mov	ebx,3
	imul	ebx,[ebp-52]
	add	ebx,4
	add	ebx,1
	mov	[esp+4],ebx
	sub	esp,8
	lea	eax,[ebp-80]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp+8],eax
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,12
	mov	ebx,3
	imul	ebx,[ebp-52]
	add	ebx,4
	add	ebx,2
	mov	[esp+4],ebx
	sub	esp,8
	lea	eax,[ebp-84]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp+8],eax
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-52],1
_44
	mov	ebx,[ebp-64]
	sub	ebx,1
	cmp	[ebp-52],ebx
	jle	_45
_6
	sub	esp,4
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fcrc_bank
	mov	[ebp-88],eax
	sub	esp,8
	mov	eax,_48
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_49
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-88]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fhex
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_50
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-92],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fseekfile
	jmp	_52
_51
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffilepos
	mov	[ebp-96],eax
	mov	ebx,[ebp-44]
	add	ebx,4
	cmp	[ebp-96],ebx
	jge	_53
	sub	esp,8
	mov	eax,[ebp-92]
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadbyte
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	_fwritebyte
	jmp	_54
_53
	mov	ebx,[ebp-44]
	add	ebx,4
	add	ebx,4
	add	ebx,[ebp-48]
	cmp	[ebp-96],ebx
	jge	_55
	sub	esp,16
	mov	ebx,[ebp-96]
	mov	esi,[ebp-44]
	add	esi,4
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fpeekbyte
	mov	[esp+4],eax
	mov	ebx,[ebp-92]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritebyte
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffilepos
	mov	ebx,eax
	mov	eax,[ebp-104]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fseekfile
	jmp	_56
_55
	mov	ebx,[ebp-44]
	add	ebx,4
	add	ebx,4
	add	ebx,[ebp-48]
	add	ebx,4
	cmp	[ebp-96],ebx
	jge	_57
	mov	ebx,[ebp-44]
	add	ebx,4
	add	ebx,4
	add	ebx,[ebp-48]
	add	ebx,4
	sub	ebx,[ebp-96]
	sub	ebx,1
	mov	[ebp-100],ebx
	sub	esp,8
	mov	ebx,[ebp-88]
	mov	ecx,[ebp-100]
	shl	ecx,byte 3
	shr	ebx,cl
	mov	esi,255
	and	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[ebp-92]
	mov	[esp],eax
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffilepos
	mov	ebx,eax
	mov	eax,[ebp-104]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fseekfile
	jmp	_58
_57
	sub	esp,8
	mov	eax,[ebp-92]
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadbyte
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	_fwritebyte
_58
_56
_54
_52
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_feof
	cmp	eax,0
	jz	_51
_7
	sub	esp,4
	mov	eax,[ebp-92]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	mov	eax,_59
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_60
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	ret
_2_leave
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-80]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[ebp-104],eax
	sub	esp,4
	mov	esi,[ebp-84]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-104]
	mov	[ebp-104],eax
	sub	esp,4
	mov	esi,[ebp-72]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-104]
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[ebp-104],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-104]
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcrc_init
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-4],0
	jmp	_61
_62
	mov	ebx,[ebp-4]
	mov	[ebp-12],ebx
	mov	[ebp-8],0
	jmp	_63
_64
	mov	ebx,[ebp-12]
	mov	esi,1
	and	ebx,esi
	and	ebx,ebx
	jz	_65
	mov	ebx,[ebp-12]
	shr	ebx,byte 1
	mov	esi,-306674912
	xor	ebx,esi
	mov	[ebp-12],ebx
	jmp	_66
_65
	mov	ebx,[ebp-12]
	shr	ebx,byte 1
	mov	[ebp-12],ebx
_66
	add	[ebp-8],1
_63
	cmp	[ebp-8],7
	jle	_64
_10
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acrc_table]
	mov	[esi],ebx
	add	[ebp-4],1
_61
	cmp	[ebp-4],255
	jle	_62
_9
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcrc_bank
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
	mov	[ebp-16],ebx
	mov	[ebp-8],-1
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbanksize
	sub	eax,1
	mov	[ebp-16],eax
	mov	[ebp-12],0
	jmp	_67
_68
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-4],eax
	mov	ebx,[ebp-8]
	mov	esi,255
	and	ebx,esi
	mov	esi,[ebp-4]
	xor	esi,ebx
	shl	esi,byte 2
	add	esi,[_acrc_table]
	mov	esi,[esi]
	mov	ebx,[ebp-8]
	shr	ebx,byte 8
	xor	ebx,esi
	mov	[ebp-8],ebx
	add	[ebp-12],1
_67
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	jle	_68
_12
	mov	eax,[ebp-8]
	mov	ebx,-1
	xor	eax,ebx
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_acrc_table	.dd	0
	.dd	1
	.dd	1
	.dd	0
_13	.db	"Image (.png): ",0
_15	.db	".png",0
_16	.db	".png",0
_17	.db	"Palette (.pal): ",0
_19	.db	".pal",0
_20	.db	".pal",0
_22	.db	" not found!",0
_24	.db	" not found!",0
_28	.db	"PLTE",0
_30	.db	"Palette not found inside image!",0
_36	.db	"JASC-PAL",0
_37	.db	"Palette type not recognized (should be JASC-PAL): ",0
_39	.db	"0100",0
_40	.db	"New palette should be 8 bit/channel!",0
_42	.db	"Size of new palette: ",0
_43	.db	" Size of image palette: ",0
_46	.db	" ",0
_47	.db	" ",0
_48	.db	" ",0
_49	.db	"New crc: ",0
_50	.db	"tmp_",0
_59	.db	" ",0
_60	.db	"New image saved as: tmp_",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

