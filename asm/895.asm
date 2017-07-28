
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fapptitle
	call	_fnameneingeben
	call	_fmainloop
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fnameneingeben
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	[esp+4],18
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,44
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+24],eax
	mov	[esp+28],85
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+20],ebx
	mov	[esp+16],0
	mov	[esp+12],22
	mov	[esp+8],240
	mov	[esp+4],10
	mov	[esp],10
	call	_fasyninputnew
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,44
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+24],eax
	mov	[esp+28],85
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+20],ebx
	mov	[esp+16],13
	mov	[esp+12],22
	mov	[esp+8],240
	mov	[esp+4],34
	mov	[esp],10
	call	_fasyninputnew
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,44
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+24],eax
	mov	[esp+28],85
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+20],ebx
	mov	[esp+16],13
	mov	[esp+12],22
	mov	[esp+8],240
	mov	[esp+4],58
	mov	[esp],10
	call	_fasyninputnew
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fasyninputsettransparent
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fasyninputsetborder
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fasyninputsetfocus
	call	_fflushkeys
	jmp	_32
_31
	call	_fcls
	call	_fmousex
	mov	[ebp-20],eax
	call	_fmousey
	mov	[ebp-24],eax
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	mov	[ebp-28],eax
	call	_fgetkey
	mov	[ebp-32],eax
	sub	esp,20
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,20
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],4
	call	_fleft
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_34
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_33
	sub	esp,28
	mov	[esp],1073741824
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,20
	mov	[esp],eax
	call	__bbStrStore
_33
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	esi,[ebp-32]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fasyninputshow
	sub	esp,4
	mov	[esp],1
	call	_fflip
_32
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_31
_4
	call	_fasyninputnofocus
	sub	esp,8
	mov	[esp],_vspieler1
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	[esp],_vspieler2
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
	call	_fasyninputfreeall
	call	_fflushkeys
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ffreefont
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmainloop
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	jmp	_37
_36
	call	_fcls
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_vspieler1
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],10
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_vspieler2
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+4],30
	mov	[esp],10
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_37
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_36
_6
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
_fasyninputshow
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vasyninput]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tasyninputtype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_38
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,52
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_39
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,68
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_40
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_41
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,40
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	[esp],0
	call	_fcolor
	jmp	_42
_41
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],128
	mov	[esp],128
	call	_fcolor
_42
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,56
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_43
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
_43
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_frect
_40
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,64
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_44
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_45
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,36
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	[esp],0
	call	_fcolor
	jmp	_46
_45
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],128
	mov	[esp],128
	call	_fcolor
_46
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,68
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_47
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_frect
	jmp	_48
_47
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	sub	ebx,2
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	sub	esi,2
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	add	eax,1
	mov	[esp],eax
	call	_frect
_48
_44
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,56
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_49
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	add	ebx,esi
	add	ebx,3
	sub	esp,16
	mov	[esp+4],1
	mov	edi,[ebp-4]
	mov	edi,[edi]
	add	edi,72
	mov	edi,[edi]
	mov	[esp+8],edi
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,60
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fstringwidth
	add	ebx,eax
	mov	[ebp-8],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	sub	ebx,2
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frect
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	_fasyninputkeypress
_49
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_50
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,44
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	[esp],0
	call	_fcolor
	jmp	_51
_50
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],128
	mov	[esp],128
	call	_fcolor
_51
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	sar	esi,byte 1
	add	ebx,esi
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+12],0
	mov	[esp+16],1
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	add	eax,3
	mov	[esp],eax
	call	_ftext
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_52
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,32
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	[esp],0
	call	_fcolor
	jmp	_53
_52
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],128
	mov	[esp],128
	call	_fcolor
_53
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,56
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_54
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	sar	esi,byte 1
	add	ebx,esi
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+12],0
	mov	[esp+16],1
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	add	eax,esi
	add	eax,3
	mov	[esp],eax
	call	_ftext
	jmp	_55
_54
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	sar	esi,byte 1
	add	ebx,esi
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+12],0
	mov	[esp+16],1
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,60
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	add	eax,esi
	add	eax,3
	mov	[esp],eax
	call	_ftext
_55
	cmp	[ebp+28],1
	jnz	_56
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	add	eax,ebx
	sub	eax,1
	cmp	[ebp+20],eax
	setle	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	[ebp+20],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	ebx,eax
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	eax,esi
	sub	eax,1
	cmp	[ebp+24],eax
	setle	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	cmp	[ebp+24],esi
	mov	eax,esi
	setge	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-12]
	and	esi,eax
	and	ebx,esi
	and	ebx,ebx
	jz	_57
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,56
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_58
	call	_fasyninputnofocus
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fasyninputsetfocus
_58
	jmp	_59
_57
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,56
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,60
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
_59
_56
_39
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_38
_8
	mov	eax,0
	jmp	_7_leave
_7_leave
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
	ret	word 16
	.align	16
_fasyninputkeypress
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	sub	esp,4
	mov	[esp],28
	call	_fkeydown
	and	eax,eax
	jz	_60
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,20
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,60
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,0
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,56
	mov	[esi],ebx
	mov	eax,0
	jmp	_9_leave
_60
	cmp	[ebp+24],32
	setge	al
	movzx	eax,al
	mov	[ebp-4],eax
	cmp	[ebp+24],255
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	mov	[ebp-4],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,60
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_61
	sub	esp,36
	mov	[esp+4],1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,72
	mov	esi,[esi]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,60
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,12
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,72
	mov	ebx,[ebx]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],-1
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,60
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	[esp+4],esi
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,60
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,72
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,72
	mov	[esi],ebx
	mov	eax,0
	jmp	_9_leave
_61
	call	_fmillisecs
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,76
	mov	ebx,[ebx]
	sub	eax,ebx
	cmp	eax,150
	jle	_62
	sub	esp,4
	mov	[esp],211
	call	_fkeydown
	cmp	eax,1
	jnz	_63
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,60
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,0
	jle	_64
	sub	esp,28
	mov	[esp+4],1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,72
	mov	esi,[esi]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,60
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,12
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,72
	mov	ebx,[ebx]
	add	ebx,2
	mov	[esp+4],ebx
	mov	[esp+8],-1
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,60
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	[esp+4],esi
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,60
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	call	_fmillisecs
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,76
	mov	[ebx],eax
_64
_63
	sub	esp,4
	mov	[esp],14
	call	_fkeydown
	cmp	eax,1
	jnz	_65
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,60
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,0
	setg	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,72
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_66
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,72
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,72
	mov	[esi],ebx
	sub	esp,28
	mov	[esp+4],1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,72
	mov	esi,[esi]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,60
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,12
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,72
	mov	ebx,[ebx]
	add	ebx,2
	mov	[esp+4],ebx
	mov	[esp+8],-1
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,60
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	[esp+4],esi
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,60
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	call	_fmillisecs
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,76
	mov	[ebx],eax
_66
_65
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	cmp	eax,1
	jnz	_67
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,72
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_68
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,72
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,72
	mov	[esi],ebx
	call	_fmillisecs
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,76
	mov	[ebx],eax
_68
_67
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	cmp	eax,1
	jnz	_69
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,72
	mov	ebx,[ebx]
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,60
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	ebx,eax
	jge	_70
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,72
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,72
	mov	[esi],ebx
	call	_fmillisecs
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,76
	mov	[ebx],eax
_70
_69
_62
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fasyninputnew
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	[esp],_vasyninput
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_tasyninputtype
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[_vasyninput]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[_vasyninput]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[_vasyninput]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[_vasyninput]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[_vasyninput]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vasyninput]
	mov	eax,[eax]
	add	eax,20
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[_vasyninput]
	mov	eax,[eax]
	add	eax,24
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp+48]
	mov	esi,[_vasyninput]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_frgb
	mov	ebx,[_vasyninput]
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	sub	esp,12
	mov	[esp+4],64
	mov	[esp+8],64
	mov	[esp],64
	call	_frgb
	mov	ebx,[_vasyninput]
	mov	ebx,[ebx]
	add	ebx,36
	mov	[ebx],eax
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],128
	mov	[esp],128
	call	_frgb
	mov	ebx,[_vasyninput]
	mov	ebx,[ebx]
	add	ebx,40
	mov	[ebx],eax
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_frgb
	mov	ebx,[_vasyninput]
	mov	ebx,[ebx]
	add	ebx,44
	mov	[ebx],eax
	mov	ebx,1
	mov	esi,[_vasyninput]
	mov	esi,[esi]
	add	esi,48
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,[_vasyninput]
	mov	esi,[esi]
	add	esi,52
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vasyninput]
	mov	esi,[esi]
	add	esi,56
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vasyninput]
	mov	eax,[eax]
	add	eax,60
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_71
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,0
	mov	esi,[_vasyninput]
	mov	esi,[esi]
	add	esi,64
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,[_vasyninput]
	mov	esi,[esi]
	add	esi,68
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vasyninput]
	mov	esi,[esi]
	add	esi,76
	mov	[esi],ebx
	mov	eax,[_vasyninput]
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[ebp-4],eax
	sub	esp,4
	mov	esi,[ebp+44]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	16
_fasyninputfreeall
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[esp],_vasyninput
	mov	[esp+4],_tasyninputtype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_12
_72
	sub	esp,4
	mov	eax,[_vasyninput]
	mov	[esp],eax
	call	_fasyninputfree
	sub	esp,4
	mov	eax,_vasyninput
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_72
_12
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fasyninputfree
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	__bbObjDelete
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fasyninputsetborder
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+24],0
	jnz	_73
	mov	ebx,0
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,68
	mov	[esi],ebx
	jmp	_74
_73
	mov	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,68
	mov	[esi],ebx
_74
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fasyninputsettransparent
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+24],0
	jnz	_75
	mov	ebx,0
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,64
	mov	[esi],ebx
	jmp	_76
_75
	mov	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,64
	mov	[esi],ebx
_76
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fasyninputsetfocus
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	call	_fasyninputnofocus
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,56
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,52
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	mov	[ebp-4],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	mov	[ebp-4],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_77
	mov	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,56
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,60
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,60
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,72
	mov	[ebx],eax
	call	_fmillisecs
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,76
	mov	[ebx],eax
	mov	eax,1
	jmp	_16_leave
	jmp	_78
_77
	mov	eax,0
	jmp	_16_leave
_78
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fasyninputnofocus
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	[esp],_vasyninput
	mov	[esp+4],_tasyninputtype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_18
_79
	mov	ebx,[_vasyninput]
	mov	ebx,[ebx]
	add	ebx,56
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_80
	mov	ebx,0
	mov	esi,[_vasyninput]
	mov	esi,[esi]
	add	esi,56
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vasyninput]
	mov	eax,[eax]
	add	eax,20
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[_vasyninput]
	mov	ebx,[ebx]
	add	ebx,60
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
_80
	sub	esp,4
	mov	eax,_vasyninput
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_79
_18
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_frgb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	shl	eax,byte 16
	mov	ebx,[ebp+24]
	shl	ebx,byte 8
	or	eax,ebx
	mov	ebx,[ebp+28]
	or	eax,ebx
	jmp	_19_leave
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
_20	.db	" AsynInput from M.Rauch",0
_21	.db	"",0
	.align	4
_vasyninput	.dd	0
	.align	4
_vspieler1	.dd	0
	.align	4
_vspieler2	.dd	0
	.align	4
_tasyninputtype	.dd	5
_22	.dd	0
	.dd	_22
	.dd	_22
	.dd	0
	.dd	-1
_23	.dd	0
	.dd	_23
	.dd	_23
	.dd	0
	.dd	-1
	.dd	20
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbStrType
	.dd	__bbStrType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbStrType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
_24	.db	"Tahoma",0
_25	.db	"",0
_26	.db	"Fertig mit ESC",0
_27	.db	"Herbert",0
_28	.db	"Spieler 1:",0
_29	.db	"Name 2",0
_30	.db	"Spieler 2:",0
_34	.db	"Name",0
_35	.db	"Name ",0
_71	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

