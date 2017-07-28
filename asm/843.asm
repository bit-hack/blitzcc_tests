
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
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,32
	mov	[esp+24],1136361472
	mov	[esp+28],1137180672
	mov	[esp+20],1137180672
	mov	[esp+16],1137180672
	mov	[esp+12],1137180672
	mov	[esp+8],1134723072
	mov	[esp+4],1137180672
	mov	[esp],1133903872
	call	_fbeziernew
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjStore
	mov	[ebp-8],0
	mov	[ebp-12],1008981770
_25
	call	_fcls
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],400
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],20
	mov	[esp],400
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],40
	mov	[esp],400
	call	_ftext
	sub	esp,32
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[esp+4],60
	mov	[esp],400
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_30
	mov	ebx,[ebp-8]
	mov	[ebp-16],ebx
	cmp	[ebp-16],0
	jz	_32
	cmp	[ebp-16],1
	jz	_33
	jmp	_31
_32
	sub	esp,16
	call	_fmousex
	mov	[esp],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	_fbezierselect
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_34
	mov	[ebp-8],1
_34
	jmp	_31
_33
	sub	esp,16
	call	_fmousex
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	ebx,[_vbeziercontrolpoint]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fbeziermovepoint
	jmp	_31
_31
	jmp	_35
_30
	mov	[ebp-8],0
_35
	sub	esp,4
	mov	[esp],2
	call	_fmousehit
	and	eax,eax
	jz	_36
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_tbezier
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjLast
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	sub	esp,32
	mov	ebx,[ebp-24]
	add	ebx,75
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+24],ebx
	mov	esi,[ebp-28]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+28],esi
	mov	esi,[ebp-28]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+20],esi
	mov	ebx,[ebp-24]
	add	ebx,100
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp-28]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-24]
	add	ebx,25
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fbeziernew
_36
	sub	esp,4
	mov	[esp],74
	call	_fkeydown
	and	eax,eax
	jz	_37
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	eax,[ebp-12]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_38
	mov	[ebp-12],1065353216
_38
_37
	sub	esp,4
	mov	[esp],78
	call	_fkeydown
	and	eax,eax
	jz	_39
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,981668463
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_40
	mov	[ebp-12],981668463
_40
_39
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fbezierdraw
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_25
_5
	call	_fend
	ret
_2_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp-20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fbeziernew
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
	mov	ebx,_tbezier
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
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+44]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+48]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	call	_fbezierconnect
	mov	eax,[ebp-4]
	jmp	_7_leave
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
	ret	word 32
	.align	16
_fbezierdelete
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	__bbObjDelete
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fbezierdeleteall
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
	mov	[esp+4],_tbezier
	call	__bbObjEachFirst
	and	eax,eax
	jz	_10
_43
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fbezierdelete
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_43
_10
	mov	eax,0
	jmp	_9_leave
_9_leave
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
	.align	16
_fbeziermovepoint
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
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp+28]
	mov	[ebx],esi
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp+32]
	mov	[ebx],esi
	mov	ebx,[ebp+24]
	mov	[ebp-4],ebx
	cmp	[ebp-4],0
	jz	_45
	jmp	_44
_45
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_46
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
_46
	jmp	_44
_44
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_47
	mov	ebx,[ebp+24]
	mov	[ebp-16],ebx
	cmp	[ebp-16],0
	jz	_49
	cmp	[ebp-16],2
	jz	_50
	jmp	_48
_49
	mov	ebx,[ebp+28]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	jmp	_48
_50
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	jmp	_48
_48
_47
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_51
	mov	ebx,[ebp+24]
	mov	[ebp-20],ebx
	cmp	[ebp-20],1
	jz	_53
	cmp	[ebp-20],3
	jz	_54
	jmp	_52
_53
	mov	ebx,[ebp+28]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	jmp	_52
_54
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	jmp	_52
_52
_51
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fbezierconnect
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tbezier
	call	__bbObjEachFirst
	and	eax,eax
	jz	_16
_55
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,12
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tbezier
	call	__bbObjEachFirst
	and	eax,eax
	jz	_17
_56
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjCompare
	cmp	eax,0
	jz	_57
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-16]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1098907648
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_58
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,12
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
_58
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-16]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1098907648
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_59
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
_59
_57
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_56
_17
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_55
_16
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fbezierselect
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tbezier
	call	__bbObjEachFirst
	and	eax,eax
	jz	_19
_60
	mov	[ebp-8],0
	jmp	_61
_62
	sub	esp,20
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],8
	mov	[esp+16],1
	mov	[esp+8],8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	eax,esi
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,[ebp+20]
	push	eax
	fild	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_63
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,[ebp+24]
	push	eax
	fild	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_64
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	eax,[ebp+20]
	push	eax
	fild	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_65
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	eax,[ebp+24]
	push	eax
	fild	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_66
	mov	ebx,[ebp-8]
	mov	[_vbeziercontrolpoint],ebx
	mov	eax,[ebp-4]
	jmp	_18_leave
_66
_65
_64
_63
	add	[ebp-8],1
_61
	cmp	[ebp-8],3
	jle	_62
_20
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_60
_19
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fbezierdraw
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_tbezier
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	[ebp-8],0
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,1065353216
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,1065353216
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	__bbFPow
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-4]
	mov	edi,[edi]
	add	edi,0
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,[ebp-8]
	push	edx
	fld	[esp]
	pop	edx
	fsubp	st(1)
	fmulp	st(1)
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	faddp	st(1)
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	__bbFPow
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-12],esi
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,1065353216
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,1065353216
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	__bbFPow
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-4]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,[ebp-8]
	push	edx
	fld	[esp]
	pop	edx
	fsubp	st(1)
	fmulp	st(1)
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	faddp	st(1)
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	__bbFPow
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-16],esi
	mov	ebx,[ebp-12]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-24],ebx
	jmp	_68
_67
	mov	[ebp-8],0
	mov	[ebp-28],0
	jmp	_69
_70
	sub	esp,20
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],8
	mov	[esp+16],1
	mov	[esp+8],8
	mov	eax,[ebp-28]
	shl	eax,byte 2
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	eax,esi
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	add	[ebp-28],1
_69
	cmp	[ebp-28],3
	jle	_70
_23
	jmp	_72
_71
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,1065353216
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,1065353216
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	__bbFPow
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-4]
	mov	edi,[edi]
	add	edi,0
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,[ebp-8]
	push	edx
	fld	[esp]
	pop	edx
	fsubp	st(1)
	fmulp	st(1)
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	faddp	st(1)
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	__bbFPow
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-12],esi
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,1065353216
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,1065353216
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	__bbFPow
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-4]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,[ebp-8]
	push	edx
	fld	[esp]
	pop	edx
	fsubp	st(1)
	fmulp	st(1)
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	faddp	st(1)
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	__bbFPow
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-16],esi
	sub	esp,16
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	mov	ebx,[ebp-12]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
_72
	mov	eax,[ebp-8]
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
	setae	al
	movzx	eax,al
	and	eax,eax
	jnz	_71
_24
	mov	[ebp-8],1065353216
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,1065353216
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,1065353216
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	__bbFPow
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-4]
	mov	edi,[edi]
	add	edi,0
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,[ebp-8]
	push	edx
	fld	[esp]
	pop	edx
	fsubp	st(1)
	fmulp	st(1)
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	faddp	st(1)
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	__bbFPow
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-12],esi
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,1065353216
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,1065353216
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	__bbFPow
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-4]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,[ebp-8]
	push	edx
	fld	[esp]
	pop	edx
	fsubp	st(1)
	fmulp	st(1)
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	faddp	st(1)
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	__bbFPow
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-16],esi
	sub	esp,16
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNext
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbObjStore
_68
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_67
_22
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vbeziercontrolpoint	.dd	0
_26	.db	"Continuous Bezier Spline by Jeppe Nielsen",0
_27	.db	"Left mouse button to drag control points",0
_28	.db	"Right mouse button to create a new bezier piece",0
_29	.db	"+/- to control curve smoothness : ",0
	.align	4
_3	.dd	6
	.dd	4
	.dd	__bbFltType
	.align	4
_4	.dd	6
	.dd	4
	.dd	__bbFltType
	.align	4
_tbezier	.dd	5
_41	.dd	0
	.dd	_41
	.dd	_41
	.dd	0
	.dd	-1
_42	.dd	0
	.dd	_42
	.dd	_42
	.dd	0
	.dd	-1
	.dd	5
	.dd	_3
	.dd	_4
	.dd	_tbezier
	.dd	_tbezier
	.dd	__bbFltType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

