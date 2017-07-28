
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,8
	mov	[esp],_vimagename
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[_vframewidth],32
	mov	[_vframeheight],32
	mov	[_vfirstframe],0
	sub	esp,8
	mov	eax,_vimagename
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[_vtempimage],eax
	sub	esp,4
	mov	eax,[_vtempimage]
	mov	[esp],eax
	call	_fimagewidth
	mov	ecx,[_vframewidth]
	cdq
	idiv	ecx
	mov	[_vframecount],eax
	sub	esp,40
	mov	eax,_vimagename
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_vimagename
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fextractfileext
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-16]
	sub	eax,ebx
	sub	eax,1
	mov	[esp+4],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_vimagename
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fleft
	mov	ebx,eax
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_voutimagename
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,[_vframecount]
	imul	ebx,[_vframewidth]
	mov	[_vxoffset],ebx
	sub	esp,4
	mov	eax,[_vtempimage]
	mov	[esp],eax
	call	_ffreeimage
	mov	[_vtempimage],0
	sub	esp,20
	mov	ebx,[_vfirstframe]
	mov	[esp+12],ebx
	mov	esi,[_vframecount]
	mov	[esp+16],esi
	mov	esi,[_vframeheight]
	mov	[esp+8],esi
	mov	ebx,[_vframewidth]
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_vimagename
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadanimimage
	mov	[_vinimage],eax
	sub	esp,12
	mov	ebx,[_vframeheight]
	mov	[esp+4],ebx
	mov	esi,[_vframecount]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[_vframewidth]
	imul	eax,[_vframecount]
	shl	eax,byte 1
	mov	[esp],eax
	call	_fcreateimage
	mov	[_vnewimage],eax
	sub	esp,12
	mov	ebx,[_vframeheight]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vframewidth]
	mov	[esp],eax
	call	_fcreateimage
	mov	[_vtempimage],eax
	sub	esp,12
	mov	eax,[_vnewimage]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-4],0
	jmp	_16
_17
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	imul	esi,[_vframewidth]
	mov	[esp+4],esi
	mov	eax,[_vinimage]
	mov	[esp],eax
	call	_fdrawimage
	add	[ebp-4],1
_16
	mov	ebx,[_vframecount]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_17
_3
	call	_fmillisecs
	mov	[ebp-8],eax
	mov	[ebp-4],0
	jmp	_18
_19
	sub	esp,12
	mov	eax,[_vtempimage]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcls
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[_vinimage]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	eax,[_vtempimage]
	mov	[esp],eax
	call	_fflipimageh
	mov	[_vtempimage],eax
	sub	esp,12
	mov	eax,[_vnewimage]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-4]
	imul	esi,[_vframewidth]
	add	esi,[_vxoffset]
	mov	[esp+4],esi
	mov	eax,[_vtempimage]
	mov	[esp],eax
	call	_fdrawimage
	add	[ebp-4],1
_18
	mov	ebx,[_vframecount]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_19
_4
	call	_fmillisecs
	sub	eax,[ebp-8]
	mov	[ebp-12],eax
	sub	esp,16
	mov	eax,_voutimagename
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[_vnewimage]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsaveimage
	mov	ebx,eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vnewimage]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,32
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_voutimagename
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vnewimage]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fimageheight
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_ftext
	sub	esp,40
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vnewimage]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fimageheight
	mov	ebx,eax
	mov	eax,[ebp-16]
	add	ebx,24
	mov	[esp+4],ebx
	mov	[esp],0
	call	_ftext
	call	_fwaitkey
	sub	esp,4
	mov	eax,[_vnewimage]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,4
	mov	eax,[_vinimage]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,4
	mov	eax,[_vtempimage]
	mov	[esp],eax
	call	_ffreeimage
	call	_fendgraphics
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
_fflipimageh
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-8],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-12],eax
	mov	[ebp-16],0
	jmp	_23
_24
	sub	esp,40
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+24],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fimagebuffer
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+28],ebx
	mov	[esp+20],0
	mov	esi,[ebp-4]
	sub	esi,1
	sub	esi,[ebp-16]
	mov	[esp+16],esi
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+8],1
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcopyrect
	add	[ebp-16],1
_23
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	cmp	[ebp-16],eax
	jle	_24
_6
	mov	eax,[ebp-12]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fextractfilename
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
	mov	[ebp-4],0
	mov	[ebp-8],0
	mov	[ebp-12],0
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	mov	[ebp-8],ebx
	jmp	_27
_26
	sub	esp,16
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-4],ebx
	sub	[ebp-8],1
_27
	cmp	[ebp-4],1
	setl	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-8],1
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jnz	_26
_8
	cmp	[ebp-4],0
	jnz	_29
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_30
_29
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-12]
	sub	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fright
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_30
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_7_leave
	sub	esp,4
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	jmp	_7_leave
_7_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-16]
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
	ret	word 4
	.align	16
_fextractfileext
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
	mov	[ebp-4],0
	mov	[ebp-8],0
	mov	[ebp-12],0
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	mov	[ebp-8],ebx
	jmp	_34
_33
	sub	esp,16
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-4],ebx
	sub	[ebp-8],1
_34
	cmp	[ebp-4],1
	setl	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-8],1
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jnz	_33
_10
	cmp	[ebp-4],0
	jnz	_36
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_37
_36
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-12]
	sub	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fright
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_37
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_9_leave
	sub	esp,4
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	jmp	_9_leave
_9_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-16]
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
	ret	word 4
	.align	16
_fextractfilepath
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
	mov	[ebp-4],0
	mov	[ebp-8],0
	mov	[ebp-12],0
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	mov	[ebp-8],ebx
	jmp	_41
_40
	sub	esp,16
	mov	eax,_42
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-4],ebx
	sub	[ebp-8],1
_41
	cmp	[ebp-4],1
	setl	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-8],1
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jnz	_40
_12
	cmp	[ebp-4],0
	jnz	_43
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_44
_43
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_44
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_11_leave
	sub	esp,4
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	jmp	_11_leave
_11_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-16]
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
	ret	word 4
	.align	4
_vimagename	.dd	0
_13	.db	"elfmoves.bmp",0
	.align	4
_vframewidth	.dd	0
	.align	4
_vframeheight	.dd	0
	.align	4
_vfirstframe	.dd	0
	.align	4
_vtempimage	.dd	0
	.align	4
_vframecount	.dd	0
	.align	4
_voutimagename	.dd	0
_14	.db	"new_",0
_15	.db	".bmp",0
	.align	4
_vxoffset	.dd	0
	.align	4
_vinimage	.dd	0
	.align	4
_vnewimage	.dd	0
_20	.db	"Done - file saved as: ",0
_21	.db	"Time taken to convert:",0
_22	.db	"ms",0
_25	.db	"",0
_28	.db	"\",0
_31	.db	"",0
_32	.db	"",0
_35	.db	".",0
_38	.db	"",0
_39	.db	"",0
_42	.db	"\",0
_45	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
