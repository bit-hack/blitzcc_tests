
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-8],eax
	mov	[ebp-12],1065353216
	mov	[ebp-16],1065353216
	mov	[ebp-12],1067030937
	mov	[ebp-16],1065353216
	sub	esp,20
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],-1063256064
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	jmp	_5
_4
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_6
	sub	esp,28
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentitypitch
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityyaw
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1084227584
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_frotateentity
	mov	ebx,eax
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-28],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-28]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
_6
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_7
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1036831949
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmoveentity
_7
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_8
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1110651699
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmoveentity
_8
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_9
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1036831949
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmoveentity
_9
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_10
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],-1110651699
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmoveentity
_10
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],10
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fdelay
_5
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_4
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
_11	.db	"no stretching on Text(x,y,txt$) anymore ;)",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
