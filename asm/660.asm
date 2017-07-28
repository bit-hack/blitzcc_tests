
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
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1077936128
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,20
	call	_fgraphicswidth
	mov	[esp+12],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+16],ebx
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fambientlight
	sub	esp,12
	mov	eax,_4
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadanimmesh
	mov	[_vninja],eax
	sub	esp,16
	mov	[esp+8],14
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vwalk],eax
	sub	esp,16
	mov	[esp+8],30
	mov	[esp+12],0
	mov	[esp+4],15
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vstealth],eax
	sub	esp,16
	mov	[esp+8],44
	mov	[esp+12],0
	mov	[esp+4],32
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vpunch_swipe],eax
	sub	esp,16
	mov	[esp+8],59
	mov	[esp+12],0
	mov	[esp+4],45
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vswipe_spin],eax
	sub	esp,16
	mov	[esp+8],68
	mov	[esp+12],0
	mov	[esp+4],60
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_voverhead],eax
	sub	esp,16
	mov	[esp+8],72
	mov	[esp+12],0
	mov	[esp+4],69
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vblock],eax
	sub	esp,16
	mov	[esp+8],83
	mov	[esp+12],0
	mov	[esp+4],73
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vfwd_kick],eax
	sub	esp,16
	mov	[esp+8],93
	mov	[esp+12],0
	mov	[esp+4],84
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vpickup],eax
	sub	esp,16
	mov	[esp+8],102
	mov	[esp+12],0
	mov	[esp+4],94
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vjump],eax
	sub	esp,16
	mov	[esp+8],111
	mov	[esp+12],0
	mov	[esp+4],103
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vjump_static],eax
	sub	esp,16
	mov	[esp+8],125
	mov	[esp+12],0
	mov	[esp+4],112
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vjump_kill_sword],eax
	sub	esp,16
	mov	[esp+8],133
	mov	[esp+12],0
	mov	[esp+4],126
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vsidekick],eax
	sub	esp,16
	mov	[esp+8],145
	mov	[esp+12],0
	mov	[esp+4],134
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vspin_sword_attack],eax
	sub	esp,16
	mov	[esp+8],158
	mov	[esp+12],0
	mov	[esp+4],146
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vbackflip],eax
	sub	esp,16
	mov	[esp+8],165
	mov	[esp+12],0
	mov	[esp+4],159
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vclimb_wall],eax
	sub	esp,16
	mov	[esp+8],173
	mov	[esp+12],0
	mov	[esp+4],166
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vdeath_fall_back],eax
	sub	esp,16
	mov	[esp+8],182
	mov	[esp+12],0
	mov	[esp+4],174
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vdeath_fall_fwd],eax
	sub	esp,16
	mov	[esp+8],205
	mov	[esp+12],0
	mov	[esp+4],184
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vidle_breathe_heavy],eax
	sub	esp,16
	mov	[esp+8],250
	mov	[esp+12],0
	mov	[esp+4],206
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vidle_2],eax
	sub	esp,16
	mov	[esp+8],300
	mov	[esp+12],0
	mov	[esp+4],251
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vidle_3],eax
	sub	esp,16
	mov	[esp+8],87
	mov	[esp+12],0
	mov	[esp+4],84
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fextractanimseq
	mov	[_vcrouch],eax
	sub	esp,8
	mov	eax,[_vninja]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_5
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_ffindchild
	mov	[_vhead],eax
	mov	[_vs_walk],0
	mov	[_vs_stealth],1
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1088421888
	mov	[esp+4],0
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,20
	mov	[esp+12],1056964608
	mov	[esp+16],0
	mov	[esp+8],1056964608
	mov	[esp+4],1056964608
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1127481344
	mov	[esp+4],0
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_frotateentity
	jmp	_7
_6
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_8
	add	[_vheadyaw],1
	cmp	[_vheadyaw],90
	jle	_9
	mov	[_vheadyaw],90
_9
_8
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_10
	sub	[_vheadyaw],1
	cmp	[_vheadyaw],-90
	jge	_11
	mov	[_vheadyaw],-90
_11
_10
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_12
	add	[_vheadpitch],1
	cmp	[_vheadpitch],30
	jle	_13
	mov	[_vheadpitch],30
_13
_12
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_14
	sub	[_vheadpitch],1
	cmp	[_vheadpitch],-45
	jge	_15
	mov	[_vheadpitch],-45
_15
_14
	sub	esp,4
	mov	[esp],16
	call	_fkeyhit
	and	eax,eax
	jz	_16
	sub	esp,20
	mov	ebx,[_vwalk]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],1
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
	mov	ebx,[_vs_walk]
	mov	[_vstate],ebx
_16
	sub	esp,4
	mov	[esp],17
	call	_fkeyhit
	and	eax,eax
	jz	_17
	sub	esp,20
	mov	ebx,[_vstealth]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],1
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
	mov	ebx,[_vs_stealth]
	mov	[_vstate],ebx
_17
	sub	esp,4
	mov	[esp],18
	call	_fkeyhit
	and	eax,eax
	jz	_18
	sub	esp,20
	mov	ebx,[_vpunch_swipe]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_18
	sub	esp,4
	mov	[esp],19
	call	_fkeyhit
	and	eax,eax
	jz	_19
	sub	esp,20
	mov	ebx,[_vswipe_spin]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_19
	sub	esp,4
	mov	[esp],20
	call	_fkeyhit
	and	eax,eax
	jz	_20
	sub	esp,20
	mov	ebx,[_voverhead]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_20
	sub	esp,4
	mov	[esp],21
	call	_fkeyhit
	and	eax,eax
	jz	_21
	sub	esp,20
	mov	ebx,[_vblock]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_21
	sub	esp,4
	mov	[esp],22
	call	_fkeyhit
	and	eax,eax
	jz	_22
	sub	esp,20
	mov	ebx,[_vfwd_kick]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_22
	sub	esp,4
	mov	[esp],23
	call	_fkeyhit
	and	eax,eax
	jz	_23
	sub	esp,20
	mov	ebx,[_vpickup]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_23
	sub	esp,4
	mov	[esp],24
	call	_fkeyhit
	and	eax,eax
	jz	_24
	sub	esp,20
	mov	ebx,[_vjump]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_24
	sub	esp,4
	mov	[esp],25
	call	_fkeyhit
	and	eax,eax
	jz	_25
	sub	esp,20
	mov	ebx,[_vjump_static]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_25
	sub	esp,4
	mov	[esp],30
	call	_fkeyhit
	and	eax,eax
	jz	_26
	sub	esp,20
	mov	ebx,[_vjump_kill_sword]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_26
	sub	esp,4
	mov	[esp],31
	call	_fkeyhit
	and	eax,eax
	jz	_27
	sub	esp,20
	mov	ebx,[_vsidekick]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_27
	sub	esp,4
	mov	[esp],32
	call	_fkeyhit
	and	eax,eax
	jz	_28
	sub	esp,20
	mov	ebx,[_vspin_sword_attack]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_28
	sub	esp,4
	mov	[esp],33
	call	_fkeyhit
	and	eax,eax
	jz	_29
	sub	esp,20
	mov	ebx,[_vbackflip]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_29
	sub	esp,4
	mov	[esp],34
	call	_fkeyhit
	and	eax,eax
	jz	_30
	sub	esp,20
	mov	ebx,[_vclimb_wall]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],1
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_30
	sub	esp,4
	mov	[esp],35
	call	_fkeyhit
	and	eax,eax
	jz	_31
	sub	esp,20
	mov	ebx,[_vdeath_fall_back]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_31
	sub	esp,4
	mov	[esp],36
	call	_fkeyhit
	and	eax,eax
	jz	_32
	sub	esp,20
	mov	ebx,[_vdeath_fall_fwd]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_32
	sub	esp,4
	mov	[esp],37
	call	_fkeyhit
	and	eax,eax
	jz	_33
	sub	esp,20
	mov	ebx,[_vidle_breathe_heavy]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],1
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_33
	sub	esp,4
	mov	[esp],38
	call	_fkeyhit
	and	eax,eax
	jz	_34
	sub	esp,20
	mov	ebx,[_vidle_2]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],1
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_34
	sub	esp,4
	mov	[esp],45
	call	_fkeyhit
	and	eax,eax
	jz	_35
	sub	esp,20
	mov	ebx,[_vidle_3]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],1
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_35
	sub	esp,4
	mov	[esp],44
	call	_fkeyhit
	and	eax,eax
	jz	_36
	sub	esp,20
	mov	ebx,[_vcrouch]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],3
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_36
	sub	esp,4
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimating
	cmp	eax,0
	jnz	_37
	mov	ebx,[_vs_walk]
	cmp	[_vstate],ebx
	jnz	_38
	sub	esp,20
	mov	ebx,[_vwalk]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],1
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_38
	mov	ebx,[_vs_stealth]
	cmp	[_vstate],ebx
	jnz	_39
	sub	esp,20
	mov	ebx,[_vstealth]
	mov	[esp+12],ebx
	mov	[esp+16],1109393408
	mov	[esp+8],1036831949
	mov	[esp+4],1
	mov	eax,[_vninja]
	mov	[esp],eax
	call	_fanimate
_39
_37
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[_vheadyaw]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[_vheadpitch]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vhead]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_7
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_6
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vninja	.dd	0
_4	.db	"ninja4.b3d",0
	.align	4
_vwalk	.dd	0
	.align	4
_vstealth	.dd	0
	.align	4
_vpunch_swipe	.dd	0
	.align	4
_vswipe_spin	.dd	0
	.align	4
_voverhead	.dd	0
	.align	4
_vblock	.dd	0
	.align	4
_vfwd_kick	.dd	0
	.align	4
_vpickup	.dd	0
	.align	4
_vjump	.dd	0
	.align	4
_vjump_static	.dd	0
	.align	4
_vjump_kill_sword	.dd	0
	.align	4
_vsidekick	.dd	0
	.align	4
_vspin_sword_attack	.dd	0
	.align	4
_vbackflip	.dd	0
	.align	4
_vclimb_wall	.dd	0
	.align	4
_vdeath_fall_back	.dd	0
	.align	4
_vdeath_fall_fwd	.dd	0
	.align	4
_vidle_breathe_heavy	.dd	0
	.align	4
_vidle_2	.dd	0
	.align	4
_vidle_3	.dd	0
	.align	4
_vcrouch	.dd	0
	.align	4
_vhead	.dd	0
_5	.db	"Joint7",0
	.align	4
_vs_walk	.dd	0
	.align	4
_vs_stealth	.dd	0
	.align	4
_vheadyaw	.dd	0
	.align	4
_vheadpitch	.dd	0
	.align	4
_vstate	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

