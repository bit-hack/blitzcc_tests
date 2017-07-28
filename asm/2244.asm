
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],300
	mov	[esp],500
	call	_fgraphics
	sub	esp,12
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,8
	mov	[esp],_vinp_info
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	[esp],_vout_info
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_10
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,24
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	mov	[esp+4],1
	call	_fleft
	mov	[esp+4],eax
	mov	[esp],_vopt_char
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	eax,_vopt_char
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_vopt_char
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_vwall
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_vinp_info
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_12
	sub	esp,8
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_12
	sub	esp,8
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],500
	call	_fdelay
	jmp	_16
_15
	sub	esp,8
	mov	[esp],_viln
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tinline
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[_viln]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
_16
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_feof
	cmp	eax,0
	jz	_15
_3
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],500
	call	_fdelay
	mov	[_vmax_width],0
	sub	esp,8
	mov	[esp],_viln
	mov	[esp+4],_tinline
	call	__bbObjEachFirst
	and	eax,eax
	jz	_4
_18
	sub	esp,8
	mov	eax,[_viln]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-8],eax
	mov	ebx,[_vmax_width]
	cmp	[ebp-8],ebx
	jle	_19
	mov	ebx,[ebp-8]
	mov	[_vmax_width],ebx
_19
	sub	esp,4
	mov	eax,_viln
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_18
_4
	sub	esp,8
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],500
	call	_fdelay
	sub	esp,8
	mov	[esp],_voln
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_toutline
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,20
	mov	eax,_vopt_char
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[_vmax_width]
	add	ebx,4
	mov	[esp+4],ebx
	call	_fstring
	mov	[esp+4],eax
	mov	ebx,[_voln]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	[esp],_viln
	mov	[esp+4],_tinline
	call	__bbObjEachFirst
	and	eax,eax
	jz	_5
_21
	sub	esp,20
	mov	eax,[_viln]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	call	_ftrim
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_22
	sub	esp,8
	mov	[esp],_voln
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_toutline
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,20
	mov	eax,_vopt_char
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[_vmax_width]
	add	ebx,4
	mov	[esp+4],ebx
	call	_fstring
	mov	[esp+4],eax
	mov	ebx,[_voln]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_24
_22
	sub	esp,8
	mov	eax,[_viln]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,[_vmax_width]
	jge	_25
	sub	esp,24
	mov	ebx,[_vmax_width]
	sub	esp,8
	mov	eax,[_viln]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	ebx,eax
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fstring
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[_viln]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,[_viln]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrStore
_25
	sub	esp,8
	mov	[esp],_voln
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_toutline
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,28
	mov	eax,_vwall
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[_viln]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_vwall
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[_voln]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_24
	sub	esp,4
	mov	eax,_viln
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_21
_5
	sub	esp,8
	mov	[esp],_voln
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_toutline
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,20
	mov	eax,_vopt_char
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[_vmax_width]
	add	ebx,4
	mov	[esp+4],ebx
	call	_fstring
	mov	[esp+4],eax
	mov	ebx,[_voln]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],500
	call	_fdelay
	sub	esp,8
	mov	eax,_vout_info
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],_voln
	mov	[esp+4],_toutline
	call	__bbObjEachFirst
	and	eax,eax
	jz	_6
_28
	sub	esp,20
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[_voln]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,4
	mov	eax,_voln
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_28
_6
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],3000
	call	_fdelay
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_7	.db	"Build Me A Comment!",0
_8	.db	"",0
	.align	4
_vinp_info	.dd	0
_9	.db	"Text file to be commented: ",0
	.align	4
_vout_info	.dd	0
_10	.db	"Output B3D file for copy paste: ",0
	.align	4
_vopt_char	.dd	0
_11	.db	"Character to build walls with: ",0
	.align	4
_vwall	.dd	0
	.align	4
_viln	.dd	0
	.align	4
_voln	.dd	0
_13	.db	"Could not read input source!",0
_14	.db	"Reading input file...",0
_17	.db	"Building statistics...",0
	.align	4
_vmax_width	.dd	0
_20	.db	"Generating comments to memory...",0
_23	.db	"+separator+",0
_26	.db	" ",0
_27	.db	"Outputing saved comments...",0
_29	.db	";",0
_30	.db	"Finished! (closing in 3 seconds)",0
	.align	4
_tinline	.dd	5
_31	.dd	0
	.dd	_31
	.dd	_31
	.dd	0
	.dd	-1
_32	.dd	0
	.dd	_32
	.dd	_32
	.dd	0
	.dd	-1
	.dd	1
	.dd	__bbStrType
	.align	4
_toutline	.dd	5
_33	.dd	0
	.dd	_33
	.dd	_33
	.dd	0
	.dd	-1
_34	.dd	0
	.dd	_34
	.dd	_34
	.dd	0
	.dd	-1
	.dd	1
	.dd	__bbStrType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

