
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
	mov	[ebp-20],ebx
	sub	esp,12
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+8],ebx
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
	call	_fopenpop
	mov	ebx,eax
	mov	[ebp-16],ebx
	mov	ebx,[ebp-16]
	and	ebx,ebx
	jz	_24
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fgetemaillist
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_freadallemails
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fclosepop
	jmp	_25
_24
	mov	ebx,[_vpop3_fail]
	mov	[ebp-20],ebx
	cmp	[ebp-20],1
	jz	_27
	cmp	[ebp-20],2
	jz	_28
	cmp	[ebp-20],3
	jz	_29
	jmp	_26
_27
	sub	esp,8
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_26
_28
	sub	esp,8
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_26
_29
	sub	esp,8
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_26
_26
_25
	sub	esp,8
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fmousewait
	call	_fend
	ret
_2_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fopenpop
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,12
	mov	[esp+4],110
	mov	[esp+8],0
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopentcpstream
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_38
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fok
	and	eax,eax
	jz	_39
	sub	esp,20
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
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
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fok
	and	eax,eax
	jz	_41
	sub	esp,20
	mov	eax,_42
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fok
	and	eax,eax
	jz	_43
	mov	[_vpop3_fail],0
	mov	eax,[ebp-4]
	jmp	_4_leave
	jmp	_44
_43
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fclosepop
	mov	[_vpop3_fail],3
	mov	eax,0
	jmp	_4_leave
_44
	jmp	_45
_41
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fclosepop
	mov	[_vpop3_fail],2
	mov	eax,0
	jmp	_4_leave
_45
_39
	jmp	_46
_38
	mov	[_vpop3_fail],1
	mov	eax,0
	jmp	_4_leave
_46
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+28]
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
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp+24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
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
	ret	word 12
	.align	16
_fclosepop
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	and	ebx,ebx
	jz	_47
	cmp	[ebp+24],0
	jnz	_48
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadline
	mov	[esp],eax
	call	__bbStrRelease
_48
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_50
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fclosetcpstream
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fok
	cmp	eax,0
	jnz	_51
	mov	eax,0
	jmp	_5_leave
_51
	mov	eax,1
	jmp	_5_leave
_47
	mov	eax,0
	jmp	_5_leave
_5_leave
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
	ret	word 8
	.align	16
_fgetemaillist
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
	mov	ebx,[ebp+20]
	and	ebx,ebx
	jz	_52
	sub	esp,4
	mov	eax,_temail
	mov	[esp],eax
	call	__bbObjDeleteEach
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_53
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fok
	and	eax,eax
	jz	_54
_55
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_57
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_56
	jmp	_7
_56
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_temail
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,28
	mov	eax,_58
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-8]
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
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fleft
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	jmp	_55
_7
_54
_52
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-4]
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
	.align	16
_freadmessage
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
	mov	ebx,[ebp+20]
	and	ebx,ebx
	jz	_59
	sub	esp,20
	mov	eax,_60
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fok
	and	eax,eax
	jz	_61
	sub	esp,8
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_63
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	mov	eax,_64
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
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
	call	_finstr
	mov	ebx,eax
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	and	ebx,ebx
	jz	_65
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_68
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_67
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_70
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_69
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_72
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_71
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_74
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_73
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_76
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_75
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_78
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_77
	jmp	_66
_67
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	jmp	_66
_69
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	jmp	_66
_71
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	jmp	_66
_73
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	jmp	_66
_75
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	jmp	_66
_77
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	jmp	_66
_66
_65
	sub	esp,12
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_79
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_63
_9
	sub	esp,8
	mov	eax,_80
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_81
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_82
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_84
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_83
	jmp	_11
_83
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_86
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_85
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_87
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
_85
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_88
	jmp	_11
_88
	jmp	_82
_11
	sub	esp,8
	mov	eax,_89
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_61
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_90
	sub	esp,20
	mov	eax,_91
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
_90
_59
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_freadallemails
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	and	ebx,ebx
	jz	_92
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_temail
	call	__bbObjEachFirst
	and	eax,eax
	jz	_13
_93
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadmessage
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_93
_13
_92
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fok
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],3
	call	_fleft
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_95
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_94
	mov	eax,1
	jmp	_14_leave
_94
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
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
	ret	word 4
	.align	16
_fgetstat
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	ebx,[ebp+20]
	and	ebx,ebx
	jz	_96
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_97
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadline
	jmp	_15_leave
_96
	sub	esp,4
	mov	eax,_98
	mov	[esp],eax
	call	__bbStrConst
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vpop3_fail	.dd	0
_16	.db	"POP3 Test...",0
_17	.db	"",0
_18	.db	"your_pop3_server",0
_19	.db	"your_pop3_username",0
_20	.db	"your_password",0
_21	.db	"",0
_22	.db	"Connecting to POP3 server...",0
_23	.db	"",0
_30	.db	"Cannot find server!",0
_31	.db	"Username doesn't exist!",0
_32	.db	"Incorrect username or password!",0
_33	.db	"",0
_34	.db	"Click mouse to exit...",0
_35	.db	"",0
	.align	4
_temail	.dd	5
_36	.dd	0
	.dd	_36
	.dd	_36
	.dd	0
	.dd	-1
_37	.dd	0
	.dd	_37
	.dd	_37
	.dd	0
	.dd	-1
	.dd	1
	.dd	__bbIntType
_40	.db	"USER ",0
_42	.db	"PASS ",0
_49	.db	"RSET",0
_50	.db	"QUIT",0
_53	.db	"LIST",0
_57	.db	".",0
_58	.db	" ",0
_60	.db	"RETR ",0
_62	.db	"----------------------------------------------------------------------------",0
_64	.db	": ",0
_68	.db	"From",0
_70	.db	"To",0
_72	.db	"Subject",0
_74	.db	"X-Mailer",0
_76	.db	"Date",0
_78	.db	"Message-ID",0
_79	.db	"",0
_80	.db	"----------------------------------------------------------------------------",0
_81	.db	"",0
_84	.db	".",0
_86	.db	"..",0
_87	.db	".",0
_89	.db	"",0
_91	.db	"DELE ",0
_95	.db	"+OK",0
_97	.db	"STAT",0
_98	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
