
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	sub	esp,4
	mov	eax,_amd5_x
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_amd5_x
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amd5_x
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmd5
	mov	[esp],eax
	call	_fprint
	ret
_2_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	ret	word 0
	.align	16
_fmd5
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-36],ebx
	mov	[ebp-40],ebx
	mov	[ebp-44],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	add	eax,8
	shr	eax,byte 6
	add	eax,1
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,_amd5_x
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	shl	ebx,byte 4
	sub	ebx,1
	mov	esi,_amd5_x
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amd5_x
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-8],0
	jmp	_19
_20
	mov	ebx,0
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	[esi],ebx
	add	[ebp-8],1
_19
	mov	ebx,[ebp-4]
	shl	ebx,byte 4
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_20
_4
	mov	[ebp-8],0
	jmp	_21
_22
	sub	esp,16
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	[esp+4],4
	mov	eax,ebx
	call	__bbMod
	mov	ebx,eax
	mov	eax,[ebp-48]
	shl	ebx,byte 3
	mov	ecx,ebx
	shl	eax,cl
	mov	ebx,[ebp-8]
	shr	ebx,byte 2
	shl	ebx,byte 2
	add	ebx,[_amd5_x]
	mov	ebx,[ebx]
	or	ebx,eax
	mov	esi,[ebp-8]
	shr	esi,byte 2
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	[esi],ebx
	add	[ebp-8],1
_21
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	eax,1
	cmp	[ebp-8],eax
	jle	_22
_5
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],4
	call	__bbMod
	shl	eax,byte 3
	mov	ebx,128
	mov	ecx,eax
	shl	ebx,cl
	mov	esi,[ebp-8]
	shr	esi,byte 2
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	or	esi,ebx
	mov	ebx,[ebp-8]
	shr	ebx,byte 2
	shl	ebx,byte 2
	add	ebx,[_amd5_x]
	mov	[ebx],esi
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	shl	eax,byte 3
	mov	ebx,[ebp-4]
	shl	ebx,byte 4
	sub	ebx,2
	shl	ebx,byte 2
	add	ebx,[_amd5_x]
	mov	[ebx],eax
	mov	[ebp-12],1732584193
	mov	[ebp-16],-271733879
	mov	[ebp-20],-1732584194
	mov	[ebp-24],271733878
	mov	[ebp-28],0
	jmp	_23
_24
	mov	ebx,[ebp-12]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-20]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-24]
	mov	[ebp-44],ebx
	sub	esp,28
	mov	[esp+20],7
	mov	[esp+24],-680876936
	mov	esi,[ebp-28]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],12
	mov	[esp+24],-389564586
	mov	esi,[ebp-28]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],17
	mov	[esp+24],606105819
	mov	esi,[ebp-28]
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],22
	mov	[esp+24],-1044525330
	mov	esi,[ebp-28]
	add	esi,3
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],7
	mov	[esp+24],-176418897
	mov	esi,[ebp-28]
	add	esi,4
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],12
	mov	[esp+24],1200080426
	mov	esi,[ebp-28]
	add	esi,5
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],17
	mov	[esp+24],-1473231341
	mov	esi,[ebp-28]
	add	esi,6
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],22
	mov	[esp+24],-45705983
	mov	esi,[ebp-28]
	add	esi,7
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],7
	mov	[esp+24],1770035416
	mov	esi,[ebp-28]
	add	esi,8
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],12
	mov	[esp+24],-1958414417
	mov	esi,[ebp-28]
	add	esi,9
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],17
	mov	[esp+24],-42063
	mov	esi,[ebp-28]
	add	esi,10
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],22
	mov	[esp+24],-1990404162
	mov	esi,[ebp-28]
	add	esi,11
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],7
	mov	[esp+24],1804603682
	mov	esi,[ebp-28]
	add	esi,12
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],12
	mov	[esp+24],-40341101
	mov	esi,[ebp-28]
	add	esi,13
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],17
	mov	[esp+24],-1502002290
	mov	esi,[ebp-28]
	add	esi,14
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],22
	mov	[esp+24],1236535329
	mov	esi,[ebp-28]
	add	esi,15
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_ff
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],5
	mov	[esp+24],-165796510
	mov	esi,[ebp-28]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],9
	mov	[esp+24],-1069501632
	mov	esi,[ebp-28]
	add	esi,6
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],14
	mov	[esp+24],643717713
	mov	esi,[ebp-28]
	add	esi,11
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],20
	mov	[esp+24],-373897302
	mov	esi,[ebp-28]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],5
	mov	[esp+24],-701558691
	mov	esi,[ebp-28]
	add	esi,5
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],9
	mov	[esp+24],38016083
	mov	esi,[ebp-28]
	add	esi,10
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],14
	mov	[esp+24],-660478335
	mov	esi,[ebp-28]
	add	esi,15
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],20
	mov	[esp+24],-405537848
	mov	esi,[ebp-28]
	add	esi,4
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],5
	mov	[esp+24],568446438
	mov	esi,[ebp-28]
	add	esi,9
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],9
	mov	[esp+24],-1019803690
	mov	esi,[ebp-28]
	add	esi,14
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],14
	mov	[esp+24],-187363961
	mov	esi,[ebp-28]
	add	esi,3
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],20
	mov	[esp+24],1163531501
	mov	esi,[ebp-28]
	add	esi,8
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],5
	mov	[esp+24],-1444681467
	mov	esi,[ebp-28]
	add	esi,13
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],9
	mov	[esp+24],-51403784
	mov	esi,[ebp-28]
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],14
	mov	[esp+24],1735328473
	mov	esi,[ebp-28]
	add	esi,7
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],20
	mov	[esp+24],-1926607734
	mov	esi,[ebp-28]
	add	esi,12
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_gg
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],4
	mov	[esp+24],-378558
	mov	esi,[ebp-28]
	add	esi,5
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],11
	mov	[esp+24],-2022574463
	mov	esi,[ebp-28]
	add	esi,8
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],16
	mov	[esp+24],1839030562
	mov	esi,[ebp-28]
	add	esi,11
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],23
	mov	[esp+24],-35309556
	mov	esi,[ebp-28]
	add	esi,14
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],4
	mov	[esp+24],-1530992060
	mov	esi,[ebp-28]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],11
	mov	[esp+24],1272893353
	mov	esi,[ebp-28]
	add	esi,4
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],16
	mov	[esp+24],-155497632
	mov	esi,[ebp-28]
	add	esi,7
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],23
	mov	[esp+24],-1094730640
	mov	esi,[ebp-28]
	add	esi,10
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],4
	mov	[esp+24],681279174
	mov	esi,[ebp-28]
	add	esi,13
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],11
	mov	[esp+24],-358537222
	mov	esi,[ebp-28]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],16
	mov	[esp+24],-722521979
	mov	esi,[ebp-28]
	add	esi,3
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],23
	mov	[esp+24],76029189
	mov	esi,[ebp-28]
	add	esi,6
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],4
	mov	[esp+24],-640364487
	mov	esi,[ebp-28]
	add	esi,9
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],11
	mov	[esp+24],-421815835
	mov	esi,[ebp-28]
	add	esi,12
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],16
	mov	[esp+24],530742520
	mov	esi,[ebp-28]
	add	esi,15
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],23
	mov	[esp+24],-995338651
	mov	esi,[ebp-28]
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_hh
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],6
	mov	[esp+24],-198630844
	mov	esi,[ebp-28]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],10
	mov	[esp+24],1126891415
	mov	esi,[ebp-28]
	add	esi,7
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],15
	mov	[esp+24],-1416354905
	mov	esi,[ebp-28]
	add	esi,14
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],21
	mov	[esp+24],-57434055
	mov	esi,[ebp-28]
	add	esi,5
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],6
	mov	[esp+24],1700485571
	mov	esi,[ebp-28]
	add	esi,12
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],10
	mov	[esp+24],-1894986606
	mov	esi,[ebp-28]
	add	esi,3
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],15
	mov	[esp+24],-1051523
	mov	esi,[ebp-28]
	add	esi,10
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],21
	mov	[esp+24],-2054922799
	mov	esi,[ebp-28]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],6
	mov	[esp+24],1873313359
	mov	esi,[ebp-28]
	add	esi,8
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],10
	mov	[esp+24],-30611744
	mov	esi,[ebp-28]
	add	esi,15
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],15
	mov	[esp+24],-1560198380
	mov	esi,[ebp-28]
	add	esi,6
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],21
	mov	[esp+24],1309151649
	mov	esi,[ebp-28]
	add	esi,13
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],6
	mov	[esp+24],-145523070
	mov	esi,[ebp-28]
	add	esi,4
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],10
	mov	[esp+24],-1120210379
	mov	esi,[ebp-28]
	add	esi,11
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],15
	mov	[esp+24],718787259
	mov	esi,[ebp-28]
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],21
	mov	[esp+24],-343485551
	mov	esi,[ebp-28]
	add	esi,9
	shl	esi,byte 2
	add	esi,[_amd5_x]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmd5_ii
	mov	[ebp-16],eax
	mov	ebx,[ebp-32]
	add	[ebp-12],ebx
	mov	ebx,[ebp-36]
	add	[ebp-16],ebx
	mov	ebx,[ebp-40]
	add	[ebp-20],ebx
	mov	ebx,[ebp-44]
	add	[ebp-24],ebx
	add	[ebp-28],16
_23
	mov	ebx,[ebp-4]
	shl	ebx,byte 4
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_24
_6
	sub	esp,32
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwordtohex
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwordtohex
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwordtohex
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwordtohex
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_flower
	jmp	_3_leave
	sub	esp,4
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fmd5_f
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,[ebp+24]
	and	eax,ebx
	mov	ebx,[ebp+20]
	mov	esi,-1
	xor	ebx,esi
	mov	esi,[ebp+28]
	and	ebx,esi
	or	eax,ebx
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fmd5_g
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,[ebp+28]
	and	eax,ebx
	mov	ebx,[ebp+28]
	mov	esi,-1
	xor	ebx,esi
	mov	esi,[ebp+24]
	and	esi,ebx
	or	eax,esi
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fmd5_h
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,[ebp+24]
	xor	eax,ebx
	mov	ebx,[ebp+28]
	xor	eax,ebx
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fmd5_i
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+28]
	mov	esi,-1
	xor	ebx,esi
	mov	esi,[ebp+20]
	or	esi,ebx
	mov	eax,[ebp+24]
	xor	eax,esi
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fmd5_ff
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp+32]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fmd5_f
	add	eax,[ebp+36]
	add	eax,[ebp+44]
	add	[ebp+20],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+40]
	mov	[esp+4],ebx
	call	_frotateleft
	mov	[ebp+20],eax
	mov	eax,[ebp+20]
	add	eax,[ebp+24]
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	16
_fmd5_gg
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp+32]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fmd5_g
	add	eax,[ebp+36]
	add	eax,[ebp+44]
	add	[ebp+20],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+40]
	mov	[esp+4],ebx
	call	_frotateleft
	mov	[ebp+20],eax
	mov	eax,[ebp+20]
	add	eax,[ebp+24]
	jmp	_12_leave
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	16
_fmd5_hh
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp+32]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fmd5_h
	add	eax,[ebp+36]
	add	eax,[ebp+44]
	add	[ebp+20],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+40]
	mov	[esp+4],ebx
	call	_frotateleft
	mov	[ebp+20],eax
	mov	eax,[ebp+20]
	add	eax,[ebp+24]
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	16
_fmd5_ii
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp+32]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fmd5_i
	add	eax,[ebp+36]
	add	eax,[ebp+44]
	add	[ebp+20],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+40]
	mov	[esp+4],ebx
	call	_frotateleft
	mov	[ebp+20],eax
	mov	eax,[ebp+20]
	add	eax,[ebp+24]
	jmp	_14_leave
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	16
_frotateleft
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ecx,[ebp+24]
	shl	eax,cl
	mov	ebx,[ebp+20]
	mov	ecx,32
	sub	ecx,[ebp+24]
	shr	ebx,cl
	or	eax,ebx
	jmp	_15_leave
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fwordtohex
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
	mov	[ebp-4],0
	jmp	_26
_27
	mov	ebx,[ebp+20]
	mov	ecx,[ebp-4]
	shl	ecx,byte 3
	shr	ebx,cl
	mov	esi,255
	and	ebx,esi
	mov	[ebp-8],ebx
	sub	esp,36
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fhex
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[esp+4],2
	call	_fright
	mov	[esp+4],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrStore
	add	[ebp-4],1
_26
	cmp	[ebp-4],3
	jle	_27
_17
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_16_leave
	sub	esp,4
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	jmp	_16_leave
_16_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_amd5_x	.dd	0
	.dd	1
	.dd	1
	.dd	0
_18	.db	"Enter a string to MD5: ",0
_25	.db	"",0
_28	.db	"0",0
_29	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
