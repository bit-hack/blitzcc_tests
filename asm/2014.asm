
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,76
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
	sub	esp,12
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,16
	call	_fcurrentdir
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_vdir
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_vdir
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,20
	mov	eax,_vdir
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_vdirsave
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_vdir
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freaddir
	mov	[ebp-4],eax
_10
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnextfile
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_11
	jmp	_3
_11
	sub	esp,24
	mov	eax,_vdir
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,2
	jnz	_13
	jmp	_l_2nofile
_13
	call	_l_2makemap
_l_2nofile
	jmp	_10
_3
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosedir
	call	_fend
_l_2makemap
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	eax,4
	mov	[_vmaplength],eax
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[_vmaplength]
	mov	[esp+4],ebx
	call	_flset
	mov	[esp+4],eax
	mov	[esp],_vmap2
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[_vheightmap],eax
	sub	esp,4
	mov	eax,[_vheightmap]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	mov	[_vimg_w],eax
	sub	esp,4
	mov	eax,[_vheightmap]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	mov	[_vimg_h],eax
	sub	esp,12
	mov	ebx,[_vimg_h]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vimg_w]
	add	eax,1
	mov	[esp],eax
	call	_fcreateimage
	mov	[_vlightmap],eax
	sub	esp,12
	mov	eax,[_vheightmap]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,12
	mov	eax,[_vlightmap]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-12],0
	jmp	_15
_16
	cmp	[ebp-12],0
	jle	_17
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	[ebp-16],ebx
	jmp	_18
_17
	mov	[ebp-16],0
_18
	mov	ebx,[_vimg_h]
	cmp	[ebp-12],ebx
	jge	_19
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[ebp-20],ebx
	jmp	_20
_19
	mov	ebx,[_vimg_h]
	mov	[ebp-20],ebx
_20
	mov	[ebp-24],0
	jmp	_21
_22
	cmp	[ebp-24],0
	jle	_23
	mov	ebx,[ebp-24]
	sub	ebx,1
	mov	[ebp-28],ebx
	jmp	_24
_23
	mov	[ebp-28],0
_24
	mov	ebx,[_vimg_w]
	cmp	[ebp-24],ebx
	jge	_25
	mov	ebx,[ebp-24]
	add	ebx,1
	mov	[ebp-32],ebx
	jmp	_26
_25
	mov	ebx,[_vimg_w]
	mov	[ebp-32],ebx
_26
	sub	esp,20
	mov	eax,[_vheightmap]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,255
	and	eax,ebx
	mov	[ebp-36],eax
	sub	esp,20
	mov	eax,[_vheightmap]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,255
	and	eax,ebx
	mov	[ebp-40],eax
	sub	esp,20
	mov	eax,[_vheightmap]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,255
	and	eax,ebx
	mov	[ebp-44],eax
	sub	esp,20
	mov	eax,[_vheightmap]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,255
	and	eax,ebx
	mov	[ebp-48],eax
	mov	ebx,[ebp-48]
	sub	ebx,[ebp-44]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-36]
	sub	ebx,[ebp-40]
	mov	[ebp-56],ebx
	mov	ebx,[ebp-52]
	add	ebx,255
	sar	ebx,byte 1
	mov	[ebp-60],ebx
	mov	ebx,[ebp-56]
	add	ebx,255
	sar	ebx,byte 1
	mov	[ebp-64],ebx
	mov	[ebp-68],255
	mov	ebx,[ebp-60]
	shl	ebx,byte 16
	mov	esi,[ebp-64]
	shl	esi,byte 8
	add	ebx,esi
	add	ebx,[ebp-68]
	mov	[ebp-72],ebx
	sub	esp,24
	mov	eax,[_vlightmap]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+12],eax
	mov	ebx,[ebp-72]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-24],1
_21
	mov	ebx,[_vimg_w]
	cmp	[ebp-24],ebx
	jle	_22
_5
	add	[ebp-12],1
_15
	mov	ebx,[_vimg_h]
	cmp	[ebp-12],ebx
	jle	_16
_4
	sub	esp,12
	mov	eax,[_vlightmap]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,12
	mov	eax,[_vheightmap]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,8
	mov	eax,_vdirsave
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fchangedir
	sub	esp,24
	mov	eax,_vmap2
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[_vlightmap]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsaveimage
	mov	ebx,eax
	sub	esp,8
	mov	eax,_vdir
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fchangedir
	sub	esp,4
	mov	eax,[_vheightmap]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,4
	mov	eax,[_vlightmap]
	mov	[esp],eax
	call	_ffreeimage
	ret
	ret
_2_leave
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_6	.db	"BATCH HEIGHTMAP TO NORMAL MAP CODE",0
_7	.db	"",0
	.align	4
_vdir	.dd	0
_8	.db	"Bmp\",0
	.align	4
_vdirsave	.dd	0
_9	.db	"\Normals",0
_12	.db	"",0
_14	.db	"\",0
	.align	4
_vmaplength	.dd	0
	.align	4
_vmap2	.dd	0
	.align	4
_vheightmap	.dd	0
	.align	4
_vimg_w	.dd	0
	.align	4
_vimg_h	.dd	0
	.align	4
_vlightmap	.dd	0
_27	.db	"_N.bmp",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

