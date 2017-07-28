
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
_floadskystrip
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
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],6
	mov	[esp+12],512
	mov	[esp+8],512
	mov	[esp+4],57
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadanimtexture
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fcreatebrush
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fbrushtexture
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fcreatebrush
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fbrushtexture
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fcreatesurface
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],-1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],1065353216
	mov	[esp+8],-1082130432
	mov	[esp+4],-1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],1065353216
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],3
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreebrush
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fcreatebrush
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fbrushtexture
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fcreatesurface
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],-1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],-1082130432
	mov	[esp+8],1065353216
	mov	[esp+4],-1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],-1082130432
	mov	[esp+8],-1082130432
	mov	[esp+4],-1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],1065353216
	mov	[esp+8],-1082130432
	mov	[esp+4],-1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],3
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreebrush
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fcreatebrush
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fbrushtexture
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fcreatesurface
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],-1082130432
	mov	[esp+8],1065353216
	mov	[esp+4],-1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],-1082130432
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],-1082130432
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],-1082130432
	mov	[esp+8],-1082130432
	mov	[esp+4],-1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],3
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreebrush
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fcreatebrush
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],3
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fbrushtexture
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fcreatesurface
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],-1082130432
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],1065353216
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],-1082130432
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],3
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreebrush
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fcreatebrush
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],4
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fbrushtexture
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fcreatesurface
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],-1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],-1082130432
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],-1082130432
	mov	[esp+8],1065353216
	mov	[esp+4],-1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],3
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreebrush
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fcreatebrush
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],5
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fbrushtexture
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fcreatesurface
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],-1082130432
	mov	[esp+8],-1082130432
	mov	[esp+4],-1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],-1082130432
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],1065353216
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],1065353216
	mov	[esp+8],-1082130432
	mov	[esp+4],-1082130432
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],3
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreebrush
	sub	esp,16
	mov	[esp+8],1161527296
	mov	[esp+12],1161527296
	mov	[esp+4],1161527296
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fflipmesh
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],9
	call	_fentityfx
	mov	eax,[ebp-8]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

