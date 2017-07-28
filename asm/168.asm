
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
	mov	[ebp-4],0
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vmass],1065353216
	mov	[_vspeed],0
	mov	[_vtrust],1092616192
	mov	[_vgravity],1028443341
	mov	[_vwindspeed],1025758986
	mov	[_vwindangle],1119092736
	mov	[_vstx],320
	mov	[_vsty],240
_9
	call	_fcls
	call	_fmousex
	mov	[_vmx],eax
	call	_fmousey
	mov	[_vmy],eax
	sub	esp,12
	mov	eax,[_vstx]
	sub	eax,[_vmx]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[_vsty]
	sub	ebx,[_vmy]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-8]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vtrust],eax
	sub	esp,8
	mov	eax,[_vmy]
	sub	eax,[_vsty]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[_vmx]
	sub	ebx,[_vstx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fatan2
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vangle],eax
	sub	esp,8
	mov	eax,[_vstx]
	mov	[esp],eax
	mov	ebx,[_vsty]
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,16
	mov	ebx,1106247680
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[_vangle]
	mov	[esp],eax
	call	_fcos
	fmulp	st(1)
	mov	esi,[_vstx]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,1106247680
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[_vangle]
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	mov	edi,[_vsty]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	push	edi
	fistp	[esp]
	pop	edi
	mov	[esp+12],edi
	mov	ebx,[_vsty]
	mov	[esp+4],ebx
	mov	eax,[_vstx]
	mov	[esp],eax
	call	_fline
	sub	esp,8
	mov	eax,[_vmx]
	mov	[esp],eax
	mov	ebx,[_vmy]
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,16
	mov	ebx,1106247680
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[_vwindangle]
	mov	[esp],eax
	call	_fcos
	fmulp	st(1)
	mov	esi,1141473280
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,1106247680
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[_vwindangle]
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	mov	edi,1117782016
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	edi
	fistp	[esp]
	pop	edi
	mov	[esp+12],edi
	mov	[esp+4],80
	mov	[esp],550
	call	_fline
	sub	esp,32
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vtrust]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],10
	mov	[esp],10
	call	_ftext
	sub	esp,32
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vangle]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],10
	call	_ftext
	sub	esp,32
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vmass]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],30
	mov	[esp],10
	call	_ftext
	sub	esp,32
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vwindspeed]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],10
	mov	[esp],450
	call	_ftext
	sub	esp,32
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vwindangle]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],450
	call	_ftext
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_15
	mov	ebx,[_vmass]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vmass],ebx
_15
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_16
	mov	ebx,[_vmass]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vmass],ebx
	mov	eax,[_vmass]
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
	jz	_17
	mov	[_vmass],1065353216
_17
_16
	sub	esp,8
	mov	eax,[_vlastobj]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_18
	sub	esp,44
	mov	eax,[_vlastobj]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[_vlastobj]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-8]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],40
	mov	[esp],10
	call	_ftext
_18
	call	_fupdateall
	call	_fdrawall
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_20
	sub	esp,28
	mov	ebx,[_vtrust]
	mov	[esp+12],ebx
	mov	esi,[_vangle]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	esi,[_vsty]
	mov	[esp+8],esi
	mov	ebx,[_vstx]
	mov	[esp+4],ebx
	mov	eax,[_vmass]
	mov	[esp],eax
	call	_fcreateobj
	mov	[esp+4],eax
	mov	[esp],_vlastobj
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
_20
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1120272384
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	cmp	[ebp-4],5
	jge	_21
	mov	ebx,[_vwindangle]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vwindangle],ebx
	mov	eax,[_vwindangle]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135837184
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_22
	mov	[_vwindangle],0
_22
	jmp	_23
_21
	mov	ebx,[_vwindangle]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vwindangle],ebx
	mov	eax,[_vwindangle]
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
	jz	_24
	mov	[_vwindangle],1135837184
_24
_23
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_9
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
	.align	16
_fcreateobj
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tobj
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp+36]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp+36]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	mov	eax,[ebp-4]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fupdateall
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	ebx,[_vwindspeed]
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[_vwindangle]
	mov	[esp],eax
	call	_fcos
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[_vwindspeed]
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[_vwindangle]
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],_tobj
	call	__bbObjEachFirst
	and	eax,eax
	jz	_6
_27
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],esi
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgravity]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-12]
	mov	edi,[edi]
	add	edi,0
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
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
	mov	[ebp-16],eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1142947840
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1139802112
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_28
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbObjDelete
_28
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_27
_6
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawall
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tobj
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_29
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_29
_8
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vmass	.dd	0
	.align	4
_vspeed	.dd	0
	.align	4
_vtrust	.dd	0
	.align	4
_vgravity	.dd	0
	.align	4
_vwindspeed	.dd	0
	.align	4
_vwindangle	.dd	0
	.align	4
_vstx	.dd	0
	.align	4
_vsty	.dd	0
	.align	4
_vangle	.dd	0
	.align	4
_vlastobj	.dd	0
	.align	4
_vmx	.dd	0
	.align	4
_vmy	.dd	0
_10	.db	"Power :",0
_11	.db	"Angle :",0
_12	.db	"Obj mass :",0
_13	.db	"Wind speed :",0
_14	.db	"Wind angle :",0
_19	.db	"Last obj speed :",0
	.align	4
_tobj	.dd	5
_25	.dd	0
	.dd	_25
	.dd	_25
	.dd	0
	.dd	-1
_26	.dd	0
	.dd	_26
	.dd	_26
	.dd	0
	.dd	-1
	.dd	6
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

