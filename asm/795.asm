
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,56
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_10
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	[esp],0
	call	_ftformfilter
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[_vimg],eax
	sub	esp,4
	mov	eax,[_vimg]
	mov	[esp],eax
	call	_fcopyimage
	mov	[_vimgbk],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vimg]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadpixel
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[ebp-24],ebx
	mov	ebx,[ebp-12]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[ebp-28],ebx
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-32],ebx
	mov	[ebp-36],100
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],0
	mov	[esp],200
	call	_fclscolor
	jmp	_13
_12
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_14
	cmp	[ebp-40],0
	jnz	_15
	call	_fmousex
	mov	[ebp-44],eax
	mov	[ebp-40],1
_15
	call	_fmousey
	mov	[ebp-48],eax
	cmp	[ebp-48],100
	setge	al
	movzx	eax,al
	mov	[ebp-56],eax
	cmp	[ebp-48],366
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-56]
	and	eax,ebx
	and	eax,eax
	jz	_16
	sub	esp,8
	mov	[esp],255
	mov	ebx,[ebp-48]
	sub	ebx,100
	mov	[esp+4],ebx
	call	_fmin
	mov	[ebp-52],eax
	cmp	[ebp-44],0
	setge	al
	movzx	eax,al
	mov	[ebp-56],eax
	cmp	[ebp-44],10
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-56]
	and	eax,ebx
	and	eax,eax
	jz	_17
	mov	ebx,[ebp-52]
	mov	[ebp-24],ebx
_17
	cmp	[ebp-44],10
	setge	al
	movzx	eax,al
	mov	[ebp-56],eax
	cmp	[ebp-44],20
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-56]
	and	eax,ebx
	and	eax,eax
	jz	_18
	mov	ebx,[ebp-52]
	mov	[ebp-28],ebx
_18
	cmp	[ebp-44],20
	setge	al
	movzx	eax,al
	mov	[ebp-56],eax
	cmp	[ebp-44],30
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-56]
	and	eax,ebx
	and	eax,eax
	jz	_19
	mov	ebx,[ebp-52]
	mov	[ebp-32],ebx
_19
	cmp	[ebp-44],30
	setge	al
	movzx	eax,al
	mov	[ebp-56],eax
	cmp	[ebp-44],40
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-56]
	and	eax,ebx
	and	eax,eax
	jz	_20
	mov	ebx,[ebp-52]
	mov	[ebp-36],ebx
_20
_16
	sub	esp,16
	mov	ebx,[ebp-32]
	mov	[esp+8],ebx
	mov	esi,[ebp-36]
	mov	[esp+12],esi
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmask
	jmp	_21
_14
	mov	[ebp-40],0
_21
	call	_fcls
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],100
	mov	eax,[_vimg]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,16
	mov	ebx,[ebp-32]
	mov	[esp+8],ebx
	mov	esi,[ebp-36]
	mov	[esp+12],esi
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fsliders
	sub	esp,4
	mov	[esp],1
	call	_fflip
_13
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_12
_3
	sub	esp,16
	mov	eax,[_vimg]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_fsavebuffer
	call	_fend
	ret
_2_leave
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmask
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	esp,40
	mov	eax,[_vimgbk]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+24],eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	ebx,[_vimg]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fimagebuffer
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+28],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	[esp+12],512
	mov	[esp+8],512
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	sub	esp,12
	mov	eax,[_vimg]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	[ebp-4],0
	jmp	_22
_23
	mov	[ebp-8],0
	jmp	_24
_25
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-24],ebx
	mov	eax,[ebp+20]
	sub	eax,[ebp+32]
	cmp	[ebp-16],eax
	setg	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp+20]
	add	ebx,[ebp+32]
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	mov	[ebp-28],eax
	mov	ebx,[ebp+24]
	sub	ebx,[ebp+32]
	cmp	[ebp-20],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	cmp	[ebp-20],esi
	mov	eax,esi
	setl	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-28]
	and	ebx,esi
	and	eax,ebx
	mov	[ebp-28],eax
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+32]
	cmp	[ebp-24],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	mov	esi,[ebp+28]
	add	esi,[ebp+32]
	cmp	[ebp-24],esi
	mov	eax,esi
	setl	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-28]
	and	ebx,esi
	and	eax,ebx
	and	eax,eax
	jz	_26
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_27
_26
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
_27
	add	[ebp-8],1
_24
	sub	esp,4
	mov	eax,[_vimg]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	cmp	[ebp-8],eax
	jle	_25
_6
	add	[ebp-4],1
_22
	sub	esp,4
	mov	eax,[_vimg]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	cmp	[ebp-4],eax
	jle	_23
_5
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fmin
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	cmp	[ebp+20],ebx
	jle	_28
	mov	eax,[ebp+24]
	jmp	_7_leave
	jmp	_29
_28
	mov	eax,[ebp+20]
	jmp	_7_leave
_29
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fmax
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	cmp	[ebp+20],ebx
	jge	_30
	mov	eax,[ebp+24]
	jmp	_8_leave
	jmp	_31
_30
	mov	eax,[ebp+20]
	jmp	_8_leave
_31
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fsliders
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],266
	mov	[esp+16],0
	mov	[esp+8],9
	mov	[esp+4],100
	mov	[esp],0
	call	_frect
	sub	esp,20
	mov	[esp+12],9
	mov	[esp+16],1
	mov	[esp+8],9
	mov	ebx,100
	add	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,32
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],266
	mov	[esp+16],0
	mov	[esp+8],9
	mov	[esp+4],100
	mov	[esp],10
	call	_frect
	sub	esp,20
	mov	[esp+12],9
	mov	[esp+16],1
	mov	[esp+8],9
	mov	ebx,100
	add	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp],10
	call	_frect
	sub	esp,32
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],16
	mov	[esp],10
	call	_ftext
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],266
	mov	[esp+16],0
	mov	[esp+8],9
	mov	[esp+4],100
	mov	[esp],20
	call	_frect
	sub	esp,20
	mov	[esp+12],9
	mov	[esp+16],1
	mov	[esp+8],9
	mov	ebx,100
	add	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	[esp],20
	call	_frect
	sub	esp,32
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],32
	mov	[esp],20
	call	_ftext
	sub	esp,12
	mov	[esp+4],127
	mov	[esp+8],127
	mov	[esp],127
	call	_fcolor
	sub	esp,20
	mov	[esp+12],266
	mov	[esp+16],0
	mov	[esp+8],9
	mov	[esp+4],100
	mov	[esp],30
	call	_frect
	sub	esp,20
	mov	[esp+12],9
	mov	[esp+16],1
	mov	[esp+8],9
	mov	ebx,100
	add	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	[esp],30
	call	_frect
	sub	esp,32
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],48
	mov	[esp],30
	call	_ftext
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
_10	.db	"ast1.bmp",0
_11	.db	"ast1b.bmp",0
	.align	4
_vimg	.dd	0
	.align	4
_vimgbk	.dd	0
_32	.db	"Red ",0
_33	.db	"Green ",0
_34	.db	"Blue ",0
_35	.db	"Tolerance ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
