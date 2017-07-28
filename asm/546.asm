
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],15
	mov	[esp],200
	call	_ftext_input
	sub	esp,12
	mov	eax,_vgeted
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_6
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_5
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_vgeted
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],3000
	call	_fdelay
_5
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
_ftext_input
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
	call	_fflushkeys
	sub	esp,12
	mov	[esp+4],78
	mov	[esp+8],112
	mov	[esp],56
	call	_fcolor
	sub	esp,20
	mov	[esp+12],15
	mov	[esp+16],0
	mov	esi,[ebp+28]
	add	esi,3
	imul	esi,6
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],218
	mov	[esp+8],227
	mov	[esp],215
	call	_fcolor
	sub	esp,20
	mov	[esp+12],13
	mov	[esp+16],1
	mov	esi,[ebp+28]
	add	esi,3
	imul	esi,6
	sub	esi,2
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	add	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,1
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],78
	mov	[esp+8],112
	mov	[esp],56
	call	_fcolor
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],6
	mov	ebx,[ebp+24]
	add	ebx,3
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,2
	mov	[esp],eax
	call	_frect
	sub	esp,8
	mov	[esp],_vgeted
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-4],0
	mov	[ebp-8],0
	mov	[ebp-12],1
	sub	esp,4
	mov	[esp],1
	call	_fflip
	jmp	_10
_9
	call	_fgetkey
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],82
	call	_fkeyhit
	and	eax,eax
	jz	_11
	mov	[ebp-4],48
_11
	sub	esp,4
	mov	[esp],79
	call	_fkeyhit
	and	eax,eax
	jz	_12
	mov	[ebp-4],49
_12
	sub	esp,4
	mov	[esp],80
	call	_fkeyhit
	and	eax,eax
	jz	_13
	mov	[ebp-4],50
_13
	sub	esp,4
	mov	[esp],81
	call	_fkeyhit
	and	eax,eax
	jz	_14
	mov	[ebp-4],51
_14
	sub	esp,4
	mov	[esp],75
	call	_fkeyhit
	and	eax,eax
	jz	_15
	mov	[ebp-4],52
_15
	sub	esp,4
	mov	[esp],76
	call	_fkeyhit
	and	eax,eax
	jz	_16
	mov	[ebp-4],53
_16
	sub	esp,4
	mov	[esp],77
	call	_fkeyhit
	and	eax,eax
	jz	_17
	mov	[ebp-4],54
_17
	sub	esp,4
	mov	[esp],71
	call	_fkeyhit
	and	eax,eax
	jz	_18
	mov	[ebp-4],55
_18
	sub	esp,4
	mov	[esp],72
	call	_fkeyhit
	and	eax,eax
	jz	_19
	mov	[ebp-4],56
_19
	sub	esp,4
	mov	[esp],73
	call	_fkeyhit
	and	eax,eax
	jz	_20
	mov	[ebp-4],57
_20
	sub	esp,4
	mov	[esp],83
	call	_fkeyhit
	and	eax,eax
	jz	_21
	mov	[ebp-4],46
_21
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	[esp],211
	call	_fkeyhit
	and	eax,eax
	jz	_22
	mov	[ebp-4],8
_22
	sub	esp,4
	mov	[esp],53
	call	_fkeyhit
	and	eax,eax
	jz	_23
	mov	[ebp-4],0
_23
	sub	esp,4
	mov	[esp],43
	call	_fkeyhit
	and	eax,eax
	jz	_24
	mov	[ebp-4],0
_24
	sub	esp,4
	mov	[esp],197
	call	_fkeyhit
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],199
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],200
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],201
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_25
	mov	[ebp-4],0
_25
	sub	esp,4
	mov	[esp],203
	call	_fkeyhit
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],205
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],207
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],208
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_26
	mov	[ebp-4],0
_26
	sub	esp,4
	mov	[esp],209
	call	_fkeyhit
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],210
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],181
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],15
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_27
	mov	[ebp-4],0
_27
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_28
	cmp	[ebp-4],27
	jnz	_29
	jmp	_l_3cancel
_29
	mov	eax,[ebp+28]
	cmp	[ebp-8],eax
	setg	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-4],8
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_30
	jmp	_l_3skip_type
_30
	cmp	[ebp-4],8
	jnz	_31
	mov	[ebp-12],-1
	jmp	_32
_31
	mov	[ebp-12],1
_32
	mov	ebx,[ebp-12]
	add	[ebp-8],ebx
	cmp	[ebp-8],0
	jge	_33
	mov	[ebp-8],0
	jmp	_l_3skip_type
_33
	sub	esp,12
	mov	eax,_vgeted
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setnz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-4],13
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	ebx,eax
	and	ebx,ebx
	jz	_34
	jmp	_4
_34
	sub	esp,12
	mov	eax,_vgeted
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-4],13
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	ebx,eax
	and	ebx,ebx
	jz	_36
	mov	eax,0
	jmp	_3_leave
_36
	sub	esp,20
	mov	eax,_vgeted
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	mov	[esp],_vgeted
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	cmp	[ebp-4],8
	jz	_38
	sub	esp,12
	mov	[esp+4],218
	mov	[esp+8],227
	mov	[esp],215
	call	_fcolor
	sub	esp,20
	mov	eax,[ebp+20]
	add	eax,3
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,6
	add	eax,ebx
	mov	[esp],eax
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],6
	mov	ebx,[ebp+24]
	add	ebx,3
	mov	[esp+4],ebx
	call	_frect
	sub	esp,12
	mov	[esp+4],10
	mov	[esp+8],82
	mov	[esp],10
	call	_fcolor
	sub	esp,20
	mov	eax,[ebp+20]
	add	eax,3
	mov	ebx,[ebp-8]
	imul	ebx,6
	add	eax,ebx
	mov	[esp],eax
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],6
	mov	ebx,[ebp+24]
	add	ebx,3
	mov	[esp+4],ebx
	call	_frect
	jmp	_39
_38
	sub	esp,12
	mov	[esp+4],10
	mov	[esp+8],82
	mov	[esp],10
	call	_fcolor
	sub	esp,20
	mov	eax,[ebp+20]
	add	eax,3
	mov	ebx,[ebp-8]
	imul	ebx,6
	add	eax,ebx
	mov	[esp],eax
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],6
	mov	ebx,[ebp+24]
	add	ebx,3
	mov	[esp+4],ebx
	call	_frect
	sub	esp,12
	mov	[esp+4],218
	mov	[esp+8],227
	mov	[esp],215
	call	_fcolor
	sub	esp,20
	mov	eax,[ebp+20]
	add	eax,3
	mov	ebx,[ebp-8]
	add	ebx,1
	imul	ebx,6
	add	eax,ebx
	mov	[esp],eax
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],6
	mov	ebx,[ebp+24]
	add	ebx,3
	mov	[esp+4],ebx
	call	_frect
_39
	cmp	[ebp-4],8
	jz	_40
	sub	esp,20
	mov	eax,[ebp+20]
	add	eax,4
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,6
	add	eax,ebx
	mov	[esp],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[ebp-20],eax
	sub	esp,4
	lea	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	add	ebx,1
	mov	[esp+4],ebx
	call	_ftext
	sub	esp,20
	mov	eax,_vgeted
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_vgeted
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_40
_28
_l_3skip_type
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_41
	call	_fflushmouse
	call	_fflushkeys
	sub	esp,4
	mov	[esp],150
	call	_fdelay
	sub	esp,8
	mov	[esp],_vgeted
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,_vgeted
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	jmp	_3_leave
_41
	sub	esp,12
	mov	eax,_vgeted
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setnz	al
	movzx	eax,al
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	ebx,eax
	and	ebx,ebx
	jz	_43
	call	_fflushmouse
	call	_fflushkeys
	sub	esp,4
	mov	[esp],150
	call	_fdelay
	sub	esp,8
	mov	eax,_vgeted
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	jmp	_3_leave
_43
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	[ebp-4],0
_10
	cmp	[ebp-4],0
	jz	_9
_4
_l_3cancel
	call	_fflushmouse
	call	_fflushkeys
	sub	esp,4
	mov	[esp],150
	call	_fdelay
	cmp	[ebp-4],27
	jnz	_45
	sub	esp,8
	mov	[esp],_vgeted
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_46
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
_45
	sub	esp,8
	mov	eax,_vgeted
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-16]
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
	ret	word 12
	.align	4
_vgeted	.dd	0
_6	.db	"",0
_7	.db	"You Typed : ",0
_8	.db	"",0
_35	.db	"",0
_37	.db	"",0
_42	.db	"",0
_44	.db	"",0
_46	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

