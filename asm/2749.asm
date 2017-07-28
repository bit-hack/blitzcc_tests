
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatesprite
	mov	[ebp-16],eax
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],1036831949
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fscalesprite
	sub	esp,20
	mov	[esp+12],1077936128
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],18
	mov	[esp],128
	call	_fcreatetexture
	mov	[ebp-20],eax
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],50
	mov	[esp+8],50
	mov	[esp],50
	call	_fclscolor
	call	_fcls
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],19
	sub	esp,4
	mov	eax,_4
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	jmp	_7
_6
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_8
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
_8
	sub	esp,12
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositiontexture
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	call	_fmousexspeed
	neg	eax
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-32]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_7
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_6
_3
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_4	.db	"verdana",0
_5	.db	"N | E | S | W |",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

