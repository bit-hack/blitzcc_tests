
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
	mov	[ebp-32],ebx
	mov	[ebp-36],ebx
	mov	[ebp-40],ebx
	mov	[_vmaxenvs],100
	mov	[_vmaxenvpoints],100
	sub	esp,4
	mov	eax,_aenvpoints
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmaxenvs]
	mov	esi,_aenvpoints
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aenvpoints
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aenvactive
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmaxenvs]
	mov	esi,_aenvactive
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aenvactive
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aenvpoint
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmaxenvs]
	mov	esi,_aenvpoint
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmaxenvpoints]
	mov	esi,_aenvpoint
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aenvpoint
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,24
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],20
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[esp],eax
	call	_fsetfont
	call	_fgraphicswidth
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	call	_fgraphicsheight
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	call	_fcreateenvelope
	mov	[ebp-12],eax
	mov	[ebp-16],1
_l_2restart
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fresetenvelope
	sub	esp,8
	mov	[esp],3
	mov	[esp+4],10
	call	_frand
	mov	[ebp-20],eax
	mov	[ebp-24],1
	jmp	_17
_18
	sub	esp,16
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1128792064
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1145569280
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1148846080
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddenvelopepoint
	mov	ebx,eax
	add	[ebp-24],1
_17
	mov	ebx,[ebp-20]
	cmp	[ebp-24],ebx
	jle	_18
_3
_19
	call	_fcls
	mov	[ebp-28],1
	jmp	_20
_21
	sub	esp,12
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	[esp],1065353216
	call	_fwherebetween
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	sub	esp,12
	mov	[esp+4],40
	mov	[esp+8],40
	mov	[esp],40
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-36]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fline
	sub	esp,20
	mov	ebx,_aenvpoint
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aenvpoint]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1093664768
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],23
	mov	[esp+16],1
	mov	[esp+8],23
	mov	eax,[ebp-36]
	sub	eax,11
	mov	[esp],eax
	call	_foval
	sub	esp,12
	mov	[esp+4],150
	mov	[esp+8],150
	mov	[esp],150
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_aenvpoint
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-28]
	add	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aenvpoint]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	ebx,_aenvpoint
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aenvpoint]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_ftext
	add	[ebp-28],1
_20
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	cmp	[ebp-28],ebx
	jle	_21
_5
	mov	[ebp-36],1
	jmp	_22
_23
	cmp	[ebp-16],0
	jnz	_24
	sub	esp,12
	mov	[esp+4],225
	mov	[esp+8],65
	mov	[esp],85
	call	_fcolor
	jmp	_25
_24
	sub	esp,12
	mov	[esp+4],112
	mov	[esp+8],33
	mov	[esp],40
	call	_fcolor
_25
	sub	esp,20
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fenvelope
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fplot
	mov	ebx,eax
	cmp	[ebp-16],1
	jnz	_26
	sub	esp,12
	mov	[esp+4],65
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	jmp	_27
_26
	sub	esp,12
	mov	[esp+4],33
	mov	[esp+8],122
	mov	[esp],112
	call	_fcolor
_27
	sub	esp,20
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fenvelope
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fplot
	mov	ebx,eax
	add	[ebp-36],1
_22
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	cmp	[ebp-36],ebx
	jle	_23
_6
	sub	esp,12
	mov	[esp+4],80
	mov	[esp+8],80
	mov	[esp],95
	call	_fcolor
	sub	esp,16
	call	_fmousex
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+4],0
	call	_fmousex
	mov	[esp],eax
	call	_fline
	mov	ebx,[ebp-16]
	and	ebx,ebx
	jz	_28
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	jmp	_29
_28
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],100
	mov	[esp],100
	call	_fcolor
_29
	call	_fmousex
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,32
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fenvelope
	mov	ebx,1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[esp+12],17
	mov	[esp+16],1
	mov	[esp+8],17
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-44]
	sub	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	_foval
	mov	ebx,eax
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,36
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fenvelope
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[ebp-44],eax
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	_fenvelope
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	ebx,1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	call	_fmousex
	mov	[esp],eax
	call	_ftext
	sub	esp,32
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],50
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],70
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	and	eax,eax
	jz	_34
	jmp	_l_2restart
_34
	sub	esp,4
	mov	[esp],2
	call	_fmousehit
	and	eax,eax
	jz	_35
	add	[ebp-16],1
	cmp	[ebp-16],2
	jnz	_36
	mov	[ebp-16],0
_36
_35
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_19
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
	.align	16
_fcreateenvelope
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_37
_38
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aenvactive]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_39
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aenvactive]
	mov	[esi],ebx
	mov	eax,[ebp-4]
	jmp	_7_leave
_39
	add	[ebp-4],1
_37
	mov	ebx,[_venvs]
	cmp	[ebp-4],ebx
	jle	_38
_8
	mov	ebx,[_vmaxenvs]
	cmp	[_venvs],ebx
	jnz	_40
	sub	esp,8
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_40
	add	[_venvs],1
	mov	ebx,1
	mov	esi,[_venvs]
	shl	esi,byte 2
	add	esi,[_aenvactive]
	mov	[esi],ebx
	mov	eax,[_venvs]
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffreeenvelope
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aenvactive]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aenvpoints]
	mov	[esi],ebx
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_faddenvelopepoint
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	cmp	ebx,[_vmaxenvpoints]
	jnz	_42
	sub	esp,8
	mov	eax,_43
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_42
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aenvpoints]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	mov	esi,_aenvpoint
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoint]
	mov	esi,[ebp+24]
	mov	[ebx],esi
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fenvelope
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_44
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
_44
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_45
	mov	ebx,_aenvpoint
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoint]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
_45
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_46
	sub	esp,12
	mov	ebx,_aenvpoint
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoint]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,_aenvpoint
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_aenvpoint]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fbetween
	jmp	_11_leave
_46
	sub	esp,4
	mov	eax,[ebp+24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	sub	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	[ebp-8],ebx
	sub	esp,12
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aenvpoints]
	mov	esi,[esi]
	sub	esi,1
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sub	esi,1
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	sub	eax,1
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fwherebetween
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	ebx,[ebp-4]
	sub	ebx,1
	sub	ebx,0
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-4]
	sub	ebx,1
	add	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp-4]
	sub	ebx,1
	add	ebx,2
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp-4]
	sub	ebx,1
	add	ebx,3
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_47
	mov	[ebp-16],1065353216
_47
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_48
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
_48
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_49
	mov	[ebp-20],1065353216
_49
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_50
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
_50
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_51
	mov	[ebp-24],1065353216
_51
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_52
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
_52
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_53
	mov	[ebp-28],1065353216
_53
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_54
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoints]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
_54
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aenvpoints]
	mov	esi,[esi]
	sub	esi,1
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aenvpoints]
	mov	esi,[esi]
	sub	esi,1
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aenvpoints]
	mov	esi,[esi]
	sub	esi,1
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aenvpoints]
	mov	esi,[esi]
	sub	esi,1
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_55
	sub	esp,36
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_aenvpoint
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoint]
	mov	ebx,[ebx]
	mov	[esp+28],ebx
	sub	esp,12
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	mov	edi,[ebp-12]
	mov	[esp+8],edi
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fbetween
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+32],eax
	mov	esi,[ebp-44]
	mov	[esp+24],esi
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	edi,_aenvpoint
	add	edi,12
	mov	edi,[edi]
	imul	ebx,edi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoint]
	mov	ebx,[ebx]
	mov	[esp+20],ebx
	mov	esi,[ebp-40]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	edi,_aenvpoint
	add	edi,12
	mov	edi,[edi]
	imul	ebx,edi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoint]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	edi,_aenvpoint
	add	edi,12
	mov	edi,[edi]
	imul	ebx,edi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoint]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fspliney
	jmp	_11_leave
_55
	cmp	[ebp+28],0
	jnz	_56
	sub	esp,12
	mov	ebx,_aenvpoint
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aenvpoint]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,_aenvpoint
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_aenvpoint]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fbetween
	jmp	_11_leave
_56
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fresetenvelope
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aenvpoints]
	mov	[esi],ebx
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fspliney
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
	mov	[ebp-28],ebx
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+20]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-12],esi
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-16],esi
	mov	ebx,[ebp+52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	sub	esp,4
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,1127481344
	push	eax
	fld	[esp]
	pop	eax
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-20]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-24],esi
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-20]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-28],esi
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	jmp	_13_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 36
	.align	16
_fbetween
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	jmp	_14_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fwherebetween
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+24],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+28],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	jmp	_15_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_venvs	.dd	0
	.align	4
_vmaxenvs	.dd	0
	.align	4
_vmaxenvpoints	.dd	0
	.align	4
_aenvpoints	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aenvactive	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aenvpoint	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
_16	.db	"verdana",0
_30	.db	"Points in envelope: ",0
_31	.db	"Reading from: ",0
_32	.db	"Click left mouse button to randomise points",0
_33	.db	"Click right mouse button to toggle curving",0
_41	.db	"Too many envelopes.",0
_43	.db	"Too many envelope points.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
