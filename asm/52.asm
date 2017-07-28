
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
_fquestion
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,56
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
	call	_ffrontbuffer
	mov	[ebp-4],eax
	mov	[ebp-8],0
	call	_fgraphicsbuffer
	cmp	eax,[ebp-4]
	jz	_6
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],1
_6
	call	_fcolorred
	mov	[ebp-12],eax
	call	_fcolorgreen
	mov	[ebp-16],eax
	call	_fcolorblue
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],-1
	mov	[esp+4],-1
	call	_fgetcolor
	call	_fcolorred
	mov	[ebp-24],eax
	call	_fcolorgreen
	mov	[ebp-28],eax
	call	_fcolorblue
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	esi,[ebp-32]
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	lea	eax,[ebp+40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-36],eax
	sub	esp,20
	call	_ffontheight
	mov	[esp+12],eax
	mov	[esp+16],1
	mov	[ebp-52],eax
	mov	eax,ebx
	call	_ffontwidth
	mov	ebx,eax
	mov	eax,[ebp-52]
	imul	ebx,[ebp-36]
	mov	[esp+8],ebx
	mov	esi,[ebp+36]
	mov	[esp+4],esi
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp+40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp+36]
	mov	[esp+4],ebx
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_ftext
	mov	[ebp-40],0
	sub	esp,8
	lea	eax,[ebp-44]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrStore
	cmp	[ebp+52],0
	setz	al
	movzx	eax,al
	mov	[ebp-52],eax
	cmp	[ebp+60],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	mov	[ebp-52],eax
	cmp	[ebp+56],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	mov	[ebp-52],eax
	cmp	[ebp+64],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	mov	[ebp-52],eax
	cmp	[ebp+68],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	and	eax,eax
	jz	_8
	mov	ebx,[ebp+20]
	mov	[ebp+52],ebx
	mov	ebx,[ebp+24]
	mov	[ebp+56],ebx
	mov	ebx,[ebp+28]
	mov	[ebp+60],ebx
	mov	ebx,[ebp+36]
	mov	[ebp+68],ebx
	call	_ffontwidth
	mov	[ebp-52],eax
	sub	esp,4
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp+40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-52]
	imul	eax,ebx
	add	eax,[ebp+32]
	mov	[ebp+64],eax
_8
	sub	esp,12
	mov	ebx,[ebp+56]
	mov	[esp+4],ebx
	mov	esi,[ebp+60]
	mov	[esp+8],esi
	mov	eax,[ebp+52]
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-36],eax
	jmp	_10
_9
	jmp	_12
_11
	call	_fgetkey
	mov	[ebp-40],eax
_12
	cmp	[ebp-40],0
	jz	_11
_5
	sub	esp,8
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-36],eax
	sub	esp,4
	mov	[esp],14
	call	_fkeyhit
	and	eax,eax
	jz	_13
	cmp	[ebp-36],0
	jle	_14
	sub	esp,20
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-36]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	esi,[ebp-32]
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	call	_ffontheight
	mov	[esp+12],eax
	mov	[esp+16],1
	mov	[ebp-52],eax
	mov	eax,ebx
	call	_ffontwidth
	mov	ebx,eax
	mov	eax,[ebp-52]
	imul	ebx,[ebp-36]
	mov	[esp+8],ebx
	mov	esi,[ebp+68]
	mov	[esp+4],esi
	mov	eax,[ebp+64]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	ebx,[ebp+56]
	mov	[esp+4],ebx
	mov	esi,[ebp+60]
	mov	[esp+8],esi
	mov	eax,[ebp+52]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp+68]
	mov	[esp+4],ebx
	mov	eax,[ebp+64]
	mov	[esp],eax
	call	_ftext
_14
	sub	esp,4
	mov	[esp],50
	call	_fdelay
	call	_fflushkeys
	sub	esp,4
	mov	[esp],50
	call	_fdelay
_13
	cmp	[ebp-40],32
	setge	al
	movzx	eax,al
	mov	[ebp-52],eax
	cmp	[ebp-40],126
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	mov	[ebp-52],eax
	mov	ebx,[ebp+48]
	cmp	[ebp-36],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	cmp	[ebp+48],0
	mov	eax,esi
	setz	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-52]
	or	ebx,esi
	and	eax,ebx
	and	eax,eax
	jz	_15
	sub	esp,20
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,4
	mov	[esp],10
	call	_fdelay
	cmp	[ebp-48],1
	jnz	_16
	sub	esp,20
	call	_ffontwidth
	mov	[ebp-52],eax
	sub	esp,4
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp+40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-52]
	imul	eax,ebx
	add	eax,[ebp+32]
	mov	[esp],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[ebp-52],eax
	sub	esp,4
	lea	esi,[ebp-44]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	[esp+8],esi
	mov	ebx,[ebp+36]
	mov	[esp+4],ebx
	call	_ftext
	jmp	_17
_16
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp+68]
	mov	[esp+4],ebx
	mov	eax,[ebp+64]
	mov	[esp],eax
	call	_ftext
_17
_15
	mov	[ebp-40],0
_10
	sub	esp,4
	mov	[esp],28
	call	_fkeyhit
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-52],eax
	mov	ebx,[ebp+44]
	cmp	[ebp-36],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	or	eax,ebx
	and	eax,eax
	jnz	_9
_4
	sub	esp,4
	mov	[esp],10
	call	_fdelay
	call	_fflushkeys
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcolor
	cmp	[ebp-8],1
	jnz	_18
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
_18
	sub	esp,4
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
	sub	esp,4
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp+40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-44]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 52
_7	.db	"",0
_19	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

