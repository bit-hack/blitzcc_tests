
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
_falpha
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
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbin
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
	jmp	_16
_17
	sub	esp,24
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp],eax
	mov	[esp+4],1
	call	_fright
	mov	[esp],eax
	call	_fval
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1073741824
	mov	esi,8
	sub	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-16]
	fmulp	st(1)
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	add	[ebp-8],1
_16
	cmp	[ebp-8],8
	jle	_17
_4
	mov	eax,[ebp-12]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fred
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
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbin
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
	jmp	_18
_19
	sub	esp,24
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-8]
	add	ebx,8
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp],eax
	mov	[esp+4],1
	call	_fright
	mov	[esp],eax
	call	_fval
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1073741824
	mov	esi,8
	sub	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-16]
	fmulp	st(1)
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	add	[ebp-8],1
_18
	cmp	[ebp-8],8
	jle	_19
_6
	mov	eax,[ebp-12]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fgreen
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
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbin
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
	jmp	_20
_21
	sub	esp,24
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-8]
	add	ebx,16
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp],eax
	mov	[esp+4],1
	call	_fright
	mov	[esp],eax
	call	_fval
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1073741824
	mov	esi,8
	sub	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-16]
	fmulp	st(1)
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	add	[ebp-8],1
_20
	cmp	[ebp-8],8
	jle	_21
_8
	mov	eax,[ebp-12]
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fblue
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
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbin
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
	jmp	_22
_23
	sub	esp,24
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-8]
	add	ebx,24
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp],eax
	mov	[esp+4],1
	call	_fright
	mov	[esp],eax
	call	_fval
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1073741824
	mov	esi,8
	sub	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-16]
	fmulp	st(1)
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	add	[ebp-8],1
_22
	cmp	[ebp-8],8
	jle	_23
_10
	mov	eax,[ebp-12]
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fval
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-4],0
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fleft
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_24
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-36],eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	[ebp-44],eax
	sub	esp,8
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fleft
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,_25
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-40]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	or	eax,ebx
	mov	[ebp-8],eax
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],2
	call	_fleft
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fleft
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[ebp-8]
	mov	esi,[ebp-12]
	or	ebx,esi
	and	ebx,ebx
	jz	_28
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
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
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp-12]
	shl	ebx,byte 1
	add	ebx,[ebp-8]
	add	ebx,1
	mov	[ebp-20],ebx
	jmp	_29
_30
	sub	esp,16
	mov	ebx,[ebp-20]
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
	mov	[ebp-24],eax
	mov	[ebp-28],1
	cmp	[ebp-24],48
	setge	al
	movzx	eax,al
	mov	[ebp-36],eax
	cmp	[ebp-24],57
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	cmp	[ebp-28],eax
	jz	_32
	cmp	[ebp-24],65
	setge	al
	movzx	eax,al
	mov	[ebp-36],eax
	cmp	[ebp-24],70
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	cmp	[ebp-28],eax
	jz	_33
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
	jmp	_31
_32
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1098907648
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-24]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1111490560
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	jmp	_31
_33
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1098907648
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-24]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1113325568
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	jmp	_31
_31
	add	[ebp-20],1
_29
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-20],eax
	jle	_30
_12
	jmp	_34
_28
	mov	ebx,[ebp-16]
	and	ebx,ebx
	jz	_35
	mov	[ebp-20],2
	jmp	_36
_37
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],1
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
	sub	esp,12
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_39
	sub	esp,12
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_41
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
	jmp	_38
_39
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	jmp	_38
_41
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	jmp	_38
_38
	add	[ebp-20],1
_36
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-20],eax
	jle	_37
_14
	jmp	_43
_35
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
_43
_34
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
_11_leave
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	esi,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_24	.db	"#",0
_25	.db	"$",0
_26	.db	"0x",0
_27	.db	"%",0
_40	.db	"1",0
_42	.db	"0",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

