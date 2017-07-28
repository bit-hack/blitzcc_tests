
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
_fnbdreamfilter_create
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
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcreatemesh
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],1065353216
	mov	[esp+4],-1082130432
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],-1082130432
	mov	[esp+4],-1082130432
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],0
	mov	[esp+8],-1082130432
	mov	[esp+4],1065353216
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],1
	mov	[esp+4],3
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddtriangle
	mov	[ebp-16],1066192077
	mov	ebx,1065537765
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	sub	esp,20
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],981668463
	mov	[esp+4],-1165815185
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],-10000
	call	_fentityorder
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],3
	call	_fentityblend
	mov	ebx,[ebp-4]
	mov	[_vg_blursprite],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],256
	mov	[esp],256
	call	_fcreatetexture
	mov	[_vg_blurtex],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vg_blurtex]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitytexture
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fnbdreamfilter_destroy
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[_vg_blurtex]
	mov	[esp],eax
	call	_ffreetexture
	sub	esp,4
	mov	eax,[_vg_blursprite]
	mov	[esp],eax
	call	_ffreeentity
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fnbdreamfilter_update
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,20
	mov	[esp+12],256
	mov	[esp+16],256
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraviewport
	mov	[ebp-8],220
	sub	esp,16
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vg_blursprite]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,40
	mov	eax,[_vg_blurtex]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+28],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+24],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	[esp+12],256
	mov	[esp+8],256
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	sub	esp,20
	call	_fgraphicswidth
	mov	[esp+12],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+16],ebx
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraviewport
	mov	[ebp-8],100
	sub	esp,16
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vg_blursprite]
	mov	[esp],eax
	call	_fentitycolor
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vg_blurtex	.dd	0
	.align	4
_vg_blursprite	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

