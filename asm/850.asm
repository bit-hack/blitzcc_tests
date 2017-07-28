
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsetup_example
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fzorderize
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	mov	eax,0
	jmp	_3_leave
_3_leave
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
	ret	word 4
	.align	16
_fmainloop_example
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
	mov	[esp+4],_tzorder
	call	__bbObjEachFirst
	and	eax,eax
	jz	_5
_22
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fsortalpha
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_22
_5
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
	ret	word 4
	.align	16
_fzorderize
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,72
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
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_tzorder
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,32
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,28
	mov	eax,[eax]
	shl	eax,byte 1
	add	eax,8
	mov	[esp],eax
	call	_fcreatebank
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	call	_fbanksize
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fdebuglog
	mov	ebx,[ebp+24]
	and	ebx,ebx
	jz	_23
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,28
	mov	eax,[eax]
	shl	eax,byte 1
	add	eax,8
	mov	[esp],eax
	call	_fcreatebank
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
_23
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,28
	mov	eax,[eax]
	shl	eax,byte 1
	add	eax,8
	mov	[esp],eax
	call	_fcreatebank
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	mov	[ebp-8],0
	jmp	_24
_25
	sub	esp,12
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokeshort
	mov	ebx,[ebp+24]
	and	ebx,ebx
	jz	_26
	sub	esp,12
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokeshort
_26
	sub	esp,12
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokeshort
	add	[ebp-8],1
_24
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	[ebp-8],ebx
	jle	_25
_7
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopymesh
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	cmp	[ebp-12],0
	jnz	_27
	sub	esp,8
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_27
	mov	[ebp-16],0
	jmp	_30
_29
	mov	[ebp-16],1
	mov	[ebp-8],1
	jmp	_31
_32
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-20],ebx
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-24],ebx
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-28],ebx
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fvertexx
	mov	[ebp-72],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-72]
	faddp	st(1)
	mov	[ebp-72],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-72]
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-36],ebx
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-40],ebx
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-44],ebx
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fvertexx
	mov	[ebp-72],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-72]
	faddp	st(1)
	mov	[ebp-72],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-44]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-72]
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_33
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[ebp-52],eax
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokeshort
	sub	esp,12
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokeshort
	mov	[ebp-16],0
_33
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-20],ebx
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-24],ebx
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-28],ebx
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fvertexz
	mov	[ebp-72],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-72]
	faddp	st(1)
	mov	[ebp-72],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-72]
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-36],ebx
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-40],ebx
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-44],ebx
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fvertexz
	mov	[ebp-72],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-72]
	faddp	st(1)
	mov	[ebp-72],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-44]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-72]
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	mov	eax,[ebp-56]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_34
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[ebp-52],eax
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokeshort
	sub	esp,12
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokeshort
	mov	[ebp-16],0
_34
	add	[ebp-8],1
_31
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	[ebp-8],ebx
	jle	_32
_9
	mov	ebx,[ebp+24]
	and	ebx,ebx
	jz	_35
	mov	[ebp-8],1
	jmp	_36
_37
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-20],ebx
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-24],ebx
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-28],ebx
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fvertexx
	mov	[ebp-72],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-72]
	faddp	st(1)
	mov	[ebp-72],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-72]
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-64],eax
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-36],ebx
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-40],ebx
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+4],eax
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrianglevertex
	mov	ebx,eax
	mov	[ebp-44],ebx
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fvertexx
	mov	[ebp-72],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-72]
	faddp	st(1)
	mov	[ebp-72],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	esi,[ebp-44]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-72]
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-68],eax
	mov	eax,[ebp-64]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-68]
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
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[ebp-52],eax
	sub	esp,20
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokeshort
	sub	esp,12
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokeshort
	mov	[ebp-16],0
_38
	add	[ebp-8],1
_36
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	[ebp-8],ebx
	jle	_37
_10
_35
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_39
	call	_fend
_39
_30
	cmp	[ebp-16],0
	jz	_29
_8
	mov	eax,[ebp-4]
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fsortalpha
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	[esp],0
	call	_ftformvector
	sub	esp,4
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_ftformedz
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-32]
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	mov	eax,ebx
	call	_ftformedx
	mov	ebx,eax
	mov	eax,[ebp-40]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	mov	eax,esi
	call	_ftformedy
	mov	esi,eax
	mov	eax,[ebp-40]
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp],esi
	mov	eax,esi
	call	__bbFAbs
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_40
	cmp	[ebp-28],1
	jz	_41
	mov	[ebp-28],1
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclearsurface
	call	_ftformedx
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_42
	mov	[ebp-24],0
	jmp	_43
_44
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[ebp-12],eax
	sub	esp,28
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+8],eax
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp+12],esi
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-24],1
_43
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	[ebp-24],ebx
	jle	_44
_12
	jmp	_45
_42
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	jmp	_46
_47
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[ebp-12],eax
	sub	esp,28
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+8],eax
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp+12],esi
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-24],-1
_46
	cmp	[ebp-24],0
	jge	_47
_13
_45
_41
	jmp	_48
_40
	sub	esp,4
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_ftformedz
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-32]
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_49
	cmp	[ebp-28],2
	setnz	al
	movzx	eax,al
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	and	eax,ebx
	and	eax,eax
	jz	_50
	mov	[ebp-28],2
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclearsurface
	call	_ftformedy
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_51
	mov	[ebp-24],0
	jmp	_52
_53
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[ebp-16],eax
	sub	esp,28
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+8],eax
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp+12],esi
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-24],1
_52
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	[ebp-24],ebx
	jle	_53
_14
	jmp	_54
_51
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	jmp	_55
_56
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[ebp-16],eax
	sub	esp,28
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+8],eax
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp+12],esi
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-24],-1
_55
	cmp	[ebp-24],0
	jge	_56
_15
_54
_50
	jmp	_57
_49
	cmp	[ebp-28],3
	jz	_58
	mov	[ebp-28],3
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclearsurface
	call	_ftformedz
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_59
	mov	[ebp-24],0
	jmp	_60
_61
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[ebp-20],eax
	sub	esp,28
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+8],eax
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp+12],esi
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-24],1
_60
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	[ebp-24],ebx
	jle	_61
_16
	jmp	_62
_59
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	jmp	_63
_64
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[ebp-20],eax
	sub	esp,28
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+8],eax
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp+12],esi
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-24],-1
_63
	cmp	[ebp-24],0
	jge	_64
_17
_62
_58
_57
_48
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_ffreezorder
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
	mov	[esp+4],_tzorder
	call	__bbObjEachFirst
	and	eax,eax
	jz	_19
_65
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_65
_19
	sub	esp,4
	mov	eax,_tzorder
	mov	[esp],eax
	call	__bbObjDeleteEach
	mov	eax,0
	jmp	_18_leave
_18_leave
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
_tzorder	.dd	5
_20	.dd	0
	.dd	_20
	.dd	_20
	.dd	0
	.dd	-1
_21	.dd	0
	.dd	_21
	.dd	_21
	.dd	0
	.dd	-1
	.dd	9
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
_28	.db	"No surface found",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

