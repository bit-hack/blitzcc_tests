
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
	sub	esp,4
	mov	eax,_3
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[_vseed],eax
	sub	esp,12
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,8
	mov	[esp],_velite
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_10
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	[esp],_vsyllables
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,_velite
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	and	eax,eax
	jz	_12
	mov	ebx,23114
	mov	esi,0
	add	esi,[_vseed]
	mov	[esi],ebx
	mov	ebx,584
	mov	esi,4
	add	esi,[_vseed]
	mov	[esi],ebx
	mov	ebx,46931
	mov	esi,8
	add	esi,[_vseed]
	mov	[esi],ebx
	jmp	_13
_12
	sub	esp,8
	mov	[esp],65535
	mov	[esp+4],1
	call	_frand
	mov	ebx,0
	add	ebx,[_vseed]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],65535
	mov	[esp+4],1
	call	_frand
	mov	ebx,4
	add	ebx,[_vseed]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],65535
	mov	[esp+4],1
	call	_frand
	mov	ebx,8
	add	ebx,[_vseed]
	mov	[ebx],eax
_13
	mov	[ebp-4],0
	jmp	_14
_15
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fcreatename
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,_18
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-16]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	mov	[ebp-12],eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,_19
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-16]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_16
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,32
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	jmp	_22
_16
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
_22
	add	[ebp-4],1
_14
	cmp	[ebp-4],20
	jle	_15
_4
	call	_fwaitkey
	call	_fend
	ret
_2_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ftweakseed
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,0
	add	eax,[_vseed]
	mov	eax,[eax]
	mov	ebx,4
	add	ebx,[_vseed]
	mov	ebx,[ebx]
	add	eax,ebx
	mov	ebx,8
	add	ebx,[_vseed]
	mov	ebx,[ebx]
	add	eax,ebx
	mov	[esp],eax
	mov	[esp+4],65536
	call	__bbMod
	mov	[ebp-4],eax
	mov	ebx,4
	add	ebx,[_vseed]
	mov	ebx,[ebx]
	mov	esi,0
	add	esi,[_vseed]
	mov	[esi],ebx
	mov	ebx,8
	add	ebx,[_vseed]
	mov	ebx,[ebx]
	mov	esi,4
	add	esi,[_vseed]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	esi,8
	add	esi,[_vseed]
	mov	[esi],ebx
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcreatename
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
	mov	ebx,0
	add	ebx,[_vseed]
	mov	ebx,[ebx]
	mov	esi,64
	and	ebx,esi
	mov	[ebp-4],ebx
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-16],0
	jmp	_24
_25
	mov	ebx,8
	add	ebx,[_vseed]
	mov	ebx,[ebx]
	shr	ebx,byte 8
	mov	esi,31
	and	ebx,esi
	shl	ebx,byte 1
	mov	[ebp-20],ebx
	call	_ftweakseed
	cmp	[ebp-16],3
	setl	al
	movzx	eax,al
	mov	ebx,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_26
	sub	esp,28
	mov	ebx,1
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],2
	sub	esp,4
	mov	eax,_vsyllables
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
	sub	esp,24
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+8],ebx
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
	call	_freplace
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrStore
_26
	add	[ebp-16],1
_24
	cmp	[ebp-16],3
	jle	_25
_7
	sub	esp,32
	mov	[esp+4],1
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fupper
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,12
	mov	[esp+4],2
	mov	[ebp-28],eax
	sub	esp,4
	mov	[ebp-32],eax
	sub	esp,4
	lea	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	_flen
	mov	esi,eax
	mov	eax,[ebp-28]
	sub	esi,1
	mov	[esp+8],esi
	mov	[ebp-28],eax
	sub	esp,4
	lea	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[esp+4],esi
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_6_leave
	sub	esp,4
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	jmp	_6_leave
_6_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	ret	word 0
_8	.db	"Elite Planet Name Generator",0
_9	.db	"",0
	.align	4
_3	.dd	6
	.dd	3
	.dd	__bbIntType
_vseed	.dd	0
	.align	4
_velite	.dd	0
_10	.db	"1",0
	.align	4
_vsyllables	.dd	0
_11	.db	"..lexegezacebisousesarmaindirea.eratenberalavetiedorquanteisrion",0
_17	.db	"Lave",0
_18	.db	"Zaonce",0
_19	.db	"Isinor",0
_20	.db	" [",0
_21	.db	"]",0
_23	.db	"",0
_27	.db	".",0
_28	.db	"",0
_29	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
