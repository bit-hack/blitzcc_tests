
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
	mov	[_vcpos],0
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	mov	[esp],0
	call	_fcreatebank
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteshortstring
	mov	[_vcpos],0
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshortstring
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[_vcpos],0
	sub	esp,4
	mov	[esp],0
	call	_fcreatebank
	mov	[ebp-8],eax
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	imul	eax,6
	add	eax,15
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fceil
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fresizebank
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteshortstring
	sub	esp,12
	mov	eax,3
	add	eax,[_vcpos]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fceil
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fresizebank
	mov	ebx,eax
	sub	esp,8
	mov	eax,[_vcpos]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,24
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp+4],eax
	mov	[esp+8],3
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritedata
	mov	ebx,eax
	sub	esp,12
	mov	eax,5
	add	eax,[_vcpos]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fceil
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fresizebank
	mov	ebx,eax
	sub	esp,24
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp+4],eax
	mov	[esp+8],5
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritedata
	mov	ebx,eax
	sub	esp,12
	mov	eax,6
	add	eax,[_vcpos]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fceil
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fresizebank
	mov	ebx,eax
	sub	esp,24
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp+4],eax
	mov	[esp+8],6
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritedata
	mov	ebx,eax
	sub	esp,8
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vcpos]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,[_vcpos]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	sub	esp,8
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[_vcpos],0
	sub	esp,16
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadshortstring
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,[_vcpos]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,24
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],3
	call	_freaddata
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	sub	esp,24
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],5
	call	_freaddata
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_33
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	sub	esp,24
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],6
	call	_freaddata
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_34
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	ret
_2_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
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
	ret	word 0
	.align	16
_fpeekbit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	eax,[ebp+24]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],8
	call	__bbMod
	mov	ecx,eax
	shr	ebx,cl
	cmp	ebx,0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fpokebit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,[ebp+24]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	add	ebx,1
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbanksize
	cmp	ebx,eax
	jle	_35
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fresizebank
_35
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fpeekbit
	cmp	eax,[ebp+28]
	jnz	_36
	mov	eax,0
	jmp	_4_leave
	jmp	_37
_36
	sub	esp,20
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fpeekbyte
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],8
	mov	eax,ebx
	call	__bbMod
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp],1073741824
	mov	eax,esi
	call	__bbFPow
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	ebx,[ebp+28]
	shl	ebx,byte 1
	sub	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokebyte
_37
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fpeekdata
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	jmp	_38
_39
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	add	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fpeekbit
	and	eax,eax
	jz	_40
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
_40
	add	[ebp-4],1
_38
	mov	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_39
_6
	mov	eax,[ebp-8]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fpokedata
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_41
_42
	sub	esp,20
	mov	eax,[ebp+32]
	mov	ecx,[ebp-4]
	shr	eax,cl
	mov	[esp],eax
	mov	[esp+4],2
	call	__bbMod
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	add	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokebit
	add	[ebp-4],1
_41
	mov	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_42
_8
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fpeekshortstring
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
	mov	[ebp-20],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_43
	sub	esp,4
	mov	eax,_44
	mov	[esp],eax
	call	__bbStrConst
	jmp	_9_leave
_43
	add	[ebp+24],10
	mov	[ebp-8],1
	jmp	_45
_46
	sub	esp,12
	mov	ebx,6
	imul	ebx,[ebp-8]
	add	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],6
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpeekdata
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	mov	[ebp-16],ebx
	cmp	[ebp-16],0
	jz	_48
	cmp	[ebp-16],1
	jz	_49
	cmp	[ebp-12],12
	jge	_50
	sub	esp,20
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	sub	ebx,2
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_51
_50
	cmp	[ebp-12],37
	jge	_52
	sub	esp,20
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	add	ebx,53
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_53
_52
	sub	esp,20
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	add	ebx,59
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_53
_51
	jmp	_47
_48
	sub	esp,20
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_54
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_47
_49
	sub	esp,20
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_55
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_47
_47
	add	[ebp-8],1
_45
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_46
_10
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_9_leave
	sub	esp,4
	mov	eax,_56
	mov	[esp],eax
	call	__bbStrConst
	jmp	_9_leave
_9_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-20]
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
	ret	word 8
	.align	16
_fpokeshortstring
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	sub	esp,16
	mov	[esp+8],16
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[esp+12],eax
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokedata
	add	[ebp+24],10
	mov	[ebp-4],1
	jmp	_57
_58
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-8]
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
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_60
	sub	esp,12
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_63
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_62
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fasc
	mov	[ebp-16],eax
	cmp	[ebp-16],47
	jle	_64
	cmp	[ebp-16],58
	jge	_65
	sub	esp,16
	mov	[esp+8],6
	mov	esi,[ebp-16]
	sub	esi,46
	mov	[esp+12],esi
	mov	esi,6
	imul	esi,[ebp-4]
	add	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokedata
	jmp	_66
_65
	cmp	[ebp-16],64
	jle	_67
	cmp	[ebp-16],91
	jge	_68
	sub	esp,16
	mov	[esp+8],6
	mov	esi,[ebp-16]
	sub	esi,53
	mov	[esp+12],esi
	mov	esi,6
	imul	esi,[ebp-4]
	add	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokedata
	jmp	_69
_68
	cmp	[ebp-16],96
	jle	_70
	cmp	[ebp-16],123
	jge	_71
	sub	esp,16
	mov	[esp+8],6
	mov	esi,[ebp-16]
	sub	esi,59
	mov	[esp+12],esi
	mov	esi,6
	imul	esi,[ebp-4]
	add	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokedata
	jmp	_72
_71
	sub	esp,16
	mov	[esp+8],6
	mov	[esp+12],0
	mov	esi,6
	imul	esi,[ebp-4]
	add	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokedata
_72
_70
_69
_67
_66
_64
	jmp	_59
_60
	sub	esp,16
	mov	[esp+8],6
	mov	[esp+12],0
	mov	esi,6
	imul	esi,[ebp-4]
	add	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokedata
	jmp	_59
_62
	sub	esp,16
	mov	[esp+8],6
	mov	[esp+12],1
	mov	esi,6
	imul	esi,[ebp-4]
	add	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokedata
	jmp	_59
_59
	add	[ebp-4],1
_57
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-4],eax
	jle	_58
_13
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp+28]
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
	ret	word 12
	.align	16
_freadbit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[_vcpos]
	mov	[esp+4],ebx
	call	_fpeekbit
	jmp	_15_leave
	add	[_vcpos],1
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fwritebit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,[_vcpos]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokebit
	add	[_vcpos],1
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_freaddata
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	add	[_vcpos],ebx
	sub	esp,12
	mov	ebx,[_vcpos]
	sub	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpeekdata
	jmp	_17_leave
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fwritedata
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+12],esi
	mov	esi,[_vcpos]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokedata
	mov	ebx,[ebp+28]
	add	[_vcpos],ebx
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_freadshortstring
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[_vcpos]
	mov	[esp+4],ebx
	call	_fpeekshortstring
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[_vcpos]
	mov	[esp+4],ebx
	call	_fpeekshort
	imul	eax,6
	mov	ebx,[_vcpos]
	add	ebx,16
	add	ebx,eax
	mov	[_vcpos],ebx
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_19_leave
	sub	esp,4
	mov	eax,_73
	mov	[esp],eax
	call	__bbStrConst
	jmp	_19_leave
_19_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fwriteshortstring
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,12
	mov	ebx,[_vcpos]
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokeshortstring
	mov	ebx,[_vcpos]
	add	ebx,16
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	imul	eax,6
	add	ebx,eax
	mov	[_vcpos],ebx
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vcpos	.dd	0
_21	.db	"Hello. I am stored in a compact way.",0
_22	.db	"",0
_23	.db	"String you would like to store?",0
_24	.db	"3-bit (0-7) integer you would like to store?",0
_25	.db	"5-bit (0-31) integer you would like to store?",0
_26	.db	"6-bit (0-63) integer you would like to store?",0
_27	.db	"",0
_28	.db	"Total size in bits:",0
_29	.db	"Total size in bytes:",0
_30	.db	"",0
_31	.db	"String:",0
_32	.db	"3-bit:",0
_33	.db	"5-bit:",0
_34	.db	"6-bit:",0
_44	.db	"",0
_54	.db	" ",0
_55	.db	".",0
_56	.db	"",0
_61	.db	" ",0
_63	.db	".",0
_73	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
