
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],240
	mov	[esp],320
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
	sub	esp,8
	mov	[esp],16
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],1140457472
	mov	[esp+16],0
	mov	[esp+8],1140457472
	mov	[esp+4],1140457472
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fflipmesh
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,8
	mov	[esp],256
	mov	[esp+4],256
	call	_fcreateskytexture
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-20],eax
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],385
	mov	[esp+12],1
	mov	[esp+4],32
	mov	[esp],32
	call	_fcreatetexture
	mov	[ebp-24],eax
	mov	[ebp-28],0
	jmp	_25
_26
	cmp	[ebp-28],0
	jnz	_27
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1119092736
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
_27
	cmp	[ebp-28],1
	jnz	_28
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
_28
	cmp	[ebp-28],2
	jnz	_29
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1028390912
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
_29
	cmp	[ebp-28],3
	jnz	_30
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1127481344
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
_30
	cmp	[ebp-28],4
	jnz	_31
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1028390912
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
_31
	cmp	[ebp-28],5
	jnz	_32
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
_32
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fsetcubeface
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,40
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+28],eax
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+24],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	[esp+12],32
	mov	[esp+8],32
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	add	[ebp-28],1
_25
	cmp	[ebp-28],5
	jle	_26
_3
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftestcubemap
	mov	[ebp-32],eax
	call	_fgfxdrivercaps3d
	mov	[ebp-36],eax
	jmp	_34
_33
	mov	[ebp-40],0
	mov	[ebp-44],0
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_35
	mov	[ebp-40],-1082130432
_35
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_36
	mov	[ebp-40],1065353216
_36
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_37
	mov	[ebp-44],-1082130432
_37
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_38
	mov	[ebp-44],1065353216
_38
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,32
	mov	eax,_39
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],12
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_34
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_33
_4
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcreateskytexture
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
	sub	esp,28
	mov	[esp+20],255
	mov	[esp+24],255
	mov	[esp+16],255
	mov	[esp+12],230
	mov	[esp+8],160
	mov	[esp+4],100
	mov	[esp],256
	call	_fcreatepalette
	mov	[ebp-4],eax
	sub	esp,48
	mov	[esp+40],48
	mov	[esp+44],0
	mov	[esp+36],1
	mov	[esp+32],0
	mov	[esp+28],2
	mov	[esp+24],16
	mov	[esp+20],1
	mov	[esp+16],2
	mov	[esp+12],8
	mov	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreateheightmap
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcreatetexture
	mov	[ebp-12],eax
	sub	esp,12
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-20],0
	jmp	_41
_42
	mov	[ebp-16],0
	jmp	_43
_44
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	imul	ebx,[ebp+20]
	add	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-24],eax
	sub	esp,24
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[esp+8],eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_ftexturebuffer
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+12],ebx
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-16],1
_43
	mov	ebx,[ebp+20]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_44
_7
	add	[ebp-20],1
_41
	mov	ebx,[ebp+24]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_42
_6
	sub	esp,12
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreebank
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
	ret	word 8
	.align	16
_fcreatepalette
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
	mov	[ebp-20],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_45
_46
	mov	eax,[ebp+36]
	sub	eax,[ebp+24]
	imul	eax,[ebp-8]
	mov	ecx,[ebp+20]
	cdq
	idiv	ecx
	add	eax,[ebp+24]
	mov	[ebp-12],eax
	mov	eax,[ebp+40]
	sub	eax,[ebp+28]
	imul	eax,[ebp-8]
	mov	ecx,[ebp+20]
	cdq
	idiv	ecx
	add	eax,[ebp+28]
	mov	[ebp-16],eax
	mov	eax,[ebp+44]
	sub	eax,[ebp+32]
	imul	eax,[ebp-8]
	mov	ecx,[ebp+20]
	cdq
	idiv	ecx
	add	eax,[ebp+32]
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	shl	ebx,byte 16
	mov	esi,[ebp-16]
	shl	esi,byte 8
	add	ebx,esi
	add	ebx,[ebp-20]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	shl	esi,byte 2
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	add	[ebp-8],1
_45
	mov	ebx,[ebp+20]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_46
_9
	mov	eax,[ebp-4]
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	16
_fcreateheightmap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,60
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
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	eax,[ebp+24]
	imul	eax,[ebp+28]
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+24]
	imul	eax,[ebp+28]
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-8],eax
	mov	[ebp-16],0
	jmp	_47
_48
	cmp	[ebp-20],0
	jnz	_49
	mov	[ebp-12],0
	jmp	_50
_51
	cmp	[ebp-24],0
	jnz	_52
	sub	esp,8
	mov	[esp],0
	mov	ebx,[ebp+48]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-28],eax
	cmp	[ebp-28],1
	jnz	_53
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbanksize
	sub	eax,1
	mov	[ebp-28],eax
	jmp	_54
_53
	mov	[ebp-28],1
_54
	cmp	[ebp+56],0
	jle	_55
	mov	eax,[ebp+64]
	cmp	[ebp-12],eax
	setl	al
	movzx	eax,al
	mov	[ebp-60],eax
	mov	ebx,[ebp+24]
	sub	ebx,[ebp+64]
	cmp	[ebp-12],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	or	eax,ebx
	and	eax,eax
	jz	_56
	mov	ebx,[ebp+56]
	mov	[ebp-28],ebx
_56
	mov	eax,[ebp+60]
	cmp	[ebp-16],eax
	setl	al
	movzx	eax,al
	mov	[ebp-60],eax
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+60]
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	or	eax,ebx
	and	eax,eax
	jz	_57
	mov	ebx,[ebp+56]
	mov	[ebp-28],ebx
_57
_55
	mov	[ebp-32],0
	jmp	_58
_59
	mov	[ebp-36],0
	jmp	_60
_61
	sub	esp,12
	mov	ebx,[ebp-12]
	add	ebx,[ebp-32]
	mov	esi,[ebp-16]
	add	esi,[ebp-36]
	imul	esi,[ebp+24]
	add	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-36],1
_60
	mov	ebx,[ebp+36]
	sub	ebx,1
	cmp	[ebp-36],ebx
	jle	_61
_14
	add	[ebp-32],1
_58
	mov	ebx,[ebp+32]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_59
_13
_52
	add	[ebp-24],1
	mov	ebx,[ebp+32]
	cmp	[ebp-24],ebx
	jl	_62
	mov	[ebp-24],0
_62
	add	[ebp-12],1
_50
	mov	ebx,[ebp+24]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_51
_12
_49
	add	[ebp-20],1
	mov	ebx,[ebp+36]
	cmp	[ebp-20],ebx
	jl	_63
	mov	[ebp-20],0
_63
	add	[ebp-16],1
_47
	mov	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_48
_11
	cmp	[ebp+44],0
	jnz	_64
	sub	esp,20
	mov	[esp+12],0
	mov	esi,[ebp+24]
	imul	esi,[ebp+28]
	mov	[esp+16],esi
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcopybank
_64
	mov	[ebp-40],1
	jmp	_65
_66
	mov	[ebp-16],0
	jmp	_67
_68
	cmp	[ebp-20],0
	jnz	_69
	mov	[ebp-12],0
	jmp	_70
_71
	cmp	[ebp-24],0
	jnz	_72
	mov	ebx,[ebp-12]
	sub	ebx,[ebp+40]
	mov	[ebp-44],ebx
	cmp	[ebp-44],0
	jge	_73
	mov	ebx,[ebp+24]
	sub	ebx,[ebp+40]
	mov	[ebp-44],ebx
_73
	mov	ebx,[ebp-12]
	add	ebx,[ebp+40]
	mov	[ebp-48],ebx
	mov	ebx,[ebp+24]
	sub	ebx,[ebp+40]
	cmp	[ebp-48],ebx
	jle	_74
	mov	[ebp-48],0
_74
	mov	ebx,[ebp-16]
	sub	ebx,[ebp+40]
	mov	[ebp-52],ebx
	cmp	[ebp-52],0
	jge	_75
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+40]
	mov	[ebp-52],ebx
_75
	mov	ebx,[ebp-16]
	add	ebx,[ebp+40]
	mov	[ebp-56],ebx
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+40]
	cmp	[ebp-56],ebx
	jle	_76
	mov	[ebp-56],0
_76
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	imul	ebx,[ebp+24]
	add	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-60],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-16]
	imul	esi,[ebp+24]
	add	esi,[ebp-44]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-60]
	add	eax,ebx
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	imul	ebx,[ebp+24]
	add	ebx,[ebp-48]
	mov	[esp+4],ebx
	call	_fpeekbyte
	add	eax,[ebp-28]
	mov	[ebp-60],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-56]
	imul	esi,[ebp+24]
	add	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-60]
	add	eax,ebx
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	imul	ebx,[ebp+24]
	add	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fpeekbyte
	shl	eax,byte 1
	add	[ebp-28],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	imul	ebx,[ebp+24]
	add	ebx,[ebp-44]
	mov	[esp+4],ebx
	call	_fpeekbyte
	add	eax,[ebp-28]
	mov	[ebp-60],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-52]
	imul	esi,[ebp+24]
	add	esi,[ebp-48]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-60]
	add	eax,ebx
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-56]
	imul	ebx,[ebp+24]
	add	ebx,[ebp-44]
	mov	[esp+4],ebx
	call	_fpeekbyte
	add	eax,[ebp-28]
	mov	[ebp-60],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-56]
	imul	esi,[ebp+24]
	add	esi,[ebp-48]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-60]
	add	eax,ebx
	mov	[ebp-28],eax
	mov	eax,[ebp-28]
	mov	ecx,10
	cdq
	idiv	ecx
	mov	[ebp-28],eax
	mov	ebx,[ebp+52]
	cmp	[ebp-28],ebx
	jge	_77
	mov	ebx,[ebp+52]
	mov	[ebp-28],ebx
_77
	cmp	[ebp-40],1
	jle	_78
	sub	esp,12
	mov	ebx,[ebp-16]
	imul	ebx,[ebp+24]
	add	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokebyte
_78
	mov	[ebp-32],0
	jmp	_79
_80
	mov	[ebp-36],0
	jmp	_81
_82
	sub	esp,12
	mov	ebx,[ebp-12]
	add	ebx,[ebp-32]
	mov	esi,[ebp-16]
	add	esi,[ebp-36]
	imul	esi,[ebp+24]
	add	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-36],1
_81
	mov	ebx,[ebp+40]
	sub	ebx,1
	cmp	[ebp-36],ebx
	jle	_82
_19
	add	[ebp-32],1
_79
	mov	ebx,[ebp+40]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_80
_18
_72
	add	[ebp-24],1
	mov	ebx,[ebp+40]
	cmp	[ebp-24],ebx
	jl	_83
	mov	[ebp-24],0
_83
	add	[ebp-12],1
_70
	mov	ebx,[ebp+24]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_71
_17
_69
	add	[ebp-20],1
	mov	ebx,[ebp+40]
	cmp	[ebp-20],ebx
	jl	_84
	mov	[ebp-20],0
_84
	add	[ebp-16],1
_67
	mov	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_68
_16
	add	[ebp-40],1
_65
	mov	ebx,[ebp+44]
	cmp	[ebp-40],ebx
	jle	_66
_15
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreebank
	mov	eax,[ebp-8]
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 48
	.align	16
_ftestcubemap
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
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-36],ebx
	mov	[ebp-40],ebx
	mov	[ebp-44],ebx
	mov	[ebp-48],ebx
	sub	esp,4
	mov	eax,_21
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[ebp-16],eax
	call	_fgfxdrivercaps3d
	cmp	eax,110
	jz	_85
	mov	eax,0
	jmp	_20_leave
_85
	mov	[ebp-12],32
	mov	[ebp-24],10
	mov	[ebp-28],1
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcameraprojmode
	sub	esp,20
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+16],esi
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,16
	mov	[esp+8],385
	mov	[esp+12],1
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcreatetexture
	mov	[ebp-8],eax
	mov	[ebp-40],0
	jmp	_86
_87
	cmp	[ebp-40],0
	jnz	_88
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1119092736
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
_88
	cmp	[ebp-40],1
	jnz	_89
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
_89
	cmp	[ebp-40],2
	jnz	_90
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1028390912
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
_90
	cmp	[ebp-40],3
	jnz	_91
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1127481344
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
_91
	cmp	[ebp-40],4
	jnz	_92
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1028390912
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
_92
	cmp	[ebp-40],5
	jnz	_93
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
_93
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	_fsetcubeface
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,40
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+28],eax
	mov	[ebp-52],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+24],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	mov	[ebp-32],1
	jmp	_94
_95
	mov	[ebp-36],1
	jmp	_96
_97
	sub	esp,12
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fbackbuffer
	mov	[esp+8],eax
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_freadpixel
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-44],eax
	sub	esp,20
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_freadpixel
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-48],eax
	mov	eax,[ebp-44]
	mov	ebx,16711680
	and	eax,ebx
	mov	ecx,65280
	cdq
	idiv	ecx
	sar	eax,byte 4
	mov	ebx,0
	add	ebx,[ebp-16]
	mov	[ebx],eax
	mov	eax,[ebp-48]
	mov	ebx,16711680
	and	eax,ebx
	mov	ecx,65280
	cdq
	idiv	ecx
	sar	eax,byte 4
	mov	ebx,12
	add	ebx,[ebp-16]
	mov	[ebx],eax
	mov	eax,[ebp-44]
	mov	ebx,65280
	and	eax,ebx
	mov	ecx,255
	cdq
	idiv	ecx
	sar	eax,byte 4
	mov	ebx,4
	add	ebx,[ebp-16]
	mov	[ebx],eax
	mov	eax,[ebp-48]
	mov	ebx,65280
	and	eax,ebx
	mov	ecx,255
	cdq
	idiv	ecx
	sar	eax,byte 4
	mov	ebx,16
	add	ebx,[ebp-16]
	mov	[ebx],eax
	mov	ebx,[ebp-44]
	mov	esi,255
	and	ebx,esi
	sar	ebx,byte 4
	mov	esi,8
	add	esi,[ebp-16]
	mov	[esi],ebx
	mov	ebx,[ebp-48]
	mov	esi,255
	and	ebx,esi
	sar	ebx,byte 4
	mov	esi,20
	add	esi,[ebp-16]
	mov	[esi],ebx
	mov	eax,0
	add	eax,[ebp-16]
	mov	eax,[eax]
	mov	ebx,12
	add	ebx,[ebp-16]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setnz	al
	movzx	eax,al
	mov	[ebp-52],eax
	mov	ebx,4
	add	ebx,[ebp-16]
	mov	ebx,[ebx]
	mov	esi,16
	add	esi,[ebp-16]
	mov	esi,[esi]
	cmp	ebx,esi
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	mov	[ebp-52],eax
	mov	ebx,8
	add	ebx,[ebp-16]
	mov	ebx,[ebx]
	mov	esi,20
	add	esi,[ebp-16]
	mov	esi,[esi]
	cmp	ebx,esi
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	and	eax,eax
	jz	_98
	add	[ebp-20],1
_98
	add	[ebp-36],1
_96
	mov	ebx,[ebp-12]
	sub	ebx,2
	cmp	[ebp-36],ebx
	jle	_97
_24
	add	[ebp-32],1
_94
	mov	ebx,[ebp-12]
	sub	ebx,2
	cmp	[ebp-32],ebx
	jle	_95
_23
	add	[ebp-40],1
_86
	cmp	[ebp-40],5
	jle	_87
_22
	mov	eax,6
	imul	eax,[ebp-12]
	imul	eax,[ebp-12]
	mov	ecx,100
	cdq
	idiv	ecx
	imul	eax,[ebp-24]
	cmp	[ebp-20],eax
	jge	_99
	mov	[ebp-28],1
_99
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fcameraprojmode
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreetexture
	mov	eax,[ebp-28]
	jmp	_20_leave
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	[ebp-52],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	[esp+4],_21
	mov	eax,ebx
	call	__bbVecFree
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_39	.db	"cubemapsupport=",0
_40	.db	"caps=",0
	.align	4
_21	.dd	6
	.dd	6
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

