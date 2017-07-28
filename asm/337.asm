
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
	mov	[_vnumstars],200
	mov	[_vfardistance],1000
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],1065353216
	mov	esi,[_vfardistance]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vdaddy],eax
	mov	[ebp-8],1
	jmp	_6
_7
	sub	esp,4
	mov	[esp],0
	call	_fcreatesprite
	mov	[ebp-12],eax
	sub	esp,12
	mov	ebx,[_vfardistance]
	sar	ebx,byte 2
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[_vfardistance]
	sar	esi,byte 1
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentityautofade
	sub	esp,28
	mov	eax,[_vfardistance]
	neg	eax
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[_vfardistance]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	ebx,[_vfardistance]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	esi,[_vfardistance]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-32],eax
	sub	esp,8
	mov	ebx,[_vfardistance]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	esi,[_vfardistance]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[_vdaddy]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentityparent
	add	[ebp-8],1
_6
	mov	ebx,[_vnumstars]
	cmp	[ebp-8],ebx
	jle	_7
_3
	jmp	_9
_8
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
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
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_10
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
_10
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065772646
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-24]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmoveentity
	mov	[ebp-8],1
	jmp	_11
_12
	sub	esp,8
	mov	eax,[_vdaddy]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fentitydistance
	mov	ebx,[_vfardistance]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_13
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-32],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[ebp-32],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,24
	mov	[esp],-1007026176
	mov	[esp+4],1140457472
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	[esp],-1007026176
	mov	[esp+4],1140457472
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[_vfardistance]
	sar	esi,byte 1
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fmoveentity
	mov	ebx,eax
_13
	add	[ebp-8],1
_11
	sub	esp,4
	mov	eax,[_vdaddy]
	mov	[esp],eax
	call	_fcountchildren
	cmp	[ebp-8],eax
	jle	_12
_5
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_8
_4
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vdaddy	.dd	0
	.align	4
_vnumstars	.dd	0
	.align	4
_vfardistance	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

