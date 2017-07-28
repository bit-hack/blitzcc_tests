
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
_fcreatepillmesh
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[ebp+28]
	shl	eax,byte 1
	mov	[esp],eax
	call	_fcreatecylinder
	mov	[ebp-4],eax
	sub	esp,16
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+20]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-8],eax
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	esi,[ebp+20]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_faddmesh
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-8],eax
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	esi,[ebp+20]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_faddmesh
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	mov	eax,[ebp-4]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

