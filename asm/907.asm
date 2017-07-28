
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
_fsplash
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	sub	esp,20
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	[ebp-48],eax
	sub	esp,8
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_6
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	[ebp-52],eax
	sub	esp,4
	lea	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp],ebx
	mov	[ebp-48],eax
	sub	esp,4
	mov	esi,_7
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-48]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	_fapptitle
	call	_fflushkeys
	call	_fcountgfxmodes3d
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_8
	sub	esp,8
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_8
	mov	[ebp-8],0
	call	_fwindowed3d
	cmp	eax,0
	jnz	_10
	mov	[ebp-8],1
_10
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
	sub	esp,8
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jnz	_12
	sub	esp,8
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-12],eax
_12
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],16
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fsetfont
	mov	[ebp-20],800
	mov	[ebp-24],-160
	mov	[ebp-28],280
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,640
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fstringwidth
	sub	ebx,eax
	mov	[ebp-36],ebx
	mov	ebx,480
	call	_ffontheight
	sub	ebx,eax
	mov	[ebp-40],ebx
_16
	call	_fcls
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,12
	mov	[esp+4],175
	mov	[esp+8],10
	mov	[esp],244
	call	_fcolor
	sub	esp,32
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-44]
	imul	ebx,0
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-44]
	shl	ebx,byte 0
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-44]
	shl	ebx,byte 1
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-44]
	imul	ebx,3
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_ftext
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	cmp	[ebp-8],0
	jnz	_18
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-44]
	imul	ebx,5
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ftext
	jmp	_20
_18
	sub	esp,60
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fgfxmodewidth
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fgfxmodeheight
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fgfxmodedepth
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-44]
	imul	ebx,5
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ftext
_20
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-44]
	imul	ebx,7
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-44]
	shl	ebx,byte 3
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-44]
	imul	ebx,9
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_26
	call	_fend
_26
	sub	esp,4
	mov	[esp],28
	call	_fkeyhit
	and	eax,eax
	jz	_27
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ffreefont
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreeimage
	call	_fendgraphics
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_28
	sub	esp,20
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fgfxmodedepth
	mov	[esp+8],eax
	mov	[esp+12],2
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fgfxmodeheight
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fgfxmodewidth
	mov	[esp],eax
	call	_fgraphics3d
	jmp	_29
_28
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
_29
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,0
	jmp	_3_leave
_27
	sub	esp,4
	mov	[esp],203
	call	_fkeyhit
	and	eax,eax
	jz	_30
	sub	[ebp-8],1
	cmp	[ebp-8],0
	setz	al
	movzx	eax,al
	mov	[ebp-44],eax
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_fwindowed3d
	mov	ebx,eax
	mov	eax,[ebp-48]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	mov	[ebp-44],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	or	ebx,eax
	and	ebx,ebx
	jz	_31
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
_31
	jmp	_32
_30
	sub	esp,4
	mov	[esp],205
	call	_fkeyhit
	and	eax,eax
	jz	_33
	add	[ebp-8],1
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_34
	mov	[ebp-8],0
	call	_fwindowed3d
	cmp	eax,0
	jnz	_35
	mov	[ebp-8],1
_35
_34
_33
_32
	cmp	[ebp-20],320
	jle	_36
	sub	[ebp-20],8
_36
	cmp	[ebp-24],320
	jge	_37
	add	[ebp-24],8
_37
	sub	esp,4
	mov	[esp],1
	call	_fflip
	jmp	_16
_4
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
_5	.db	"Project PLASMA FPS 2004:",0
_6	.db	"Exit Project PLASMA FPS 2004:",0
_7	.db	" ?",0
_9	.db	"Can't find any 3D graphics modes",0
_11	.db	"logo.jpg",0
_13	.db	"../logo.jpg",0
_14	.db	"verdana",0
_15	.db	"www.blitzbasic.com",0
_17	.db	"Project PLASMA FPS 2004:",0
_19	.db	"Windowed",0
_21	.db	",",0
_22	.db	",",0
_23	.db	"[Return] to begin",0
_24	.db	"[Arrows] change mode",0
_25	.db	"[Escape] to exit",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

