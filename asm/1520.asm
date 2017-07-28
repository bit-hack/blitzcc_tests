
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
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_6
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],-1054867456
	mov	[esp+16],0
	mov	[esp+8],1084227584
	mov	[esp+4],-1065353216
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],1128267776
	mov	[esp+12],1128267776
	mov	[esp+4],1128267776
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fambientlight
	sub	esp,12
	mov	[esp+4],1036831949
	mov	[esp+8],1176256512
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fcamerafogmode
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1157234688
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcamerafogrange
	sub	esp,16
	mov	[esp+8],1128267776
	mov	[esp+12],1132396544
	mov	[esp+4],1119879168
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcamerafogcolor
	sub	esp,16
	mov	[esp+8],1128267776
	mov	[esp+12],1132396544
	mov	[esp+4],1119879168
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1036779520
	mov	[esp+4],1092616192
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,12
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadanimmesh
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_floadanimseq
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_floadanimseq
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-12]
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
	call	_floadanimseq
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp-12]
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
	call	_floadanimseq
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_floadanimseq
	mov	[ebp-32],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_floadanimseq
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_floadanimseq
	mov	[ebp-40],eax
	mov	[ebp-44],1077936128
_15
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_16
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1128815067
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-56],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-56]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	mov	eax,[ebp-44]
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
	jz	_17
	mov	[ebp-44],0
_17
_16
	sub	esp,20
	mov	ebx,[ebp-44]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_18
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1086324736
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-48],eax
	mov	ebx,[ebp-48]
	mov	[ebp-52],ebx
	cmp	[ebp-52],0
	jz	_20
	cmp	[ebp-52],1
	jz	_21
	cmp	[ebp-52],2
	jz	_22
	cmp	[ebp-52],3
	jz	_23
	cmp	[ebp-52],4
	jz	_24
	cmp	[ebp-52],5
	jz	_25
	cmp	[ebp-52],6
	jz	_26
	jmp	_19
_20
	sub	esp,20
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	[esp+16],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],3
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fanimate
	jmp	_19
_21
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	[esp+16],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],3
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fanimate
	jmp	_19
_22
	sub	esp,20
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	[esp+16],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],3
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fanimate
	jmp	_19
_23
	sub	esp,20
	mov	ebx,[ebp-28]
	mov	[esp+12],ebx
	mov	[esp+16],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],3
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fanimate
	jmp	_19
_24
	sub	esp,20
	mov	ebx,[ebp-32]
	mov	[esp+12],ebx
	mov	[esp+16],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],3
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fanimate
	jmp	_19
_25
	sub	esp,20
	mov	ebx,[ebp-36]
	mov	[esp+12],ebx
	mov	[esp+16],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],3
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fanimate
	jmp	_19
_26
	sub	esp,20
	mov	ebx,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],1
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fanimate
	jmp	_19
_19
_18
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	and	eax,eax
	jz	_27
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],3
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fanimate
_27
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],40
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],60
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_15
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
_5	.db	"Using Animated Dark Matter Models in Blitz3D",0
_6	.db	"",0
_7	.db	"Ninja\H-Ninja-Move.3DS",0
_8	.db	"Ninja\H-Ninja-Static.3DS",0
_9	.db	"Ninja\H-Ninja-Attack1.3DS",0
_10	.db	"Ninja\H-Ninja-Die.3DS",0
_11	.db	"Ninja\H-Ninja-Fidget.3DS",0
_12	.db	"Ninja\H-Ninja-Idle.3DS",0
_13	.db	"Ninja\H-Ninja-Impact.3DS",0
_14	.db	"Ninja\H-Ninja-Move.3DS",0
_28	.db	"Press Space to do Random Animation",0
_29	.db	"Press Mouse Left Click to Attack",0
_30	.db	"Press and Hold Mouse Right Click to Scale",0
_31	.db	"Animation Sequence: ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

