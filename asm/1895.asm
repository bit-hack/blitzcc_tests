
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
	sub	esp,4
	mov	eax,_alistcontent
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32768
	mov	esi,_alistcontent
	add	esi,12
	mov	[esi],ebx
	mov	ebx,8
	mov	esi,_alistcontent
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_alistcontent
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_alistcolors
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32768
	mov	esi,_alistcolors
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_alistcolors
	add	esi,16
	mov	[esi],ebx
	mov	ebx,8
	mov	esi,_alistcolors
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_alistcolors
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_alistlength
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,8
	mov	esi,_alistlength
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_alistlength
	mov	[esp],eax
	call	__bbDimArray
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsetitem
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_26
	sub	esp,8
	mov	eax,_alistcontent
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+20]
	add	eax,[ebp+24]
	shl	eax,byte 2
	add	eax,[_alistcontent]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
_26
	cmp	[ebp+32],0
	jl	_27
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+24]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,[ebp+32]
	mov	[ebx],esi
_27
	cmp	[ebp+32],-2
	jnz	_28
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+24]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,-1
	mov	[ebx],esi
_28
	cmp	[ebp+36],0
	jl	_29
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp+24]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,[ebp+36]
	mov	[ebx],esi
_29
	cmp	[ebp+36],-2
	jnz	_30
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp+24]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,-1
	mov	[ebx],esi
_30
	cmp	[ebp+40],0
	jl	_31
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp+24]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,[ebp+40]
	mov	[ebx],esi
_31
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fsetallitems
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_32
_33
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_34
	sub	esp,8
	mov	eax,_alistcontent
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+20]
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_alistcontent]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
_34
	cmp	[ebp+28],0
	jl	_35
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,[ebp+28]
	mov	[ebx],esi
_35
	cmp	[ebp+28],-2
	jnz	_36
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,-1
	mov	[ebx],esi
_36
	cmp	[ebp+32],0
	jl	_37
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,[ebp+32]
	mov	[ebx],esi
_37
	cmp	[ebp+32],-2
	jnz	_38
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,-1
	mov	[ebx],esi
_38
	cmp	[ebp+36],0
	jl	_39
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,[ebp+36]
	mov	[ebx],esi
_39
	add	[ebp-4],1
_32
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	cmp	[ebp-4],ebx
	jle	_33
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fresetlist
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_alistlength]
	mov	[esi],ebx
	mov	[ebp-4],1
	jmp	_40
_41
	sub	esp,8
	mov	eax,_alistcontent
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+20]
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_alistcontent]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,0
	mov	[ebx],esi
	add	[ebp-4],1
_40
	cmp	[ebp-4],32768
	jle	_41
_7
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fadditem
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_alistlength]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_alistlength]
	mov	eax,[eax]
	mov	ebx,_alistcontent
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_alistcontent]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	mov	esi,_alistcolors
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,[ebp+28]
	mov	[ebx],esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	mov	esi,_alistcolors
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,[ebp+32]
	mov	[ebx],esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	mov	esi,_alistcolors
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	ebx,esi
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,[ebp+36]
	mov	[ebx],esi
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fdeleteitem
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	cmp	[ebp+24],-1
	jnz	_43
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	mov	[ebp+24],ebx
_43
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_alistlength]
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-4],ebx
	jmp	_44
_45
	sub	esp,12
	mov	eax,[ebp-4]
	add	eax,1
	mov	ebx,_alistcontent
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_alistcontent]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	ebx,_alistcontent
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_alistcontent]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	esi,_alistcolors
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	ebx,[ebx]
	mov	esi,_alistcolors
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-4]
	mov	edi,_alistcolors
	add	edi,16
	mov	edi,[edi]
	imul	edi,[ebp+20]
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_alistcolors]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	esi,_alistcolors
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	ebx,[ebx]
	mov	esi,_alistcolors
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-4]
	mov	edi,_alistcolors
	add	edi,16
	mov	edi,[edi]
	imul	edi,[ebp+20]
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_alistcolors]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	esi,_alistcolors
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	ebx,esi
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	ebx,[ebx]
	mov	esi,_alistcolors
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-4]
	mov	edi,_alistcolors
	add	edi,16
	mov	edi,[edi]
	imul	edi,[ebp+20]
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_alistcolors]
	mov	[esi],ebx
	add	[ebp-4],1
_44
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	cmp	[ebp-4],ebx
	jle	_45
_10
	sub	esp,8
	mov	eax,_alistcontent
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+20]
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_alistcontent]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_46
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,0
	mov	[ebx],esi
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fcreatecolorbank
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,4
	mov	[esp],48
	call	_fcreatebank
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],4
	mov	esi,[ebp+20]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	ebx,[ebp+20]
	mov	esi,16711422
	and	ebx,esi
	shr	ebx,byte 1
	mov	[esp+8],ebx
	mov	[esp+4],8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],12
	mov	esi,16777215
	sub	esi,[ebp+20]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	ebx,16777215
	sub	ebx,[ebp+20]
	mov	esi,16579836
	and	ebx,esi
	shr	ebx,byte 2
	mov	esi,16777215
	sub	esi,ebx
	mov	[esp+8],esi
	mov	[esp+4],16
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	ebx,16777215
	sub	ebx,[ebp+20]
	mov	esi,16711422
	and	ebx,esi
	shr	ebx,byte 1
	mov	esi,16777215
	sub	esi,ebx
	mov	[esp+8],esi
	mov	[esp+4],20
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	ebx,[ebp+20]
	mov	esi,16711422
	and	ebx,esi
	shr	ebx,byte 1
	mov	[esp+8],ebx
	mov	[esp+4],24
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	ebx,[ebp+20]
	mov	esi,16579836
	and	ebx,esi
	shr	ebx,byte 2
	mov	[esp+8],ebx
	mov	[esp+4],28
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],32
	mov	[esp+8],-1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],36
	mov	[esp+8],-1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],40
	mov	[esp+8],-1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],44
	mov	[esp+8],-1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	mov	eax,[ebp-4]
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fcreateusercolorbank
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,4
	mov	[esp],48
	call	_fcreatebank
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp+20]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],4
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],8
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],12
	mov	esi,[ebp+32]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],16
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],20
	mov	esi,[ebp+40]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],24
	mov	esi,[ebp+44]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],28
	mov	esi,[ebp+48]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],32
	mov	esi,[ebp+52]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],36
	mov	esi,[ebp+56]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],40
	mov	esi,[ebp+60]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],44
	mov	esi,[ebp+64]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	mov	eax,[ebp-4]
	jmp	_12_leave
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 48
	.align	16
_fgetfocus
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[ebp-4],0
	call	_fmousex
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	cmp	eax,ebx
	setle	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	ebx,[ebp+20]
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	ebx,eax
	call	_fmousey
	cmp	eax,[ebp+24]
	setge	al
	movzx	eax,al
	and	ebx,eax
	call	_fmousey
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	cmp	eax,esi
	setle	al
	movzx	eax,al
	and	ebx,eax
	and	ebx,ebx
	jz	_47
	call	_fmousey
	sub	eax,[ebp+24]
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-8]
	add	eax,ebx
	sub	eax,2
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	ecx,ebx
	cdq
	idiv	ecx
	add	eax,[ebp+40]
	mov	[ebp-4],eax
	jmp	_48
_47
	mov	eax,0
	jmp	_13_leave
_48
	mov	ebx,[ebp+36]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	cmp	[ebp-4],ebx
	jg	_49
	mov	eax,[ebp-4]
	jmp	_13_leave
	jmp	_50
_49
	mov	eax,0
	jmp	_13_leave
_50
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_flistoffset
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	call	_ffontheight
	mov	[ebp-4],eax
	mov	ebx,[ebp+28]
	sub	ebx,[ebp-4]
	sub	ebx,2
	mov	[ebp-8],ebx
	call	_fmousex
	sub	eax,[ebp+20]
	mov	[ebp-16],eax
	call	_fmousey
	sub	eax,[ebp+24]
	mov	[ebp-20],eax
	call	_fgetmouse
	mov	[ebp-24],eax
	mov	ebx,[ebp+36]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	cmp	ebx,[ebp+32]
	jg	_51
	mov	eax,[ebp+40]
	jmp	_14_leave
_51
	call	_fmousezspeed
	sub	[ebp+40],eax
	mov	eax,[ebp-8]
	cmp	[ebp-16],eax
	setg	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp+28]
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_52
	cmp	[ebp-24],0
	jz	_53
	cmp	[ebp-20],2
	setg	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,2
	add	ebx,[ebp-4]
	cmp	[ebp-20],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_54
	sub	esp,8
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	ebx,[ebp+40]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp+40],ebx
_54
	mov	eax,[ebp+32]
	sub	eax,[ebp-4]
	sub	eax,2
	cmp	[ebp-20],eax
	setg	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp+32]
	sub	ebx,2
	cmp	[ebp-20],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_55
	sub	esp,8
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	ebx,[ebp+40]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp+40],ebx
_55
_53
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	mov	[ebp-28],eax
	mov	ebx,2
	add	ebx,[ebp-4]
	cmp	[ebp-20],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	mov	[ebp-28],eax
	mov	ebx,[ebp+32]
	sub	ebx,[ebp-4]
	sub	ebx,2
	cmp	[ebp-20],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_56
	mov	eax,[ebp-20]
	sub	eax,2
	sub	eax,[ebp-4]
	mov	ebx,[ebp+36]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	imul	eax,ebx
	mov	ecx,[ebp+32]
	sub	ecx,[ebp-4]
	sub	ecx,2
	cdq
	idiv	ecx
	mov	[ebp+40],eax
_56
_52
	cmp	[ebp+40],0
	jge	_57
	mov	[ebp+40],0
_57
	mov	eax,[ebp+32]
	sub	eax,6
	mov	ecx,[ebp-4]
	cdq
	idiv	ecx
	mov	ebx,[ebp+36]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	sub	ebx,eax
	cmp	[ebp+40],ebx
	jle	_58
	mov	eax,[ebp+32]
	sub	eax,6
	mov	ecx,[ebp-4]
	cdq
	idiv	ecx
	mov	ebx,[ebp+36]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	sub	ebx,eax
	mov	[ebp+40],ebx
_58
	mov	eax,[ebp+40]
	jmp	_14_leave
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fdrawlist
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
	cmp	[ebp+48],0
	jz	_59
	mov	[ebp+48],1
_59
	call	_ffontheight
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_forigin
	sub	esp,24
	mov	ebx,[ebp+36]
	mov	[esp+16],ebx
	mov	esi,[ebp+48]
	mov	[esp+20],esi
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	[esp+4],0
	mov	[esp],0
	call	_fdrawbox
	sub	esp,8
	mov	eax,[ebp+36]
	mov	[esp],eax
	mov	[esp+4],32
	call	_fpeekint
	cmp	eax,-1
	setnz	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp+36]
	mov	[esp],ebx
	mov	[esp+4],36
	mov	eax,ebx
	call	_fpeekint
	mov	ebx,eax
	mov	eax,[ebp-36]
	cmp	ebx,-1
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	or	eax,ebx
	and	eax,eax
	jz	_60
	sub	esp,24
	mov	ebx,[ebp+40]
	mov	[esp+16],ebx
	mov	esi,[ebp+44]
	mov	[esp+20],esi
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetfocus
	mov	[ebp-12],eax
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-12]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+40]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-12]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+40]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	sub	esp,8
	mov	eax,[ebp+36]
	mov	[esp],eax
	mov	[esp+4],32
	call	_fpeekint
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-12]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+40]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+36]
	mov	[esp],eax
	mov	[esp+4],36
	call	_fpeekint
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-12]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+40]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	[ebx],eax
_60
	mov	ebx,[ebp+40]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	cmp	ebx,[ebp+32]
	jle	_61
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	shl	esi,byte 1
	sub	ebx,esi
	sub	ebx,6
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	shl	esi,byte 2
	add	esi,[_alistlength]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	sub	esp,24
	mov	ebx,[ebp+36]
	mov	[esp+16],ebx
	cmp	[ebp+48],0
	setz	al
	movzx	eax,al
	mov	[esp+20],eax
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+4],2
	mov	eax,[ebp+28]
	sub	eax,[ebp-4]
	sub	eax,2
	mov	[esp],eax
	call	_fdrawbox
	sub	esp,24
	mov	ebx,[ebp+36]
	mov	[esp+16],ebx
	cmp	[ebp+48],0
	setz	al
	movzx	eax,al
	mov	[esp+20],eax
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	sub	esi,[ebp-4]
	sub	esi,2
	mov	[esp+4],esi
	mov	eax,[ebp+28]
	sub	eax,[ebp-4]
	sub	eax,2
	mov	[esp],eax
	call	_fdrawbox
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	add	esi,3
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-28],esi
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	mov	eax,[ebp-28]
	push	eax
	fild	[esp]
	pop	eax
	faddp	st(1)
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,[ebp+32]
	sub	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_62
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp+32]
	sub	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-28],esi
_62
	sub	esp,24
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp+36]
	mov	[esp+16],esi
	cmp	[ebp+48],0
	setz	al
	movzx	eax,al
	mov	[esp+20],eax
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	sub	eax,[ebp-4]
	sub	eax,2
	mov	[esp],eax
	call	_fdrawbox
	sub	esp,20
	mov	eax,[ebp+36]
	mov	[esp],eax
	mov	[esp+4],12
	call	_fpeekint
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	eax,[ebp+28]
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	sub	eax,ebx
	sub	eax,2
	mov	[esp],eax
	mov	ebx,[ebp-4]
	sar	ebx,byte 2
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-4]
	imul	esi,3
	sar	esi,byte 3
	add	esi,2
	mov	[esp+4],esi
	call	_fdrawpolygon
	sub	esp,16
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	imul	esi,5
	sar	esi,byte 3
	sub	ebx,esi
	sub	ebx,2
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	sar	esi,byte 2
	mov	[esp+8],esi
	mov	[esp+12],1
	mov	eax,[ebp+28]
	mov	esi,[ebp-4]
	sar	esi,byte 1
	sub	eax,esi
	sub	eax,2
	mov	[esp],eax
	call	_fdrawpolygon
	sub	esp,16
	mov	ebx,[ebp+28]
	sub	ebx,6
	sub	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	sub	esi,6
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	add	esi,3
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,3
	mov	[esp],eax
	call	_fviewport
	jmp	_63
_61
	sub	esp,16
	mov	ebx,[ebp+28]
	sub	ebx,6
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	sub	esi,6
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	add	esi,3
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,3
	mov	[esp],eax
	call	_fviewport
_63
	mov	[ebp-8],0
	jmp	_64
_65
	mov	ebx,[ebp-8]
	add	ebx,1
	add	ebx,[ebp+44]
	mov	esi,[ebp+40]
	shl	esi,byte 2
	add	esi,[_alistlength]
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_66
	jmp	_16
_66
	mov	ebx,[ebp-8]
	add	ebx,1
	add	ebx,[ebp+44]
	mov	esi,_alistcolors
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+40]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	ebx,[ebx]
	cmp	ebx,-1
	jz	_67
	sub	esp,12
	mov	ebx,[ebp-8]
	add	ebx,1
	add	ebx,[ebp+44]
	mov	esi,_alistcolors
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+40]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+4],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+28]
	sub	esi,6
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	imul	ebx,[ebp-4]
	add	ebx,3
	mov	[esp+4],ebx
	mov	[esp],3
	call	_frect
_67
	mov	ebx,[ebp-8]
	add	ebx,1
	add	ebx,[ebp+44]
	mov	esi,_alistcolors
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+40]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	ebx,[ebx]
	cmp	ebx,-1
	jz	_68
	sub	esp,12
	mov	ebx,[ebp-8]
	add	ebx,1
	add	ebx,[ebp+44]
	mov	esi,_alistcolors
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+40]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+4],0
	mov	[esp],0
	call	_fcolor
	jmp	_69
_68
	sub	esp,20
	mov	eax,[ebp+36]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekint
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_fcolor
_69
	sub	esp,24
	mov	eax,[ebp-8]
	add	eax,1
	add	eax,[ebp+44]
	mov	ebx,_alistcontent
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+40]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_alistcontent]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-8]
	imul	ebx,[ebp-4]
	add	ebx,3
	mov	[esp+4],ebx
	mov	[esp],3
	call	_ftext
	add	[ebp-8],1
_64
	mov	eax,[ebp+32]
	mov	ecx,[ebp-4]
	cdq
	idiv	ecx
	cmp	[ebp-8],eax
	jle	_65
_16
	sub	esp,8
	mov	eax,[ebp+36]
	mov	[esp],eax
	mov	[esp+4],32
	call	_fpeekint
	cmp	eax,-1
	setnz	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp+36]
	mov	[esp],ebx
	mov	[esp+4],36
	mov	eax,ebx
	call	_fpeekint
	mov	ebx,eax
	mov	eax,[ebp-36]
	cmp	ebx,-1
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	or	eax,ebx
	and	eax,eax
	jz	_70
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-12]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+40]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,[ebp-16]
	mov	[ebx],esi
	mov	ebx,_alistcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-12]
	mov	esi,_alistcolors
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp+40]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_alistcolors]
	mov	esi,[ebp-20]
	mov	[ebx],esi
_70
	sub	esp,16
	call	_fgraphicswidth
	mov	[esp+8],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+12],ebx
	mov	[esp+4],0
	mov	[esp],0
	call	_fviewport
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_forigin
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	16
_fdrawbox
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	eax,[ebp+36]
	mov	[esp],eax
	mov	[esp+4],4
	call	_fpeekint
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frect
	sub	esp,20
	mov	eax,[ebp+36]
	mov	[esp],eax
	mov	ebx,[ebp+40]
	imul	ebx,12
	add	ebx,16
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fline
	sub	esp,20
	mov	eax,[ebp+36]
	mov	[esp],eax
	mov	ebx,[ebp+40]
	shl	ebx,byte 2
	add	ebx,20
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	sub	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	add	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	add	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+20]
	add	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	sub	esi,2
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	add	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,20
	mov	ebx,24
	mov	esi,[ebp+40]
	shl	esi,byte 2
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[ebp+36]
	mov	[esp],eax
	call	_fpeekint
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	sub	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	add	esi,2
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,[ebp+28]
	sub	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	sub	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,20
	mov	ebx,28
	mov	esi,[ebp+40]
	imul	esi,12
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[ebp+36]
	mov	[esp],eax
	call	_fpeekint
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	add	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,[ebp+28]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fline
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fdrawpolygon
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+32]
	and	ebx,ebx
	jz	_71
	mov	[ebp-4],1
	jmp	_72
_73
	sub	esp,16
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	sub	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	add	esi,[ebp-4]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	add	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	sub	eax,[ebp+28]
	add	eax,[ebp-4]
	mov	[esp],eax
	call	_fline
	add	[ebp-4],1
_72
	mov	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_73
_19
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	add	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fplot
	jmp	_74
_71
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fplot
	mov	[ebp-4],1
	jmp	_75
_76
	sub	esp,16
	mov	ebx,[ebp+20]
	add	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	add	esi,[ebp-4]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	add	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	sub	eax,[ebp-4]
	mov	[esp],eax
	call	_fline
	add	[ebp-4],1
_75
	mov	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_76
_20
_74
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fdrawbutton
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[ebp-4],0
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	ebx,[ebp+20]
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,[ebp+20]
	add	esi,[ebp+28]
	cmp	ebx,esi
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	ebx,[ebp+24]
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_77
	mov	[ebp-4],1
	jmp	_78
_77
	mov	[ebp-4],0
_78
	sub	esp,24
	mov	ebx,[ebp+36]
	mov	[esp+16],ebx
	mov	esi,[ebp-4]
	mov	[esp+20],esi
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdrawbox
	sub	esp,20
	mov	eax,[ebp+36]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekint
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	lea	eax,[ebp+40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp+32]
	sar	ebx,byte 1
	add	ebx,[ebp+24]
	add	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	sar	eax,byte 1
	add	eax,[ebp+20]
	add	eax,[ebp-4]
	mov	[esp],eax
	call	_ftext
	mov	eax,[ebp-4]
	jmp	_21_leave
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fcontextmenue
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-12],1
	call	_ffontheight
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,6
	mov	[ebp-16],eax
	call	_fmousex
	mov	[ebp-20],eax
	call	_fmousey
	mov	[ebp-24],eax
	mov	[ebp-4],1
	jmp	_79
_80
	sub	esp,8
	mov	eax,_alistcontent
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+20]
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_alistcontent]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fstringwidth
	mov	[ebp-8],eax
	mov	ebx,[ebp-12]
	cmp	[ebp-8],ebx
	jle	_81
	mov	ebx,[ebp-8]
	mov	[ebp-12],ebx
_81
	add	[ebp-4],1
_79
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_alistlength]
	mov	ebx,[ebx]
	cmp	[ebp-4],ebx
	jle	_80
_23
	add	[ebp-12],6
	mov	ebx,[ebp-20]
	add	ebx,[ebp-12]
	call	_fgraphicswidth
	cmp	ebx,eax
	jle	_82
	call	_fgraphicswidth
	sub	eax,[ebp-12]
	sub	eax,1
	mov	[ebp-20],eax
_82
	mov	ebx,[ebp-24]
	add	ebx,[ebp-16]
	call	_fgraphicsheight
	cmp	ebx,eax
	jle	_83
	call	_fgraphicsheight
	sub	eax,[ebp-16]
	sub	eax,1
	mov	[ebp-24],eax
_83
	mov	[ebp-4],1
	jmp	_84
_85
	sub	esp,24
	mov	eax,[ebp-16]
	imul	eax,[ebp-4]
	mov	ecx,20
	cdq
	idiv	ecx
	mov	[esp+12],eax
	mov	ebx,[ebp+24]
	mov	[esp+16],ebx
	mov	esi,[ebp+28]
	mov	[esp+20],esi
	mov	[ebp-28],eax
	mov	ebx,[ebp-12]
	imul	ebx,[ebp-4]
	mov	ecx,20
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fdrawbox
	sub	esp,4
	mov	[esp],1
	call	_fflip
	add	[ebp-4],1
_84
	cmp	[ebp-4],10
	jle	_85
_24
	jmp	_87
_86
	sub	esp,32
	mov	[esp+24],0
	mov	esi,[ebp+28]
	mov	[esp+28],esi
	mov	esi,[ebp+20]
	mov	[esp+20],esi
	mov	ebx,[ebp+24]
	mov	[esp+16],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fdrawlist
	sub	esp,4
	mov	[esp],1
	call	_fflip
_87
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	cmp	eax,0
	jz	_86
_25
	sub	esp,24
	mov	ebx,[ebp+20]
	mov	[esp+16],ebx
	mov	[esp+20],0
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fgetfocus
	jmp	_22_leave
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_alistcontent	.dd	0
	.dd	3
	.dd	2
	.dd	0
	.dd	0
	.align	4
_alistcolors	.dd	0
	.dd	1
	.dd	3
	.dd	0
	.dd	0
	.dd	0
	.align	4
_alistlength	.dd	0
	.dd	1
	.dd	1
	.dd	0
_42	.db	"",0
_46	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

