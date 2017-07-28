
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],5
	call	_fcreatebank
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-8],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagetobank
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fbanktoimage
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeimage
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
_fimagetobank
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
	call	_fgraphicsbuffer
	mov	[ebp-4],eax
	mov	[ebp-8],0
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fimagewidth
	cmp	eax,1
	setl	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fimageheight
	mov	ebx,eax
	mov	eax,[ebp-36]
	cmp	ebx,1
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	or	eax,ebx
	and	eax,eax
	jz	_10
	mov	[ebp-8],1
	jmp	_l_3endbuffertobank
_10
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fimageheight
	mov	ebx,eax
	mov	eax,[ebp-32]
	imul	eax,ebx
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,9
	mov	[esp+4],ebx
	call	_fresizebank
	sub	esp,12
	mov	[esp+4],0
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fimagewidth
	mov	[esp+8],eax
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],4
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fimageheight
	mov	[esp+8],eax
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokeint
	mov	[ebp-16],0
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_11
	mov	ebx,[ebp-16]
	mov	esi,1
	or	ebx,esi
	mov	[ebp-16],ebx
_11
	sub	esp,12
	mov	[esp+4],8
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokebyte
	mov	[ebp-20],9
	sub	esp,12
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-24],0
	jmp	_12
_13
	mov	[ebp-28],0
	jmp	_14
_15
	sub	esp,24
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[esp+8],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokeint
	add	[ebp-20],4
	add	[ebp-28],1
_14
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	cmp	[ebp-28],eax
	jle	_15
_5
	add	[ebp-24],1
_12
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	cmp	[ebp-24],eax
	jle	_13
_4
	sub	esp,12
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetbuffer
_l_3endbuffertobank
	mov	eax,[ebp-8]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fbanktoimage
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
	mov	[ebp-36],ebx
	call	_fgraphicsbuffer
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekint
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],4
	call	_fpeekint
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],5
	call	_fpeekbyte
	mov	[ebp-16],eax
	mov	ebx,[ebp-8]
	imul	ebx,[ebp-12]
	mov	[ebp-20],ebx
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-24],eax
	mov	[ebp-28],9
	sub	esp,12
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-32],0
	jmp	_16
_17
	mov	[ebp-36],0
	jmp	_18
_19
	sub	esp,24
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-28],4
	add	[ebp-36],1
_18
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	cmp	[ebp-36],eax
	jle	_19
_8
	add	[ebp-32],1
_16
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	cmp	[ebp-32],eax
	jle	_17
_7
	sub	esp,12
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,[ebp-24]
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_9	.db	"testin.png",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

