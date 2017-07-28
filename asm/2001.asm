
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics
	call	_fgraphicsheight
	sar	eax,byte 5
	mov	[_vsize],eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-4],1
	jmp	_9
_10
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tobj
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],31
	call	_frand
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],31
	call	_frand
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],4
	call	_frand
	imul	eax,63
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],4
	call	_frand
	imul	eax,63
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],4
	call	_frand
	imul	eax,63
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	mov	ebx,0
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	add	[ebp-4],1
_9
	cmp	[ebp-4],100
	jle	_10
_3
	mov	[_vobjhold],0
_11
	call	_fcls
	call	_fdrawgrid
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_11
_4
	ret
_2_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	ret	word 0
	.align	16
_fdrawgrid
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
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],100
	mov	[esp],100
	call	_fcolor
	mov	[ebp-4],0
	jmp	_14
_15
	sub	esp,20
	mov	ebx,[_vsize]
	shl	ebx,byte 5
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vsize]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-4]
	imul	eax,[_vsize]
	mov	[esp],eax
	call	_frect
	sub	esp,20
	mov	ebx,[_vsize]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vsize]
	shl	esi,byte 5
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	imul	ebx,[_vsize]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	add	[ebp-4],1
_14
	cmp	[ebp-4],31
	jle	_15
_6
	mov	[ebp-8],-1
	mov	[ebp-12],-1
	call	_fmousex
	mov	ebx,[_vsize]
	shl	ebx,byte 5
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	[ebp-24],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esi,[_vsize]
	shl	esi,byte 5
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_16
	sub	esp,4
	call	_fmousex
	mov	ecx,[_vsize]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,4
	call	_fmousey
	mov	ecx,[_vsize]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vsize]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vsize]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	imul	ebx,[_vsize]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	imul	eax,[_vsize]
	mov	[esp],eax
	call	_frect
_16
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],_tobj
	call	__bbObjEachFirst
	and	eax,eax
	jz	_7
_17
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	cmp	[_vobjhold],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_18
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	cmp	eax,[ebp-8]
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,[ebp-12]
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_19
	mov	ebx,1
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	[_vobjhold],1
_19
_18
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-24]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_20
	cmp	[ebp-8],0
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-12],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_21
	mov	ebx,[ebp-8]
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_21
	mov	ebx,0
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	[_vobjhold],0
_20
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_22
	sub	esp,12
	call	_fmousex
	mov	[esp+4],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+8],ebx
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdrawobj
	mov	ebx,eax
	jmp	_23
_22
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	imul	ebx,[_vsize]
	mov	esi,[_vsize]
	sar	esi,byte 1
	add	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	imul	esi,[_vsize]
	mov	edi,[_vsize]
	sar	edi,byte 1
	add	esi,edi
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fdrawobj
_23
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_17
_7
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawobj
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp+28]
	mov	esi,[_vsize]
	sar	esi,byte 1
	sub	ebx,esi
	add	ebx,1
	mov	[esp+4],ebx
	mov	esi,[_vsize]
	sub	esi,2
	mov	[esp+12],esi
	mov	[esp+16],1
	mov	edi,[_vsize]
	sub	edi,2
	mov	[esp+8],edi
	mov	eax,[ebp+24]
	mov	esi,[_vsize]
	sar	esi,byte 1
	sub	eax,esi
	add	eax,1
	mov	[esp],eax
	call	_foval
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_24
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp+28]
	mov	esi,[_vsize]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[_vsize]
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	edi,[_vsize]
	mov	[esp+8],edi
	mov	eax,[ebp+24]
	mov	esi,[_vsize]
	sar	esi,byte 1
	sub	eax,esi
	mov	[esp],eax
	call	_foval
_24
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_vsize	.dd	0
	.align	4
_vobjhold	.dd	0
	.align	4
_tobj	.dd	5
_12	.dd	0
	.dd	_12
	.dd	_12
	.dd	0
	.dd	-1
_13	.dd	0
	.dd	_13
	.dd	_13
	.dd	0
	.dd	-1
	.dd	6
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

