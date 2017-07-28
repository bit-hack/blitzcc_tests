
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
	mov	[esp+12],1
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,20
	mov	[esp+12],-1041235968
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],8
	call	_fcreatecone
	mov	[_vship],eax
	sub	esp,16
	mov	[esp+8],1073741824
	mov	[esp+12],1065353216
	mov	[esp+4],1065353216
	mov	eax,[_vship]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1132396544
	mov	[esp+4],0
	mov	eax,[_vship]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vtarget],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[_vtarget]
	mov	[esp],eax
	call	_fentitycolor
_5
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_6
	sub	esp,28
	mov	[esp],-20
	mov	[esp+4],20
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],1092616192
	mov	[esp+16],0
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],-20
	mov	[esp+4],20
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vtarget]
	mov	[esp],eax
	call	_fpositionentity
_6
	sub	esp,8
	mov	eax,[_vship]
	mov	[esp],eax
	mov	ebx,[_vtarget]
	mov	[esp+4],ebx
	call	_fdeltaroll
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,20
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vship]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_5
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdeltaroll
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+12],ebx
	mov	esi,[ebp+20]
	mov	[esp+16],esi
	mov	[esp+8],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftformpoint
	sub	esp,12
	mov	[esp+4],0
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fvectoryaw
	jmp	_4_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vcamera	.dd	0
	.align	4
_vship	.dd	0
	.align	4
_vtarget	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

