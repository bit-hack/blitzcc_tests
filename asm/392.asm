
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
_fdecal
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcountcollisions
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_5
_6
	sub	esp,28
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fcollisiony
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fcollisionz
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fcollisionx
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,32
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fcollisionnz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+16],3
	mov	[esp+20],1065353216
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fcollisionny
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	call	_fcollisionnx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faligntovector
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1127481344
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1138501878
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmoveentity
	mov	eax,[ebp+20]
	jmp	_3_leave
	add	[ebp-8],1
_5
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_6
_4
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

