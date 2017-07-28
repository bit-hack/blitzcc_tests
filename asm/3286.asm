
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
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
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],625
	mov	[esp],1000
	call	_fgraphics3d
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,20
	call	_fgraphicswidth
	mov	[esp+12],eax
	mov	[ebp-24],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+16],ebx
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,12
	mov	[esp+4],1036831949
	mov	[esp+8],1120403456
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1008981770
	mov	[esp+12],1008981770
	mov	[esp+4],1008981770
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vcenter],eax
	sub	esp,20
	mov	[esp+12],1112014848
	mov	[esp+16],1
	mov	[esp+8],0
	mov	[esp+4],1112014848
	mov	eax,[_vcenter]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[_vdlight],eax
	sub	esp,16
	mov	[esp+8],1128267776
	mov	[esp+12],1128267776
	mov	[esp+4],1128267776
	mov	eax,[_vdlight]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,20
	mov	[esp+12],-998637568
	mov	[esp+16],1
	mov	[esp+8],1148846080
	mov	[esp+4],1112014848
	mov	eax,[_vdlight]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],1
	mov	[esp+8],0
	mov	[esp+4],1110704128
	mov	eax,[_vdlight]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,12
	mov	[esp+4],1108869120
	mov	[esp+8],1108869120
	mov	[esp],1108869120
	call	_fambientlight
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vcuberenderer],eax
	sub	esp,16
	mov	[esp+8],1056964608
	mov	[esp+12],1056964608
	mov	[esp+4],1056964608
	mov	eax,[_vcuberenderer]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1056964608
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vcuberenderer]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],255
	call	_frand
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],255
	call	_frand
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],255
	call	_frand
	mov	[ebp-16],eax
	sub	esp,16
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
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
	mov	eax,[_vcuberenderer]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],1
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcuberenderer]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[_vquadrenderer],eax
	sub	esp,8
	mov	eax,[_vquadrenderer]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],1056964608
	mov	[esp+4],1056964608
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],1056964608
	mov	[esp+4],-1090519040
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],-1090519040
	mov	[esp+4],1056964608
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],-1090519040
	mov	[esp+4],-1090519040
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],3
	mov	[esp+4],2
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,4
	mov	eax,[_vquadrenderer]
	mov	[esp],eax
	call	_fupdatenormals
	sub	esp,16
	mov	ebx,1041799321
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,1041799321
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-16]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,1041799321
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-8]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vquadrenderer]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[_vquadrenderer]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],1
	mov	[esp+8],1069547520
	mov	[esp+4],0
	mov	eax,[_vquadrenderer]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1077936128
	mov	[esp+16],1
	mov	[esp+8],1070805811
	mov	[esp+4],1077936128
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],1
	mov	[esp+8],1124532224
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],30
	call	_fcreatetimer
	mov	[_vmainlooptimer],eax
	call	_fmain
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmain
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
_5
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	cmp	eax,1
	jnz	_6
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],255
	call	_frand
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],255
	call	_frand
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],255
	call	_frand
	mov	[ebp-12],eax
	sub	esp,16
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vcuberenderer]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,16
	mov	ebx,1041799321
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,1041799321
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-12]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,1041799321
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-4]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vquadrenderer]
	mov	[esp],eax
	call	_fentitycolor
_6
	sub	esp,4
	mov	[esp],28
	call	_fkeyhit
	cmp	eax,1
	jnz	_7
	sub	esp,28
	mov	[esp],0
	mov	[esp+4],1148846080
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],-998637568
	mov	[esp+16],1
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],-998637568
	mov	[esp+4],1148846080
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vdlight]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[_vcenter]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vdlight]
	mov	[esp],eax
	call	_fpointentity
_7
	sub	esp,4
	mov	[esp],0
	call	_fwireframe
	sub	esp,4
	mov	[esp],2
	call	_fkeydown
	cmp	eax,1
	jnz	_8
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
_8
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],15
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],30
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],45
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	eax,[_vmainlooptimer]
	mov	[esp],eax
	call	_fwaittimer
	sub	esp,4
	mov	[esp],1
	call	_fvwait
	sub	esp,4
	mov	[esp],0
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_5
_4
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vcamera	.dd	0
	.align	4
_vcenter	.dd	0
	.align	4
_vdlight	.dd	0
	.align	4
_vcuberenderer	.dd	0
	.align	4
_vquadrenderer	.dd	0
	.align	4
_vmainlooptimer	.dd	0
_9	.db	"press space to change the color of the thing",0
_10	.db	"press enter to change the light position",0
_11	.db	"the cube is lighted/shaded normally (with directx7 lighting/shading)",0
_12	.db	"the quad is fullbright and has the same color than the shaded (not lighted) triangles of the cube",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

