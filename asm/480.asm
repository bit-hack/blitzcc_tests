
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
_fdefaulttextureentity
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],64
	mov	[esp],64
	call	_fcreatetexture
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],1040187392
	mov	[esp+8],1040187392
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscaletexture
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp+32]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],1
	mov	[esp+8],32
	mov	[esp+4],0
	mov	[esp],32
	call	_frect
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],1
	mov	[esp+8],32
	mov	[esp+4],32
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp+40]
	mov	[esp+4],ebx
	mov	esi,[ebp+44]
	mov	[esp+8],esi
	mov	eax,[ebp+36]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],1
	mov	[esp+8],32
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],1
	mov	[esp+8],32
	mov	[esp+4],32
	mov	[esp],32
	call	_frect
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreetexture
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

