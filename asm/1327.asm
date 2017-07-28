
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],6
	call	_fcreatecone
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],1124073472
	mov	[esp+12],1124073472
	mov	[esp+4],1132396544
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,16
	mov	[esp+8],1124073472
	mov	[esp+12],1115684864
	mov	[esp+4],1124073472
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],1109393408
	mov	[esp+16],0
	mov	[esp+8],1106247680
	mov	[esp+4],1109393408
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-16],eax
	sub	esp,20
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp+12],eax
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-36]
	sar	ebx,byte 1
	mov	[esp+16],ebx
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-36]
	sar	ebx,byte 1
	mov	[esp+8],ebx
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fcameraprojmode
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-20],eax
	sub	esp,20
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp+12],eax
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-36]
	sar	ebx,byte 1
	mov	[esp+16],ebx
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fcameraprojmode
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-24],eax
	sub	esp,20
	mov	ebx,[ebp-28]
	mov	[esp+12],ebx
	call	_fgraphicsheight
	sar	eax,byte 1
	mov	[esp+16],eax
	mov	[esp+8],0
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp+4],eax
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcameraviewport
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fcameraprojmode
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-32],eax
	sub	esp,20
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp+12],eax
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-36]
	sar	ebx,byte 1
	mov	[esp+16],ebx
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-36]
	sar	ebx,byte 1
	mov	[esp+8],ebx
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp+4],eax
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcameraviewport
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],1112014848
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1112014848
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1112014848
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1112539136
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1112014848
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	[esp+4],1112276992
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1112014848
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1114898432
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1114636288
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1112276992
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1113325568
	mov	[esp+16],0
	mov	[esp+8],1084227584
	mov	[esp+4],1113587712
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,20
	mov	[esp+12],1127481344
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fentityparent
	jmp	_5
_4
	sub	esp,24
	mov	[esp],208
	call	_fkeydown
	mov	[ebp-36],eax
	sub	esp,4
	mov	[esp],200
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-36]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftranslateentity
	mov	ebx,eax
	sub	esp,24
	mov	[esp],203
	call	_fkeydown
	mov	[ebp-36],eax
	sub	esp,4
	mov	[esp],205
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-36]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],0
	call	_fwireframe
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_5
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_4
_3
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

