
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_amaze
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,9
	mov	esi,_amaze
	add	esi,12
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,_amaze
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amaze
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreateplane
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1116471296
	mov	[esp+12],1116471296
	mov	[esp+4],1116471296
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],1036831949
	mov	[esp+8],1140457472
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fentityradius
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],1112014848
	mov	[esp+16],0
	mov	[esp+8],1120403456
	mov	[esp+4],1112014848
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frotateentity
	call	_freaddata
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],2
	mov	[esp+4],2
	mov	[esp],1
	call	_fcollisions
	jmp	_9
_8
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_10
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1036831949
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fmoveentity
_10
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_11
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1110651699
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fmoveentity
_11
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_12
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fturnentity
_12
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_13
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fturnentity
_13
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],10
	call	_fdelay
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_8
_3
	call	_fend
_l_2mazedata
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_freaddata
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	call	__bbReadInt
	mov	[ebp-4],eax
	call	__bbReadInt
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[ebp-12],ebx
	jmp	_14
_15
	mov	[ebp-16],0
	jmp	_16
_17
	call	__bbReadInt
	mov	ebx,_amaze
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amaze]
	mov	[ebx],eax
	mov	ebx,_amaze
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amaze]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	cmp	[ebp-20],0
	jz	_19
	cmp	[ebp-20],4
	jz	_20
	jmp	_18
_19
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-24],eax
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	[esp+4],1084227584
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	ebx,[ebp-12]
	imul	ebx,10
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	ebx,[ebp-16]
	imul	ebx,10
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],1120403456
	mov	[esp+12],1117126656
	mov	[esp+4],1128792064
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitytype
	jmp	_18
_20
	sub	esp,20
	mov	ebx,[ebp-12]
	imul	ebx,10
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	ebx,[ebp-16]
	imul	ebx,10
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	jmp	_18
_18
	add	[ebp-16],1
_16
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_17
_6
	add	[ebp-12],-1
_14
	cmp	[ebp-12],0
	jge	_15
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_amaze	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vcamera	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	4
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	0

