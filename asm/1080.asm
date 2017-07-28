
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
_fvertexisused
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_16
_17
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	cmp	eax,[ebp+24]
	jnz	_18
	mov	eax,1
	jmp	_3_leave
_18
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	cmp	eax,[ebp+24]
	jnz	_19
	mov	eax,1
	jmp	_3_leave
_19
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	cmp	eax,[ebp+24]
	jnz	_20
	mov	eax,1
	jmp	_3_leave
_20
	add	[ebp-4],1
_16
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	cmp	[ebp-4],eax
	jle	_17
_4
	mov	eax,0
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fclearunusedvertices
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_21
_22
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fvertexisused
	cmp	eax,0
	jnz	_23
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fremovevertex
_23
	add	[ebp-4],1
_21
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-4],eax
	jle	_22
_6
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fremovetriangle
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
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-12],eax
	mov	[ebp-16],0
	jmp	_24
_25
	sub	esp,40
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+20],eax
	mov	[ebp-24],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_fvertexw
	mov	esi,eax
	mov	eax,[ebp-24]
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+24],esi
	mov	[ebp-24],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_fvertexu
	mov	esi,eax
	mov	eax,[ebp-24]
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	mov	[ebp-20],ebx
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fvertexny
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexnz
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexnx
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fvertexnormal
	sub	esp,32
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fvertexblue
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+16],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexalpha
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexgreen
	mov	ebx,eax
	mov	eax,[ebp-24]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	call	_fvertexred
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fvertexcolor
	add	[ebp-16],1
_24
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-16],eax
	jle	_25
_8
	mov	[ebp-16],0
	jmp	_26
_27
	mov	ebx,[ebp+24]
	cmp	[ebp-16],ebx
	jz	_28
	sub	esp,28
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+8],eax
	mov	[ebp-24],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[esp+12],esi
	mov	[ebp-24],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddtriangle
_28
	add	[ebp-16],1
_26
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	cmp	[ebp-16],eax
	jle	_27
_9
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcopysurface
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fremovevertex
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-12],eax
	mov	[ebp-16],0
	jmp	_29
_30
	mov	ebx,[ebp+24]
	cmp	[ebp-16],ebx
	jz	_31
	sub	esp,40
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+20],eax
	mov	[ebp-36],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_fvertexw
	mov	esi,eax
	mov	eax,[ebp-36]
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+24],esi
	mov	[ebp-36],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_fvertexu
	mov	esi,eax
	mov	eax,[ebp-36]
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	mov	[ebp-20],ebx
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fvertexny
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexnz
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexnx
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fvertexnormal
	sub	esp,32
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fvertexblue
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+16],eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexalpha
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexgreen
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	call	_fvertexred
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fvertexcolor
_31
	add	[ebp-16],1
_29
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-16],eax
	jle	_30
_11
	mov	[ebp-16],0
	jmp	_32
_33
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-24],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-28],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-32],eax
	mov	ebx,[ebp+24]
	cmp	[ebp-24],ebx
	jle	_34
	sub	[ebp-24],1
_34
	mov	ebx,[ebp+24]
	cmp	[ebp-28],ebx
	jle	_35
	sub	[ebp-28],1
_35
	mov	ebx,[ebp+24]
	cmp	[ebp-32],ebx
	jle	_36
	sub	[ebp-32],1
_36
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	esi,[ebp-32]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-16],1
_32
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	cmp	[ebp-16],eax
	jle	_33
_12
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcopysurface
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
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
_fcopysurface
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
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclearsurface
	mov	[ebp-12],0
	jmp	_37
_38
	sub	esp,40
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+20],eax
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_fvertexw
	mov	esi,eax
	mov	eax,[ebp-20]
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+24],esi
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_fvertexu
	mov	esi,eax
	mov	eax,[ebp-20]
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-20]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	mov	[ebp-16],ebx
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexny
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexnz
	mov	ebx,eax
	mov	eax,[ebp-20]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-20],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexnx
	mov	ebx,eax
	mov	eax,[ebp-20]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexnormal
	sub	esp,32
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexblue
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+16],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexalpha
	mov	ebx,eax
	mov	eax,[ebp-20]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	[ebp-20],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexgreen
	mov	ebx,eax
	mov	eax,[ebp-20]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	call	_fvertexred
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexcolor
	add	[ebp-12],1
_37
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_38
_14
	mov	[ebp-12],0
	jmp	_39
_40
	sub	esp,28
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+8],eax
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[esp+12],esi
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-12],1
_39
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_40
_15
	mov	eax,0
	jmp	_13_leave
_13_leave
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

