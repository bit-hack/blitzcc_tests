
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
_fplotfastcircle
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
	mov	[ebp-4],0
	mov	ebx,[ebp+28]
	mov	[ebp-8],ebx
	mov	ebx,1
	sub	ebx,[ebp+28]
	mov	[ebp-12],ebx
	mov	[ebp-16],255
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	add	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	sub	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	sub	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	sub	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	add	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	sub	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	add	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	sub	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	sub	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	sub	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	add	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	sub	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_6
_5
	cmp	[ebp-12],0
	jge	_7
	mov	ebx,[ebp-4]
	add	ebx,1
	shl	ebx,byte 1
	add	[ebp-12],ebx
	add	[ebp-4],1
	jmp	_8
_7
	mov	ebx,[ebp-4]
	sub	ebx,[ebp-8]
	shl	ebx,byte 1
	add	ebx,[ebp-12]
	add	ebx,5
	mov	[ebp-12],ebx
	add	[ebp-4],1
	sub	[ebp-8],1
_8
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	add	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	add	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	sub	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	sub	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	sub	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	sub	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	add	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	sub	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	add	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	sub	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	sub	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	sub	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
_6
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jg	_5
_4
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_funlockbuffer
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

