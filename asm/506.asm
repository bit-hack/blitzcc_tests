
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],1
	mov	[esp],1
	call	_fclearworld
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
_l_2go
	call	_fcls
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_6
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	call	_fcurrentdir
	mov	[esp],eax
	call	_freaddir
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_flocate
	jmp	_8
_7
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnextfile
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,3
	jle	_9
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],2
	call	_fright
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	[ebp-40],eax
	sub	esp,8
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	[esp+4],2
	mov	eax,ebx
	call	_fright
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	[ebp-40],eax
	sub	esp,4
	mov	esi,_12
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-40]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-36]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	or	eax,ebx
	and	eax,eax
	jz	_10
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-32]
	sub	ebx,2
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
_10
_9
_8
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jg	_7
_3
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],700
	call	_flocate
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	call	_fcls
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	call	_fcurrentdir
	mov	[esp],eax
	call	_freaddir
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_flocate
	jmp	_17
_16
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnextfile
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,4
	jle	_18
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],4
	call	_fright
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	[ebp-40],eax
	sub	esp,8
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	[esp+4],4
	mov	eax,ebx
	call	_fright
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	[ebp-40],eax
	sub	esp,4
	mov	esi,_21
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-40]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-36]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	or	eax,ebx
	and	eax,eax
	jz	_19
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-32]
	sub	ebx,4
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
_19
_18
_17
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jg	_16
_4
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],720
	call	_flocate
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	call	_fcls
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fambientlight
	sub	esp,20
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_24
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadmesh
	mov	[ebp-20],eax
	sub	esp,20
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[esp+4],49
	call	_floadtexture
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],2
	call	_ftextureblend
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-28],eax
	sub	esp,20
	mov	[esp+12],1024
	mov	[esp+16],768
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,16
	mov	[esp+8],1123024896
	mov	[esp+12],1123024896
	mov	[esp+4],1123024896
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,16
	mov	[esp+8],1123024896
	mov	[esp+12],1109393408
	mov	[esp+4],1109393408
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,8
	mov	[esp],512
	mov	[esp+4],360
	call	_fmovemouse
	jmp	_27
_26
	call	_fmousex
	cmp	eax,512
	jge	_28
	sub	esp,8
	mov	[esp],512
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	_fmovemouse
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fturnentity
_28
	call	_fmousex
	cmp	eax,512
	jle	_29
	sub	esp,8
	mov	[esp],512
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	_fmovemouse
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1054867456
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fturnentity
_29
	call	_fmousey
	cmp	eax,360
	jge	_30
	sub	esp,8
	call	_fmousex
	mov	[esp],eax
	mov	[esp+4],360
	call	_fmovemouse
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1054867456
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fturnentity
_30
	call	_fmousey
	cmp	eax,360
	jle	_31
	sub	esp,8
	call	_fmousex
	mov	[esp],eax
	mov	[esp+4],360
	call	_fmovemouse
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1092616192
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fturnentity
_31
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_32
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fmoveentity
_32
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_33
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fmoveentity
_33
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_27
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_26
_5
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],1
	mov	[esp],1
	call	_fclearworld
	jmp	_l_2go
	call	_fend
	ret
_2_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_6	.db	" ",0
_11	.db	".X",0
_12	.db	".x",0
_13	.db	"",0
_14	.db	"INPUT MESHNAME To VIEW: ",0
_15	.db	" ",0
_20	.db	".bmp",0
_21	.db	".BMP",0
_22	.db	"",0
_23	.db	"INPUT TEXTURE: ",0
_24	.db	".X",0
_25	.db	".BMP",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

