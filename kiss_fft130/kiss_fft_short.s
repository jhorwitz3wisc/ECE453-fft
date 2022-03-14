	.file	"kiss_fft.c"
# GNU C17 (Ubuntu 9.3.0-17ubuntu1~20.04) version 9.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D FIXED_POINT kiss_fft.c
# --param l1-cache-size=48 --param l1-cache-line-size=64
# --param l2-cache-size=6144 -mtune=icelake-client -march=x86-64
# -auxbase-strip kiss_fft_short.s -O3 -ffast-math -fomit-frame-pointer
# -fverbose-asm -fasynchronous-unwind-tables -fstack-protector-strong
# -Wformat -Wformat-security -fstack-clash-protection -fcf-protection
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -falign-functions -falign-jumps -falign-labels -falign-loops
# -fassociative-math -fassume-phsa -fasynchronous-unwind-tables
# -fauto-inc-dec -fbranch-count-reg -fcaller-saves -fcode-hoisting
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fcx-limited-range -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -fexpensive-optimizations -ffinite-math-only -fforward-propagate
# -ffp-int-builtin-inexact -ffunction-cse -fgcse -fgcse-after-reload
# -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics -finline-functions
# -finline-functions-called-once -finline-small-functions -fipa-bit-cp
# -fipa-cp -fipa-cp-clone -fipa-icf -fipa-icf-functions -fipa-icf-variables
# -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference
# -fipa-reference-addressable -fipa-sra -fipa-stack-alignment -fipa-vrp
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -floop-interchange
# -floop-unroll-and-jam -flra-remat -flto-odr-type-merging
# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
# -fomit-frame-pointer -foptimize-sibling-calls -foptimize-strlen
# -fpartial-inlining -fpeel-loops -fpeephole -fpeephole2 -fplt
# -fpredictive-commoning -fprefetch-loop-arrays -freciprocal-math -free
# -freg-struct-return -freorder-blocks -freorder-blocks-and-partition
# -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsplit-ivs-in-unroller -fsplit-loops
# -fsplit-paths -fsplit-wide-types -fssa-backprop -fssa-phiopt
# -fstack-clash-protection -fstack-protector-strong -fstdarg-opt
# -fstore-merging -fstrict-aliasing -fstrict-volatile-bitfields
# -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftree-bit-ccp
# -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
# -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
# -ftree-loop-distribution -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-loop-vectorize
# -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
# -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
# -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time
# -funsafe-math-optimizations -funswitch-loops -funwind-tables
# -fverbose-asm -fversion-loops-for-strides -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mfxsr -mglibc -mlong-double-80 -mmmx -mno-sse4
# -mpush-args -mred-zone -msse -msse2 -mstv -mtls-direct-seg-refs
# -mvzeroupper

	.text
	.p2align 4
	.type	kf_work, @function
kf_work:
.LFB55:
	.cfi_startproc
# BLOCK 2, count:347387059 (estimated locally) seq:0
# PRED: ENTRY [always]  count:347387059 (estimated locally) (FALLTHRU)
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r11	# tmp5358, Fout
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movslq	%ecx, %r12	# in_stride, in_stride
	imulq	%rdx, %r12	# fstride, tmp2620
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	salq	$2, %r12	#, _1084
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx	# tmp5359, f
	subq	$328, %rsp	#,
	.cfi_def_cfa_offset 384
# kiss_fft.c:249:     const int m=*factors++; /* stage's fft length/p */
	movl	4(%r8), %edi	# MEM[(int *)factors_25(D) + 4B], m
# kiss_fft.c:248:     const int p=*factors++; /* the radix  */
	movl	(%r8), %r13d	# *factors_25(D), p
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	movl	%edi, %eax	# m, tmp2616
	imull	%r13d, %eax	# p, tmp2616
# kiss_fft.c:246: {
	movq	%rdx, 16(%rsp)	# fstride, %sfp
# kiss_fft.c:249:     const int m=*factors++; /* stage's fft length/p */
	movl	%edi, 64(%rsp)	# m, %sfp
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	cltq
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	leaq	(%r11,%rax,4), %r15	#, Fout_end
# kiss_fft.c:276:     if (m==1) {
	cmpl	$1, %edi	#, m
# SUCC: 32 [34.0% (guessed)]  count:118111601 (estimated locally) (CAN_FALLTHRU) 3 [66.0% (guessed)]  count:229275458 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L143	#,
# BLOCK 3, count:229275458 (estimated locally) seq:1
# PRED: 2 [66.0% (guessed)]  count:229275458 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:287:             kf_work( Fout , f, fstride*p, in_stride, factors,st);
	movq	16(%rsp), %r14	# %sfp, _8
	movslq	%r13d, %rax	# p, _7
	movq	%rax, 136(%rsp)	# _7, %sfp
	imulq	%rax, %r14	# _7, _8
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	movslq	64(%rsp), %rax	# %sfp, m
	movq	%r11, 96(%rsp)	# Fout, %sfp
	movq	%rax, 112(%rsp)	# m, %sfp
	movq	%rax, 80(%rsp)	# m, %sfp
	salq	$2, %rax	#, _13
	movq	%rax, (%rsp)	# _13, %sfp
# kiss_fft.c:249:     const int m=*factors++; /* stage's fft length/p */
	addq	$8, %r8	#, factors
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	movl	%r13d, 48(%rsp)	# p, %sfp
	movq	%r15, 128(%rsp)	# Fout_end, %sfp
	movq	%r12, 32(%rsp)	# _1084, %sfp
	movq	%r11, %rbp	# Fout, Fout
	movq	%rsi, %r13	# f, f
	movq	%r8, %rbx	# factors, factors
	movl	%ecx, %r12d	# in_stride, in_stride
# SUCC: 4 [always]  count:229275458 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%r9, %r15	# st, st
# BLOCK 4, count:1042161216 (estimated locally) seq:2
# PRED: 3 [always]  count:229275458 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 4 [78.0% (guessed)]  count:812885750 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
.L5:
# kiss_fft.c:287:             kf_work( Fout , f, fstride*p, in_stride, factors,st);
	movq	%r13, %rsi	# f,
	movq	%rbp, %rdi	# Fout,
	movq	%r15, %r9	# st,
	movq	%rbx, %r8	# factors,
	movl	%r12d, %ecx	# in_stride,
	movq	%r14, %rdx	# _8,
	call	kf_work	#
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	addq	(%rsp), %rbp	# %sfp, Fout
# kiss_fft.c:288:             f += fstride*in_stride;
	addq	32(%rsp), %r13	# %sfp, f
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	cmpq	%rbp, 128(%rsp)	# Fout, %sfp
# SUCC: 4 [78.0% (guessed)]  count:812885750 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 5 [22.0% (guessed)]  count:229275466 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L5	#,
# BLOCK 5, count:229275458 (estimated locally) seq:3
# PRED: 4 [22.0% (guessed)]  count:229275466 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movl	48(%rsp), %r13d	# %sfp, p
	leaq	264(%r15), %rax	#, tw1
	movq	%rax, 128(%rsp)	# tw1, %sfp
	movq	96(%rsp), %r11	# %sfp, Fout
	movq	%r15, %r9	# st, st
# kiss_fft.c:295:     switch (p) {
	cmpl	$4, %r13d	#, p
# SUCC: 6 [80.0% (guessed)]  count:183420366 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 64 [20.0% (guessed)]  count:45855092 (estimated locally) (CAN_FALLTHRU)
	je	.L6	#,
# BLOCK 6, count:229275458 (estimated locally) seq:4
# PRED: 5 [80.0% (guessed)]  count:183420366 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# SUCC: 7 [62.5% (guessed)]  count:143297161 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [37.5% (guessed)]  count:85978297 (estimated locally) (CAN_FALLTHRU)
	jg	.L7	#,
# BLOCK 7, count:229275458 (estimated locally) seq:5
# PRED: 6 [62.5% (guessed)]  count:143297161 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$2, %r13d	#, p
# SUCC: 8 [60.0% (guessed)]  count:137565275 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 54 [40.0% (guessed)]  count:91710183 (estimated locally) (CAN_FALLTHRU)
	je	.L8	#,
# BLOCK 8, count:229275458 (estimated locally) seq:6
# PRED: 7 [60.0% (guessed)]  count:137565275 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$3, %r13d	#, p
# SUCC: 19 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 9 [always (guessed)]  count:229275458 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L10	#,
# BLOCK 9, count:69477404 (estimated locally) seq:7
# PRED: 8 [always (guessed)]  count:229275458 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 38 [always]  count:118111601 (estimated locally) (CAN_FALLTHRU)
.L9:
# kiss_fft.c:104:      epi3 = st->twiddles[fstride*m];
	movq	16(%rsp), %rbx	# %sfp, fstride
	movq	80(%rsp), %rdi	# %sfp, k
	movq	%rbx, %rax	# fstride, tmp3452
	imulq	%rdi, %rax	# k, tmp3452
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	leaq	0(,%rdi,8), %r14	#, _148
# kiss_fft.c:116:          tw1 += fstride;
	leaq	0(,%rbx,4), %rbp	#, _210
# kiss_fft.c:104:      epi3 = st->twiddles[fstride*m];
	movzwl	266(%r9,%rax,4), %r13d	# MEM[(struct  *)_118 + 2B], epi3$i
# kiss_fft.c:116:          tw1 += fstride;
	movq	%rbx, %rax	# fstride, fstride
	cmpq	$1, %rax	#, fstride
	movq	80(%rsp), %rax	# %sfp, k
	movswl	%r13w, %edi	# epi3$i, _1236
	movl	%edi, 136(%rsp)	# _1236, %sfp
# kiss_fft.c:117:          tw2 += fstride*2;
	leaq	0(,%rbx,8), %rbx	#, _212
	leaq	-1(%rax), %r15	#, k
# SUCC: 10 [80.0% (guessed)]  count:55581924 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 79 [20.0% (guessed)]  count:13895480 (estimated locally) (CAN_FALLTHRU)
	jne	.L144	#,
# BLOCK 10, count:55581924 (estimated locally) seq:8
# PRED: 9 [80.0% (guessed)]  count:55581924 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	0(,%r15,4), %rsi	#, _2825
	leaq	32(%r11), %rax	#, _2819
	movq	128(%rsp), %r9	# %sfp, tw1
	movq	(%rsp), %r12	# %sfp, _13
	movq	%rax, 16(%rsp)	# _2819, %sfp
	leaq	2(%r14,%rsi), %rax	#, tmp4201
	addq	%r11, %rax	# Fout, tmp4202
	cmpq	%rax, %r9	# tmp4202, tw1
	leaq	2(%rsi), %rcx	#, _2838
	leaq	2(%r12,%rsi), %rsi	#, tmp4207
	seta	%r10b	#, tmp4203
	addq	%r11, %rsi	# Fout, tmp4208
	cmpq	%rsi, %r9	# tmp4208, tw1
	leaq	(%r9,%rcx), %rdi	#, _2840
	leaq	32(%r12), %rbp	#, _2811
	leaq	(%r11,%r12), %rax	#, _2870
	leaq	2(%r9,%r15,8), %r8	#, _2861
	movq	%r9, %r12	# tw1, tw1
	seta	%r9b	#, tmp4209
	addq	%r11, %rcx	# Fout, tmp4210
	cmpq	%rcx, %r12	# tmp4210, tw1
	seta	%r12b	#, tmp4211
	testq	%rbp, %rbp	# _2811
	setle	%cl	#, tmp4213
	cmpq	%rax, 16(%rsp)	# _2870, %sfp
	setbe	%sil	#, tmp4215
	orl	%ecx, %esi	# tmp4213, tmp4216
	cmpq	$6, %r15	#, k
	seta	%cl	#, tmp4218
	leaq	32(%r14), %rbx	#, _2807
	andl	%ecx, %esi	# tmp4218, tmp4219
	cmpq	(%rsp), %rbx	# %sfp, _2807
	setle	%cl	#, tmp4221
	cmpq	%r14, %rbp	# _148, _2811
	setle	%bpl	#, tmp4223
	orl	%ebp, %ecx	# tmp4223, tmp4224
	andl	%esi, %ecx	# tmp4219, tmp4225
	leaq	(%r11,%r14), %rdx	#, _2820
	testq	%rbx, %rbx	# _2807
	setle	%sil	#, tmp4227
	cmpq	%rdx, 16(%rsp)	# _2820, %sfp
	setbe	%bpl	#, tmp4229
	orl	%ebp, %esi	# tmp4229, tmp4230
	andl	%ecx, %esi	# tmp4225, tmp4231
	cmpq	%rdi, %rdx	# _2840, _2820
	seta	%cl	#, tmp4233
	orl	%r10d, %ecx	# tmp4203, tmp4234
	andl	%esi, %ecx	# tmp4231, tmp4235
	cmpq	%r8, %rdx	# _2861, _2820
	seta	%sil	#, tmp4237
	orl	%esi, %r10d	# tmp4237, tmp4238
	andl	%ecx, %r10d	# tmp4235, tmp4239
	cmpq	%rax, %rdi	# _2870, _2840
	setb	%cl	#, tmp4241
	orl	%r9d, %ecx	# tmp4209, tmp4242
	andl	%r10d, %ecx	# tmp4239, tmp4243
	cmpq	%rax, %r8	# _2870, _2861
	setb	%sil	#, tmp4245
	orl	%esi, %r9d	# tmp4245, tmp4246
	andl	%r9d, %ecx	# tmp4246, tmp4247
	cmpq	%rdi, %r11	# _2840, Fout
	seta	%sil	#, tmp4249
	orl	%r12d, %esi	# tmp4211, tmp4250
	testb	%sil, %cl	# tmp4250, tmp4247
# SUCC: 97 [10.0% (guessed)]  count:5558192 (estimated locally) (CAN_FALLTHRU) 11 [90.0% (guessed)]  count:50023732 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L37	#,
# BLOCK 11, count:50023732 (estimated locally) seq:9
# PRED: 10 [90.0% (guessed)]  count:50023732 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpq	%r8, %r11	# _2861, Fout
	seta	%cl	#, tmp4253
	orb	%r12b, %cl	# tmp4211, tmp4253
# SUCC: 97 [11.1% (guessed)]  count:5558192 (estimated locally) (CAN_FALLTHRU) 12 [88.9% (guessed)]  count:44465540 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L37	#,
# BLOCK 12, count:44465539 (estimated locally) seq:10
# PRED: 11 [88.9% (guessed)]  count:44465540 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	80(%rsp), %rbx	# %sfp, k
	movd	%r13d, %xmm0	# epi3$i, tmp4260
	leaq	-8(%rbx), %r10	#, tmp4255
	movq	128(%rsp), %rsi	# %sfp, tw1
	punpcklwd	%xmm0, %xmm0	# tmp4260, tmp4261
	shrq	$3, %r10	#, tmp4256
	pshufd	$0, %xmm0, %xmm7	#, tmp4261, tmp5982
	movdqa	.LC1(%rip), %xmm14	#, tmp5341
	movdqa	.LC2(%rip), %xmm13	#, tmp5342
	incq	%r10	# bnd.236
	movaps	%xmm7, 224(%rsp)	# tmp5982, %sfp
	movq	%r11, %r9	# Fout, ivtmp.803
	movq	%rsi, %rdi	# tw1, ivtmp.809
	xorl	%ecx, %ecx	# ivtmp.795
	xorl	%ebx, %ebx	# ivtmp.793
# SUCC: 13 [always]  count:44465539 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# BLOCK 13, count:266793234 (estimated locally) seq:11
# PRED: 12 [always]  count:44465539 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 13 [83.3% (adjusted)]  count:222327696 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L38:
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movdqu	(%r9), %xmm3	# MEM[base: _1061, offset: 0B], MEM[base: _1061, offset: 0B]
	movdqu	16(%r9), %xmm2	# MEM[base: _1061, offset: 16B], MEM[base: _1061, offset: 16B]
	movdqa	%xmm3, %xmm1	# MEM[base: _1061, offset: 0B], tmp4267
	pmullw	%xmm13, %xmm1	# tmp5342, tmp4267
	pmulhw	%xmm13, %xmm3	# tmp5342, tmp4268
	incq	%rbx	# ivtmp.793
	addq	$32, %r9	#, ivtmp.803
	addq	$32, %rdi	#, ivtmp.809
	movdqa	%xmm1, %xmm0	# tmp4267, tmp4269
	punpcklwd	%xmm3, %xmm0	# tmp4268, tmp4269
	punpckhwd	%xmm3, %xmm1	# tmp4268, tmp4277
	paddd	%xmm14, %xmm0	# tmp5341, vect__1009.267
	paddd	%xmm14, %xmm1	# tmp5341, vect__1009.267
	psrad	$15, %xmm1	#, vect__1008.268
	psrad	$15, %xmm0	#, vect__1008.268
	movdqa	%xmm0, %xmm3	# vect__1008.268, tmp4282
	punpcklwd	%xmm1, %xmm0	# vect__1008.268, vect__1007.269
	punpckhwd	%xmm1, %xmm3	# vect__1008.268, tmp4282
	movdqa	%xmm0, %xmm1	# vect__1007.269, tmp4283
	punpckhwd	%xmm3, %xmm1	# tmp4282, tmp4283
	punpcklwd	%xmm3, %xmm0	# tmp4282, vect__1007.269
	punpcklwd	%xmm1, %xmm0	# tmp4283, vect__1007.269
	movdqa	%xmm2, %xmm1	# MEM[base: _1061, offset: 16B], tmp4286
	pmullw	%xmm13, %xmm1	# tmp5342, tmp4286
	pmulhw	%xmm13, %xmm2	# tmp5342, tmp4287
	movups	%xmm0, -32(%r9)	# vect__1007.269, MEM[base: _1061, offset: 0B]
	addq	$64, %rsi	#, ivtmp.812
	movdqa	%xmm1, %xmm0	# tmp4286, tmp4288
	punpcklwd	%xmm2, %xmm0	# tmp4287, tmp4288
	punpckhwd	%xmm2, %xmm1	# tmp4287, tmp4296
	paddd	%xmm14, %xmm0	# tmp5341, vect__1009.267
	paddd	%xmm14, %xmm1	# tmp5341, vect__1009.267
	psrad	$15, %xmm1	#, vect__1008.268
	psrad	$15, %xmm0	#, vect__1008.268
	movdqa	%xmm0, %xmm2	# vect__1008.268, tmp4301
	punpcklwd	%xmm1, %xmm0	# vect__1008.268, vect__1007.269
	punpckhwd	%xmm1, %xmm2	# vect__1008.268, tmp4301
	movdqa	%xmm0, %xmm1	# vect__1007.269, tmp4302
	punpckhwd	%xmm2, %xmm1	# tmp4301, tmp4302
	punpcklwd	%xmm2, %xmm0	# tmp4301, vect__1007.269
	punpcklwd	%xmm1, %xmm0	# tmp4302, vect__1007.269
	movups	%xmm0, -16(%r9)	# vect__1007.269, MEM[base: _1061, offset: 16B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movdqu	(%rax,%rcx), %xmm3	# MEM[base: _2870, index: ivtmp.795_1074, offset: 0B], MEM[base: _2870, index: ivtmp.795_1074, offset: 0B]
	movdqu	16(%rax,%rcx), %xmm2	# MEM[base: _2870, index: ivtmp.795_1074, offset: 16B], MEM[base: _2870, index: ivtmp.795_1074, offset: 16B]
	movdqa	%xmm3, %xmm1	# MEM[base: _2870, index: ivtmp.795_1074, offset: 0B], tmp4307
	pmullw	%xmm13, %xmm1	# tmp5342, tmp4307
	pmulhw	%xmm13, %xmm3	# tmp5342, tmp4308
	movdqa	%xmm1, %xmm0	# tmp4307, tmp4309
	punpcklwd	%xmm3, %xmm0	# tmp4308, tmp4309
	punpckhwd	%xmm3, %xmm1	# tmp4308, tmp4317
	paddd	%xmm14, %xmm0	# tmp5341, vect__994.257
	paddd	%xmm14, %xmm1	# tmp5341, vect__994.257
	psrad	$15, %xmm1	#, vect__993.258
	psrad	$15, %xmm0	#, vect__993.258
	movdqa	%xmm0, %xmm3	# vect__993.258, tmp4322
	punpcklwd	%xmm1, %xmm0	# vect__993.258, vect__992.259
	punpckhwd	%xmm1, %xmm3	# vect__993.258, tmp4322
	movdqa	%xmm0, %xmm1	# vect__992.259, tmp4323
	punpckhwd	%xmm3, %xmm1	# tmp4322, tmp4323
	punpcklwd	%xmm3, %xmm0	# tmp4322, vect__992.259
	punpcklwd	%xmm1, %xmm0	# tmp4323, vect__992.259
	movdqa	%xmm2, %xmm1	# MEM[base: _2870, index: ivtmp.795_1074, offset: 16B], tmp4326
	pmullw	%xmm13, %xmm1	# tmp5342, tmp4326
	pmulhw	%xmm13, %xmm2	# tmp5342, tmp4327
	movups	%xmm0, (%rax,%rcx)	# vect__992.259, MEM[base: _2870, index: ivtmp.795_1074, offset: 0B]
	movdqa	%xmm1, %xmm0	# tmp4326, tmp4328
	punpcklwd	%xmm2, %xmm0	# tmp4327, tmp4328
	punpckhwd	%xmm2, %xmm1	# tmp4327, tmp4336
	paddd	%xmm14, %xmm0	# tmp5341, vect__994.257
	paddd	%xmm14, %xmm1	# tmp5341, vect__994.257
	psrad	$15, %xmm1	#, vect__993.258
	psrad	$15, %xmm0	#, vect__993.258
	movdqa	%xmm0, %xmm2	# vect__993.258, tmp4341
	punpcklwd	%xmm1, %xmm0	# vect__993.258, vect__992.259
	punpckhwd	%xmm1, %xmm2	# vect__993.258, tmp4341
	movdqa	%xmm0, %xmm1	# vect__992.259, tmp4342
	punpckhwd	%xmm2, %xmm1	# tmp4341, tmp4342
	punpcklwd	%xmm2, %xmm0	# tmp4341, vect__992.259
	punpcklwd	%xmm1, %xmm0	# tmp4342, vect__992.259
	movups	%xmm0, 16(%rax,%rcx)	# vect__992.259, MEM[base: _2870, index: ivtmp.795_1074, offset: 16B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movdqu	(%rdx,%rcx), %xmm3	# MEM[base: _2820, index: ivtmp.795_1074, offset: 0B], MEM[base: _2820, index: ivtmp.795_1074, offset: 0B]
	movdqu	16(%rdx,%rcx), %xmm2	# MEM[base: _2820, index: ivtmp.795_1074, offset: 16B], MEM[base: _2820, index: ivtmp.795_1074, offset: 16B]
	movdqa	%xmm3, %xmm0	# MEM[base: _2820, index: ivtmp.795_1074, offset: 0B], vect_perm_even_3371
	punpcklwd	%xmm2, %xmm0	# MEM[base: _2820, index: ivtmp.795_1074, offset: 16B], vect_perm_even_3371
	movdqa	%xmm3, %xmm4	# MEM[base: _2820, index: ivtmp.795_1074, offset: 0B], tmp4345
	punpckhwd	%xmm2, %xmm4	# MEM[base: _2820, index: ivtmp.795_1074, offset: 16B], tmp4345
	movdqa	%xmm0, %xmm5	# vect_perm_even_3371, tmp4346
	punpckhwd	%xmm4, %xmm5	# tmp4345, tmp4346
	punpcklwd	%xmm4, %xmm0	# tmp4345, vect_perm_even_3371
	movdqa	%xmm3, %xmm1	# MEM[base: _2820, index: ivtmp.795_1074, offset: 0B], vect_perm_odd_3372
	punpcklwd	%xmm5, %xmm0	# tmp4346, vect_perm_even_3371
	punpcklwd	%xmm2, %xmm1	# MEM[base: _2820, index: ivtmp.795_1074, offset: 16B], vect_perm_odd_3372
	punpcklwd	%xmm4, %xmm1	# tmp4345, vect_perm_odd_3372
	movdqa	%xmm0, %xmm4	# vect_perm_even_3371, tmp4351
	pmullw	%xmm13, %xmm4	# tmp5342, tmp4351
	pmulhw	%xmm13, %xmm0	# tmp5342, tmp4352
	punpckhwd	%xmm5, %xmm1	# tmp4346, vect_perm_odd_3372
	movdqa	%xmm4, %xmm5	# tmp4351, tmp4353
	punpcklwd	%xmm0, %xmm5	# tmp4352, tmp4353
	punpckhwd	%xmm0, %xmm4	# tmp4352, tmp4360
	movdqa	%xmm1, %xmm0	# vect_perm_odd_3372, tmp4365
	pmullw	%xmm13, %xmm0	# tmp5342, tmp4365
	pmulhw	%xmm13, %xmm1	# tmp5342, tmp4366
	paddd	%xmm14, %xmm4	# tmp5341, vect__979.277
	psrad	$15, %xmm4	#, vect__979.277
	movdqa	%xmm4, %xmm9	# vect__979.277, vect__978.278
	movdqa	%xmm0, %xmm4	# tmp4365, tmp4367
	punpcklwd	%xmm1, %xmm4	# tmp4366, tmp4367
	punpckhwd	%xmm1, %xmm0	# tmp4366, tmp4374
	movdqa	%xmm3, %xmm1	# MEM[base: _2820, index: ivtmp.795_1074, offset: 0B], tmp4379
	pmullw	%xmm13, %xmm1	# tmp5342, tmp4379
	pmulhw	%xmm13, %xmm3	# tmp5342, tmp4380
	paddd	%xmm14, %xmm0	# tmp5341, vect__972.280
	psrad	$15, %xmm0	#, vect__972.280
	movdqa	%xmm0, %xmm11	# vect__972.280, vect__971.281
	movdqa	%xmm1, %xmm0	# tmp4379, tmp4381
	punpcklwd	%xmm3, %xmm0	# tmp4380, tmp4381
	punpckhwd	%xmm3, %xmm1	# tmp4380, tmp4389
	paddd	%xmm14, %xmm0	# tmp5341, vect__979.247
	paddd	%xmm14, %xmm1	# tmp5341, vect__979.247
	psrad	$15, %xmm1	#, vect__978.248
	psrad	$15, %xmm0	#, vect__978.248
	movdqa	%xmm0, %xmm3	# vect__978.248, tmp4394
	punpcklwd	%xmm1, %xmm0	# vect__978.248, vect__977.249
	punpckhwd	%xmm1, %xmm3	# vect__978.248, tmp4394
	movdqa	%xmm0, %xmm1	# vect__977.249, tmp4395
	punpckhwd	%xmm3, %xmm1	# tmp4394, tmp4395
	punpcklwd	%xmm3, %xmm0	# tmp4394, vect__977.249
	punpcklwd	%xmm1, %xmm0	# tmp4395, vect__977.249
	movdqa	%xmm2, %xmm1	# MEM[base: _2820, index: ivtmp.795_1074, offset: 16B], tmp4398
	pmullw	%xmm13, %xmm1	# tmp5342, tmp4398
	pmulhw	%xmm13, %xmm2	# tmp5342, tmp4399
	movups	%xmm0, (%rdx,%rcx)	# vect__977.249, MEM[base: _2820, index: ivtmp.795_1074, offset: 0B]
	paddd	%xmm14, %xmm4	# tmp5341, vect__972.280
	psrad	$15, %xmm4	#, vect__972.280
	movdqa	%xmm1, %xmm0	# tmp4398, tmp4400
	punpcklwd	%xmm2, %xmm0	# tmp4399, tmp4400
	punpckhwd	%xmm2, %xmm1	# tmp4399, tmp4408
	paddd	%xmm14, %xmm0	# tmp5341, vect__979.247
	paddd	%xmm14, %xmm1	# tmp5341, vect__979.247
	psrad	$15, %xmm1	#, vect__978.248
	psrad	$15, %xmm0	#, vect__978.248
	movdqa	%xmm0, %xmm2	# vect__978.248, tmp4413
	punpcklwd	%xmm1, %xmm0	# vect__978.248, vect__977.249
	punpckhwd	%xmm1, %xmm2	# vect__978.248, tmp4413
	movdqa	%xmm0, %xmm1	# vect__977.249, tmp4414
	punpckhwd	%xmm2, %xmm1	# tmp4413, tmp4414
	punpcklwd	%xmm2, %xmm0	# tmp4413, vect__977.249
	punpcklwd	%xmm1, %xmm0	# tmp4414, vect__977.249
	movups	%xmm0, 16(%rdx,%rcx)	# vect__977.249, MEM[base: _2820, index: ivtmp.795_1074, offset: 16B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movdqu	(%rax,%rcx), %xmm3	# MEM[base: _2870, index: ivtmp.795_1074, offset: 0B], MEM[base: _2870, index: ivtmp.795_1074, offset: 0B]
	movdqu	16(%rax,%rcx), %xmm1	# MEM[base: _2870, index: ivtmp.795_1074, offset: 16B], MEM[base: _2870, index: ivtmp.795_1074, offset: 16B]
	movzwl	-32(%rdi), %r8d	# MEM[base: _1056, offset: 0B], MEM[base: _1056, offset: 0B]
	movdqa	%xmm3, %xmm0	# MEM[base: _2870, index: ivtmp.795_1074, offset: 0B], tmp4417
	movdqa	%xmm3, %xmm15	# MEM[base: _2870, index: ivtmp.795_1074, offset: 0B], vect_perm_even_3395
	punpckhwd	%xmm1, %xmm0	# MEM[base: _2870, index: ivtmp.795_1074, offset: 16B], tmp4417
	punpcklwd	%xmm1, %xmm15	# MEM[base: _2870, index: ivtmp.795_1074, offset: 16B], vect_perm_even_3395
	punpcklwd	%xmm1, %xmm3	# MEM[base: _2870, index: ivtmp.795_1074, offset: 16B], vect_perm_odd_3396
	movd	%r8d, %xmm1	# MEM[base: _1056, offset: 0B], tmp4424
	movzwl	-24(%rdi), %r8d	# MEM[base: _1056, offset: 8B], MEM[base: _1056, offset: 8B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movaps	%xmm4, 16(%rsp)	# vect__972.280, %sfp
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movd	%r8d, %xmm4	# MEM[base: _1056, offset: 8B], tmp4430
	movzwl	-16(%rdi), %r8d	# MEM[base: _1056, offset: 16B], MEM[base: _1056, offset: 16B]
	movdqa	%xmm15, %xmm2	# vect_perm_even_3395, tmp4418
	punpckhwd	%xmm0, %xmm2	# tmp4417, tmp4418
	punpcklwd	%xmm0, %xmm15	# tmp4417, vect_perm_even_3395
	punpcklwd	%xmm0, %xmm3	# tmp4417, vect_perm_odd_3396
	movd	%r8d, %xmm0	# MEM[base: _1056, offset: 16B], tmp4436
	movzwl	-8(%rdi), %r8d	# MEM[base: _1056, offset: 24B], MEM[base: _1056, offset: 24B]
	punpcklwd	%xmm2, %xmm15	# tmp4418, vect_perm_even_3395
	punpckhwd	%xmm2, %xmm3	# tmp4418, vect_perm_odd_3396
	pinsrw	$1, -20(%rdi), %xmm4	#, MEM[base: _1056, offset: 12B], tmp4431
	pinsrw	$1, -28(%rdi), %xmm1	#, MEM[base: _1056, offset: 4B], tmp4425
	movd	%r8d, %xmm2	# MEM[base: _1056, offset: 24B], tmp4442
	movzwl	-30(%rdi), %r8d	# MEM[base: _1056, offset: 2B], MEM[base: _1056, offset: 2B]
	punpckldq	%xmm4, %xmm1	# tmp4431, tmp4446
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	paddd	%xmm14, %xmm5	# tmp5341, vect__979.277
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movd	%r8d, %xmm4	# MEM[base: _1056, offset: 2B], tmp4454
	movzwl	-22(%rdi), %r8d	# MEM[base: _1056, offset: 10B], MEM[base: _1056, offset: 10B]
	pinsrw	$1, -4(%rdi), %xmm2	#, MEM[base: _1056, offset: 28B], tmp4443
	pinsrw	$1, -12(%rdi), %xmm0	#, MEM[base: _1056, offset: 20B], tmp4437
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	psrad	$15, %xmm5	#, vect__979.277
	movdqa	%xmm5, %xmm10	# vect__979.277, vect__978.278
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movd	%r8d, %xmm5	# MEM[base: _1056, offset: 10B], tmp4460
	movzwl	-14(%rdi), %r8d	# MEM[base: _1056, offset: 18B], MEM[base: _1056, offset: 18B]
	punpckldq	%xmm2, %xmm0	# tmp4443, tmp4448
	punpcklqdq	%xmm0, %xmm1	# tmp4448, tmp4450
	movd	%r8d, %xmm0	# MEM[base: _1056, offset: 18B], tmp4466
	movzwl	-6(%rdi), %r8d	# MEM[base: _1056, offset: 26B], MEM[base: _1056, offset: 26B]
	pinsrw	$1, -18(%rdi), %xmm5	#, MEM[base: _1056, offset: 14B], tmp4461
	movd	%r8d, %xmm2	# MEM[base: _1056, offset: 26B], tmp4472
	pinsrw	$1, -2(%rdi), %xmm2	#, MEM[base: _1056, offset: 30B], tmp4473
	pinsrw	$1, -26(%rdi), %xmm4	#, MEM[base: _1056, offset: 6B], tmp4455
	pinsrw	$1, -10(%rdi), %xmm0	#, MEM[base: _1056, offset: 22B], tmp4467
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movzwl	-64(%rsi), %r8d	# MEM[base: _1045, offset: 0B], MEM[base: _1045, offset: 0B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	punpckldq	%xmm2, %xmm0	# tmp4473, tmp4478
	punpckldq	%xmm5, %xmm4	# tmp4461, tmp4476
	punpcklqdq	%xmm0, %xmm4	# tmp4478, tmp4480
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movd	%r8d, %xmm0	# MEM[base: _1045, offset: 0B], tmp4484
	pinsrw	$1, -56(%rsi), %xmm0	#, MEM[base: _1045, offset: 8B], tmp4485
	movzwl	-48(%rsi), %r8d	# MEM[base: _1045, offset: 16B], MEM[base: _1045, offset: 16B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movdqa	%xmm15, %xmm7	# vect_perm_even_3395, tmp4559
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movd	%r8d, %xmm6	# MEM[base: _1045, offset: 16B], tmp4490
	movzwl	-32(%rsi), %r8d	# MEM[base: _1045, offset: 32B], MEM[base: _1045, offset: 32B]
	pinsrw	$1, -40(%rsi), %xmm6	#, MEM[base: _1045, offset: 24B], tmp4491
	movd	%r8d, %xmm2	# MEM[base: _1045, offset: 32B], tmp4496
	movzwl	-16(%rsi), %r8d	# MEM[base: _1045, offset: 48B], MEM[base: _1045, offset: 48B]
	pinsrw	$1, -24(%rsi), %xmm2	#, MEM[base: _1045, offset: 40B], tmp4497
	movd	%r8d, %xmm5	# MEM[base: _1045, offset: 48B], tmp4502
	pinsrw	$1, -8(%rsi), %xmm5	#, MEM[base: _1045, offset: 56B], tmp4503
	punpckldq	%xmm6, %xmm0	# tmp4491, tmp4506
	punpckldq	%xmm5, %xmm2	# tmp4503, tmp4508
	punpcklqdq	%xmm2, %xmm0	# tmp4508, tmp4510
	pxor	%xmm2, %xmm2	# tmp4513
	pcmpgtw	%xmm0, %xmm2	# tmp4510, tmp4513
	movzwl	-62(%rsi), %r8d	# MEM[base: _1045, offset: 2B], MEM[base: _1045, offset: 2B]
	movdqa	%xmm0, %xmm6	# tmp4510, tmp4514
	movdqa	%xmm0, %xmm12	# tmp4510, tmp4518
	movd	%r8d, %xmm0	# MEM[base: _1045, offset: 2B], tmp4522
	movzwl	-46(%rsi), %r8d	# MEM[base: _1045, offset: 18B], MEM[base: _1045, offset: 18B]
	punpcklwd	%xmm2, %xmm6	# tmp4513, tmp4514
	movaps	%xmm6, 32(%rsp)	# tmp4514, %sfp
	movd	%r8d, %xmm6	# MEM[base: _1045, offset: 18B], tmp4528
	movzwl	-30(%rsi), %r8d	# MEM[base: _1045, offset: 34B], MEM[base: _1045, offset: 34B]
	punpckhwd	%xmm2, %xmm12	# tmp4513, tmp4518
	movd	%r8d, %xmm2	# MEM[base: _1045, offset: 34B], tmp4534
	movzwl	-14(%rsi), %r8d	# MEM[base: _1045, offset: 50B], MEM[base: _1045, offset: 50B]
	pinsrw	$1, -38(%rsi), %xmm6	#, MEM[base: _1045, offset: 26B], tmp4529
	movd	%r8d, %xmm5	# MEM[base: _1045, offset: 50B], tmp4540
	pinsrw	$1, -6(%rsi), %xmm5	#, MEM[base: _1045, offset: 58B], tmp4541
	pinsrw	$1, -54(%rsi), %xmm0	#, MEM[base: _1045, offset: 10B], tmp4523
	pinsrw	$1, -22(%rsi), %xmm2	#, MEM[base: _1045, offset: 42B], tmp4535
	punpckldq	%xmm6, %xmm0	# tmp4529, tmp4544
	punpckldq	%xmm5, %xmm2	# tmp4541, tmp4546
	punpcklqdq	%xmm2, %xmm0	# tmp4546, tmp4548
	pxor	%xmm2, %xmm2	# tmp4551
	pcmpgtw	%xmm0, %xmm2	# tmp4548, tmp4551
	movdqa	%xmm0, %xmm5	# tmp4548, tmp4556
	movdqa	%xmm0, %xmm8	# tmp4548, tmp4552
	punpckhwd	%xmm2, %xmm5	# tmp4551, tmp4556
	punpcklwd	%xmm2, %xmm8	# tmp4551, tmp4552
	movaps	%xmm5, 64(%rsp)	# tmp4556, %sfp
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movdqa	%xmm15, %xmm2	# vect_perm_even_3395, tmp4558
	movdqa	%xmm3, %xmm5	# vect_perm_odd_3396, tmp4562
	pmullw	%xmm1, %xmm2	# tmp4450, tmp4558
	pmullw	%xmm4, %xmm5	# tmp4480, tmp4562
	movdqa	%xmm3, %xmm6	# vect_perm_odd_3396, tmp4563
	pmulhw	%xmm1, %xmm7	# tmp4450, tmp4559
	pmulhw	%xmm4, %xmm6	# tmp4480, tmp4563
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm8, 48(%rsp)	# tmp4552, %sfp
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movdqa	%xmm2, %xmm0	# tmp4558, tmp4560
	movdqa	%xmm5, %xmm8	# tmp4562, tmp4564
	punpcklwd	%xmm7, %xmm0	# tmp4559, tmp4560
	punpcklwd	%xmm6, %xmm8	# tmp4563, tmp4564
	punpckhwd	%xmm6, %xmm5	# tmp4563, tmp4576
	punpckhwd	%xmm7, %xmm2	# tmp4559, tmp4572
	psubd	%xmm8, %xmm0	# tmp4564, vect__924.288
	psubd	%xmm5, %xmm2	# tmp4576, vect__924.288
	paddd	%xmm14, %xmm0	# tmp5341, vect__923.289
	paddd	%xmm14, %xmm2	# tmp5341, vect__923.289
	psrad	$15, %xmm2	#, vect__846.290
	psrad	$15, %xmm0	#, vect__846.290
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movdqa	%xmm0, %xmm5	# vect__846.290, tmp4581
	punpcklwd	%xmm2, %xmm0	# vect__846.290, vect__1239.308
	punpckhwd	%xmm2, %xmm5	# vect__846.290, tmp4581
	movdqa	%xmm0, %xmm2	# vect__1239.308, tmp4582
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movdqa	32(%rsp), %xmm6	# %sfp, tmp4514
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	punpckhwd	%xmm5, %xmm2	# tmp4581, tmp4582
	punpcklwd	%xmm5, %xmm0	# tmp4581, vect__1239.308
	punpcklwd	%xmm2, %xmm0	# tmp4582, vect__1239.308
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movdqa	%xmm10, %xmm2	# vect__978.278, tmp4586
	pmuludq	%xmm6, %xmm2	# tmp4514, tmp4586
	movdqa	%xmm10, %xmm7	# vect__978.278, tmp4588
	psrlq	$32, %xmm7	#, tmp4588
	psrlq	$32, %xmm6	#, tmp4589
	movaps	%xmm6, 96(%rsp)	# tmp4589, %sfp
	movaps	%xmm7, 176(%rsp)	# tmp4588, %sfp
	movdqa	%xmm7, %xmm5	# tmp4588, tmp4587
	movdqa	16(%rsp), %xmm7	# %sfp, vect__971.281
	movdqa	48(%rsp), %xmm8	# %sfp, tmp4552
	pmuludq	96(%rsp), %xmm5	# %sfp, tmp4587
	pshufd	$8, %xmm2, %xmm2	#, tmp4586, tmp4584
	pshufd	$8, %xmm5, %xmm5	#, tmp4587, tmp4585
	punpckldq	%xmm5, %xmm2	# tmp4585, vect__552.297
	movdqa	%xmm7, %xmm5	# vect__971.281, tmp4593
	psrlq	$32, %xmm7	#, tmp4595
	pmuludq	%xmm8, %xmm5	# tmp4552, tmp4593
	movdqa	%xmm7, %xmm6	# tmp4595, tmp4594
	psrlq	$32, %xmm8	#, tmp4596
	pmuludq	%xmm8, %xmm6	# tmp4596, tmp4594
	movaps	%xmm9, 160(%rsp)	# vect__978.278, %sfp
	pshufd	$8, %xmm5, %xmm5	#, tmp4593, tmp4591
	movaps	%xmm7, 192(%rsp)	# tmp4595, %sfp
	movaps	%xmm10, 144(%rsp)	# vect__978.278, %sfp
	pshufd	$8, %xmm6, %xmm6	#, tmp4594, tmp4592
	punpckldq	%xmm6, %xmm5	# tmp4592, vect__458.299
	psubd	%xmm5, %xmm2	# vect__458.299, vect__363.300
	movdqa	%xmm9, %xmm5	# vect__978.278, tmp4604
	psrlq	$32, %xmm9	#, tmp4606
	movdqa	%xmm9, %xmm7	# tmp4606, tmp4606
	movdqa	%xmm12, %xmm9	# tmp4518, tmp4607
	psrlq	$32, %xmm9	#, tmp4607
	movdqa	%xmm9, %xmm6	# tmp4607, tmp4605
	pmuludq	%xmm7, %xmm6	# tmp4606, tmp4605
	pmuludq	%xmm12, %xmm5	# tmp4518, tmp4604
	movdqa	64(%rsp), %xmm10	# %sfp, tmp4556
	movaps	%xmm9, 208(%rsp)	# tmp4607, %sfp
	movdqa	%xmm10, %xmm9	# tmp4556, tmp4611
	psrlq	$32, %xmm10	#, tmp4614
	pshufd	$8, %xmm6, %xmm6	#, tmp4605, tmp4603
	movaps	%xmm10, 112(%rsp)	# tmp4614, %sfp
	pshufd	$8, %xmm5, %xmm5	#, tmp4604, tmp4602
	movdqa	112(%rsp), %xmm10	# %sfp, tmp4612
	punpckldq	%xmm6, %xmm5	# tmp4603, vect__552.297
	movdqa	%xmm11, %xmm6	# vect__971.281, tmp4613
	psrlq	$32, %xmm6	#, tmp4613
	pmuludq	%xmm11, %xmm9	# vect__971.281, tmp4611
	pmuludq	%xmm6, %xmm10	# tmp4613, tmp4612
	paddd	%xmm14, %xmm2	# tmp5341, vect__186.301
	psrad	$15, %xmm2	#, vect__181.302
	pshufd	$8, %xmm9, %xmm9	#, tmp4611, tmp4609
	pshufd	$8, %xmm10, %xmm10	#, tmp4612, tmp4610
	punpckldq	%xmm10, %xmm9	# tmp4610, vect__458.299
	psubd	%xmm9, %xmm5	# vect__458.299, vect__363.300
	paddd	%xmm14, %xmm5	# tmp5341, vect__186.301
	psrad	$15, %xmm5	#, vect__181.302
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movdqa	%xmm2, %xmm9	# vect__181.302, tmp4619
	punpcklwd	%xmm5, %xmm2	# vect__181.302, vect__1207.309
	punpckhwd	%xmm5, %xmm9	# vect__181.302, tmp4619
	movdqa	%xmm2, %xmm5	# vect__1207.309, tmp4620
	punpckhwd	%xmm9, %xmm5	# tmp4619, tmp4620
	punpcklwd	%xmm9, %xmm2	# tmp4619, vect__1207.309
	punpcklwd	%xmm5, %xmm2	# tmp4620, vect__1207.309
	movdqa	%xmm0, %xmm5	# vect__1239.308, vect__1198.310
	paddw	%xmm2, %xmm5	# vect__1207.309, vect__1198.310
	movdqa	%xmm5, %xmm10	# vect__1198.310, vect__1198.310
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movdqa	%xmm15, %xmm5	# vect_perm_even_3395, tmp4622
	pmullw	%xmm4, %xmm5	# tmp4480, tmp4622
	pmulhw	%xmm15, %xmm4	# vect_perm_even_3395, tmp4623
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	psubw	%xmm2, %xmm0	# vect__1207.309, vect__1194.316
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movdqa	%xmm5, %xmm9	# tmp4622, tmp4622
	movdqa	%xmm5, %xmm15	# tmp4622, tmp4624
	movdqa	%xmm3, %xmm5	# vect_perm_odd_3396, tmp4626
	pmullw	%xmm1, %xmm5	# tmp4450, tmp4626
	pmulhw	%xmm1, %xmm3	# tmp4450, tmp4627
	punpcklwd	%xmm4, %xmm15	# tmp4623, tmp4624
	punpckhwd	%xmm4, %xmm9	# tmp4623, tmp4636
	movdqa	%xmm5, %xmm1	# tmp4626, tmp4628
	punpcklwd	%xmm3, %xmm1	# tmp4627, tmp4628
	punpckhwd	%xmm3, %xmm5	# tmp4627, tmp4640
	paddd	%xmm5, %xmm9	# tmp4640, vect__710.293
	paddd	%xmm15, %xmm1	# tmp4624, vect__710.293
	paddd	%xmm14, %xmm1	# tmp5341, vect__666.294
	paddd	%xmm14, %xmm9	# tmp5341, vect__666.294
	psrad	$15, %xmm9	#, vect__653.295
	psrad	$15, %xmm1	#, vect__653.295
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movdqa	%xmm1, %xmm3	# vect__653.295, tmp4645
	punpcklwd	%xmm9, %xmm1	# vect__653.295, vect__1200.312
	punpckhwd	%xmm9, %xmm3	# vect__653.295, tmp4645
	movdqa	%xmm1, %xmm4	# vect__1200.312, tmp4646
	punpckhwd	%xmm3, %xmm4	# tmp4645, tmp4646
	punpcklwd	%xmm3, %xmm1	# tmp4645, vect__1200.312
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movdqa	144(%rsp), %xmm3	# %sfp, tmp4650
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	punpcklwd	%xmm4, %xmm1	# tmp4646, vect__1200.312
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	pmuludq	48(%rsp), %xmm3	# %sfp, tmp4650
	movdqa	16(%rsp), %xmm4	# %sfp, tmp4657
	movdqa	192(%rsp), %xmm5	# %sfp, tmp4658
	pmuludq	32(%rsp), %xmm4	# %sfp, tmp4657
	pmuludq	96(%rsp), %xmm5	# %sfp, tmp4658
	pshufd	$8, %xmm4, %xmm4	#, tmp4657, tmp4655
	pshufd	$8, %xmm5, %xmm5	#, tmp4658, tmp4656
	punpckldq	%xmm5, %xmm4	# tmp4656, vect__76.304
	pshufd	$8, %xmm3, %xmm3	#, tmp4650, tmp4648
	movdqa	%xmm11, %xmm5	# vect__971.281, tmp4675
	pmuludq	176(%rsp), %xmm8	# %sfp, tmp4651
	pshufd	$8, %xmm8, %xmm8	#, tmp4651, tmp4649
	pmuludq	%xmm12, %xmm5	# tmp4518, tmp4675
	punpckldq	%xmm8, %xmm3	# tmp4649, vect__81.303
	paddd	%xmm4, %xmm3	# vect__76.304, vect__45.305
	movdqa	160(%rsp), %xmm4	# %sfp, tmp4668
	pmuludq	112(%rsp), %xmm7	# %sfp, tmp4669
	pmuludq	64(%rsp), %xmm4	# %sfp, tmp4668
	pshufd	$8, %xmm7, %xmm7	#, tmp4669, tmp4667
	pshufd	$8, %xmm4, %xmm4	#, tmp4668, tmp4666
	punpckldq	%xmm7, %xmm4	# tmp4667, tmp4666
	movdqa	%xmm4, %xmm7	# tmp4666, vect__81.303
	pmuludq	208(%rsp), %xmm6	# %sfp, tmp4676
	pshufd	$8, %xmm5, %xmm4	#, tmp4675, tmp4673
	pshufd	$8, %xmm6, %xmm6	#, tmp4676, tmp4674
	punpckldq	%xmm6, %xmm4	# tmp4674, vect__76.304
	paddd	%xmm7, %xmm4	# vect__81.303, vect__45.305
	paddd	%xmm14, %xmm3	# tmp5341, vect__43.306
	paddd	%xmm14, %xmm4	# tmp5341, vect__43.306
	psrad	$15, %xmm4	#, vect__41.307
	psrad	$15, %xmm3	#, vect__41.307
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movdqa	%xmm3, %xmm5	# vect__41.307, tmp4683
	punpcklwd	%xmm4, %xmm3	# vect__41.307, vect__1201.313
	punpckhwd	%xmm4, %xmm5	# vect__41.307, tmp4683
	movdqa	%xmm3, %xmm4	# vect__1201.313, tmp4684
	punpckhwd	%xmm5, %xmm4	# tmp4683, tmp4684
	punpcklwd	%xmm5, %xmm3	# tmp4683, vect__1201.313
	punpcklwd	%xmm4, %xmm3	# tmp4684, vect__1201.313
	movdqa	%xmm1, %xmm5	# vect__1200.312, vect__1202.314
	paddw	%xmm3, %xmm5	# vect__1201.313, vect__1202.314
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	psubw	%xmm3, %xmm1	# vect__1201.313, vect__1196.318
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movdqu	-32(%r9), %xmm3	# MEM[base: _1061, offset: 0B], MEM[base: _1061, offset: 0B]
	movdqu	-16(%r9), %xmm6	# MEM[base: _1061, offset: 16B], MEM[base: _1061, offset: 16B]
	movdqa	%xmm3, %xmm2	# MEM[base: _1061, offset: 0B], vect__1191.324
	punpcklwd	%xmm6, %xmm2	# MEM[base: _1061, offset: 16B], vect__1191.324
	movdqa	%xmm3, %xmm4	# MEM[base: _1061, offset: 0B], tmp4690
	punpckhwd	%xmm6, %xmm4	# MEM[base: _1061, offset: 16B], tmp4690
	movdqa	%xmm2, %xmm7	# vect__1191.324, tmp4691
	punpckhwd	%xmm4, %xmm7	# tmp4690, tmp4691
	punpcklwd	%xmm4, %xmm2	# tmp4690, vect__1191.324
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movdqa	%xmm10, %xmm8	# vect__1198.310, vect__1192.325
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	punpcklwd	%xmm6, %xmm3	# MEM[base: _1061, offset: 16B], vect__1106.329
	punpcklwd	%xmm7, %xmm2	# tmp4691, vect__1191.324
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	psraw	$1, %xmm8	#, vect__1192.325
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	punpcklwd	%xmm4, %xmm3	# tmp4690, vect__1106.329
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movdqa	%xmm5, %xmm4	# vect__1202.314, vect__1107.330
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	psubw	%xmm8, %xmm2	# vect__1192.325, vect__1185.327
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	punpckhwd	%xmm7, %xmm3	# tmp4691, vect__1106.329
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	psraw	$1, %xmm4	#, vect__1107.330
	psubw	%xmm4, %xmm3	# vect__1107.330, vect__1105.332
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movdqa	%xmm2, %xmm4	# vect__1185.327, tmp4699
	punpcklwd	%xmm3, %xmm4	# vect__1105.332, tmp4699
	punpckhwd	%xmm3, %xmm2	# vect__1105.332, tmp4700
	movups	%xmm4, (%rax,%rcx)	# tmp4699, MEM[base: _2870, index: ivtmp.795_1074, offset: 0B]
	movups	%xmm2, 16(%rax,%rcx)	# tmp4700, MEM[base: _2870, index: ivtmp.795_1074, offset: 16B]
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movdqu	-32(%r9), %xmm2	# MEM[base: _1061, offset: 0B], MEM[base: _1061, offset: 0B]
	movdqu	-16(%r9), %xmm6	# MEM[base: _1061, offset: 16B], MEM[base: _1061, offset: 16B]
	movdqa	%xmm2, %xmm3	# MEM[base: _1061, offset: 0B], vect__4.346
	punpcklwd	%xmm6, %xmm3	# MEM[base: _1061, offset: 16B], vect__4.346
	movdqa	%xmm2, %xmm4	# MEM[base: _1061, offset: 0B], tmp4704
	punpckhwd	%xmm6, %xmm4	# MEM[base: _1061, offset: 16B], tmp4704
	movdqa	%xmm3, %xmm7	# vect__4.346, tmp4705
	punpckhwd	%xmm4, %xmm7	# tmp4704, tmp4705
	punpcklwd	%xmm4, %xmm3	# tmp4704, vect__4.346
	punpcklwd	%xmm6, %xmm2	# MEM[base: _1061, offset: 16B], vect__434.349
	punpcklwd	%xmm7, %xmm3	# tmp4705, vect__4.346
	punpcklwd	%xmm4, %xmm2	# tmp4704, vect__434.349
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movdqa	224(%rsp), %xmm11	# %sfp, vect_cst__3560
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	paddw	%xmm3, %xmm10	# vect__4.346, vect__5.347
	punpckhwd	%xmm7, %xmm2	# tmp4705, vect__434.349
	paddw	%xmm5, %xmm2	# vect__1202.314, vect__444.350
	movdqa	%xmm10, %xmm3	# vect__5.347, tmp4711
	punpcklwd	%xmm2, %xmm3	# vect__444.350, tmp4711
	punpckhwd	%xmm2, %xmm10	# vect__444.350, tmp4712
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movdqa	%xmm11, %xmm2	# vect_cst__3560, tmp4716
	pmullw	%xmm1, %xmm2	# vect__1196.318, tmp4716
	pmulhw	%xmm11, %xmm1	# vect_cst__3560, tmp4717
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movups	%xmm3, -32(%r9)	# tmp4711, MEM[base: _1061, offset: 0B]
	movups	%xmm10, -16(%r9)	# tmp4712, MEM[base: _1061, offset: 16B]
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movdqu	(%rax,%rcx), %xmm3	# MEM[base: _2870, index: ivtmp.795_1074, offset: 0B], MEM[base: _2870, index: ivtmp.795_1074, offset: 0B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movdqa	%xmm2, %xmm5	# tmp4716, tmp4718
	punpcklwd	%xmm1, %xmm5	# tmp4717, tmp4718
	punpckhwd	%xmm1, %xmm2	# tmp4717, tmp4725
	paddd	%xmm14, %xmm5	# tmp5341, vect__11.340
	paddd	%xmm14, %xmm2	# tmp5341, vect__11.340
	psrad	$15, %xmm2	#, vect__758.341
	psrad	$15, %xmm5	#, vect__758.341
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movdqa	%xmm5, %xmm1	# vect__758.341, tmp4729
	punpcklwd	%xmm2, %xmm5	# vect__758.341, vect__655.359
	punpckhwd	%xmm2, %xmm1	# vect__758.341, tmp4729
	movdqa	%xmm5, %xmm2	# vect__655.359, tmp4730
	punpckhwd	%xmm1, %xmm2	# tmp4729, tmp4730
	punpcklwd	%xmm1, %xmm5	# tmp4729, vect__655.359
	punpcklwd	%xmm2, %xmm5	# tmp4730, vect__655.359
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movdqa	%xmm11, %xmm2	# vect_cst__3560, tmp4736
	pmullw	%xmm0, %xmm2	# vect__1194.316, tmp4736
	pmulhw	%xmm11, %xmm0	# vect_cst__3560, tmp4737
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movdqu	16(%rax,%rcx), %xmm4	# MEM[base: _2870, index: ivtmp.795_1074, offset: 16B], MEM[base: _2870, index: ivtmp.795_1074, offset: 16B]
	movdqa	%xmm3, %xmm6	# MEM[base: _2870, index: ivtmp.795_1074, offset: 0B], vect__648.358
	punpcklwd	%xmm4, %xmm6	# MEM[base: _2870, index: ivtmp.795_1074, offset: 16B], vect__648.358
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movdqa	%xmm2, %xmm1	# tmp4736, tmp4738
	punpcklwd	%xmm0, %xmm1	# tmp4737, tmp4738
	punpckhwd	%xmm0, %xmm2	# tmp4737, tmp4745
	paddd	%xmm14, %xmm1	# tmp5341, vect__1095.337
	psrad	$15, %xmm1	#, vect__1090.338
	paddd	%xmm14, %xmm2	# tmp5341, vect__1095.337
	psrad	$15, %xmm2	#, vect__1090.338
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movdqa	%xmm1, %xmm0	# vect__1090.338, vect__278.363
	punpcklwd	%xmm2, %xmm0	# vect__1090.338, vect__278.363
	movdqa	%xmm1, %xmm9	# vect__1090.338, tmp4749
	punpckhwd	%xmm2, %xmm9	# vect__1090.338, tmp4749
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movdqa	%xmm3, %xmm7	# MEM[base: _2870, index: ivtmp.795_1074, offset: 0B], tmp4732
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movdqa	%xmm0, %xmm1	# vect__278.363, tmp4750
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	punpckhwd	%xmm4, %xmm7	# MEM[base: _2870, index: ivtmp.795_1074, offset: 16B], tmp4732
	punpcklwd	%xmm4, %xmm3	# MEM[base: _2870, index: ivtmp.795_1074, offset: 16B], MEM[base: _2870, index: ivtmp.795_1074, offset: 0B]
	movdqa	%xmm6, %xmm8	# vect__648.358, tmp4733
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	punpckhwd	%xmm9, %xmm1	# tmp4749, tmp4750
	punpcklwd	%xmm9, %xmm0	# tmp4749, vect__278.363
	punpcklwd	%xmm1, %xmm0	# tmp4750, vect__278.363
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	punpckhwd	%xmm7, %xmm8	# tmp4732, tmp4733
	movdqa	%xmm3, %xmm1	# MEM[base: _2870, index: ivtmp.795_1074, offset: 0B], vect__264.362
	punpcklwd	%xmm7, %xmm6	# tmp4732, vect__648.358
	punpcklwd	%xmm8, %xmm6	# tmp4733, vect__648.358
	punpcklwd	%xmm7, %xmm1	# tmp4732, vect__264.362
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	paddw	%xmm5, %xmm6	# vect__655.359, vect__674.360
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	punpckhwd	%xmm8, %xmm1	# tmp4733, vect__264.362
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	psubw	%xmm0, %xmm1	# vect__278.363, vect__14.364
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movdqa	%xmm6, %xmm2	# vect__674.360, tmp4755
	punpcklwd	%xmm1, %xmm2	# vect__14.364, tmp4755
	punpckhwd	%xmm1, %xmm6	# vect__14.364, tmp4756
	movups	%xmm2, (%rdx,%rcx)	# tmp4755, MEM[base: _2820, index: ivtmp.795_1074, offset: 0B]
	movups	%xmm6, 16(%rdx,%rcx)	# tmp4756, MEM[base: _2820, index: ivtmp.795_1074, offset: 16B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movdqu	(%rax,%rcx), %xmm1	# MEM[base: _2870, index: ivtmp.795_1074, offset: 0B], MEM[base: _2870, index: ivtmp.795_1074, offset: 0B]
	movdqu	16(%rax,%rcx), %xmm4	# MEM[base: _2870, index: ivtmp.795_1074, offset: 16B], MEM[base: _2870, index: ivtmp.795_1074, offset: 16B]
	movdqa	%xmm1, %xmm2	# MEM[base: _2870, index: ivtmp.795_1074, offset: 0B], vect__46.372
	movdqa	%xmm1, %xmm3	# MEM[base: _2870, index: ivtmp.795_1074, offset: 0B], tmp4760
	punpcklwd	%xmm4, %xmm2	# MEM[base: _2870, index: ivtmp.795_1074, offset: 16B], vect__46.372
	punpckhwd	%xmm4, %xmm3	# MEM[base: _2870, index: ivtmp.795_1074, offset: 16B], tmp4760
	movdqa	%xmm2, %xmm6	# vect__46.372, tmp4761
	punpckhwd	%xmm3, %xmm6	# tmp4760, tmp4761
	punpcklwd	%xmm3, %xmm2	# tmp4760, vect__46.372
	punpcklwd	%xmm4, %xmm1	# MEM[base: _2870, index: ivtmp.795_1074, offset: 16B], vect__1247.375
	punpcklwd	%xmm6, %xmm2	# tmp4761, vect__46.372
	punpcklwd	%xmm3, %xmm1	# tmp4760, vect__1247.375
	psubw	%xmm5, %xmm2	# vect__655.359, vect__47.373
	punpckhwd	%xmm6, %xmm1	# tmp4761, vect__1247.375
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	paddw	%xmm1, %xmm0	# vect__1247.375, vect__1248.376
	movdqa	%xmm2, %xmm1	# vect__47.373, tmp4767
	punpcklwd	%xmm0, %xmm1	# vect__1248.376, tmp4767
	punpckhwd	%xmm0, %xmm2	# vect__1248.376, tmp4768
	movups	%xmm1, (%rax,%rcx)	# tmp4767, MEM[base: _2870, index: ivtmp.795_1074, offset: 0B]
	movups	%xmm2, 16(%rax,%rcx)	# tmp4768, MEM[base: _2870, index: ivtmp.795_1074, offset: 16B]
	addq	$32, %rcx	#, ivtmp.795
	cmpq	%r10, %rbx	# bnd.236, ivtmp.793
# SUCC: 13 [83.3% (adjusted)]  count:222327696 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 14 [16.7% (adjusted)]  count:44465538 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jb	.L38	#,
# BLOCK 14, count:44465538 (estimated locally) seq:12
# PRED: 13 [16.7% (adjusted)]  count:44465538 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movq	80(%rsp), %rbx	# %sfp, k
	movq	128(%rsp), %rdi	# %sfp, tw1
	movq	%r10, %rdx	# bnd.236, _3264
	leaq	0(,%r10,8), %rax	#, niters_vector_mult_vf.237
	salq	$5, %rdx	#, _3264
	movq	%rbx, %rsi	# k, tmp.239
	salq	$6, %r10	#, tmp4769
	leaq	(%r11,%rdx), %rcx	#, tmp.238
	subq	%rax, %rsi	# niters_vector_mult_vf.237, tmp.239
	leaq	(%rdi,%rdx), %rbp	#, tmp.240
	addq	%rdi, %r10	# tw1, tmp.241
	cmpq	%rax, %rbx	# niters_vector_mult_vf.237, k
# SUCC: 15 [87.5% (guessed)]  count:38907346 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 17 [12.5% (guessed)]  count:5558192 (estimated locally) (CAN_FALLTHRU)
	je	.L1	#,
# BLOCK 15, count:38907347 (estimated locally) seq:13
# PRED: 14 [87.5% (guessed)]  count:38907346 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	(%rcx,%rsi,4), %rax	#, _1098
	movq	(%rsp), %rdx	# %sfp, _13
	movq	%rax, (%rsp)	# _1098, %sfp
	addq	%rcx, %rdx	# tmp.238, _13
# SUCC: 16 [always]  count:38907347 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	(%rcx,%r14), %r9	#, ivtmp.784
# BLOCK 16, count:353703193 (estimated locally) seq:14
# PRED: 15 [always]  count:38907347 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 16 [89.0% (guessed)]  count:314795842 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L42:
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movswl	(%rcx), %eax	# MEM[base: Fout_3107, offset: 0B], MEM[base: Fout_3107, offset: 0B]
	imull	$10922, %eax, %eax	#, MEM[base: Fout_3107, offset: 0B], tmp4772
	addl	$16384, %eax	#, tmp4773
	sarl	$15, %eax	#, tmp4774
	movw	%ax, (%rcx)	# tmp4774, MEM[base: Fout_3107, offset: 0B]
	movswl	2(%rcx), %eax	# MEM[base: Fout_3107, offset: 2B], MEM[base: Fout_3107, offset: 2B]
	imull	$10922, %eax, %eax	#, MEM[base: Fout_3107, offset: 2B], tmp4776
	addl	$16384, %eax	#, tmp4777
	sarl	$15, %eax	#, tmp4778
	movw	%ax, 2(%rcx)	# tmp4778, MEM[base: Fout_3107, offset: 2B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movswl	(%rdx), %eax	# MEM[base: _253, offset: 0B], MEM[base: _253, offset: 0B]
	imull	$10922, %eax, %eax	#, MEM[base: _253, offset: 0B], tmp4780
	addl	$16384, %eax	#, tmp4781
	sarl	$15, %eax	#, tmp4782
	movw	%ax, (%rdx)	# tmp4782, MEM[base: _253, offset: 0B]
	movswl	2(%rdx), %eax	# MEM[base: _253, offset: 2B], MEM[base: _253, offset: 2B]
	imull	$10922, %eax, %eax	#, MEM[base: _253, offset: 2B], tmp4784
	addl	$16384, %eax	#, tmp4785
	sarl	$15, %eax	#, tmp4786
	movw	%ax, 2(%rdx)	# tmp4786, MEM[base: _253, offset: 2B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movswl	(%r9), %edi	# MEM[base: _260, offset: 0B], MEM[base: _260, offset: 0B]
	movswl	2(%r9), %esi	# MEM[base: _260, offset: 2B], MEM[base: _260, offset: 2B]
	imull	$10922, %edi, %edi	#, MEM[base: _260, offset: 0B], tmp4788
	imull	$10922, %esi, %esi	#, MEM[base: _260, offset: 2B], tmp4791
	addl	$16384, %edi	#, tmp4789
	addl	$16384, %esi	#, tmp4792
	sarl	$15, %edi	#, _3146
	sarl	$15, %esi	#, _3153
	movw	%di, (%r9)	# _3146, MEM[base: _260, offset: 0B]
	movw	%si, 2(%r9)	# _3153, MEM[base: _260, offset: 2B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movswl	(%rdx), %ebx	# MEM[base: _253, offset: 0B], _3157
	movswl	2(%rdx), %r13d	# MEM[base: _253, offset: 2B], _3162
	movswl	2(%rbp), %r14d	# MEM[base: tw1_3109, offset: 2B], _3164
	movswl	0(%rbp), %r11d	# MEM[base: tw1_3109, offset: 0B], _3159
	movl	%ebx, %eax	# _3157, tmp4793
	movl	%r13d, %r8d	# _3162, tmp4794
	imull	%r14d, %r8d	# _3164, tmp4794
	imull	%r11d, %eax	# _3159, tmp4793
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movswl	(%r10), %r15d	# MEM[base: tw2_3110, offset: 0B], _3175
	movswl	2(%r10), %r12d	# MEM[base: tw2_3110, offset: 2B], _3178
	movl	%r15d, 128(%rsp)	# _3175, %sfp
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subl	%r8d, %eax	# tmp4794, tmp4795
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movl	%r15d, %r8d	# _3175, tmp4798
	movl	%esi, %r15d	# _3153, tmp4799
	imull	%edi, %r8d	# _3146, tmp4798
	imull	%r12d, %r15d	# _3178, tmp4799
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	imull	%r14d, %ebx	# _3164, tmp4803
	imull	%r13d, %r11d	# _3162, tmp4804
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	subl	%r15d, %r8d	# tmp4799, tmp4800
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addl	$16384, %eax	#, tmp4796
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addl	$16384, %r8d	#, tmp4801
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leal	16384(%rbx,%r11), %r11d	#, tmp4806
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	imull	%r12d, %edi	# _3178, tmp4808
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	sarl	$15, %eax	#, tmp4797
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	sarl	$15, %r8d	#, tmp4802
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	sarl	$15, %r11d	#, tmp4807
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	imull	128(%rsp), %esi	# %sfp, tmp4809
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	leal	(%r8,%rax), %r15d	#, _3190
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movzwl	(%rcx), %r14d	# MEM[base: Fout_3107, offset: 0B], tmp4816
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leal	16384(%rdi,%rsi), %esi	#, tmp4811
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movl	%r15d, %edi	# _3190, tmp4813
	sarw	%di	# tmp4813
	subl	%edi, %r14d	# tmp4813, tmp4816
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movw	%r14w, (%rdx)	# tmp4816, MEM[base: _253, offset: 0B]
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	sarl	$15, %esi	#, tmp4812
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	leal	(%rsi,%r11), %ebx	#, _3194
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movzwl	2(%rcx), %r14d	# MEM[base: Fout_3107, offset: 2B], tmp4821
	movl	%ebx, %edi	# _3194, tmp4818
	sarw	%di	# tmp4818
	subl	%edi, %r14d	# tmp4818, tmp4821
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movw	%r14w, 2(%rdx)	# tmp4821, MEM[base: _253, offset: 2B]
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subl	%esi, %r11d	# tmp4812, tmp4823
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movswl	%r11w, %esi	# tmp4823, tmp4824
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addw	%bx, 2(%rcx)	# _3194, MEM[base: Fout_3107, offset: 2B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movl	136(%rsp), %ebx	# %sfp, _1236
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addw	%r15w, (%rcx)	# _3190, MEM[base: Fout_3107, offset: 0B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	imull	%ebx, %esi	# _1236, tmp4825
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subl	%r8d, %eax	# tmp4802, tmp4832
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	cwtl
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movzwl	(%rdx), %edi	# MEM[base: _253, offset: 0B], tmp4830
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	addl	$16384, %esi	#, tmp4826
	sarl	$15, %esi	#, tmp4827
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addl	%esi, %edi	# tmp4827, tmp4830
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movw	%di, (%r9)	# tmp4830, MEM[base: _260, offset: 0B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	imull	%ebx, %eax	# _1236, tmp4834
# kiss_fft.c:132:          ++Fout;
	addq	$4, %rcx	#, tmp.238
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movzwl	2(%rdx), %edi	# MEM[base: _253, offset: 2B], tmp4839
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	addl	$16384, %eax	#, tmp4835
	sarl	$15, %eax	#, tmp4836
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	subl	%eax, %edi	# tmp4836, tmp4839
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movw	%di, 2(%r9)	# tmp4839, MEM[base: _260, offset: 2B]
# kiss_fft.c:116:          tw1 += fstride;
	addq	$4, %rbp	#, tmp.240
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subw	%si, (%rdx)	# tmp4827, MEM[base: _253, offset: 0B]
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addw	%ax, 2(%rdx)	# tmp4836, MEM[base: _253, offset: 2B]
# kiss_fft.c:117:          tw2 += fstride*2;
	addq	$8, %r10	#, tmp.241
	addq	$4, %rdx	#, ivtmp.783
	addq	$4, %r9	#, ivtmp.784
# kiss_fft.c:133:      }while(--k);
	cmpq	%rcx, (%rsp)	# tmp.238, %sfp
# SUCC: 16 [89.0% (guessed)]  count:314795842 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 17 [11.0% (guessed)]  count:38907351 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L42	#,
# BLOCK 17, count:277909655 (estimated locally) seq:15
# PRED: 67 [11.0% (guessed)]  count:55581930 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 50 [11.0% (guessed)]  count:7642514 (estimated locally) (CAN_FALLTHRU) 75 [12.5% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU) 78 [always]  count:9726838 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 62 [always]  count:38907351 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 59 [12.5% (guessed)]  count:5558192 (estimated locally) (CAN_FALLTHRU) 104 [always]  count:2779096 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 86 [always]  count:9726838 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 94 [11.0% (guessed)]  count:13895482 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 16 [11.0% (guessed)]  count:38907351 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT) 83 [12.5% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU) 53 [always]  count:61834897 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 100 [always]  count:11116386 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 91 [always]  count:11116386 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 14 [12.5% (guessed)]  count:5558192 (estimated locally) (CAN_FALLTHRU) 107 [always]  count:2779096 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
.L1:
# kiss_fft.c:302: }
	addq	$328, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# SUCC: EXIT [always]  count:277909655 (estimated locally)
	ret	
# BLOCK 18, count:229275458 (estimated locally) seq:16
# PRED: 6 [37.5% (guessed)]  count:85978297 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
# kiss_fft.c:295:     switch (p) {
	cmpl	$5, %r13d	#, p
# SUCC: 19 [33.3% (guessed)]  count:76425153 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 50 [66.7% (guessed)]  count:152850305 (estimated locally) (CAN_FALLTHRU)
	je	.L11	#,
# BLOCK 19, count:45855083 (estimated locally) seq:17
# PRED: 8 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 18 [33.3% (guessed)]  count:76425153 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
.L10:
# kiss_fft.c:211:     kiss_fft_cpx * scratch = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC(sizeof(kiss_fft_cpx)*p);
	movq	136(%rsp), %rdi	# %sfp, _7
	movq	%r11, (%rsp)	# Fout, %sfp
	salq	$2, %rdi	#, _7
# kiss_fft.c:209:     int Norig = st->nfft;
	movl	(%r9), %r15d	# st_34(D)->nfft, Norig
# kiss_fft.c:211:     kiss_fft_cpx * scratch = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC(sizeof(kiss_fft_cpx)*p);
	call	malloc@PLT	#
	movq	%rax, %r14	# tmp5364, scratch
# kiss_fft.c:213:     for ( u=0; u<m; ++u ) {
	movl	64(%rsp), %eax	# %sfp,
	movq	(%rsp), %r11	# %sfp, Fout
	testl	%eax, %eax	#
# SUCC: 20 [83.3% (guessed)]  count:38212569 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 31 [16.7% (guessed)]  count:7642514 (estimated locally) (CAN_FALLTHRU)
	jle	.L55	#,
# BLOCK 20, count:12366978 (estimated locally) seq:18
# PRED: 19 [83.3% (guessed)]  count:38212569 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	112(%rsp), %rax	# %sfp, m
	movq	16(%rsp), %rbx	# %sfp, fstride
	salq	$2, %rax	#, m
	movq	%rax, 32(%rsp)	# m, %sfp
	leal	-1(%r13), %eax	#, tmp5327
	leaq	4(%r14,%rax,4), %rax	#, _926
	movq	%rax, 160(%rsp)	# _926, %sfp
	movl	64(%rsp), %eax	# %sfp, _1200
	movq	%r11, 136(%rsp)	# Fout, %sfp
	imull	%ebx, %eax	# fstride, _1200
	movl	%ebx, 144(%rsp)	# tmp6400, %sfp
	movl	$0, 112(%rsp)	#, %sfp
	movl	%eax, 80(%rsp)	# _1200, %sfp
	leal	-2(%r13), %eax	#, tmp5331
	leaq	8(%r14,%rax,4), %rax	#, _1185
	movq	%rax, (%rsp)	# _1185, %sfp
	movl	$0, 96(%rsp)	#, %sfp
# SUCC: 21 [always]  count:12366978 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%r14, 16(%rsp)	# scratch, %sfp
# BLOCK 21, count:112427124 (estimated locally) seq:19
# PRED: 29 [89.0% (guessed)]  count:100060146 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 20 [always]  count:12366978 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L63:
# kiss_fft.c:215:         for ( q1=0 ; q1<p ; ++q1 ) {
	testl	%r13d, %r13d	# p
# SUCC: 22 [89.0% (guessed)]  count:100060140 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 29 [11.0% (guessed)]  count:12366984 (estimated locally) (CAN_FALLTHRU)
	jle	.L59	#,
# BLOCK 22, count:100060140 (estimated locally) seq:20
# PRED: 21 [89.0% (guessed)]  count:100060140 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:217:             C_FIXDIV(scratch[q1],p);
	movl	$32767, %eax	#, tmp5264
	cltd
	idivl	%r13d	# p
	movq	16(%rsp), %rsi	# %sfp, ivtmp.578
	movq	136(%rsp), %rdi	# %sfp, ivtmp.577
	movq	32(%rsp), %r8	# %sfp, _363
# SUCC: 23 [always]  count:100060140 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	160(%rsp), %r9	# %sfp, _926
# BLOCK 23, count:909637656 (estimated locally) seq:21
# PRED: 22 [always]  count:100060140 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 23 [89.0% (guessed)]  count:809577514 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L56:
# kiss_fft.c:216:             scratch[q1] = Fout[ k  ];
	movl	(%rdi), %edx	# MEM[base: _3476, offset: 0B], MEM[base: _3476, offset: 0B]
# kiss_fft.c:217:             C_FIXDIV(scratch[q1],p);
	movswl	%dx, %ecx	# MEM[base: _3476, offset: 0B], MEM[base: _653, offset: 0B]
	sarl	$16, %edx	#, MEM[base: _653, offset: 2B]
	imull	%eax, %ecx	# tmp5264, tmp5269
	imull	%eax, %edx	# tmp5264, tmp5273
	addq	$4, %rsi	#, ivtmp.578
	addl	$16384, %ecx	#, tmp5270
	addl	$16384, %edx	#, tmp5274
	sarl	$15, %ecx	#, tmp5271
	sarl	$15, %edx	#, tmp5275
	movw	%cx, -4(%rsi)	# tmp5271, MEM[base: _653, offset: 0B]
	movw	%dx, -2(%rsi)	# tmp5275, MEM[base: _653, offset: 2B]
	addq	%r8, %rdi	# _363, ivtmp.577
# kiss_fft.c:215:         for ( q1=0 ; q1<p ; ++q1 ) {
	cmpq	%r9, %rsi	# _926, ivtmp.578
# SUCC: 23 [89.0% (guessed)]  count:809577514 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 24 [11.0% (guessed)]  count:100060142 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L56	#,
# BLOCK 24, count:100060142 (estimated locally) seq:22
# PRED: 23 [11.0% (guessed)]  count:100060142 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movq	16(%rsp), %rax	# %sfp, scratch
	movl	112(%rsp), %ebp	# %sfp, ivtmp.567
	movl	(%rax), %eax	# *scratch_762, *scratch_762
	movq	136(%rsp), %rcx	# %sfp, ivtmp.566
	movl	%eax, 48(%rsp)	# *scratch_762, %sfp
# SUCC: 25 [always]  count:100060142 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	xorl	%r12d, %r12d	# q1
# BLOCK 25, count:909637687 (estimated locally) seq:23
# PRED: 24 [always]  count:100060142 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 28 [89.0% (guessed)]  count:809577549 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L58:
# kiss_fft.c:224:             Fout[ k ] = scratch[0];
	movl	48(%rsp), %eax	# %sfp, *scratch_762
	movl	%eax, (%rcx)	# *scratch_762, MEM[base: _1239, offset: 0B]
# kiss_fft.c:225:             for (q=1;q<p;++q ) {
	cmpl	$1, %r13d	#, p
# SUCC: 26 [89.0% (guessed)]  count:809577542 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 28 [11.0% (guessed)]  count:100060145 (estimated locally) (CAN_FALLTHRU)
	je	.L62	#,
# BLOCK 26, count:809577542 (estimated locally) seq:24
# PRED: 25 [89.0% (guessed)]  count:809577542 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	16(%rsp), %rax	# %sfp, scratch
	movzwl	(%rcx), %r10d	# MEM[base: _1239, offset: 0B], prephitmp_1493
	movzwl	2(%rcx), %r9d	# MEM[base: _1239, offset: 2B], prephitmp_1494
	leaq	4(%rax), %rsi	#, ivtmp.555
# SUCC: 27 [always]  count:809577542 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:223:             int twidx=0;
	xorl	%edx, %edx	# twidx
# BLOCK 27, count:7359795878 (estimated locally) seq:25
# PRED: 26 [always]  count:809577542 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 27 [89.0% (guessed)]  count:6550218336 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L61:
# kiss_fft.c:226:                 twidx += fstride * k;
	addl	%ebp, %edx	# ivtmp.567, _1496
# kiss_fft.c:227:                 if (twidx>=Norig) twidx-=Norig;
	movl	%edx, %eax	# _1496, tmp5343
	subl	%r15d, %eax	# Norig, tmp5343
	cmpl	%edx, %r15d	# _1496, Norig
	cmovle	%eax, %edx	# tmp5343,, twidx
# kiss_fft.c:228:                 C_MUL(t,scratch[q] , twiddles[twidx] );
	movq	128(%rsp), %rbx	# %sfp, tw1
	movslq	%edx, %rax	# twidx, twidx
	movswl	(%rsi), %r8d	# MEM[base: _1101, offset: 0B], _1504
	movswl	2(%rsi), %r11d	# MEM[base: _1101, offset: 2B], _1512
	leaq	(%rbx,%rax,4), %rax	#, _1507
	movswl	(%rax), %edi	# _1507->r, _1509
	movswl	2(%rax), %ebx	# _1507->i, _1514
	movl	%r11d, %r14d	# _1512, tmp5280
	movl	%r8d, %eax	# _1504, tmp5279
	imull	%edi, %eax	# _1509, tmp5279
	imull	%ebx, %r14d	# _1514, tmp5280
	imull	%ebx, %r8d	# _1514, tmp5284
	imull	%r11d, %edi	# _1512, tmp5285
	subl	%r14d, %eax	# tmp5280, tmp5281
	addl	$16384, %eax	#, tmp5282
	sarl	$15, %eax	#, tmp5283
# kiss_fft.c:229:                 C_ADDTO( Fout[ k ] ,t);
	addl	%eax, %r10d	# tmp5283, prephitmp_1493
# kiss_fft.c:228:                 C_MUL(t,scratch[q] , twiddles[twidx] );
	leal	16384(%r8,%rdi), %eax	#, tmp5287
	sarl	$15, %eax	#, tmp5288
# kiss_fft.c:229:                 C_ADDTO( Fout[ k ] ,t);
	addl	%eax, %r9d	# tmp5288, prephitmp_1494
	addq	$4, %rsi	#, ivtmp.555
	movw	%r10w, (%rcx)	# prephitmp_1493, MEM[base: _1239, offset: 0B]
	movw	%r9w, 2(%rcx)	# prephitmp_1494, MEM[base: _1239, offset: 2B]
# kiss_fft.c:225:             for (q=1;q<p;++q ) {
	cmpq	(%rsp), %rsi	# %sfp, ivtmp.555
# SUCC: 27 [89.0% (guessed)]  count:6550218336 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 28 [11.0% (guessed)]  count:809577542 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L61	#,
# BLOCK 28, count:909637695 (estimated locally) seq:26
# PRED: 25 [11.0% (guessed)]  count:100060145 (estimated locally) (CAN_FALLTHRU) 27 [11.0% (guessed)]  count:809577542 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
.L62:
# kiss_fft.c:222:         for ( q1=0 ; q1<p ; ++q1 ) {
	incl	%r12d	# q1
	addq	32(%rsp), %rcx	# %sfp, ivtmp.566
	addl	80(%rsp), %ebp	# %sfp, ivtmp.567
# kiss_fft.c:222:         for ( q1=0 ; q1<p ; ++q1 ) {
	cmpl	%r12d, %r13d	# q1, p
# SUCC: 25 [89.0% (guessed)]  count:809577549 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 29 [11.0% (guessed)]  count:100060146 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L58	#,
# BLOCK 29, count:112427130 (estimated locally) seq:27
# PRED: 28 [11.0% (guessed)]  count:100060146 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT) 21 [11.0% (guessed)]  count:12366984 (estimated locally) (CAN_FALLTHRU)
.L59:
# kiss_fft.c:213:     for ( u=0; u<m; ++u ) {
	incl	96(%rsp)	# %sfp
	movl	144(%rsp), %edi	# %sfp, _3415
	addq	$4, 136(%rsp)	#, %sfp
	addl	%edi, 112(%rsp)	# _3415, %sfp
	movl	96(%rsp), %eax	# %sfp, u
# kiss_fft.c:213:     for ( u=0; u<m; ++u ) {
	cmpl	%eax, 64(%rsp)	# u, %sfp
# SUCC: 21 [89.0% (guessed)]  count:100060146 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 30 [11.0% (guessed)]  count:12366984 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jg	.L63	#,
# BLOCK 30, count:12366984 (estimated locally) seq:28
# PRED: 29 [11.0% (guessed)]  count:12366984 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
# SUCC: 31 [always]  count:12366984 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	16(%rsp), %r14	# %sfp, scratch
# BLOCK 31, count:69477443 (estimated locally) seq:29
# PRED: 19 [16.7% (guessed)]  count:7642514 (estimated locally) (CAN_FALLTHRU) 39 [11.0% (guessed)]  count:49467936 (estimated locally) (CAN_FALLTHRU) 30 [always]  count:12366984 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 47 [always]  count:400240595 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
.L55:
# kiss_fft.c:302: }
	addq	$328, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
# kiss_fft.c:234:     KISS_FFT_TMP_FREE(scratch);
	movq	%r14, %rdi	# scratch,
# kiss_fft.c:302: }
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# SUCC: EXIT [always]  count:69477443 (estimated locally) (ABNORMAL,SIBCALL)
# kiss_fft.c:234:     KISS_FFT_TMP_FREE(scratch);
	jmp	free@PLT	#
# BLOCK 32, count:118111601 (estimated locally) seq:30
# PRED: 2 [34.0% (guessed)]  count:118111601 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L143:
	.cfi_restore_state
# SUCC: 33 [always]  count:118111601 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%r11, %rdx	# Fout, Fout
# BLOCK 33, count:1073741836 (estimated locally) seq:31
# PRED: 32 [always]  count:118111601 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 33 [89.0% (guessed)]  count:955630235 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L3:
# kiss_fft.c:278:             *Fout = *f;
	movl	(%rbx), %eax	# MEM[base: f_18, offset: 0B], MEM[base: f_18, offset: 0B]
# kiss_fft.c:280:         }while(++Fout != Fout_end );
	addq	$4, %rdx	#, Fout
# kiss_fft.c:278:             *Fout = *f;
	movl	%eax, -4(%rdx)	# MEM[base: f_18, offset: 0B], MEM[base: Fout_16, offset: 0B]
# kiss_fft.c:279:             f += fstride*in_stride;
	addq	%r12, %rbx	# _1084, f
# kiss_fft.c:280:         }while(++Fout != Fout_end );
	cmpq	%rdx, %r15	# Fout, Fout_end
# SUCC: 33 [89.0% (guessed)]  count:955630235 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 34 [11.0% (guessed)]  count:118111601 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L3	#,
# BLOCK 34, count:118111601 (estimated locally) seq:32
# PRED: 33 [11.0% (guessed)]  count:118111601 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	leaq	264(%r9), %rax	#, tw1
	movq	%rax, 128(%rsp)	# tw1, %sfp
# kiss_fft.c:295:     switch (p) {
	cmpl	$4, %r13d	#, p
# SUCC: 35 [80.0% (guessed)]  count:94489280 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 63 [20.0% (guessed)]  count:23622321 (estimated locally) (CAN_FALLTHRU)
	je	.L78	#,
# BLOCK 35, count:118111601 (estimated locally) seq:33
# PRED: 34 [80.0% (guessed)]  count:94489280 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# SUCC: 36 [62.5% (guessed)]  count:73819750 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 48 [37.5% (guessed)]  count:44291851 (estimated locally) (CAN_FALLTHRU)
	jg	.L74	#,
# BLOCK 36, count:118111601 (estimated locally) seq:34
# PRED: 35 [62.5% (guessed)]  count:73819750 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$2, %r13d	#, p
# SUCC: 37 [60.0% (guessed)]  count:70866962 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 70 [40.0% (guessed)]  count:47244639 (estimated locally) (CAN_FALLTHRU)
	je	.L75	#,
# BLOCK 37, count:118111601 (estimated locally) seq:35
# PRED: 36 [60.0% (guessed)]  count:70866962 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$3, %r13d	#, p
# SUCC: 39 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 38 [always (guessed)]  count:118111601 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L76	#,
# BLOCK 38, count:118111601 (estimated locally) seq:36
# PRED: 37 [always (guessed)]  count:118111601 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	$4, (%rsp)	#, %sfp
	movq	$1, 80(%rsp)	#, %sfp
# SUCC: 9 [always]  count:118111601 (estimated locally) (CAN_FALLTHRU)
	jmp	.L9	#
# BLOCK 39, count:449708508 (estimated locally) seq:37
# PRED: 37 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 48 [33.3% (guessed)]  count:39370536 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L76:
# kiss_fft.c:211:     kiss_fft_cpx * scratch = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC(sizeof(kiss_fft_cpx)*p);
	movslq	%r13d, %rdi	# p, p
	salq	$2, %rdi	#, tmp5323
	movq	%r11, (%rsp)	# Fout, %sfp
# kiss_fft.c:209:     int Norig = st->nfft;
	movl	(%r9), %r12d	# st_34(D)->nfft, Norig
# kiss_fft.c:211:     kiss_fft_cpx * scratch = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC(sizeof(kiss_fft_cpx)*p);
	call	malloc@PLT	#
# kiss_fft.c:215:         for ( q1=0 ; q1<p ; ++q1 ) {
	testl	%r13d, %r13d	# p
	movq	(%rsp), %r11	# %sfp, Fout
# kiss_fft.c:211:     kiss_fft_cpx * scratch = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC(sizeof(kiss_fft_cpx)*p);
	movq	%rax, %r14	# tmp5365, scratch
# SUCC: 40 [89.0% (guessed)]  count:400240572 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 31 [11.0% (guessed)]  count:49467936 (estimated locally) (CAN_FALLTHRU)
# kiss_fft.c:215:         for ( q1=0 ; q1<p ; ++q1 ) {
	jle	.L55	#,
# BLOCK 40, count:400240573 (estimated locally) seq:38
# PRED: 39 [89.0% (guessed)]  count:400240572 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:217:             C_FIXDIV(scratch[q1],p);
	movl	$32767, %eax	#, tmp5291
	cltd
	idivl	%r13d	# p
	leal	-1(%r13), %edx	#, tmp5293
	leaq	4(%r11,%rdx,4), %r15	#, _11
	movq	%r11, %rcx	# Fout, ivtmp.539
	movq	%r14, %rdi	# scratch, ivtmp.548
# SUCC: 41 [always]  count:400240573 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%r11, %rdx	# ivtmp.539, ivtmp.547
# BLOCK 41, count:3638550728 (estimated locally) seq:39
# PRED: 40 [always]  count:400240573 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 41 [89.0% (guessed)]  count:3238310150 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L64:
# kiss_fft.c:216:             scratch[q1] = Fout[ k  ];
	movl	(%rdx), %esi	# MEM[base: _42, offset: 0B], MEM[base: _42, offset: 0B]
	addq	$4, %rdx	#, ivtmp.547
# kiss_fft.c:217:             C_FIXDIV(scratch[q1],p);
	movswl	%si, %r8d	# MEM[base: _42, offset: 0B], MEM[base: _959, offset: 0B]
	sarl	$16, %esi	#, MEM[base: _959, offset: 2B]
	imull	%eax, %r8d	# tmp5289, tmp5298
	imull	%eax, %esi	# tmp5289, tmp5302
	addq	$4, %rdi	#, ivtmp.548
	addl	$16384, %r8d	#, tmp5299
	addl	$16384, %esi	#, tmp5303
	sarl	$15, %r8d	#, tmp5300
	sarl	$15, %esi	#, tmp5304
	movw	%r8w, -4(%rdi)	# tmp5300, MEM[base: _959, offset: 0B]
	movw	%si, -2(%rdi)	# tmp5304, MEM[base: _959, offset: 2B]
# kiss_fft.c:215:         for ( q1=0 ; q1<p ; ++q1 ) {
	cmpq	%rdx, %r15	# ivtmp.547, _11
# SUCC: 41 [89.0% (guessed)]  count:3238310150 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 42 [11.0% (guessed)]  count:400240578 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L64	#,
# BLOCK 42, count:400240578 (estimated locally) seq:40
# PRED: 41 [11.0% (guessed)]  count:400240578 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	leal	-2(%r13), %eax	#, tmp5306
	leaq	8(%r14,%rax,4), %rax	#, _124
	movq	%rax, (%rsp)	# _124, %sfp
	movl	(%r14), %eax	# *scratch_836, *scratch_836
	movq	%r15, 48(%rsp)	# _11, %sfp
	movl	%eax, 32(%rsp)	# *scratch_836, %sfp
# SUCC: 43 [always]  count:400240578 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	xorl	%r11d, %r11d	# ivtmp.540
# BLOCK 43, count:3638550851 (estimated locally) seq:41
# PRED: 42 [always]  count:400240578 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 46 [89.0% (guessed)]  count:3238310286 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L66:
# kiss_fft.c:224:             Fout[ k ] = scratch[0];
	movl	32(%rsp), %eax	# %sfp, *scratch_836
	movl	%eax, (%rcx)	# *scratch_836, MEM[base: _1251, offset: 0B]
# kiss_fft.c:225:             for (q=1;q<p;++q ) {
	cmpl	$1, %r13d	#, p
# SUCC: 44 [89.0% (guessed)]  count:3238310260 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 46 [11.0% (guessed)]  count:400240591 (estimated locally) (CAN_FALLTHRU)
	je	.L70	#,
# BLOCK 44, count:3238310260 (estimated locally) seq:42
# PRED: 43 [89.0% (guessed)]  count:3238310260 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movzwl	(%rcx), %r10d	# MEM[base: _1251, offset: 0B], prephitmp_1447
	movzwl	2(%rcx), %r9d	# MEM[base: _1251, offset: 2B], prephitmp_1448
	leaq	4(%r14), %rsi	#, ivtmp.529
# SUCC: 45 [always]  count:3238310260 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:223:             int twidx=0;
	xorl	%eax, %eax	# twidx
# BLOCK 45, count:29439184333 (estimated locally) seq:43
# PRED: 44 [always]  count:3238310260 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 45 [89.0% (guessed)]  count:26200874074 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L69:
# kiss_fft.c:226:                 twidx += fstride * k;
	addl	%r11d, %eax	# ivtmp.540, _1450
# kiss_fft.c:227:                 if (twidx>=Norig) twidx-=Norig;
	movl	%eax, %edx	# _1450, tmp5345
	subl	%r12d, %edx	# Norig, tmp5345
	cmpl	%eax, %r12d	# _1450, Norig
	cmovle	%edx, %eax	# tmp5345,, twidx
# kiss_fft.c:228:                 C_MUL(t,scratch[q] , twiddles[twidx] );
	movq	128(%rsp), %rbx	# %sfp, tw1
	movslq	%eax, %rdx	# twidx, twidx
	leaq	(%rbx,%rdx,4), %rdx	#, _1461
	movswl	(%rsi), %r8d	# MEM[base: _131, offset: 0B], _1458
	movswl	2(%rsi), %ebx	# MEM[base: _131, offset: 2B], _1466
	movswl	(%rdx), %edi	# _1461->r, _1463
	movswl	2(%rdx), %ebp	# _1461->i, _1468
	movl	%ebx, %r15d	# _1466, tmp5313
	movl	%r8d, %edx	# _1458, tmp5312
	imull	%edi, %edx	# _1463, tmp5312
	imull	%ebp, %r15d	# _1468, tmp5313
	imull	%ebp, %r8d	# _1468, tmp5317
	imull	%ebx, %edi	# _1466, tmp5318
	subl	%r15d, %edx	# tmp5313, tmp5314
	addl	$16384, %edx	#, tmp5315
	sarl	$15, %edx	#, tmp5316
# kiss_fft.c:229:                 C_ADDTO( Fout[ k ] ,t);
	addl	%edx, %r10d	# tmp5316, prephitmp_1447
# kiss_fft.c:228:                 C_MUL(t,scratch[q] , twiddles[twidx] );
	leal	16384(%r8,%rdi), %edx	#, tmp5320
	sarl	$15, %edx	#, tmp5321
# kiss_fft.c:229:                 C_ADDTO( Fout[ k ] ,t);
	addl	%edx, %r9d	# tmp5321, prephitmp_1448
	addq	$4, %rsi	#, ivtmp.529
	movw	%r10w, (%rcx)	# prephitmp_1447, MEM[base: _1251, offset: 0B]
	movw	%r9w, 2(%rcx)	# prephitmp_1448, MEM[base: _1251, offset: 2B]
# kiss_fft.c:225:             for (q=1;q<p;++q ) {
	cmpq	%rsi, (%rsp)	# ivtmp.529, %sfp
# SUCC: 45 [89.0% (guessed)]  count:26200874074 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 46 [11.0% (guessed)]  count:3238310259 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L69	#,
# BLOCK 46, count:3638550881 (estimated locally) seq:44
# PRED: 43 [11.0% (guessed)]  count:400240591 (estimated locally) (CAN_FALLTHRU) 45 [11.0% (guessed)]  count:3238310259 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
.L70:
	addq	$4, %rcx	#, ivtmp.539
	addl	16(%rsp), %r11d	# %sfp, ivtmp.540
# kiss_fft.c:222:         for ( q1=0 ; q1<p ; ++q1 ) {
	cmpq	%rcx, 48(%rsp)	# ivtmp.539, %sfp
# SUCC: 43 [89.0% (guessed)]  count:3238310286 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 47 [11.0% (guessed)]  count:400240595 (estimated locally) (FALLTHRU)
	jne	.L66	#,
# BLOCK 47, count:400240595 (estimated locally) seq:45
# PRED: 46 [11.0% (guessed)]  count:400240595 (estimated locally) (FALLTHRU)
# SUCC: 31 [always]  count:400240595 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L55	#
# BLOCK 48, count:118111601 (estimated locally) seq:46
# PRED: 35 [37.5% (guessed)]  count:44291851 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L74:
# kiss_fft.c:295:     switch (p) {
	cmpl	$5, %r13d	#, p
# SUCC: 39 [33.3% (guessed)]  count:39370536 (estimated locally) (CAN_FALLTHRU) 49 [66.7% (guessed)]  count:78741065 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L76	#,
# BLOCK 49, count:78741065 (estimated locally) seq:47
# PRED: 48 [66.7% (guessed)]  count:78741065 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	$4, (%rsp)	#, %sfp
	movq	$1, 80(%rsp)	#, %sfp
# SUCC: 50 [always]  count:78741065 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	$1, 112(%rsp)	#, %sfp
# BLOCK 50, count:69477404 (estimated locally) seq:48
# PRED: 18 [66.7% (guessed)]  count:152850305 (estimated locally) (CAN_FALLTHRU) 49 [always]  count:78741065 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
.L11:
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movq	16(%rsp), %rbx	# %sfp, fstride
	movq	80(%rsp), %rax	# %sfp, k
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movq	128(%rsp), %r15	# %sfp, tw1
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	imulq	%rbx, %rax	# fstride, k
# kiss_fft.c:154:     Fout2=Fout0+2*m;
	movl	64(%rsp), %r10d	# %sfp, m
# kiss_fft.c:153:     Fout1=Fout0+m;
	movq	(%rsp), %rdi	# %sfp, _13
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	salq	$2, %rax	#, _436
	leaq	(%r15,%rax), %rdx	#, _437
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	addq	%rdx, %rax	# _437, _441
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movswl	(%rdx), %esi	# MEM[(struct kiss_fft_cpx *)_437],
	movzwl	2(%rdx), %ecx	# MEM[(struct kiss_fft_cpx *)_437 + 2B], ya$i
# kiss_fft.c:155:     Fout3=Fout0+3*m;
	movq	112(%rsp), %r13	# %sfp, m
# kiss_fft.c:154:     Fout2=Fout0+2*m;
	leal	(%r10,%r10), %edx	#, tmp5100
# kiss_fft.c:153:     Fout1=Fout0+m;
	addq	%r11, %rdi	# Fout, _13
# kiss_fft.c:154:     Fout2=Fout0+2*m;
	movslq	%edx, %rdx	# tmp5100, tmp5101
# kiss_fft.c:155:     Fout3=Fout0+3*m;
	salq	$2, %r13	#, m
# kiss_fft.c:153:     Fout1=Fout0+m;
	movq	%rdi, 128(%rsp)	# _13, %sfp
# kiss_fft.c:154:     Fout2=Fout0+2*m;
	leaq	(%r11,%rdx,4), %rdi	#, Fout2
# kiss_fft.c:155:     Fout3=Fout0+3*m;
	leaq	(%rdi,%r13), %rdx	#, Fout3
# kiss_fft.c:156:     Fout4=Fout0+4*m;
	movq	%r13, %r14	# slsr_2384, slsr_2384
	addq	%rdx, %r14	# Fout3, slsr_2384
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	movzwl	(%rax), %r8d	# MEM[(struct kiss_fft_cpx *)_441], yb$r
# kiss_fft.c:155:     Fout3=Fout0+3*m;
	movq	%rdx, (%rsp)	# Fout3, %sfp
# kiss_fft.c:156:     Fout4=Fout0+4*m;
	movq	%r14, 16(%rsp)	# Fout4, %sfp
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	movswl	2(%rax), %eax	# MEM[(struct kiss_fft_cpx *)_441 + 2B],
# kiss_fft.c:159:     for ( u=0; u<m; ++u ) {
	testl	%r10d, %r10d	# m
# SUCC: 51 [89.0% (guessed)]  count:61834890 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 17 [11.0% (guessed)]  count:7642514 (estimated locally) (CAN_FALLTHRU)
	jle	.L1	#,
# BLOCK 51, count:61834890 (estimated locally) seq:49
# PRED: 50 [89.0% (guessed)]  count:61834890 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movl	%eax, 112(%rsp)	# _1206, %sfp
	leaq	0(,%rbx,4), %rax	#, _1377
	movq	%rax, 288(%rsp)	# _1377, %sfp
	leaq	0(,%rbx,8), %rax	#, _1381
	movq	%rax, 272(%rsp)	# _1381, %sfp
	leaq	(%rbx,%rbx,2), %rax	#, tmp5106
	salq	$2, %rax	#, tmp5107
	movl	%esi, 64(%rsp)	# _1203, %sfp
	movq	%rax, 312(%rsp)	# tmp5107, %sfp
	movswl	%r8w, %esi	# yb$r, _1204
	leal	-1(%r10), %eax	#, tmp5109
	movl	%esi, 80(%rsp)	# _1204, %sfp
	salq	$4, %rbx	#, fstride
	movswl	%cx, %esi	# ya$i, _1205
	leaq	4(%r14,%rax,4), %rax	#, _1400
	movl	%esi, 96(%rsp)	# _1205, %sfp
	movq	%rbx, 296(%rsp)	# fstride, %sfp
	movq	%rax, 304(%rsp)	# _1400, %sfp
	movq	%rdi, 32(%rsp)	# Fout2, %sfp
	movq	%r15, 136(%rsp)	# ivtmp.1094, %sfp
	movq	%r15, 176(%rsp)	# ivtmp.1094, %sfp
	movq	%r15, 160(%rsp)	# ivtmp.1094, %sfp
	movq	%r15, 144(%rsp)	# ivtmp.1094, %sfp
# SUCC: 52 [always]  count:61834890 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%r11, %r15	# Fout, Fout
# BLOCK 52, count:562135434 (estimated locally) seq:50
# PRED: 51 [always]  count:61834890 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 52 [89.0% (guessed)]  count:500300537 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L53:
# kiss_fft.c:160:         C_FIXDIV( *Fout0,5); C_FIXDIV( *Fout1,5); C_FIXDIV( *Fout2,5); C_FIXDIV( *Fout3,5); C_FIXDIV( *Fout4,5);
	movswl	(%r15), %eax	# MEM[base: Fout0_957, offset: 0B], MEM[base: Fout0_957, offset: 0B]
# kiss_fft.c:160:         C_FIXDIV( *Fout0,5); C_FIXDIV( *Fout1,5); C_FIXDIV( *Fout2,5); C_FIXDIV( *Fout3,5); C_FIXDIV( *Fout4,5);
	movq	128(%rsp), %rbx	# %sfp, Fout1
# kiss_fft.c:160:         C_FIXDIV( *Fout0,5); C_FIXDIV( *Fout1,5); C_FIXDIV( *Fout2,5); C_FIXDIV( *Fout3,5); C_FIXDIV( *Fout4,5);
	imull	$6553, %eax, %eax	#, MEM[base: Fout0_957, offset: 0B], tmp5113
# kiss_fft.c:160:         C_FIXDIV( *Fout0,5); C_FIXDIV( *Fout1,5); C_FIXDIV( *Fout2,5); C_FIXDIV( *Fout3,5); C_FIXDIV( *Fout4,5);
	movq	32(%rsp), %r10	# %sfp, Fout2
# kiss_fft.c:160:         C_FIXDIV( *Fout0,5); C_FIXDIV( *Fout1,5); C_FIXDIV( *Fout2,5); C_FIXDIV( *Fout3,5); C_FIXDIV( *Fout4,5);
	movq	(%rsp), %rcx	# %sfp, Fout3
# kiss_fft.c:160:         C_FIXDIV( *Fout0,5); C_FIXDIV( *Fout1,5); C_FIXDIV( *Fout2,5); C_FIXDIV( *Fout3,5); C_FIXDIV( *Fout4,5);
	addl	$16384, %eax	#, tmp5114
	sarl	$15, %eax	#, tmp5115
	movw	%ax, (%r15)	# tmp5115, MEM[base: Fout0_957, offset: 0B]
	movswl	2(%r15), %eax	# MEM[base: Fout0_957, offset: 2B], MEM[base: Fout0_957, offset: 2B]
# kiss_fft.c:160:         C_FIXDIV( *Fout0,5); C_FIXDIV( *Fout1,5); C_FIXDIV( *Fout2,5); C_FIXDIV( *Fout3,5); C_FIXDIV( *Fout4,5);
	movq	16(%rsp), %r14	# %sfp, Fout4
# kiss_fft.c:160:         C_FIXDIV( *Fout0,5); C_FIXDIV( *Fout1,5); C_FIXDIV( *Fout2,5); C_FIXDIV( *Fout3,5); C_FIXDIV( *Fout4,5);
	imull	$6553, %eax, %eax	#, MEM[base: Fout0_957, offset: 2B], tmp5117
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	movq	136(%rsp), %rsi	# %sfp, ivtmp.1094
# kiss_fft.c:160:         C_FIXDIV( *Fout0,5); C_FIXDIV( *Fout1,5); C_FIXDIV( *Fout2,5); C_FIXDIV( *Fout3,5); C_FIXDIV( *Fout4,5);
	addl	$16384, %eax	#, tmp5118
	sarl	$15, %eax	#, tmp5119
	movw	%ax, 2(%r15)	# tmp5119, MEM[base: Fout0_957, offset: 2B]
# kiss_fft.c:160:         C_FIXDIV( *Fout0,5); C_FIXDIV( *Fout1,5); C_FIXDIV( *Fout2,5); C_FIXDIV( *Fout3,5); C_FIXDIV( *Fout4,5);
	movswl	(%rbx), %eax	# MEM[base: Fout1_956, offset: 0B], MEM[base: Fout1_956, offset: 0B]
	imull	$6553, %eax, %eax	#, MEM[base: Fout1_956, offset: 0B], tmp5121
	addl	$16384, %eax	#, tmp5122
	sarl	$15, %eax	#, tmp5123
	movw	%ax, (%rbx)	# tmp5123, MEM[base: Fout1_956, offset: 0B]
	movswl	2(%rbx), %eax	# MEM[base: Fout1_956, offset: 2B], MEM[base: Fout1_956, offset: 2B]
	imull	$6553, %eax, %eax	#, MEM[base: Fout1_956, offset: 2B], tmp5125
	addl	$16384, %eax	#, tmp5126
	sarl	$15, %eax	#, tmp5127
	movw	%ax, 2(%rbx)	# tmp5127, MEM[base: Fout1_956, offset: 2B]
# kiss_fft.c:160:         C_FIXDIV( *Fout0,5); C_FIXDIV( *Fout1,5); C_FIXDIV( *Fout2,5); C_FIXDIV( *Fout3,5); C_FIXDIV( *Fout4,5);
	movswl	(%r10), %eax	# MEM[base: Fout2_955, offset: 0B], MEM[base: Fout2_955, offset: 0B]
	imull	$6553, %eax, %eax	#, MEM[base: Fout2_955, offset: 0B], tmp5129
	addl	$16384, %eax	#, tmp5130
	sarl	$15, %eax	#, tmp5131
	movw	%ax, (%r10)	# tmp5131, MEM[base: Fout2_955, offset: 0B]
	movswl	2(%r10), %eax	# MEM[base: Fout2_955, offset: 2B], MEM[base: Fout2_955, offset: 2B]
	imull	$6553, %eax, %eax	#, MEM[base: Fout2_955, offset: 2B], tmp5133
	addl	$16384, %eax	#, tmp5134
	sarl	$15, %eax	#, tmp5135
	movw	%ax, 2(%r10)	# tmp5135, MEM[base: Fout2_955, offset: 2B]
# kiss_fft.c:160:         C_FIXDIV( *Fout0,5); C_FIXDIV( *Fout1,5); C_FIXDIV( *Fout2,5); C_FIXDIV( *Fout3,5); C_FIXDIV( *Fout4,5);
	movswl	(%rcx), %eax	# MEM[base: Fout3_953, offset: 0B], MEM[base: Fout3_953, offset: 0B]
	imull	$6553, %eax, %eax	#, MEM[base: Fout3_953, offset: 0B], tmp5137
	addl	$16384, %eax	#, tmp5138
	sarl	$15, %eax	#, tmp5139
	movw	%ax, (%rcx)	# tmp5139, MEM[base: Fout3_953, offset: 0B]
	movswl	2(%rcx), %eax	# MEM[base: Fout3_953, offset: 2B], MEM[base: Fout3_953, offset: 2B]
	imull	$6553, %eax, %eax	#, MEM[base: Fout3_953, offset: 2B], tmp5141
	addl	$16384, %eax	#, tmp5142
	sarl	$15, %eax	#, tmp5143
	movw	%ax, 2(%rcx)	# tmp5143, MEM[base: Fout3_953, offset: 2B]
# kiss_fft.c:160:         C_FIXDIV( *Fout0,5); C_FIXDIV( *Fout1,5); C_FIXDIV( *Fout2,5); C_FIXDIV( *Fout3,5); C_FIXDIV( *Fout4,5);
	movswl	(%r14), %edx	# MEM[base: Fout4_952, offset: 0B], MEM[base: Fout4_952, offset: 0B]
	movswl	2(%r14), %eax	# MEM[base: Fout4_952, offset: 2B], MEM[base: Fout4_952, offset: 2B]
	imull	$6553, %edx, %edx	#, MEM[base: Fout4_952, offset: 0B], tmp5145
	imull	$6553, %eax, %eax	#, MEM[base: Fout4_952, offset: 2B], tmp5148
	addl	$16384, %edx	#, tmp5146
	addl	$16384, %eax	#, tmp5149
	sarl	$15, %edx	#, _515
	sarl	$15, %eax	#, _521
	movw	%dx, (%r14)	# _515, MEM[base: Fout4_952, offset: 0B]
	movw	%ax, 2(%r14)	# _521, MEM[base: Fout4_952, offset: 2B]
# kiss_fft.c:161:         scratch[0] = *Fout0;
	movzwl	2(%r15), %edi	# MEM[base: Fout0_957, offset: 2B], scratch$0$i
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	movswl	2(%rbx), %r13d	# MEM[base: Fout1_956, offset: 2B], _536
	movswl	(%rbx), %r8d	# MEM[base: Fout1_956, offset: 0B], _526
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movq	%r10, %rbx	# Fout2, Fout2
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	movswl	2(%rsi), %r14d	# MEM[base: _1391, offset: 2B], _538
# kiss_fft.c:161:         scratch[0] = *Fout0;
	movw	%di, 48(%rsp)	# scratch$0$i, %sfp
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	movswl	(%rsi), %edi	# MEM[base: _1391, offset: 0B], _533
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movswl	(%r10), %esi	# MEM[base: Fout2_955, offset: 0B], _549
	movq	144(%rsp), %r10	# %sfp, ivtmp.1095
	movswl	2(%rbx), %ebp	# MEM[base: Fout2_955, offset: 2B], _559
	movswl	(%r10), %r9d	# MEM[base: _1392, offset: 0B], _556
	movl	%ebp, 256(%rsp)	# _559, %sfp
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movswl	(%rcx), %ebp	# MEM[base: Fout3_953, offset: 0B], _572
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movl	%r9d, 240(%rsp)	# _556, %sfp
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movl	%ebp, 192(%rsp)	# _572, %sfp
	movq	160(%rsp), %rbp	# %sfp, ivtmp.1096
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	movl	%r13d, %r11d	# _536, tmp5151
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movswl	0(%rbp), %r9d	# MEM[base: _1393, offset: 0B], _579
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	imull	%r14d, %r11d	# _538, tmp5151
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movl	%r9d, 208(%rsp)	# _579, %sfp
	movswl	2(%rcx), %r9d	# MEM[base: Fout3_953, offset: 2B], _582
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	movl	%r8d, %ecx	# _526, tmp5150
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movq	176(%rsp), %r12	# %sfp, ivtmp.1097
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	imull	%edi, %ecx	# _533, tmp5150
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movswl	2(%r10), %ebx	# MEM[base: _1392, offset: 2B], _561
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movswl	2(%rbp), %r10d	# MEM[base: _1393, offset: 2B], _584
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movswl	(%r12), %ebp	# MEM[base: _1394, offset: 0B], _601
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	subl	%r11d, %ecx	# tmp5151, tmp5152
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movl	%edx, %r11d	# _515, tmp5155
	imull	%ebp, %r11d	# _601, tmp5155
	movswl	2(%r12), %r12d	# MEM[base: _1394, offset: 2B], _605
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	imull	%r14d, %r8d	# _538, tmp5160
	imull	%r13d, %edi	# _536, tmp5161
	addl	$16384, %ecx	#, tmp5153
	sarl	$15, %ecx	#, tmp5153
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	imull	%r12d, %edx	# _605, tmp5165
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	movl	%ecx, 224(%rsp)	# tmp5153, %sfp
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movl	%r11d, %ecx	# tmp5155, tmp5155
	movl	%eax, %r11d	# _521, tmp5156
	imull	%ebp, %eax	# _601, tmp5166
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movl	240(%rsp), %r13d	# %sfp, _556
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	imull	%r12d, %r11d	# _605, tmp5156
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	leal	16384(%r8,%rdi), %edi	#, tmp5163
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movl	256(%rsp), %r12d	# %sfp, _559
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	sarl	$15, %edi	#, tmp5163
	movl	%edi, %r14d	# tmp5163, tmp5164
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	leal	16384(%rdx,%rax), %edi	#, tmp5168
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movl	%r13d, %eax	# _556, tmp5170
	movl	%r12d, %edx	# _559, tmp5171
	imull	%ebx, %edx	# _561, tmp5171
	imull	%esi, %eax	# _549, tmp5170
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movl	192(%rsp), %r8d	# %sfp, tmp5175
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	subl	%r11d, %ecx	# tmp5156, tmp5157
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	subl	%edx, %eax	# tmp5171, tmp5172
	addl	$16384, %eax	#, tmp5173
	sarl	$15, %eax	#, tmp5173
	movl	%eax, %edx	# tmp5173, tmp5174
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movl	%r9d, %eax	# _582, tmp5176
	imull	208(%rsp), %r8d	# %sfp, tmp5175
	imull	%r10d, %eax	# _584, tmp5176
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	movzwl	224(%rsp), %r11d	# %sfp, _617
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	addl	$16384, %ecx	#, tmp5158
	sarl	$15, %ecx	#, tmp5158
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	subl	%eax, %r8d	# tmp5176, tmp5177
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movl	%r13d, %eax	# _556, _556
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	imull	208(%rsp), %r9d	# %sfp, tmp5186
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	imull	%ebx, %esi	# _561, tmp5180
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	imull	192(%rsp), %r10d	# %sfp, tmp5185
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	imull	%r12d, %eax	# _559, _556
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	addl	%ecx, %r11d	# tmp5159, _617
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	addl	$16384, %r8d	#, tmp5178
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	movzwl	(%r15), %ebx	# MEM[base: Fout0_957, offset: 0B], _639
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	sarl	$15, %r8d	#, tmp5179
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	movl	%ecx, 264(%rsp)	# tmp5159, %sfp
	movl	%r11d, %ecx	# _617, _617
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	movl	%edx, %r11d	# tmp5174, tmp6311
	movl	%edx, 240(%rsp)	# tmp5174, %sfp
	leal	(%r8,%r11), %edx	#, _629
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	leal	16384(%r10,%r9), %r13d	#, tmp5188
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	movzwl	48(%rsp), %r11d	# %sfp, scratch$0$i
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	leal	(%rdx,%rbx), %r9d	#, tmp5190
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	leal	16384(%rsi,%rax), %eax	#, tmp5183
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	sarl	$15, %r13d	#, tmp5189
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	addl	%ecx, %r9d	# _617, tmp5191
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	sarl	$15, %eax	#, tmp5184
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	sarl	$15, %edi	#, tmp5169
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	leal	0(%r13,%rax), %esi	#, _633
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	movw	%r9w, (%r15)	# tmp5191, MEM[base: Fout0_957, offset: 0B]
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	movl	%r11d, %r9d	# scratch$0$i, scratch$0$i
	addl	%esi, %r9d	# _633, tmp5192
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	leal	(%rdi,%r14), %ebp	#, _621
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	addl	%ebp, %r9d	# _621, tmp5193
	movw	%r9w, 2(%r15)	# tmp5193, MEM[base: Fout0_957, offset: 2B]
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movswl	%cx, %r9d	# _617, _647
	movl	%r9d, %r12d	# _647, _647
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movl	80(%rsp), %r9d	# %sfp, _1204
	movswl	%dx, %ecx	# _629, _654
	movl	%r9d, %r10d	# _1204, tmp5194
	imull	%ecx, %r10d	# _654, tmp5194
	movl	%ecx, 208(%rsp)	# _654, %sfp
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movl	%r12d, 192(%rsp)	# _647, %sfp
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	addl	$16384, %r10d	#, tmp5195
	sarl	$15, %r10d	#, tmp5196
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	leal	(%rbx,%r10), %edx	#, tmp5197
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movl	%r12d, %r10d	# _647, tmp5198
	movl	64(%rsp), %r12d	# %sfp, _1203
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movswl	%si, %esi	# _633, _667
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	imull	%r12d, %r10d	# _1203, tmp5198
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movswl	%bp, %ebp	# _621, _661
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	subl	%r13d, %eax	# tmp5189, tmp5209
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	addl	$16384, %r10d	#, tmp5199
	sarl	$15, %r10d	#, tmp5200
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	addl	%edx, %r10d	# tmp5197, _660
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movl	%r9d, %edx	# _1204, tmp5201
	imull	%esi, %edx	# _667, tmp5201
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movswl	%ax, %r13d	# tmp5209, _679
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movl	%edx, %r9d	# tmp5201, tmp5201
	addl	$16384, %r9d	#, tmp5202
	sarl	$15, %r9d	#, tmp5203
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movl	%r11d, %edx	# scratch$0$i, scratch$0$i
	addl	%r9d, %edx	# tmp5203, tmp5204
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movl	%r12d, %r9d	# _1203, tmp5205
	imull	%ebp, %r9d	# _661, tmp5205
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movl	96(%rsp), %r12d	# %sfp, _1205
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	movl	%r14d, %r11d	# tmp5164, tmp5208
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	addl	$16384, %r9d	#, tmp5206
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	subl	%edi, %r11d	# tmp5169, tmp5208
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	sarl	$15, %r9d	#, tmp5207
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	addl	%edx, %r9d	# tmp5204, _672
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movl	%r12d, %eax	# _1205, tmp5210
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	movswl	%r11w, %edx	# tmp5208,
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	imull	%edx, %eax	# _673, tmp5210
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	movzwl	224(%rsp), %edi	# %sfp, tmp5216
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movl	%eax, %r14d	# tmp5210, tmp5210
	addl	$16384, %r14d	#, tmp5211
	movl	%r14d, %eax	# tmp5211, tmp5211
	sarl	$15, %eax	#, tmp5211
	movl	%eax, %ecx	# tmp5211, tmp5212
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movl	112(%rsp), %eax	# %sfp, tmp5213
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	subw	264(%rsp), %di	# %sfp, tmp5216
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	imull	%r13d, %eax	# _679, tmp5213
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movswl	%di, %edi	# tmp5216, _686
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movl	%eax, %r14d	# tmp5213, tmp5213
	addl	$16384, %r14d	#, tmp5214
	movl	%r14d, %eax	# tmp5214, tmp5214
	sarl	$15, %eax	#, tmp5214
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	leal	(%rcx,%rax), %r14d	#, _685
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	movzwl	240(%rsp), %eax	# %sfp, tmp5217
	subl	%r8d, %eax	# tmp5179, tmp5217
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movl	%r12d, %r8d	# _1205, tmp5218
	imull	%edi, %r8d	# _686, tmp5218
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movl	112(%rsp), %r12d	# %sfp, tmp5221
	cwtl
	imull	%eax, %r12d	# _692, tmp5221
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movl	%r8d, %ecx	# tmp5218, tmp5218
	addl	$16384, %ecx	#, tmp5219
	movl	%ecx, %r11d	# tmp5219, tmp5219
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movl	%r12d, %ecx	# tmp5221, tmp5221
	addl	$16384, %ecx	#, tmp5222
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	sarl	$15, %r11d	#, tmp5219
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	sarl	$15, %ecx	#, tmp5223
	addl	%r11d, %ecx	# tmp5220, _933
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movl	%r10d, %r11d	# _660, tmp5224
	subl	%r14d, %r11d	# _685, tmp5224
	movl	%r11d, %r8d	# tmp5224, tmp5224
	movq	128(%rsp), %r11	# %sfp, Fout1
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	addl	%r14d, %r10d	# _685, tmp5226
	movq	16(%rsp), %r14	# %sfp, Fout4
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movw	%r8w, (%r11)	# tmp5224, MEM[base: Fout1_956, offset: 0B]
	leal	(%r9,%rcx), %r8d	#, tmp5225
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	subl	%ecx, %r9d	# _933, tmp5227
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movw	%r8w, 2(%r11)	# tmp5225, MEM[base: Fout1_956, offset: 2B]
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	movl	208(%rsp), %r12d	# %sfp, _654
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	movw	%r9w, 2(%r14)	# tmp5227, MEM[base: Fout4_952, offset: 2B]
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	movl	64(%rsp), %r8d	# %sfp, _1203
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	movl	80(%rsp), %r9d	# %sfp, _1204
	movl	192(%rsp), %ecx	# %sfp, _647
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	movw	%r10w, (%r14)	# tmp5226, MEM[base: Fout4_952, offset: 0B]
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movl	96(%rsp), %r10d	# %sfp, _1205
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	imull	%r8d, %r12d	# _1203, _654
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	imull	%r9d, %ecx	# _1204, _647
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	imull	%r9d, %ebp	# _1204, tmp5239
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movl	112(%rsp), %r9d	# %sfp, _1206
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	imull	%r8d, %esi	# _1203, tmp5235
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	imull	%r10d, %r13d	# _1205, tmp5242
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	imull	%r9d, %edx	# _1206, tmp5245
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	imull	%r9d, %edi	# _1206, tmp5248
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	addl	$16384, %r12d	#, tmp5229
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	imull	%r10d, %eax	# _1205, tmp5251
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	movzwl	48(%rsp), %r8d	# %sfp, scratch$0$i
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	sarl	$15, %r12d	#, tmp5230
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	addl	$16384, %ecx	#, tmp5233
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	addl	$16384, %esi	#, tmp5236
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	addl	$16384, %r13d	#, tmp5243
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	sarl	$15, %ecx	#, tmp5234
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	sarl	$15, %esi	#, tmp5237
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	sarl	$15, %r13d	#, tmp5244
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	addl	%r12d, %ebx	# tmp5230, tmp5231
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	addl	$16384, %edx	#, tmp5246
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	addl	%ecx, %ebx	# tmp5234, _715
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	sarl	$15, %edx	#, tmp5247
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	leal	(%r8,%rsi), %ecx	#, tmp5238
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	addl	$16384, %edi	#, tmp5249
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	leal	16384(%rbp), %esi	#, tmp5240
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movl	%r13d, %r11d	# tmp5244, tmp5254
	subl	%edx, %r11d	# tmp5247, tmp5254
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	sarl	$15, %edi	#, tmp5250
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	sarl	$15, %esi	#, tmp5241
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	addl	$16384, %eax	#, tmp5252
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	movq	32(%rsp), %r10	# %sfp, Fout2
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	addl	%ecx, %esi	# tmp5238, _725
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	sarl	$15, %eax	#, tmp5253
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movl	%r11d, %ecx	# tmp5254, tmp5254
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	movl	%edi, %r11d	# tmp5250, tmp5256
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	addl	%ebx, %ecx	# _715, tmp5255
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	subl	%eax, %r11d	# tmp5253, tmp5256
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	movw	%cx, (%r10)	# tmp5255, MEM[base: Fout2_955, offset: 0B]
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	movl	%r11d, %ecx	# tmp5256, tmp5256
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	addl	%esi, %ecx	# _725, tmp5257
	movw	%cx, 2(%r10)	# tmp5257, MEM[base: Fout2_955, offset: 2B]
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	subl	%edi, %eax	# tmp5250, tmp5260
	movq	(%rsp), %rcx	# %sfp, Fout3
	addl	%esi, %eax	# _725, tmp5261
	subl	%r13d, %edx	# tmp5244, tmp5258
	movw	%ax, 2(%rcx)	# tmp5261, MEM[base: Fout3_953, offset: 2B]
	addl	%edx, %ebx	# tmp5258, tmp5259
	movq	288(%rsp), %rax	# %sfp, _1377
	movw	%bx, (%rcx)	# tmp5259, MEM[base: Fout3_953, offset: 0B]
# kiss_fft.c:193:         ++Fout0;++Fout1;++Fout2;++Fout3;++Fout4;
	addq	$4, %r10	#, Fout2
# kiss_fft.c:193:         ++Fout0;++Fout1;++Fout2;++Fout3;++Fout4;
	addq	$4, %rcx	#, Fout3
# kiss_fft.c:193:         ++Fout0;++Fout1;++Fout2;++Fout3;++Fout4;
	addq	$4, %r14	#, Fout4
# kiss_fft.c:193:         ++Fout0;++Fout1;++Fout2;++Fout3;++Fout4;
	addq	$4, 128(%rsp)	#, %sfp
# kiss_fft.c:193:         ++Fout0;++Fout1;++Fout2;++Fout3;++Fout4;
	movq	%r10, 32(%rsp)	# Fout2, %sfp
# kiss_fft.c:193:         ++Fout0;++Fout1;++Fout2;++Fout3;++Fout4;
	movq	%rcx, (%rsp)	# Fout3, %sfp
# kiss_fft.c:193:         ++Fout0;++Fout1;++Fout2;++Fout3;++Fout4;
	movq	%r14, 16(%rsp)	# Fout4, %sfp
	addq	%rax, 136(%rsp)	# _1377, %sfp
	movq	272(%rsp), %rax	# %sfp, _1381
# kiss_fft.c:193:         ++Fout0;++Fout1;++Fout2;++Fout3;++Fout4;
	addq	$4, %r15	#, Fout
	addq	%rax, 144(%rsp)	# _1381, %sfp
	movq	312(%rsp), %rax	# %sfp, tmp5107
	addq	%rax, 160(%rsp)	# tmp5107, %sfp
	movq	296(%rsp), %rax	# %sfp, _1389
	addq	%rax, 176(%rsp)	# _1389, %sfp
# kiss_fft.c:159:     for ( u=0; u<m; ++u ) {
	cmpq	304(%rsp), %r14	# %sfp, Fout4
# SUCC: 52 [89.0% (guessed)]  count:500300537 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 53 [11.0% (guessed)]  count:61834897 (estimated locally) (FALLTHRU)
	jne	.L53	#,
# BLOCK 53, count:61834897 (estimated locally) seq:51
# PRED: 52 [11.0% (guessed)]  count:61834897 (estimated locally) (FALLTHRU)
# SUCC: 17 [always]  count:61834897 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L1	#
# BLOCK 54, count:45855083 (estimated locally) seq:52
# PRED: 7 [40.0% (guessed)]  count:91710183 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L8:
# kiss_fft.c:31:     Fout2 = Fout + m;
	movq	(%rsp), %rax	# %sfp, _13
# kiss_fft.c:36:         tw1 += fstride;
	movq	16(%rsp), %rbx	# %sfp, fstride
# kiss_fft.c:31:     Fout2 = Fout + m;
	addq	%r11, %rax	# Fout, Fout2
# kiss_fft.c:36:         tw1 += fstride;
	leaq	0(,%rbx,4), %rdi	#, _3597
	cmpq	$1, %rbx	#, fstride
# SUCC: 55 [97.0% (guessed)]  count:44465539 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 71 [3.0% (guessed)]  count:1389544 (estimated locally) (CAN_FALLTHRU)
	jne	.L77	#,
# BLOCK 55, count:44465539 (estimated locally) seq:53
# PRED: 54 [97.0% (guessed)]  count:44465539 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movl	64(%rsp), %edx	# %sfp,
	movq	128(%rsp), %rsi	# %sfp, tw1
	movq	%rdx, %rbx	#,
	movl	%edx, %edi	# m, _1418
	leaq	-2(,%rdx,4), %rdx	#, _2335
	leaq	(%r11,%rdx), %rcx	#, tmp3048
	cmpq	%rcx, %rsi	# tmp3048, tw1
	leaq	(%rsi,%rdx), %r8	#, _1975
	seta	%cl	#, tmp3050
	cmpq	%r8, %r11	# _1975, Fout
	seta	%sil	#, tmp3052
	orl	%esi, %ecx	# tmp3052, tmp3053
	leal	-1(%rbx), %esi	#, tmp3054
	cmpl	$6, %esi	#, tmp3054
	movq	(%rsp), %rbx	# %sfp, _13
	seta	%sil	#, tmp3056
	andl	%esi, %ecx	# tmp3056, tmp3057
	leaq	32(%rbx), %rsi	#, tmp3058
	testq	%rsi, %rsi	# tmp3058
	leaq	32(%r11), %r9	#, tmp3061
	setle	%sil	#, tmp3060
	cmpq	%r9, %rax	# tmp3061, Fout2
	setnb	%r9b	#, tmp3063
	orl	%r9d, %esi	# tmp3063, tmp3064
	testb	%sil, %cl	# tmp3064, tmp3057
# SUCC: 108 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 56 [always (guessed)]  count:44465539 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L141	#,
# BLOCK 56, count:44465539 (estimated locally) seq:54
# PRED: 55 [always (guessed)]  count:44465539 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	addq	(%rsp), %rdx	# %sfp, tmp3066
	addq	%r11, %rdx	# Fout, tmp3067
	cmpq	%rdx, 128(%rsp)	# tmp3067, %sfp
	seta	%cl	#, tmp3069
	cmpq	%r8, %rax	# _1975, Fout2
	seta	%dl	#, tmp3071
	orb	%dl, %cl	# tmp3071, tmp3069
# SUCC: 108 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 57 [always (guessed)]  count:44465539 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L141	#,
# BLOCK 57, count:44465539 (estimated locally) seq:55
# PRED: 56 [always (guessed)]  count:44465539 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movl	64(%rsp), %r8d	# %sfp, bnd.86
	movq	128(%rsp), %rdx	# %sfp, ivtmp.633
	shrl	$3, %r8d	#,
	movdqa	.LC0(%rip), %xmm12	#, tmp5340
	movdqa	.LC1(%rip), %xmm14	#, tmp5341
	movq	%r11, %rsi	# Fout, ivtmp.629
	salq	$5, %r8	#, _139
	xorl	%edi, %edi	# ivtmp.625
# SUCC: 58 [always]  count:44465539 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# BLOCK 58, count:266793234 (estimated locally) seq:56
# PRED: 57 [always]  count:44465539 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 58 [83.3% (adjusted)]  count:222327696 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L22:
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movdqu	(%rsi), %xmm3	# MEM[base: _990, offset: 0B], MEM[base: _990, offset: 0B]
	movdqu	16(%rsi), %xmm2	# MEM[base: _990, offset: 16B], MEM[base: _990, offset: 16B]
	movdqa	%xmm3, %xmm1	# MEM[base: _990, offset: 0B], tmp3079
	pmullw	%xmm12, %xmm1	# tmp5340, tmp3079
	pmulhw	%xmm12, %xmm3	# tmp5340, tmp3080
	addq	$32, %rsi	#, ivtmp.629
	addq	$32, %rdx	#, ivtmp.633
	movdqa	%xmm1, %xmm0	# tmp3079, tmp3081
	punpcklwd	%xmm3, %xmm0	# tmp3080, tmp3081
	punpckhwd	%xmm3, %xmm1	# tmp3080, tmp3089
	paddd	%xmm14, %xmm0	# tmp5341, vect__1085.107
	paddd	%xmm14, %xmm1	# tmp5341, vect__1085.107
	psrad	$15, %xmm1	#, vect__1081.108
	psrad	$15, %xmm0	#, vect__1081.108
	movdqa	%xmm0, %xmm3	# vect__1081.108, tmp3094
	punpcklwd	%xmm1, %xmm0	# vect__1081.108, vect__1080.109
	punpckhwd	%xmm1, %xmm3	# vect__1081.108, tmp3094
	movdqa	%xmm0, %xmm1	# vect__1080.109, tmp3095
	punpckhwd	%xmm3, %xmm1	# tmp3094, tmp3095
	punpcklwd	%xmm3, %xmm0	# tmp3094, vect__1080.109
	punpcklwd	%xmm1, %xmm0	# tmp3095, vect__1080.109
	movdqa	%xmm2, %xmm1	# MEM[base: _990, offset: 16B], tmp3098
	pmullw	%xmm12, %xmm1	# tmp5340, tmp3098
	pmulhw	%xmm12, %xmm2	# tmp5340, tmp3099
	movups	%xmm0, -32(%rsi)	# vect__1080.109, MEM[base: _990, offset: 0B]
	movdqa	%xmm1, %xmm0	# tmp3098, tmp3100
	punpcklwd	%xmm2, %xmm0	# tmp3099, tmp3100
	punpckhwd	%xmm2, %xmm1	# tmp3099, tmp3108
	paddd	%xmm14, %xmm0	# tmp5341, vect__1085.107
	paddd	%xmm14, %xmm1	# tmp5341, vect__1085.107
	psrad	$15, %xmm1	#, vect__1081.108
	psrad	$15, %xmm0	#, vect__1081.108
	movdqa	%xmm0, %xmm2	# vect__1081.108, tmp3113
	punpcklwd	%xmm1, %xmm0	# vect__1081.108, vect__1080.109
	punpckhwd	%xmm1, %xmm2	# vect__1081.108, tmp3113
	movdqa	%xmm0, %xmm1	# vect__1080.109, tmp3114
	punpckhwd	%xmm2, %xmm1	# tmp3113, tmp3114
	punpcklwd	%xmm2, %xmm0	# tmp3113, vect__1080.109
	punpcklwd	%xmm1, %xmm0	# tmp3114, vect__1080.109
	movups	%xmm0, -16(%rsi)	# vect__1080.109, MEM[base: _990, offset: 16B]
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movdqu	(%rax,%rdi), %xmm7	# MEM[base: Fout2_49, index: ivtmp.625_981, offset: 0B], MEM[base: Fout2_49, index: ivtmp.625_981, offset: 0B]
	movdqu	16(%rax,%rdi), %xmm2	# MEM[base: Fout2_49, index: ivtmp.625_981, offset: 16B], MEM[base: Fout2_49, index: ivtmp.625_981, offset: 16B]
	movdqa	%xmm7, %xmm1	# MEM[base: Fout2_49, index: ivtmp.625_981, offset: 0B], vect_perm_even_2236
	punpcklwd	%xmm2, %xmm1	# MEM[base: Fout2_49, index: ivtmp.625_981, offset: 16B], vect_perm_even_2236
	movdqa	%xmm7, %xmm0	# MEM[base: Fout2_49, index: ivtmp.625_981, offset: 0B], tmp3117
	punpckhwd	%xmm2, %xmm0	# MEM[base: Fout2_49, index: ivtmp.625_981, offset: 16B], tmp3117
	movdqa	%xmm1, %xmm4	# vect_perm_even_2236, tmp3118
	punpckhwd	%xmm0, %xmm4	# tmp3117, tmp3118
	punpcklwd	%xmm0, %xmm1	# tmp3117, vect_perm_even_2236
	punpcklwd	%xmm4, %xmm1	# tmp3118, vect_perm_even_2236
	movdqa	%xmm7, %xmm3	# MEM[base: Fout2_49, index: ivtmp.625_981, offset: 0B], vect_perm_odd_2237
	movdqa	%xmm1, %xmm5	# vect_perm_even_2236, tmp3123
	pmullw	%xmm12, %xmm5	# tmp5340, tmp3123
	punpcklwd	%xmm2, %xmm3	# MEM[base: Fout2_49, index: ivtmp.625_981, offset: 16B], vect_perm_odd_2237
	pmulhw	%xmm12, %xmm1	# tmp5340, tmp3124
	punpcklwd	%xmm0, %xmm3	# tmp3117, vect_perm_odd_2237
	punpckhwd	%xmm4, %xmm3	# tmp3118, vect_perm_odd_2237
	movdqa	%xmm3, %xmm0	# vect_perm_odd_2237, tmp3137
	pmullw	%xmm12, %xmm0	# tmp5340, tmp3137
	pmulhw	%xmm12, %xmm3	# tmp5340, tmp3138
	movdqa	%xmm5, %xmm6	# tmp3123, tmp3125
	punpcklwd	%xmm1, %xmm6	# tmp3124, tmp3125
	punpckhwd	%xmm1, %xmm5	# tmp3124, tmp3132
	movdqa	%xmm7, %xmm1	# MEM[base: Fout2_49, index: ivtmp.625_981, offset: 0B], tmp3151
	pmullw	%xmm12, %xmm1	# tmp5340, tmp3151
	pmulhw	%xmm12, %xmm7	# tmp5340, tmp3152
	movdqa	%xmm0, %xmm4	# tmp3137, tmp3139
	punpckhwd	%xmm3, %xmm0	# tmp3138, tmp3146
	paddd	%xmm14, %xmm0	# tmp5341, vect__1061.120
	psrad	$15, %xmm0	#, vect__1061.120
	movdqa	%xmm0, %xmm15	# vect__1061.120, vect__1060.121
	movdqa	%xmm1, %xmm0	# tmp3151, tmp3153
	punpcklwd	%xmm7, %xmm0	# tmp3152, tmp3153
	punpckhwd	%xmm7, %xmm1	# tmp3152, tmp3161
	paddd	%xmm14, %xmm0	# tmp5341, vect__1068.97
	paddd	%xmm14, %xmm1	# tmp5341, vect__1068.97
	psrad	$15, %xmm1	#, vect__1067.98
	psrad	$15, %xmm0	#, vect__1067.98
	punpcklwd	%xmm3, %xmm4	# tmp3138, tmp3139
	movdqa	%xmm0, %xmm3	# vect__1067.98, tmp3166
	punpcklwd	%xmm1, %xmm0	# vect__1067.98, vect__1066.99
	punpckhwd	%xmm1, %xmm3	# vect__1067.98, tmp3166
	movdqa	%xmm0, %xmm1	# vect__1066.99, tmp3167
	punpckhwd	%xmm3, %xmm1	# tmp3166, tmp3167
	punpcklwd	%xmm3, %xmm0	# tmp3166, vect__1066.99
	punpcklwd	%xmm1, %xmm0	# tmp3167, vect__1066.99
	movdqa	%xmm2, %xmm1	# MEM[base: Fout2_49, index: ivtmp.625_981, offset: 16B], tmp3170
	pmullw	%xmm12, %xmm1	# tmp5340, tmp3170
	pmulhw	%xmm12, %xmm2	# tmp5340, tmp3171
	movups	%xmm0, (%rax,%rdi)	# vect__1066.99, MEM[base: Fout2_49, index: ivtmp.625_981, offset: 0B]
	paddd	%xmm14, %xmm6	# tmp5341, vect__1068.117
	psrad	$15, %xmm6	#, vect__1067.118
	movdqa	%xmm1, %xmm0	# tmp3170, tmp3172
	punpcklwd	%xmm2, %xmm0	# tmp3171, tmp3172
	punpckhwd	%xmm2, %xmm1	# tmp3171, tmp3180
	paddd	%xmm14, %xmm0	# tmp5341, vect__1068.97
	paddd	%xmm14, %xmm1	# tmp5341, vect__1068.97
	psrad	$15, %xmm1	#, vect__1067.98
	psrad	$15, %xmm0	#, vect__1067.98
	movdqa	%xmm0, %xmm2	# vect__1067.98, tmp3185
	punpcklwd	%xmm1, %xmm0	# vect__1067.98, vect__1066.99
	punpckhwd	%xmm1, %xmm2	# vect__1067.98, tmp3185
	movdqa	%xmm0, %xmm1	# vect__1066.99, tmp3186
	punpckhwd	%xmm2, %xmm1	# tmp3185, tmp3186
	punpcklwd	%xmm2, %xmm0	# tmp3185, vect__1066.99
	punpcklwd	%xmm1, %xmm0	# tmp3186, vect__1066.99
	movups	%xmm0, 16(%rax,%rdi)	# vect__1066.99, MEM[base: Fout2_49, index: ivtmp.625_981, offset: 16B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movzwl	-32(%rdx), %ecx	# MEM[base: _996, offset: 0B], MEM[base: _996, offset: 0B]
	movdqa	%xmm6, %xmm7	# vect__1067.118, tmp3270
	movd	%ecx, %xmm0	# MEM[base: _996, offset: 0B], tmp3190
	movzwl	-24(%rdx), %ecx	# MEM[base: _996, offset: 8B], MEM[base: _996, offset: 8B]
	pinsrw	$1, -28(%rdx), %xmm0	#, MEM[base: _996, offset: 4B], tmp3191
	movd	%ecx, %xmm3	# MEM[base: _996, offset: 8B], tmp3196
	movzwl	-16(%rdx), %ecx	# MEM[base: _996, offset: 16B], MEM[base: _996, offset: 16B]
	pinsrw	$1, -20(%rdx), %xmm3	#, MEM[base: _996, offset: 12B], tmp3197
	movd	%ecx, %xmm1	# MEM[base: _996, offset: 16B], tmp3202
	movzwl	-8(%rdx), %ecx	# MEM[base: _996, offset: 24B], MEM[base: _996, offset: 24B]
	pinsrw	$1, -12(%rdx), %xmm1	#, MEM[base: _996, offset: 20B], tmp3203
	movd	%ecx, %xmm2	# MEM[base: _996, offset: 24B], tmp3208
	pinsrw	$1, -4(%rdx), %xmm2	#, MEM[base: _996, offset: 28B], tmp3209
	movzwl	-30(%rdx), %ecx	# MEM[base: _996, offset: 2B], MEM[base: _996, offset: 2B]
	punpckldq	%xmm2, %xmm1	# tmp3209, tmp3214
	punpckldq	%xmm3, %xmm0	# tmp3197, tmp3212
	punpcklqdq	%xmm1, %xmm0	# tmp3214, tmp3216
	pxor	%xmm1, %xmm1	# tmp3219
	pcmpgtw	%xmm0, %xmm1	# tmp3216, tmp3219
	movdqa	%xmm0, %xmm9	# tmp3216, tmp3220
	movdqa	%xmm0, %xmm10	# tmp3216, tmp3224
	movd	%ecx, %xmm0	# MEM[base: _996, offset: 2B], tmp3228
	movzwl	-22(%rdx), %ecx	# MEM[base: _996, offset: 10B], MEM[base: _996, offset: 10B]
	punpcklwd	%xmm1, %xmm9	# tmp3219, tmp3220
	movd	%ecx, %xmm3	# MEM[base: _996, offset: 10B], tmp3234
	movzwl	-14(%rdx), %ecx	# MEM[base: _996, offset: 18B], MEM[base: _996, offset: 18B]
	punpckhwd	%xmm1, %xmm10	# tmp3219, tmp3224
	movd	%ecx, %xmm1	# MEM[base: _996, offset: 18B], tmp3240
	movzwl	-6(%rdx), %ecx	# MEM[base: _996, offset: 26B], MEM[base: _996, offset: 26B]
	pinsrw	$1, -18(%rdx), %xmm3	#, MEM[base: _996, offset: 14B], tmp3235
	movd	%ecx, %xmm2	# MEM[base: _996, offset: 26B], tmp3246
	pinsrw	$1, -2(%rdx), %xmm2	#, MEM[base: _996, offset: 30B], tmp3247
	pinsrw	$1, -26(%rdx), %xmm0	#, MEM[base: _996, offset: 6B], tmp3229
	pinsrw	$1, -10(%rdx), %xmm1	#, MEM[base: _996, offset: 22B], tmp3241
	punpckldq	%xmm3, %xmm0	# tmp3235, tmp3250
	punpckldq	%xmm2, %xmm1	# tmp3247, tmp3252
	punpcklqdq	%xmm1, %xmm0	# tmp3252, tmp3254
	pxor	%xmm2, %xmm2	# tmp3257
	pcmpgtw	%xmm0, %xmm2	# tmp3254, tmp3257
	movdqa	%xmm0, %xmm1	# tmp3254, tmp3258
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	paddd	%xmm14, %xmm4	# tmp5341, vect__1061.120
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	punpcklwd	%xmm2, %xmm1	# tmp3257, tmp3258
	punpckhwd	%xmm2, %xmm0	# tmp3257, tmp3262
	movdqa	%xmm6, %xmm2	# vect__1067.118, tmp3268
	pmuludq	%xmm9, %xmm2	# tmp3220, tmp3268
	movdqa	%xmm9, %xmm11	# tmp3220, tmp3271
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	psrad	$15, %xmm4	#, vect__1060.121
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	psrlq	$32, %xmm7	#, tmp3270
	psrlq	$32, %xmm11	#, tmp3271
	movaps	%xmm11, (%rsp)	# tmp3271, %sfp
	movdqa	%xmm7, %xmm3	# tmp3270, tmp3269
	movdqa	%xmm4, %xmm13	# vect__1060.121, tmp3277
	psrlq	$32, %xmm13	#, tmp3277
	movdqa	%xmm1, %xmm8	# tmp3258, tmp3278
	pmuludq	(%rsp), %xmm3	# %sfp, tmp3269
	pshufd	$8, %xmm2, %xmm2	#, tmp3268, tmp3266
	pshufd	$8, %xmm3, %xmm3	#, tmp3269, tmp3267
	movaps	%xmm7, 48(%rsp)	# tmp3270, %sfp
	punpckldq	%xmm3, %xmm2	# tmp3267, vect__1055.123
	psrlq	$32, %xmm8	#, tmp3278
	movdqa	%xmm4, %xmm3	# vect__1060.121, tmp3275
	movdqa	%xmm13, %xmm7	# tmp3277, tmp3276
	pmuludq	%xmm1, %xmm3	# tmp3258, tmp3275
	pmuludq	%xmm8, %xmm7	# tmp3278, tmp3276
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	paddd	%xmm14, %xmm5	# tmp5341, vect__1068.117
	psrad	$15, %xmm5	#, vect__1067.118
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movaps	%xmm13, 80(%rsp)	# tmp3277, %sfp
	pshufd	$8, %xmm3, %xmm3	#, tmp3275, tmp3273
	pshufd	$8, %xmm7, %xmm7	#, tmp3276, tmp3274
	punpckldq	%xmm7, %xmm3	# tmp3274, vect__1052.125
	psubd	%xmm3, %xmm2	# vect__1052.125, vect__1051.126
	movdqa	%xmm5, %xmm3	# vect__1067.118, tmp3286
	pmuludq	%xmm10, %xmm3	# tmp3224, tmp3286
	movdqa	%xmm5, %xmm11	# vect__1067.118, tmp3288
	movdqa	%xmm10, %xmm13	# tmp3224, tmp3289
	psrlq	$32, %xmm11	#, tmp3288
	psrlq	$32, %xmm13	#, tmp3289
	movaps	%xmm13, 16(%rsp)	# tmp3289, %sfp
	movdqa	%xmm11, %xmm7	# tmp3288, tmp3287
	pmuludq	16(%rsp), %xmm7	# %sfp, tmp3287
	pshufd	$8, %xmm3, %xmm3	#, tmp3286, tmp3284
	pshufd	$8, %xmm7, %xmm7	#, tmp3287, tmp3285
	punpckldq	%xmm7, %xmm3	# tmp3285, vect__1055.123
	movdqa	%xmm15, %xmm7	# vect__1060.121, tmp3295
	movaps	%xmm11, 96(%rsp)	# tmp3288, %sfp
	psrlq	$32, %xmm7	#, tmp3295
	movdqa	%xmm0, %xmm11	# tmp3262, tmp3296
	movdqa	%xmm15, %xmm13	# vect__1060.121, tmp3293
	movaps	%xmm15, 32(%rsp)	# vect__1060.121, %sfp
	psrlq	$32, %xmm11	#, tmp3296
	movdqa	%xmm7, %xmm15	# tmp3295, tmp3294
	pmuludq	%xmm0, %xmm13	# tmp3262, tmp3293
	pmuludq	%xmm11, %xmm15	# tmp3296, tmp3294
	paddd	%xmm14, %xmm2	# tmp5341, vect__1050.127
	psrad	$15, %xmm2	#, vect__1049.128
	pmuludq	%xmm5, %xmm0	# vect__1067.118, tmp3328
	pshufd	$8, %xmm13, %xmm13	#, tmp3293, tmp3291
	pshufd	$8, %xmm15, %xmm15	#, tmp3294, tmp3292
	punpckldq	%xmm15, %xmm13	# tmp3292, vect__1052.125
	psubd	%xmm13, %xmm3	# vect__1052.125, vect__1051.126
	paddd	%xmm14, %xmm3	# tmp5341, vect__1050.127
	psrad	$15, %xmm3	#, vect__1049.128
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movdqa	%xmm2, %xmm13	# vect__1049.128, tmp3301
	punpcklwd	%xmm3, %xmm2	# vect__1049.128, vect__1040.139
	punpckhwd	%xmm3, %xmm13	# vect__1049.128, tmp3301
	movdqa	%xmm2, %xmm3	# vect__1040.139, tmp3302
	punpckhwd	%xmm13, %xmm3	# tmp3301, tmp3302
	punpcklwd	%xmm13, %xmm2	# tmp3301, vect__1040.139
	punpcklwd	%xmm3, %xmm2	# tmp3302, vect__1040.139
	movdqu	-32(%rsi), %xmm3	# MEM[base: _990, offset: 0B], tmp3304
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movdqa	32(%rsp), %xmm5	# %sfp, tmp3335
	pmuludq	%xmm6, %xmm1	# vect__1067.118, tmp3310
	pmuludq	%xmm9, %xmm4	# tmp3220, tmp3317
	pmuludq	%xmm10, %xmm5	# tmp3224, tmp3335
	movdqa	80(%rsp), %xmm6	# %sfp, tmp3318
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movdqu	-16(%rsi), %xmm15	# MEM[base: _990, offset: 16B], tmp5712
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	pshufd	$8, %xmm1, %xmm1	#, tmp3310, tmp3308
	pshufd	$8, %xmm4, %xmm4	#, tmp3317, tmp3315
	pshufd	$8, %xmm0, %xmm0	#, tmp3328, tmp3326
	pshufd	$8, %xmm5, %xmm5	#, tmp3335, tmp3333
	pmuludq	48(%rsp), %xmm8	# %sfp, tmp3311
	pmuludq	(%rsp), %xmm6	# %sfp, tmp3318
	pshufd	$8, %xmm8, %xmm8	#, tmp3311, tmp3309
	pshufd	$8, %xmm6, %xmm6	#, tmp3318, tmp3316
	pmuludq	96(%rsp), %xmm11	# %sfp, tmp3329
	pmuludq	16(%rsp), %xmm7	# %sfp, tmp3336
	pshufd	$8, %xmm11, %xmm11	#, tmp3329, tmp3327
	pshufd	$8, %xmm7, %xmm7	#, tmp3336, tmp3334
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	punpckhwd	%xmm15, %xmm3	# tmp5712, tmp3304
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	punpckldq	%xmm6, %xmm4	# tmp3316, vect__1047.130
	punpckldq	%xmm7, %xmm5	# tmp3334, vect__1047.130
	punpckldq	%xmm8, %xmm1	# tmp3309, vect__1048.129
	punpckldq	%xmm11, %xmm0	# tmp3327, vect__1048.129
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movdqa	%xmm3, %xmm13	# tmp3304, tmp3304
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	paddd	%xmm4, %xmm1	# vect__1047.130, vect__1046.131
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movdqu	-32(%rsi), %xmm3	# MEM[base: _990, offset: 0B], vect__1041.138
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	paddd	%xmm5, %xmm0	# vect__1047.130, vect__1046.131
	paddd	%xmm14, %xmm1	# tmp5341, vect__1045.132
	paddd	%xmm14, %xmm0	# tmp5341, vect__1045.132
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movdqu	-32(%rsi), %xmm5	# MEM[base: _990, offset: 0B], vect__1035.142
	movdqu	-16(%rsi), %xmm7	# MEM[base: _990, offset: 16B], tmp5721
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	psrad	$15, %xmm0	#, vect__1044.133
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	punpcklwd	%xmm15, %xmm3	# tmp5714, vect__1041.138
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	psrad	$15, %xmm1	#, vect__1044.133
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movdqa	%xmm3, %xmm15	# vect__1041.138, tmp3305
	movdqa	%xmm1, %xmm4	# vect__1044.133, tmp3343
	punpcklwd	%xmm0, %xmm1	# vect__1044.133, vect__1034.143
	punpckhwd	%xmm0, %xmm4	# vect__1044.133, tmp3343
	punpckhwd	%xmm13, %xmm15	# tmp3304, tmp3305
	movdqa	%xmm1, %xmm0	# vect__1034.143, tmp3344
	punpcklwd	%xmm13, %xmm3	# tmp3304, vect__1041.138
	punpcklwd	%xmm7, %xmm5	# tmp5721, vect__1035.142
	punpckhwd	%xmm4, %xmm0	# tmp3343, tmp3344
	punpcklwd	%xmm4, %xmm1	# tmp3343, vect__1034.143
	punpcklwd	%xmm15, %xmm3	# tmp3305, vect__1041.138
	punpcklwd	%xmm13, %xmm5	# tmp3304, vect__1035.142
	punpcklwd	%xmm0, %xmm1	# tmp3344, vect__1034.143
	psubw	%xmm2, %xmm3	# vect__1040.139, vect__1039.140
	punpckhwd	%xmm15, %xmm5	# tmp3305, vect__1035.142
	psubw	%xmm1, %xmm5	# vect__1034.143, vect__1033.144
	movdqa	%xmm3, %xmm0	# vect__1039.140, tmp3349
	punpcklwd	%xmm5, %xmm0	# vect__1033.144, tmp3349
	punpckhwd	%xmm5, %xmm3	# vect__1033.144, tmp3350
	movups	%xmm3, 16(%rax,%rdi)	# tmp3350, MEM[base: Fout2_49, index: ivtmp.625_981, offset: 16B]
	movups	%xmm0, (%rax,%rdi)	# tmp3349, MEM[base: Fout2_49, index: ivtmp.625_981, offset: 0B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	movdqu	-32(%rsi), %xmm0	# MEM[base: _990, offset: 0B], MEM[base: _990, offset: 0B]
	movdqu	-16(%rsi), %xmm5	# MEM[base: _990, offset: 16B], MEM[base: _990, offset: 16B]
	movdqa	%xmm0, %xmm3	# MEM[base: _990, offset: 0B], vect__1029.152
	movdqa	%xmm0, %xmm4	# MEM[base: _990, offset: 0B], tmp3354
	punpcklwd	%xmm5, %xmm3	# MEM[base: _990, offset: 16B], vect__1029.152
	punpckhwd	%xmm5, %xmm4	# MEM[base: _990, offset: 16B], tmp3354
	movdqa	%xmm3, %xmm6	# vect__1029.152, tmp3355
	punpckhwd	%xmm4, %xmm6	# tmp3354, tmp3355
	punpcklwd	%xmm4, %xmm3	# tmp3354, vect__1029.152
	punpcklwd	%xmm5, %xmm0	# MEM[base: _990, offset: 16B], vect__1024.155
	punpcklwd	%xmm6, %xmm3	# tmp3355, vect__1029.152
	punpcklwd	%xmm4, %xmm0	# tmp3354, vect__1024.155
	paddw	%xmm3, %xmm2	# vect__1029.152, vect__1028.153
	punpckhwd	%xmm6, %xmm0	# tmp3355, vect__1024.155
	paddw	%xmm1, %xmm0	# vect__1034.143, vect__1023.156
	movdqa	%xmm2, %xmm1	# vect__1028.153, tmp3361
	punpcklwd	%xmm0, %xmm1	# vect__1023.156, tmp3361
	punpckhwd	%xmm0, %xmm2	# vect__1023.156, tmp3362
	addq	$32, %rdi	#, ivtmp.625
	movups	%xmm1, -32(%rsi)	# tmp3361, MEM[base: _990, offset: 0B]
	movups	%xmm2, -16(%rsi)	# tmp3362, MEM[base: _990, offset: 16B]
	cmpq	%rdi, %r8	# ivtmp.625, _139
# SUCC: 58 [83.3% (adjusted)]  count:222327696 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 59 [16.7% (adjusted)]  count:44465538 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L22	#,
# BLOCK 59, count:44465539 (estimated locally) seq:57
# PRED: 58 [16.7% (adjusted)]  count:44465538 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movl	64(%rsp), %ebx	# %sfp, m
	movl	%ebx, %edx	# m, niters_vector_mult_vf.87
	andl	$-8, %edx	#, niters_vector_mult_vf.87
	movl	%edx, %r10d	# niters_vector_mult_vf.87, niters_vector_mult_vf.87
	salq	$2, %r10	#, _2158
	movl	%ebx, %esi	# m, tmp.89
	leaq	(%r11,%r10), %rcx	#, tmp.88
	addq	%r10, %rax	# _2158, tmp.90
	subl	%edx, %esi	# niters_vector_mult_vf.87, tmp.89
	addq	128(%rsp), %r10	# %sfp, tmp.91
	cmpl	%edx, %ebx	# niters_vector_mult_vf.87, m
# SUCC: 60 [87.5% (guessed)]  count:38907347 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 17 [12.5% (guessed)]  count:5558192 (estimated locally) (CAN_FALLTHRU)
	je	.L1	#,
# BLOCK 60, count:38907347 (estimated locally) seq:58
# PRED: 59 [87.5% (guessed)]  count:38907347 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leal	-1(%rsi), %edx	#, tmp3365
# SUCC: 61 [always]  count:38907347 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	4(%rcx,%rdx,4), %r8	#, _980
# BLOCK 61, count:353703193 (estimated locally) seq:59
# PRED: 60 [always]  count:38907347 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 61 [89.0% (guessed)]  count:314795842 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L24:
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movswl	(%rcx), %esi	# MEM[base: Fout_2080, offset: 0B], MEM[base: Fout_2080, offset: 0B]
# kiss_fft.c:36:         tw1 += fstride;
	addq	$4, %r10	#, tmp.91
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movl	%esi, %edx	# MEM[base: Fout_2080, offset: 0B], tmp3370
	sall	$14, %edx	#, tmp3370
	subl	%esi, %edx	# MEM[base: Fout_2080, offset: 0B], tmp3371
	addl	$16384, %edx	#, tmp3372
	movswl	2(%rcx), %esi	# MEM[base: Fout_2080, offset: 2B], MEM[base: Fout_2080, offset: 2B]
	sarl	$15, %edx	#, tmp3373
	movw	%dx, (%rcx)	# tmp3373, MEM[base: Fout_2080, offset: 0B]
	movl	%esi, %edx	# MEM[base: Fout_2080, offset: 2B], tmp3376
	sall	$14, %edx	#, tmp3376
	subl	%esi, %edx	# MEM[base: Fout_2080, offset: 2B], tmp3377
	addl	$16384, %edx	#, tmp3378
	sarl	$15, %edx	#, tmp3379
	movw	%dx, 2(%rcx)	# tmp3379, MEM[base: Fout_2080, offset: 2B]
# kiss_fft.c:39:         ++Fout2;
	addq	$4, %rax	#, tmp.90
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movswl	-4(%rax), %edx	# MEM[base: Fout2_2082, offset: 0B], MEM[base: Fout2_2082, offset: 0B]
	movswl	-2(%rax), %edi	# MEM[base: Fout2_2082, offset: 2B], MEM[base: Fout2_2082, offset: 2B]
	movl	%edx, %esi	# MEM[base: Fout2_2082, offset: 0B], tmp3382
	sall	$14, %esi	#, tmp3382
	subl	%edx, %esi	# MEM[base: Fout2_2082, offset: 0B], tmp3383
	movl	%edi, %edx	# MEM[base: Fout2_2082, offset: 2B], tmp3387
	sall	$14, %edx	#, tmp3387
	subl	%edi, %edx	# MEM[base: Fout2_2082, offset: 2B], tmp3388
	addl	$16384, %esi	#, tmp3384
	addl	$16384, %edx	#, tmp3389
	sarl	$15, %esi	#, _2103
	sarl	$15, %edx	#, _2110
	movw	%si, -4(%rax)	# _2103, MEM[base: Fout2_2082, offset: 0B]
	movw	%dx, -2(%rax)	# _2110, MEM[base: Fout2_2082, offset: 2B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movl	%esi, %edi	# _2103, tmp3390
	movl	%edx, %r9d	# _2110, tmp3391
	movswl	-4(%r10), %r11d	# MEM[base: tw1_2083, offset: 0B], _2114
	movswl	-2(%r10), %ebx	# MEM[base: tw1_2083, offset: 2B], _2117
	imull	%r11d, %edi	# _2114, tmp3390
	imull	%ebx, %r9d	# _2117, tmp3391
	imull	%ebx, %esi	# _2117, tmp3399
	imull	%r11d, %edx	# _2114, tmp3400
	subl	%r9d, %edi	# tmp3391, tmp3392
	addl	$16384, %edi	#, tmp3393
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movzwl	(%rcx), %r9d	# MEM[base: Fout_2080, offset: 0B], tmp3397
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	sarl	$15, %edi	#, tmp3394
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subl	%edi, %r9d	# tmp3394, tmp3397
	movw	%r9w, -4(%rax)	# tmp3397, MEM[base: Fout2_2082, offset: 0B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	leal	16384(%rsi,%rdx), %edx	#, tmp3402
	sarl	$15, %edx	#, tmp3403
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movzwl	2(%rcx), %esi	# MEM[base: Fout_2080, offset: 2B], tmp3406
	subl	%edx, %esi	# tmp3403, tmp3406
	movw	%si, -2(%rax)	# tmp3406, MEM[base: Fout2_2082, offset: 2B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addw	%di, (%rcx)	# tmp3394, MEM[base: Fout_2080, offset: 0B]
	addw	%dx, 2(%rcx)	# tmp3403, MEM[base: Fout_2080, offset: 2B]
# kiss_fft.c:40:         ++Fout;
	addq	$4, %rcx	#, tmp.88
# kiss_fft.c:41:     }while (--m);
	cmpq	%rcx, %r8	# tmp.88, _980
# SUCC: 61 [89.0% (guessed)]  count:314795842 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 62 [11.0% (guessed)]  count:38907351 (estimated locally) (FALLTHRU)
	jne	.L24	#,
# BLOCK 62, count:38907351 (estimated locally) seq:60
# PRED: 61 [11.0% (guessed)]  count:38907351 (estimated locally) (FALLTHRU)
# SUCC: 17 [always]  count:38907351 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L1	#
# BLOCK 63, count:23622321 (estimated locally) seq:61
# PRED: 34 [20.0% (guessed)]  count:23622321 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L78:
# kiss_fft.c:295:     switch (p) {
	movq	$4, (%rsp)	#, %sfp
# SUCC: 64 [always]  count:23622321 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	$1, 80(%rsp)	#, %sfp
# BLOCK 64, count:69477404 (estimated locally) seq:62
# PRED: 5 [20.0% (guessed)]  count:45855092 (estimated locally) (CAN_FALLTHRU) 63 [always]  count:23622321 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
.L6:
# kiss_fft.c:61:         C_FIXDIV(*Fout,4); C_FIXDIV(Fout[m],4); C_FIXDIV(Fout[m2],4); C_FIXDIV(Fout[m3],4);
	movq	80(%rsp), %rax	# %sfp, k
# kiss_fft.c:72:         tw1 += fstride;
	movq	16(%rsp), %rbx	# %sfp, fstride
# kiss_fft.c:61:         C_FIXDIV(*Fout,4); C_FIXDIV(Fout[m],4); C_FIXDIV(Fout[m2],4); C_FIXDIV(Fout[m3],4);
	leaq	0(,%rax,8), %rdx	#, _292
# kiss_fft.c:61:         C_FIXDIV(*Fout,4); C_FIXDIV(Fout[m],4); C_FIXDIV(Fout[m2],4); C_FIXDIV(Fout[m3],4);
	leaq	(%rax,%rax,2), %rax	#, tmp4913
	leaq	0(,%rax,4), %rbp	#, tmp4914
# kiss_fft.c:72:         tw1 += fstride;
	leaq	0(,%rbx,4), %rax	#, _399
	movq	%rax, 144(%rsp)	# _399, %sfp
# kiss_fft.c:73:         tw2 += fstride*2;
	leaq	0(,%rbx,8), %rax	#, _401
	movq	%rax, 160(%rsp)	# _401, %sfp
# kiss_fft.c:74:         tw3 += fstride*3;
	leaq	(%rbx,%rbx,2), %rax	#, tmp4917
	salq	$2, %rax	#, tmp4918
	movq	%rax, 176(%rsp)	# tmp4918, %sfp
# kiss_fft.c:77:         if(st->inverse) {
	movl	4(%r9), %eax	# st_34(D)->inverse, _413
	movl	%eax, 112(%rsp)	# _413, %sfp
	cmpq	$1, %rbx	#, fstride
# SUCC: 65 [80.0% (guessed)]  count:55581924 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 92 [20.0% (guessed)]  count:13895480 (estimated locally) (CAN_FALLTHRU)
	jne	.L145	#,
# BLOCK 65, count:55581924 (estimated locally) seq:63
# PRED: 64 [80.0% (guessed)]  count:55581924 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	(%rsp), %rbx	# %sfp, _13
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	movq	128(%rsp), %rax	# %sfp, tw1
	addq	%r11, %rbx	# Fout, _13
	movq	%rax, 16(%rsp)	# tw1, %sfp
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	movq	%rax, (%rsp)	# tw1, %sfp
	leaq	(%r11,%rdx), %r12	#, ivtmp.1038
# SUCC: 68 [always]  count:55581924 (estimated locally) (CAN_FALLTHRU)
	jmp	.L52	#
# BLOCK 66, count:252645152 (estimated locally) seq:64
# PRED: 68 [50.0% (guessed)]  count:252645137 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L146:
# kiss_fft.c:78:             Fout[m].r = scratch[5].r - scratch[4].i;
	movl	%r10d, %eax	# _1654, tmp5087
# kiss_fft.c:79:             Fout[m].i = scratch[5].i + scratch[4].r;
	addl	%r15d, %r9d	# _1658, tmp5089
# kiss_fft.c:78:             Fout[m].r = scratch[5].r - scratch[4].i;
	subl	%esi, %eax	# tmp5079, tmp5087
# kiss_fft.c:81:             Fout[m3].i = scratch[5].i - scratch[4].r;
	subl	%r8d, %r15d	# tmp5069, tmp5091
# kiss_fft.c:78:             Fout[m].r = scratch[5].r - scratch[4].i;
	addl	%eax, %edx	# tmp5087, tmp5088
# kiss_fft.c:80:             Fout[m3].r = scratch[5].r + scratch[4].i;
	addl	%r10d, %ecx	# _1654, tmp5090
# kiss_fft.c:81:             Fout[m3].i = scratch[5].i - scratch[4].r;
	addl	%r15d, %edi	# tmp5091, tmp5092
# kiss_fft.c:78:             Fout[m].r = scratch[5].r - scratch[4].i;
	movw	%dx, (%rbx)	# tmp5088, MEM[base: _1331, offset: 0B]
# kiss_fft.c:79:             Fout[m].i = scratch[5].i + scratch[4].r;
	movw	%r9w, 2(%rbx)	# tmp5089, MEM[base: _1331, offset: 2B]
# kiss_fft.c:80:             Fout[m3].r = scratch[5].r + scratch[4].i;
	movw	%cx, (%r11,%rbp)	# tmp5090, MEM[base: Fout_1536, index: _306, offset: 0B]
# SUCC: 67 [always]  count:252645152 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:81:             Fout[m3].i = scratch[5].i - scratch[4].r;
	movw	%di, 2(%r11,%rbp)	# tmp5092, MEM[base: Fout_1536, index: _306, offset: 2B]
# BLOCK 67, count:505290273 (estimated locally) seq:65
# PRED: 66 [always]  count:252645152 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 69 [always]  count:252645152 (estimated locally) (CAN_FALLTHRU)
.L51:
# kiss_fft.c:88:         ++Fout;
	addq	$4, %r11	#, Fout
	addq	$4, %rbx	#, ivtmp.1037
	addq	$4, %r12	#, ivtmp.1038
# kiss_fft.c:89:     }while(--k);
	decq	80(%rsp)	# %sfp
# SUCC: 68 [89.0% (guessed)]  count:449708343 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 17 [11.0% (guessed)]  count:55581930 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	je	.L1	#,
# BLOCK 68, count:505290273 (estimated locally) seq:66
# PRED: 67 [89.0% (guessed)]  count:449708343 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 65 [always]  count:55581924 (estimated locally) (CAN_FALLTHRU)
.L52:
# kiss_fft.c:61:         C_FIXDIV(*Fout,4); C_FIXDIV(Fout[m],4); C_FIXDIV(Fout[m2],4); C_FIXDIV(Fout[m3],4);
	movswl	(%r11), %edx	# MEM[base: Fout_1536, offset: 0B], MEM[base: Fout_1536, offset: 0B]
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movq	16(%rsp), %r9	# %sfp, tw3
# kiss_fft.c:61:         C_FIXDIV(*Fout,4); C_FIXDIV(Fout[m],4); C_FIXDIV(Fout[m2],4); C_FIXDIV(Fout[m3],4);
	movl	%edx, %eax	# MEM[base: Fout_1536, offset: 0B], tmp5011
	sall	$13, %eax	#, tmp5011
	subl	%edx, %eax	# MEM[base: Fout_1536, offset: 0B], tmp5012
	addl	$16384, %eax	#, tmp5013
	movswl	2(%r11), %edx	# MEM[base: Fout_1536, offset: 2B], MEM[base: Fout_1536, offset: 2B]
	sarl	$15, %eax	#, tmp5014
	movw	%ax, (%r11)	# tmp5014, MEM[base: Fout_1536, offset: 0B]
	movl	%edx, %eax	# MEM[base: Fout_1536, offset: 2B], tmp5017
	sall	$13, %eax	#, tmp5017
	subl	%edx, %eax	# MEM[base: Fout_1536, offset: 2B], tmp5018
	addl	$16384, %eax	#, tmp5019
	sarl	$15, %eax	#, tmp5020
	movw	%ax, 2(%r11)	# tmp5020, MEM[base: Fout_1536, offset: 2B]
# kiss_fft.c:61:         C_FIXDIV(*Fout,4); C_FIXDIV(Fout[m],4); C_FIXDIV(Fout[m2],4); C_FIXDIV(Fout[m3],4);
	movswl	(%rbx), %edx	# MEM[base: _1331, offset: 0B], MEM[base: _1331, offset: 0B]
	movl	%edx, %eax	# MEM[base: _1331, offset: 0B], tmp5023
	sall	$13, %eax	#, tmp5023
	subl	%edx, %eax	# MEM[base: _1331, offset: 0B], tmp5024
	addl	$16384, %eax	#, tmp5025
	movswl	2(%rbx), %edx	# MEM[base: _1331, offset: 2B], MEM[base: _1331, offset: 2B]
	sarl	$15, %eax	#, tmp5026
	movw	%ax, (%rbx)	# tmp5026, MEM[base: _1331, offset: 0B]
	movl	%edx, %eax	# MEM[base: _1331, offset: 2B], tmp5029
	sall	$13, %eax	#, tmp5029
	subl	%edx, %eax	# MEM[base: _1331, offset: 2B], tmp5030
	addl	$16384, %eax	#, tmp5031
	sarl	$15, %eax	#, tmp5032
	movw	%ax, 2(%rbx)	# tmp5032, MEM[base: _1331, offset: 2B]
# kiss_fft.c:61:         C_FIXDIV(*Fout,4); C_FIXDIV(Fout[m],4); C_FIXDIV(Fout[m2],4); C_FIXDIV(Fout[m3],4);
	movswl	(%r12), %edx	# MEM[base: _1336, offset: 0B], MEM[base: _1336, offset: 0B]
	movl	%edx, %eax	# MEM[base: _1336, offset: 0B], tmp5035
	sall	$13, %eax	#, tmp5035
	subl	%edx, %eax	# MEM[base: _1336, offset: 0B], tmp5036
	addl	$16384, %eax	#, tmp5037
	movswl	2(%r12), %edx	# MEM[base: _1336, offset: 2B], MEM[base: _1336, offset: 2B]
	sarl	$15, %eax	#, tmp5038
	movw	%ax, (%r12)	# tmp5038, MEM[base: _1336, offset: 0B]
	movl	%edx, %eax	# MEM[base: _1336, offset: 2B], tmp5041
	sall	$13, %eax	#, tmp5041
	subl	%edx, %eax	# MEM[base: _1336, offset: 2B], tmp5042
	addl	$16384, %eax	#, tmp5043
	sarl	$15, %eax	#, tmp5044
	movw	%ax, 2(%r12)	# tmp5044, MEM[base: _1336, offset: 2B]
# kiss_fft.c:61:         C_FIXDIV(*Fout,4); C_FIXDIV(Fout[m],4); C_FIXDIV(Fout[m2],4); C_FIXDIV(Fout[m3],4);
	movswl	(%r11,%rbp), %eax	# MEM[base: Fout_1536, index: _306, offset: 0B], MEM[base: Fout_1536, index: _306, offset: 0B]
	movl	%eax, %ecx	# MEM[base: Fout_1536, index: _306, offset: 0B], tmp5047
	sall	$13, %ecx	#, tmp5047
	subl	%eax, %ecx	# MEM[base: Fout_1536, index: _306, offset: 0B], tmp5048
	movswl	2(%r11,%rbp), %eax	# MEM[base: Fout_1536, index: _306, offset: 2B], MEM[base: Fout_1536, index: _306, offset: 2B]
	addl	$16384, %ecx	#, tmp5049
	movl	%eax, %edx	# MEM[base: Fout_1536, index: _306, offset: 2B], tmp5052
	sall	$13, %edx	#, tmp5052
	subl	%eax, %edx	# MEM[base: Fout_1536, index: _306, offset: 2B], tmp5053
	addl	$16384, %edx	#, tmp5054
	sarl	$15, %ecx	#, _1591
	sarl	$15, %edx	#, _1598
	movw	%cx, (%r11,%rbp)	# _1591, MEM[base: Fout_1536, index: _306, offset: 0B]
	movw	%dx, 2(%r11,%rbp)	# _1598, MEM[base: Fout_1536, index: _306, offset: 2B]
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movq	128(%rsp), %rax	# %sfp, tw1
	movswl	2(%rax), %r15d	# MEM[base: tw1_1537, offset: 2B], _1609
	movswl	(%rax), %edi	# MEM[base: tw1_1537, offset: 0B], _1604
	movl	%r15d, 48(%rsp)	# _1609, %sfp
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movq	(%rsp), %r15	# %sfp, tw2
	movswl	2(%r12), %r13d	# MEM[base: _1336, offset: 2B], _1625
	movswl	2(%r15), %r14d	# MEM[base: tw2_1538, offset: 2B], _1627
	movswl	(%r12), %r8d	# MEM[base: _1336, offset: 0B], _1620
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movl	%edi, 32(%rsp)	# _1604, %sfp
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movswl	(%r15), %edi	# MEM[base: tw2_1538, offset: 0B], _1622
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movswl	(%r9), %r15d	# MEM[base: tw3_1539, offset: 0B], _1638
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movl	%r8d, %eax	# _1620, tmp5055
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movl	%r15d, 64(%rsp)	# _1638, %sfp
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movl	%r13d, %r15d	# _1625, tmp5056
	imull	%edi, %eax	# _1622, tmp5055
	imull	%r14d, %r15d	# _1627, tmp5056
	imull	%r14d, %r8d	# _1627, tmp5060
	imull	%r13d, %edi	# _1625, tmp5061
	subl	%r15d, %eax	# tmp5056, tmp5057
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movswl	2(%r9), %r9d	# MEM[base: tw3_1539, offset: 2B], _1641
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movswl	(%rbx), %esi	# MEM[base: _1331, offset: 0B], _1602
	movswl	2(%rbx), %r10d	# MEM[base: _1331, offset: 2B], _1607
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	leal	16384(%r8,%rdi), %r13d	#, tmp5063
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movzwl	(%r11), %r15d	# MEM[base: Fout_1536, offset: 0B], _1654
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	addl	$16384, %eax	#, tmp5058
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movzwl	2(%r11), %r14d	# MEM[base: Fout_1536, offset: 2B], _1658
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	sarl	$15, %eax	#, tmp5059
	sarl	$15, %r13d	#, tmp5064
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	subl	%eax, %r15d	# tmp5059, _1654
	subl	%r13d, %r14d	# tmp5064, _1658
	movw	%r15w, 96(%rsp)	# _1654, %sfp
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movl	32(%rsp), %r8d	# %sfp, tmp5065
	movl	48(%rsp), %edi	# %sfp, tmp5066
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movl	%r14d, %r15d	# _1658, _1658
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movl	64(%rsp), %r14d	# %sfp, tmp5070
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	imull	%r10d, %edi	# _1607, tmp5066
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	imull	%ecx, %r14d	# _1591, tmp5070
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	imull	%esi, %r8d	# _1602, tmp5065
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	imull	%r9d, %ecx	# _1641, tmp5080
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	imull	32(%rsp), %r10d	# %sfp, tmp5076
	subl	%edi, %r8d	# tmp5066, tmp5067
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movl	%r14d, %edi	# tmp5070, tmp5070
	movl	%edx, %r14d	# _1598, tmp5071
	imull	%r9d, %r14d	# _1641, tmp5071
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	imull	48(%rsp), %esi	# %sfp, tmp5075
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	imull	64(%rsp), %edx	# %sfp, tmp5081
	subl	%r14d, %edi	# tmp5071, tmp5072
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	addl	$16384, %r8d	#, tmp5068
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	addl	$16384, %edi	#, tmp5073
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	leal	16384(%rsi,%r10), %esi	#, tmp5078
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	leal	16384(%rcx,%rdx), %edx	#, tmp5083
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	sarl	$15, %r8d	#, tmp5069
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	sarl	$15, %edi	#, tmp5074
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	sarl	$15, %esi	#, tmp5079
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	sarl	$15, %edx	#, tmp5084
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	addw	(%r11), %ax	# MEM[base: Fout_1536, offset: 0B], _1659
	addw	2(%r11), %r13w	# MEM[base: Fout_1536, offset: 2B], _1662
# kiss_fft.c:69:         C_ADD( scratch[3] , scratch[0] , scratch[2] );
	leal	(%rdx,%rsi), %r10d	#, _1670
	leal	(%rdi,%r8), %r14d	#, _1667
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	movw	%ax, (%r11)	# _1659, MEM[base: Fout_1536, offset: 0B]
	movw	%r13w, 2(%r11)	# _1662, MEM[base: Fout_1536, offset: 2B]
# kiss_fft.c:71:         C_SUB( Fout[m2], *Fout, scratch[3] );
	subl	%r14d, %eax	# _1667, tmp5085
	subl	%r10d, %r13d	# _1670, tmp5086
	movw	%r13w, 2(%r12)	# tmp5086, MEM[base: _1336, offset: 2B]
	movw	%ax, (%r12)	# tmp5085, MEM[base: _1336, offset: 0B]
# kiss_fft.c:70:         C_SUB( scratch[4] , scratch[0] , scratch[2] );
	movl	%r8d, %ecx	# tmp5069, _1671
	subl	%edi, %ecx	# tmp5074, _1671
# kiss_fft.c:77:         if(st->inverse) {
	movl	112(%rsp), %r13d	# %sfp,
# kiss_fft.c:70:         C_SUB( scratch[4] , scratch[0] , scratch[2] );
	movl	%ecx, %r9d	# _1671, _1671
	movl	%esi, %ecx	# tmp5079, _1672
	subl	%edx, %ecx	# tmp5084, _1672
# kiss_fft.c:72:         tw1 += fstride;
	addq	$4, 128(%rsp)	#, %sfp
# kiss_fft.c:75:         C_ADDTO( *Fout , scratch[3] );
	addw	%r10w, 2(%r11)	# _1670, MEM[base: Fout_1536, offset: 2B]
# kiss_fft.c:73:         tw2 += fstride*2;
	addq	$8, (%rsp)	#, %sfp
# kiss_fft.c:74:         tw3 += fstride*3;
	addq	$12, 16(%rsp)	#, %sfp
# kiss_fft.c:75:         C_ADDTO( *Fout , scratch[3] );
	addw	%r14w, (%r11)	# _1667, MEM[base: Fout_1536, offset: 0B]
# kiss_fft.c:78:             Fout[m].r = scratch[5].r - scratch[4].i;
	movzwl	96(%rsp), %r10d	# %sfp, _1654
# kiss_fft.c:77:         if(st->inverse) {
	testl	%r13d, %r13d	#
# SUCC: 66 [50.0% (guessed)]  count:252645137 (estimated locally) (CAN_FALLTHRU) 69 [50.0% (guessed)]  count:252645137 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L146	#,
# BLOCK 69, count:252645152 (estimated locally) seq:67
# PRED: 68 [50.0% (guessed)]  count:252645137 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:83:             Fout[m].r = scratch[5].r + scratch[4].i;
	addl	%r10d, %ecx	# _1654, tmp5093
	movw	%cx, (%rbx)	# tmp5093, MEM[base: _1331, offset: 0B]
# kiss_fft.c:84:             Fout[m].i = scratch[5].i - scratch[4].r;
	movl	%r15d, %eax	# _1658, tmp5094
# kiss_fft.c:85:             Fout[m3].r = scratch[5].r - scratch[4].i;
	movl	%r10d, %ecx	# _1654, _1654
# kiss_fft.c:84:             Fout[m].i = scratch[5].i - scratch[4].r;
	subl	%r8d, %eax	# tmp5069, tmp5094
# kiss_fft.c:85:             Fout[m3].r = scratch[5].r - scratch[4].i;
	subl	%esi, %ecx	# tmp5079, _1654
# kiss_fft.c:84:             Fout[m].i = scratch[5].i - scratch[4].r;
	addl	%eax, %edi	# tmp5094, tmp5095
# kiss_fft.c:85:             Fout[m3].r = scratch[5].r - scratch[4].i;
	addl	%ecx, %edx	# tmp5096, tmp5097
# kiss_fft.c:86:             Fout[m3].i = scratch[5].i + scratch[4].r;
	addl	%r9d, %r15d	# _1671, tmp5098
# kiss_fft.c:84:             Fout[m].i = scratch[5].i - scratch[4].r;
	movw	%di, 2(%rbx)	# tmp5095, MEM[base: _1331, offset: 2B]
# kiss_fft.c:85:             Fout[m3].r = scratch[5].r - scratch[4].i;
	movw	%dx, (%r11,%rbp)	# tmp5097, MEM[base: Fout_1536, index: _306, offset: 0B]
# kiss_fft.c:86:             Fout[m3].i = scratch[5].i + scratch[4].r;
	movw	%r15w, 2(%r11,%rbp)	# tmp5098, MEM[base: Fout_1536, index: _306, offset: 2B]
# SUCC: 67 [always]  count:252645152 (estimated locally) (CAN_FALLTHRU)
	jmp	.L51	#
# BLOCK 70, count:23622321 (estimated locally) seq:68
# PRED: 36 [40.0% (guessed)]  count:47244639 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L75:
# kiss_fft.c:36:         tw1 += fstride;
	movq	16(%rsp), %rbx	# %sfp, fstride
# kiss_fft.c:31:     Fout2 = Fout + m;
	leaq	4(%r11), %rcx	#, Fout
# kiss_fft.c:36:         tw1 += fstride;
	movq	$4, (%rsp)	#, %sfp
# kiss_fft.c:31:     Fout2 = Fout + m;
	movq	%rcx, %rax	# Fout, Fout2
# kiss_fft.c:36:         tw1 += fstride;
	leaq	0(,%rbx,4), %rdi	#, _3597
	cmpq	$1, %rbx	#, fstride
# SUCC: 87 [47.1% (guessed)]  count:11116385 (estimated locally) (CAN_FALLTHRU) 71 [52.9% (guessed)]  count:12505936 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L147	#,
# BLOCK 71, count:13895480 (estimated locally) seq:69
# PRED: 70 [52.9% (guessed)]  count:12505936 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 54 [3.0% (guessed)]  count:1389544 (estimated locally) (CAN_FALLTHRU)
.L77:
	movl	64(%rsp), %ecx	# %sfp,
	movq	128(%rsp), %r14	# %sfp, tw1
	leaq	-1(%rcx), %rdx	#, _2382
	imulq	%rdi, %rdx	# _3597, _2391
	movq	%rcx, %r15	#,
	testq	%rdi, %rdi	# _3597
	leaq	-2(,%rcx,4), %rsi	#, _2345
	movl	$0, %ecx	#, tmp2625
	cmovs	%rdx, %rcx	# _2391,, tmp2624
	movl	$2, %r8d	#, tmp2627
	addq	%r14, %rcx	# tw1, _2393
	addq	$2, %rdx	#, tmp2626
	testq	%rdi, %rdi	# _3597
	cmovs	%r8, %rdx	# tmp2626,, tmp2627, tmp2626
	leaq	(%r11,%rsi), %r8	#, tmp2628
	addq	%r14, %rdx	# tw1, _2402
	cmpq	%r8, %rcx	# tmp2628, _2393
	seta	%r8b	#, tmp2630
	cmpq	%rdx, %r11	# _2402, Fout
	seta	%r9b	#, tmp2632
	leal	-1(%r15), %r10d	#,
	orl	%r9d, %r8d	# tmp2632, tmp2633
	movq	(%rsp), %rbp	# %sfp, _13
	cmpl	$6, %r10d	#, tmp5335
	seta	%r9b	#, tmp2636
	andl	%r9d, %r8d	# tmp2636, tmp2637
	leaq	32(%rbp), %r9	#, tmp2638
	testq	%r9, %r9	# tmp2638
	leaq	32(%r11), %rbx	#, tmp2641
	setle	%r9b	#, tmp2640
	cmpq	%rbx, %rax	# tmp2641, Fout2
	setnb	%bl	#, tmp2643
	orl	%ebx, %r9d	# tmp2643, tmp2644
	testb	%r9b, %r8b	# tmp2644, tmp2637
# SUCC: 105 [10.0% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU) 72 [90.0% (guessed)]  count:12505932 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L13	#,
# BLOCK 72, count:12505932 (estimated locally) seq:70
# PRED: 71 [90.0% (guessed)]  count:12505932 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	addq	%rbp, %rsi	# _13, tmp2646
	addq	%r11, %rsi	# Fout, tmp2647
	cmpq	%rsi, %rcx	# tmp2647, _2393
	seta	%cl	#, tmp2649
	cmpq	%rax, %rdx	# Fout2, _2402
	setb	%dl	#, tmp2651
	orb	%dl, %cl	# tmp2651, tmp2649
# SUCC: 105 [11.1% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU) 73 [88.9% (guessed)]  count:11116384 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L13	#,
# BLOCK 73, count:11116384 (estimated locally) seq:71
# PRED: 72 [88.9% (guessed)]  count:11116384 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	0(,%rdi,8), %r12	#, _2681
	shrl	$3, %r15d	#, bnd.161
	movl	%r15d, %ebp	# bnd.161,
	leaq	(%rdi,%rdi,2), %r9	#, tmp2657
	movq	%r12, %r10	# _2681, tmp2667
	movdqa	.LC0(%rip), %xmm12	#, tmp5340
	movdqa	.LC1(%rip), %xmm14	#, tmp5341
	movq	%r11, %rcx	# Fout, ivtmp.708
	movq	%r14, %rdx	# tw1, ivtmp.712
	salq	$5, %rbp	#, _196
	leaq	(%rdi,%rdi,4), %rbx	#, tmp2660
	leaq	(%r9,%r9), %r13	#, tmp2664
	subq	%rdi, %r10	# _3597, tmp2667
	xorl	%r8d, %r8d	# ivtmp.704
# SUCC: 74 [always]  count:11116384 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# BLOCK 74, count:66698304 (estimated locally) seq:72
# PRED: 73 [always]  count:11116384 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 74 [83.3% (adjusted)]  count:55581920 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L14:
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movdqu	(%rcx), %xmm3	# MEM[base: _177, offset: 0B], MEM[base: _177, offset: 0B]
	movdqu	16(%rcx), %xmm2	# MEM[base: _177, offset: 16B], MEM[base: _177, offset: 16B]
	movdqa	%xmm3, %xmm1	# MEM[base: _177, offset: 0B], tmp2672
	pmullw	%xmm12, %xmm1	# tmp5340, tmp2672
	pmulhw	%xmm12, %xmm3	# tmp5340, tmp2673
	addq	$32, %rcx	#, ivtmp.708
	movdqa	%xmm1, %xmm0	# tmp2672, tmp2674
	punpcklwd	%xmm3, %xmm0	# tmp2673, tmp2674
	punpckhwd	%xmm3, %xmm1	# tmp2673, tmp2682
	paddd	%xmm14, %xmm0	# tmp5341, vect__54.182
	paddd	%xmm14, %xmm1	# tmp5341, vect__54.182
	psrad	$15, %xmm1	#, vect__55.183
	psrad	$15, %xmm0	#, vect__55.183
	movdqa	%xmm0, %xmm3	# vect__55.183, tmp2687
	punpcklwd	%xmm1, %xmm0	# vect__55.183, vect__56.184
	punpckhwd	%xmm1, %xmm3	# vect__55.183, tmp2687
	movdqa	%xmm0, %xmm1	# vect__56.184, tmp2688
	punpckhwd	%xmm3, %xmm1	# tmp2687, tmp2688
	punpcklwd	%xmm3, %xmm0	# tmp2687, vect__56.184
	punpcklwd	%xmm1, %xmm0	# tmp2688, vect__56.184
	movdqa	%xmm2, %xmm1	# MEM[base: _177, offset: 16B], tmp2691
	pmullw	%xmm12, %xmm1	# tmp5340, tmp2691
	pmulhw	%xmm12, %xmm2	# tmp5340, tmp2692
	movups	%xmm0, -32(%rcx)	# vect__56.184, MEM[base: _177, offset: 0B]
	movdqa	%xmm1, %xmm0	# tmp2691, tmp2693
	punpcklwd	%xmm2, %xmm0	# tmp2692, tmp2693
	punpckhwd	%xmm2, %xmm1	# tmp2692, tmp2701
	paddd	%xmm14, %xmm0	# tmp5341, vect__54.182
	paddd	%xmm14, %xmm1	# tmp5341, vect__54.182
	psrad	$15, %xmm1	#, vect__55.183
	psrad	$15, %xmm0	#, vect__55.183
	movdqa	%xmm0, %xmm2	# vect__55.183, tmp2706
	punpcklwd	%xmm1, %xmm0	# vect__55.183, vect__56.184
	punpckhwd	%xmm1, %xmm2	# vect__55.183, tmp2706
	movdqa	%xmm0, %xmm1	# vect__56.184, tmp2707
	punpckhwd	%xmm2, %xmm1	# tmp2706, tmp2707
	punpcklwd	%xmm2, %xmm0	# tmp2706, vect__56.184
	punpcklwd	%xmm1, %xmm0	# tmp2707, vect__56.184
	movups	%xmm0, -16(%rcx)	# vect__56.184, MEM[base: _177, offset: 16B]
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movdqu	(%rax,%r8), %xmm7	# MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 0B], MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 0B]
	movdqu	16(%rax,%r8), %xmm3	# MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 16B], MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 16B]
	movdqa	%xmm7, %xmm0	# MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 0B], vect_perm_even_2663
	punpcklwd	%xmm3, %xmm0	# MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 16B], vect_perm_even_2663
	movdqa	%xmm7, %xmm1	# MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 0B], tmp2710
	punpckhwd	%xmm3, %xmm1	# MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 16B], tmp2710
	movdqa	%xmm0, %xmm2	# vect_perm_even_2663, tmp2711
	punpckhwd	%xmm1, %xmm2	# tmp2710, tmp2711
	punpcklwd	%xmm1, %xmm0	# tmp2710, vect_perm_even_2663
	movdqa	%xmm7, %xmm5	# MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 0B], vect_perm_odd_2664
	punpcklwd	%xmm2, %xmm0	# tmp2711, vect_perm_even_2663
	punpcklwd	%xmm3, %xmm5	# MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 16B], vect_perm_odd_2664
	punpcklwd	%xmm1, %xmm5	# tmp2710, vect_perm_odd_2664
	movdqa	%xmm0, %xmm6	# vect_perm_even_2663, tmp2716
	punpckhwd	%xmm2, %xmm5	# tmp2711, vect_perm_odd_2664
	pmullw	%xmm12, %xmm6	# tmp5340, tmp2716
	movdqa	%xmm0, %xmm2	# vect_perm_even_2663, vect_perm_even_2663
	pmulhw	%xmm12, %xmm2	# tmp5340, vect_perm_even_2663
	movdqa	%xmm5, %xmm4	# vect_perm_odd_2664, tmp2730
	pmullw	%xmm12, %xmm4	# tmp5340, tmp2730
	movdqa	%xmm6, %xmm0	# tmp2716, tmp2718
	pmulhw	%xmm12, %xmm5	# tmp5340, vect_perm_odd_2664
	punpcklwd	%xmm2, %xmm0	# tmp2717, tmp2718
	punpckhwd	%xmm2, %xmm6	# tmp2717, tmp2725
	movdqa	%xmm7, %xmm2	# MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 0B], tmp2744
	pmullw	%xmm12, %xmm2	# tmp5340, tmp2744
	pmulhw	%xmm12, %xmm7	# tmp5340, tmp2745
	movdqa	%xmm5, %xmm1	# vect_perm_odd_2664, tmp2731
	movdqa	%xmm4, %xmm5	# tmp2730, tmp2732
	punpcklwd	%xmm1, %xmm5	# tmp2731, tmp2732
	punpckhwd	%xmm1, %xmm4	# tmp2731, tmp2739
	movdqa	%xmm2, %xmm1	# tmp2744, tmp2746
	punpcklwd	%xmm7, %xmm1	# tmp2745, tmp2746
	punpckhwd	%xmm7, %xmm2	# tmp2745, tmp2754
	paddd	%xmm14, %xmm1	# tmp5341, vect__67.172
	paddd	%xmm14, %xmm2	# tmp5341, vect__67.172
	psrad	$15, %xmm2	#, vect__68.173
	psrad	$15, %xmm1	#, vect__68.173
	movdqa	%xmm1, %xmm7	# vect__68.173, tmp2759
	punpcklwd	%xmm2, %xmm1	# vect__68.173, vect__69.174
	punpckhwd	%xmm2, %xmm7	# vect__68.173, tmp2759
	movdqa	%xmm1, %xmm2	# vect__69.174, tmp2760
	punpckhwd	%xmm7, %xmm2	# tmp2759, tmp2760
	punpcklwd	%xmm7, %xmm1	# tmp2759, vect__69.174
	punpcklwd	%xmm2, %xmm1	# tmp2760, vect__69.174
	movdqa	%xmm3, %xmm2	# MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 16B], tmp2763
	pmullw	%xmm12, %xmm2	# tmp5340, tmp2763
	pmulhw	%xmm12, %xmm3	# tmp5340, tmp2764
	movups	%xmm1, (%rax,%r8)	# vect__69.174, MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 0B]
	paddd	%xmm14, %xmm0	# tmp5341, vect__67.192
	psrad	$15, %xmm0	#, vect__68.193
	movdqa	%xmm2, %xmm1	# tmp2763, tmp2765
	punpcklwd	%xmm3, %xmm1	# tmp2764, tmp2765
	punpckhwd	%xmm3, %xmm2	# tmp2764, tmp2773
	paddd	%xmm14, %xmm1	# tmp5341, vect__67.172
	paddd	%xmm14, %xmm2	# tmp5341, vect__67.172
	psrad	$15, %xmm2	#, vect__68.173
	psrad	$15, %xmm1	#, vect__68.173
	movdqa	%xmm1, %xmm3	# vect__68.173, tmp2778
	punpcklwd	%xmm2, %xmm1	# vect__68.173, vect__69.174
	punpckhwd	%xmm2, %xmm3	# vect__68.173, tmp2778
	movdqa	%xmm1, %xmm2	# vect__69.174, tmp2779
	punpckhwd	%xmm3, %xmm2	# tmp2778, tmp2779
	punpcklwd	%xmm3, %xmm1	# tmp2778, vect__69.174
	punpcklwd	%xmm2, %xmm1	# tmp2779, vect__69.174
	movups	%xmm1, 16(%rax,%r8)	# vect__69.174, MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 16B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movzwl	(%rdx), %esi	# MEM[base: _183, offset: 0B], MEM[base: _183, offset: 0B]
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	paddd	%xmm14, %xmm5	# tmp5341, vect__73.195
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movd	%esi, %xmm1	# MEM[base: _183, offset: 0B], tmp2783
	movzwl	(%rdx,%rdi,2), %esi	# MEM[base: _183, index: _3618, step: 2, offset: 0B], MEM[base: _183, index: _3618, step: 2, offset: 0B]
	pinsrw	$1, (%rdx,%rdi), %xmm1	#, MEM[base: _183, index: _3618, offset: 0B], tmp2784
	movd	%esi, %xmm7	# MEM[base: _183, index: _3618, step: 2, offset: 0B], tmp2789
	movzwl	(%rdx,%rdi,4), %esi	# MEM[base: _183, index: _3618, step: 4, offset: 0B], MEM[base: _183, index: _3618, step: 4, offset: 0B]
	pinsrw	$1, (%rdx,%r9), %xmm7	#, MEM[base: _183, index: _187, offset: 0B], tmp2790
	movd	%esi, %xmm2	# MEM[base: _183, index: _3618, step: 4, offset: 0B], tmp2795
	movzwl	(%rdx,%r13), %esi	# MEM[base: _183, index: _192, offset: 0B], MEM[base: _183, index: _192, offset: 0B]
	pinsrw	$1, (%rdx,%rbx), %xmm2	#, MEM[base: _183, index: _190, offset: 0B], tmp2796
	movd	%esi, %xmm3	# MEM[base: _183, index: _192, offset: 0B], tmp2801
	pinsrw	$1, (%rdx,%r10), %xmm3	#, MEM[base: _183, index: _194, offset: 0B], tmp2802
	movzwl	2(%rdx), %esi	# MEM[base: _183, offset: 2B], MEM[base: _183, offset: 2B]
	punpckldq	%xmm3, %xmm2	# tmp2802, tmp2807
	punpckldq	%xmm7, %xmm1	# tmp2790, tmp2805
	punpcklqdq	%xmm2, %xmm1	# tmp2807, tmp2809
	pxor	%xmm2, %xmm2	# tmp2812
	pcmpgtw	%xmm1, %xmm2	# tmp2809, tmp2812
	movdqa	%xmm1, %xmm9	# tmp2809, tmp2813
	movdqa	%xmm1, %xmm11	# tmp2809, tmp2817
	movd	%esi, %xmm1	# MEM[base: _183, offset: 2B], tmp2821
	movzwl	2(%rdx,%rdi,2), %esi	# MEM[base: _183, index: _3618, step: 2, offset: 2B], MEM[base: _183, index: _3618, step: 2, offset: 2B]
	punpckhwd	%xmm2, %xmm11	# tmp2812, tmp2817
	movd	%esi, %xmm7	# MEM[base: _183, index: _3618, step: 2, offset: 2B], tmp2827
	movzwl	2(%rdx,%rdi,4), %esi	# MEM[base: _183, index: _3618, step: 4, offset: 2B], MEM[base: _183, index: _3618, step: 4, offset: 2B]
	punpcklwd	%xmm2, %xmm9	# tmp2812, tmp2813
	movd	%esi, %xmm2	# MEM[base: _183, index: _3618, step: 4, offset: 2B], tmp2833
	movzwl	2(%rdx,%r13), %esi	# MEM[base: _183, index: _192, offset: 2B], MEM[base: _183, index: _192, offset: 2B]
	pinsrw	$1, 2(%rdx,%r9), %xmm7	#, MEM[base: _183, index: _187, offset: 2B], tmp2828
	movd	%esi, %xmm3	# MEM[base: _183, index: _192, offset: 2B], tmp2839
	pinsrw	$1, 2(%rdx,%r10), %xmm3	#, MEM[base: _183, index: _194, offset: 2B], tmp2840
	pinsrw	$1, 2(%rdx,%rdi), %xmm1	#, MEM[base: _183, index: _3618, offset: 2B], tmp2822
	pinsrw	$1, 2(%rdx,%rbx), %xmm2	#, MEM[base: _183, index: _190, offset: 2B], tmp2834
	punpckldq	%xmm7, %xmm1	# tmp2828, tmp2843
	punpckldq	%xmm3, %xmm2	# tmp2840, tmp2845
	punpcklqdq	%xmm2, %xmm1	# tmp2845, tmp2847
	pxor	%xmm2, %xmm2	# tmp2850
	pcmpgtw	%xmm1, %xmm2	# tmp2847, tmp2850
	movdqa	%xmm1, %xmm10	# tmp2847, tmp2851
	movdqa	%xmm0, %xmm7	# vect__68.193, tmp2863
	punpcklwd	%xmm2, %xmm10	# tmp2850, tmp2851
	punpckhwd	%xmm2, %xmm1	# tmp2850, tmp2855
	movdqa	%xmm0, %xmm2	# vect__68.193, tmp2861
	pmuludq	%xmm9, %xmm2	# tmp2813, tmp2861
	movdqa	%xmm9, %xmm15	# tmp2813, tmp2864
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	psrad	$15, %xmm5	#, vect__74.196
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	psrlq	$32, %xmm7	#, tmp2863
	psrlq	$32, %xmm15	#, tmp2864
	movaps	%xmm15, (%rsp)	# tmp2864, %sfp
	movdqa	%xmm7, %xmm3	# tmp2863, tmp2862
	movdqa	%xmm5, %xmm13	# vect__74.196, tmp2870
	psrlq	$32, %xmm13	#, tmp2870
	pmuludq	(%rsp), %xmm3	# %sfp, tmp2862
	pshufd	$8, %xmm2, %xmm2	#, tmp2861, tmp2859
	pshufd	$8, %xmm3, %xmm3	#, tmp2862, tmp2860
	movdqa	%xmm10, %xmm8	# tmp2851, tmp2871
	movaps	%xmm7, 48(%rsp)	# tmp2863, %sfp
	punpckldq	%xmm3, %xmm2	# tmp2860, vect__80.198
	psrlq	$32, %xmm8	#, tmp2871
	movdqa	%xmm5, %xmm3	# vect__74.196, tmp2868
	movdqa	%xmm13, %xmm7	# tmp2870, tmp2869
	pmuludq	%xmm8, %xmm7	# tmp2871, tmp2869
	pmuludq	%xmm10, %xmm3	# tmp2851, tmp2868
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	paddd	%xmm14, %xmm6	# tmp5341, vect__67.192
	psrad	$15, %xmm6	#, vect__68.193
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movaps	%xmm13, 80(%rsp)	# tmp2870, %sfp
	pshufd	$8, %xmm7, %xmm7	#, tmp2869, tmp2867
	pshufd	$8, %xmm3, %xmm3	#, tmp2868, tmp2866
	punpckldq	%xmm7, %xmm3	# tmp2867, vect__84.200
	psubd	%xmm3, %xmm2	# vect__84.200, vect__85.201
	movdqa	%xmm11, %xmm3	# tmp2817, tmp2879
	pmuludq	%xmm6, %xmm3	# vect__68.193, tmp2879
	movdqa	%xmm6, %xmm15	# vect__68.193, tmp2881
	movdqa	%xmm11, %xmm13	# tmp2817, tmp2882
	psrlq	$32, %xmm15	#, tmp2881
	psrlq	$32, %xmm13	#, tmp2882
	movaps	%xmm13, 16(%rsp)	# tmp2882, %sfp
	movdqa	%xmm15, %xmm7	# tmp2881, tmp2880
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	paddd	%xmm14, %xmm4	# tmp5341, vect__73.195
	psrad	$15, %xmm4	#, vect__74.196
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	pmuludq	16(%rsp), %xmm7	# %sfp, tmp2880
	pshufd	$8, %xmm3, %xmm3	#, tmp2879, tmp2877
	pshufd	$8, %xmm7, %xmm7	#, tmp2880, tmp2878
	punpckldq	%xmm7, %xmm3	# tmp2878, vect__80.198
	movdqa	%xmm4, %xmm7	# vect__74.196, tmp2888
	movaps	%xmm11, 32(%rsp)	# tmp2817, %sfp
	psrlq	$32, %xmm7	#, tmp2888
	movdqa	%xmm1, %xmm11	# tmp2855, tmp2889
	movaps	%xmm15, 96(%rsp)	# tmp2881, %sfp
	movdqa	%xmm4, %xmm13	# vect__74.196, tmp2886
	psrlq	$32, %xmm11	#, tmp2889
	movdqa	%xmm7, %xmm15	# tmp2888, tmp2887
	pmuludq	%xmm1, %xmm13	# tmp2855, tmp2886
	pmuludq	%xmm11, %xmm15	# tmp2889, tmp2887
	pmuludq	%xmm10, %xmm0	# tmp2851, tmp2903
	paddd	%xmm14, %xmm2	# tmp5341, vect__86.202
	psrad	$15, %xmm2	#, vect__87.203
	pshufd	$8, %xmm13, %xmm13	#, tmp2886, tmp2884
	pshufd	$8, %xmm15, %xmm15	#, tmp2887, tmp2885
	punpckldq	%xmm15, %xmm13	# tmp2885, vect__84.200
	psubd	%xmm13, %xmm3	# vect__84.200, vect__85.201
	paddd	%xmm14, %xmm3	# tmp5341, vect__86.202
	psrad	$15, %xmm3	#, vect__87.203
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movdqa	%xmm2, %xmm13	# vect__87.203, tmp2894
	punpcklwd	%xmm3, %xmm2	# vect__87.203, vect__97.214
	punpckhwd	%xmm3, %xmm13	# vect__87.203, tmp2894
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	pmuludq	%xmm6, %xmm1	# vect__68.193, tmp2921
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movdqa	%xmm2, %xmm3	# vect__97.214, tmp2895
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	pmuludq	%xmm9, %xmm5	# tmp2813, tmp2910
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	punpckhwd	%xmm13, %xmm3	# tmp2894, tmp2895
	punpcklwd	%xmm13, %xmm2	# tmp2894, vect__97.214
	punpcklwd	%xmm3, %xmm2	# tmp2895, vect__97.214
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	pshufd	$8, %xmm0, %xmm0	#, tmp2903, tmp2901
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movdqu	-32(%rcx), %xmm3	# MEM[base: _177, offset: 0B], tmp2897
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	pmuludq	48(%rsp), %xmm8	# %sfp, tmp2904
	pshufd	$8, %xmm8, %xmm8	#, tmp2904, tmp2902
	punpckldq	%xmm8, %xmm0	# tmp2902, vect__88.204
	movdqa	80(%rsp), %xmm8	# %sfp, tmp2911
	pshufd	$8, %xmm5, %xmm5	#, tmp2910, tmp2908
	pshufd	$8, %xmm1, %xmm1	#, tmp2921, tmp2919
	pmuludq	(%rsp), %xmm8	# %sfp, tmp2911
	pmuludq	96(%rsp), %xmm11	# %sfp, tmp2922
	pshufd	$8, %xmm8, %xmm8	#, tmp2911, tmp2909
	pshufd	$8, %xmm11, %xmm11	#, tmp2922, tmp2920
	pmuludq	32(%rsp), %xmm4	# %sfp, tmp2928
	pmuludq	16(%rsp), %xmm7	# %sfp, tmp2929
	pshufd	$8, %xmm4, %xmm4	#, tmp2928, tmp2926
	pshufd	$8, %xmm7, %xmm7	#, tmp2929, tmp2927
	punpckldq	%xmm7, %xmm4	# tmp2927, vect__89.205
	punpckldq	%xmm8, %xmm5	# tmp2909, vect__89.205
	punpckldq	%xmm11, %xmm1	# tmp2920, vect__88.204
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movdqu	-16(%rcx), %xmm15	# MEM[base: _177, offset: 16B], tmp5620
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	paddd	%xmm5, %xmm0	# vect__89.205, vect__90.206
	paddd	%xmm4, %xmm1	# vect__89.205, vect__90.206
	paddd	%xmm14, %xmm0	# tmp5341, vect__91.207
	paddd	%xmm14, %xmm1	# tmp5341, vect__91.207
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	punpckhwd	%xmm15, %xmm3	# tmp5620, tmp2897
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	psrad	$15, %xmm1	#, vect__92.208
	psrad	$15, %xmm0	#, vect__92.208
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movdqa	%xmm3, %xmm13	# tmp2897, tmp2897
	movdqa	%xmm0, %xmm4	# vect__92.208, tmp2936
	movdqu	-32(%rcx), %xmm3	# MEM[base: _177, offset: 0B], vect__96.213
	punpcklwd	%xmm1, %xmm0	# vect__92.208, vect__102.218
	punpckhwd	%xmm1, %xmm4	# vect__92.208, tmp2936
	movdqa	%xmm0, %xmm1	# vect__102.218, tmp2937
	movdqu	-16(%rcx), %xmm7	# MEM[base: _177, offset: 16B], tmp5628
	punpckhwd	%xmm4, %xmm1	# tmp2936, tmp2937
	punpcklwd	%xmm15, %xmm3	# tmp5622, vect__96.213
	punpcklwd	%xmm4, %xmm0	# tmp2936, vect__102.218
	movdqu	-32(%rcx), %xmm4	# MEM[base: _177, offset: 0B], vect__101.217
	movdqa	%xmm3, %xmm15	# vect__96.213, tmp2898
	punpckhwd	%xmm13, %xmm15	# tmp2897, tmp2898
	punpcklwd	%xmm13, %xmm3	# tmp2897, vect__96.213
	punpcklwd	%xmm7, %xmm4	# tmp5628, vect__101.217
	punpcklwd	%xmm15, %xmm3	# tmp2898, vect__96.213
	punpcklwd	%xmm13, %xmm4	# tmp2897, vect__101.217
	punpcklwd	%xmm1, %xmm0	# tmp2937, vect__102.218
	psubw	%xmm2, %xmm3	# vect__97.214, vect__98.215
	punpckhwd	%xmm15, %xmm4	# tmp2898, vect__101.217
	psubw	%xmm0, %xmm4	# vect__102.218, vect__103.219
	movdqa	%xmm3, %xmm1	# vect__98.215, tmp2942
	punpcklwd	%xmm4, %xmm1	# vect__103.219, tmp2942
	punpckhwd	%xmm4, %xmm3	# vect__103.219, tmp2943
	movups	%xmm3, 16(%rax,%r8)	# tmp2943, MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 16B]
	movups	%xmm1, (%rax,%r8)	# tmp2942, MEM[base: Fout2_3600, index: ivtmp.704_4289, offset: 0B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	movdqu	-32(%rcx), %xmm1	# MEM[base: _177, offset: 0B], MEM[base: _177, offset: 0B]
	movdqu	-16(%rcx), %xmm5	# MEM[base: _177, offset: 16B], MEM[base: _177, offset: 16B]
	movdqa	%xmm1, %xmm3	# MEM[base: _177, offset: 0B], vect__106.227
	movdqa	%xmm1, %xmm4	# MEM[base: _177, offset: 0B], tmp2947
	punpcklwd	%xmm5, %xmm3	# MEM[base: _177, offset: 16B], vect__106.227
	punpckhwd	%xmm5, %xmm4	# MEM[base: _177, offset: 16B], tmp2947
	movdqa	%xmm3, %xmm6	# vect__106.227, tmp2948
	punpckhwd	%xmm4, %xmm6	# tmp2947, tmp2948
	punpcklwd	%xmm4, %xmm3	# tmp2947, vect__106.227
	punpcklwd	%xmm5, %xmm1	# MEM[base: _177, offset: 16B], vect__110.230
	punpcklwd	%xmm6, %xmm3	# tmp2948, vect__106.227
	punpcklwd	%xmm4, %xmm1	# tmp2947, vect__110.230
	paddw	%xmm3, %xmm2	# vect__106.227, vect__107.228
	punpckhwd	%xmm6, %xmm1	# tmp2948, vect__110.230
	paddw	%xmm0, %xmm1	# vect__102.218, vect__111.231
	movdqa	%xmm2, %xmm0	# vect__107.228, tmp2954
	punpcklwd	%xmm1, %xmm0	# vect__111.231, tmp2954
	punpckhwd	%xmm1, %xmm2	# vect__111.231, tmp2955
	addq	$32, %r8	#, ivtmp.704
	movups	%xmm0, -32(%rcx)	# tmp2954, MEM[base: _177, offset: 0B]
	movups	%xmm2, -16(%rcx)	# tmp2955, MEM[base: _177, offset: 16B]
	addq	%r12, %rdx	# _2681, ivtmp.712
	cmpq	%rbp, %r8	# _196, ivtmp.704
# SUCC: 74 [83.3% (adjusted)]  count:55581920 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 75 [16.7% (adjusted)]  count:11116384 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L14	#,
# BLOCK 75, count:11116384 (estimated locally) seq:73
# PRED: 74 [16.7% (adjusted)]  count:11116384 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movl	64(%rsp), %ebx	# %sfp, m
	movl	%ebx, %esi	# m, niters_vector_mult_vf.162
	andl	$-8, %esi	#, niters_vector_mult_vf.162
	movl	%esi, %r10d	# niters_vector_mult_vf.162, _2584
	leaq	0(,%r10,4), %rdx	#, _2585
	imulq	%rdi, %r10	# _3597, tmp2956
	movl	%ebx, %r8d	# m, tmp.164
	leaq	(%r11,%rdx), %rcx	#, tmp.163
	subl	%esi, %r8d	# niters_vector_mult_vf.162, tmp.164
	addq	%rax, %rdx	# Fout2, tmp.165
	addq	128(%rsp), %r10	# %sfp, tmp.166
	cmpl	%esi, %ebx	# niters_vector_mult_vf.162, m
# SUCC: 76 [87.5% (guessed)]  count:9726836 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 17 [12.5% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU)
	je	.L1	#,
# BLOCK 76, count:9726836 (estimated locally) seq:74
# PRED: 75 [87.5% (guessed)]  count:9726836 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leal	-1(%r8), %eax	#, tmp2958
# SUCC: 77 [always]  count:9726836 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	4(%rcx,%rax,4), %rsi	#, _169
# BLOCK 77, count:88425796 (estimated locally) seq:75
# PRED: 76 [always]  count:9726836 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 77 [89.0% (guessed)]  count:78698958 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L18:
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movswl	(%rcx), %r8d	# MEM[base: Fout_2507, offset: 0B], MEM[base: Fout_2507, offset: 0B]
# kiss_fft.c:39:         ++Fout2;
	addq	$4, %rdx	#, tmp.165
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movl	%r8d, %eax	# MEM[base: Fout_2507, offset: 0B], tmp2963
	sall	$14, %eax	#, tmp2963
	subl	%r8d, %eax	# MEM[base: Fout_2507, offset: 0B], tmp2964
	addl	$16384, %eax	#, tmp2965
	movswl	2(%rcx), %r8d	# MEM[base: Fout_2507, offset: 2B], MEM[base: Fout_2507, offset: 2B]
	sarl	$15, %eax	#, tmp2966
	movw	%ax, (%rcx)	# tmp2966, MEM[base: Fout_2507, offset: 0B]
	movl	%r8d, %eax	# MEM[base: Fout_2507, offset: 2B], tmp2969
	sall	$14, %eax	#, tmp2969
	subl	%r8d, %eax	# MEM[base: Fout_2507, offset: 2B], tmp2970
	addl	$16384, %eax	#, tmp2971
	sarl	$15, %eax	#, tmp2972
	movw	%ax, 2(%rcx)	# tmp2972, MEM[base: Fout_2507, offset: 2B]
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movswl	-4(%rdx), %eax	# MEM[base: Fout2_2509, offset: 0B], MEM[base: Fout2_2509, offset: 0B]
	movswl	-2(%rdx), %r9d	# MEM[base: Fout2_2509, offset: 2B], MEM[base: Fout2_2509, offset: 2B]
	movl	%eax, %r8d	# MEM[base: Fout2_2509, offset: 0B], tmp2975
	sall	$14, %r8d	#, tmp2975
	subl	%eax, %r8d	# MEM[base: Fout2_2509, offset: 0B], tmp2976
	movl	%r9d, %eax	# MEM[base: Fout2_2509, offset: 2B], tmp2980
	sall	$14, %eax	#, tmp2980
	subl	%r9d, %eax	# MEM[base: Fout2_2509, offset: 2B], tmp2981
	addl	$16384, %r8d	#, tmp2977
	addl	$16384, %eax	#, tmp2982
	sarl	$15, %r8d	#, _2530
	sarl	$15, %eax	#, _2537
	movw	%r8w, -4(%rdx)	# _2530, MEM[base: Fout2_2509, offset: 0B]
	movw	%ax, -2(%rdx)	# _2537, MEM[base: Fout2_2509, offset: 2B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movl	%r8d, %r9d	# _2530, tmp2983
	movl	%eax, %r11d	# _2537, tmp2984
	movswl	(%r10), %ebx	# MEM[base: tw1_2510, offset: 0B], _2541
	movswl	2(%r10), %ebp	# MEM[base: tw1_2510, offset: 2B], _2544
	imull	%ebx, %r9d	# _2541, tmp2983
	imull	%ebp, %r11d	# _2544, tmp2984
	imull	%ebp, %r8d	# _2544, tmp2992
	imull	%ebx, %eax	# _2541, tmp2993
	subl	%r11d, %r9d	# tmp2984, tmp2985
	addl	$16384, %r9d	#, tmp2986
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movzwl	(%rcx), %r11d	# MEM[base: Fout_2507, offset: 0B], tmp2990
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	sarl	$15, %r9d	#, tmp2987
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subl	%r9d, %r11d	# tmp2987, tmp2990
	movw	%r11w, -4(%rdx)	# tmp2990, MEM[base: Fout2_2509, offset: 0B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	leal	16384(%r8,%rax), %eax	#, tmp2995
	sarl	$15, %eax	#, tmp2996
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movzwl	2(%rcx), %r8d	# MEM[base: Fout_2507, offset: 2B], tmp2999
# kiss_fft.c:36:         tw1 += fstride;
	addq	%rdi, %r10	# _3597, tmp.166
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subl	%eax, %r8d	# tmp2996, tmp2999
	movw	%r8w, -2(%rdx)	# tmp2999, MEM[base: Fout2_2509, offset: 2B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addw	%r9w, (%rcx)	# tmp2987, MEM[base: Fout_2507, offset: 0B]
	addw	%ax, 2(%rcx)	# tmp2996, MEM[base: Fout_2507, offset: 2B]
# kiss_fft.c:40:         ++Fout;
	addq	$4, %rcx	#, tmp.163
# kiss_fft.c:41:     }while (--m);
	cmpq	%rcx, %rsi	# tmp.163, _169
# SUCC: 77 [89.0% (guessed)]  count:78698958 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 78 [11.0% (guessed)]  count:9726838 (estimated locally) (FALLTHRU)
	jne	.L18	#,
# BLOCK 78, count:9726838 (estimated locally) seq:76
# PRED: 77 [11.0% (guessed)]  count:9726838 (estimated locally) (FALLTHRU)
# SUCC: 17 [always]  count:9726838 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L1	#
# BLOCK 79, count:13895480 (estimated locally) seq:77
# PRED: 9 [20.0% (guessed)]  count:13895480 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L144:
	leaq	0(,%r15,4), %r8	#, _3678
	leaq	32(%r14), %rax	#, _3660
	movq	%rax, 32(%rsp)	# _3660, %sfp
	movq	%rbp, %rdx	# _210, _3684
	leaq	2(%r14,%r8), %rax	#, tmp3455
	imulq	%r15, %rdx	# k, _3684
	leaq	(%r11,%rax), %rsi	#, _3681
	movq	%rsi, 64(%rsp)	# _3681, %sfp
	movq	(%rsp), %r9	# %sfp, _13
	xorl	%esi, %esi	# tmp3457
	leaq	32(%r11), %rdi	#, _3672
	testq	%rbp, %rbp	# _210
	movq	%rdi, 48(%rsp)	# _3672, %sfp
	movq	%rsi, %rdi	# tmp3457, tmp3456
	leaq	32(%r9), %r10	#, _3664
	cmovs	%rdx, %rdi	# _3684,, tmp3456
	movq	128(%rsp), %r9	# %sfp, tw1
	movl	$2, %eax	#, tmp3459
	addq	%r9, %rdi	# tw1, _3686
	addq	$2, %rdx	#, tmp3458
	movq	%rbx, %rcx	# _212, _3705
	testq	%rbp, %rbp	# _210
	cmovs	%rax, %rdx	# tmp3458,, tmp3459, tmp3458
	imulq	%r15, %rcx	# k, _3705
	addq	%r9, %rdx	# tw1, _3693
	testq	%rbx, %rbx	# _212
	cmovs	%rcx, %rsi	# _3705,, tmp3460
	addq	$2, %rcx	#, tmp3462
	addq	%r9, %rsi	# tw1, _3707
	testq	%rbx, %rbx	# _212
	cmovs	%rax, %rcx	# tmp3462,, tmp3459, tmp3462
	leaq	(%r11,%r14), %r12	#, _3673
	addq	%r9, %rcx	# tw1, _3714
	movq	(%rsp), %r9	# %sfp, _13
	movq	%r9, %rax	# _13, _13
	leaq	2(%r9,%r8), %r9	#, tmp3465
	addq	%r11, %rax	# Fout, _3723
	addq	%r11, %r9	# Fout, _3731
	leaq	2(%r11,%r8), %r8	#, _3772
	testq	%r10, %r10	# _3664
	movq	%r8, 112(%rsp)	# _3772, %sfp
	setle	%r8b	#, tmp3468
	cmpq	%rax, 48(%rsp)	# _3723, %sfp
	movq	%r9, 96(%rsp)	# _3731, %sfp
	setbe	%r9b	#, tmp3470
	orl	%r8d, %r9d	# tmp3468, tmp3471
	cmpq	$6, %r15	#, k
	seta	%r8b	#, tmp3473
	andl	%r8d, %r9d	# tmp3473, tmp3474
	movq	(%rsp), %r8	# %sfp, _13
	cmpq	%r8, 32(%rsp)	# _13, %sfp
	setle	%r8b	#, tmp3476
	cmpq	%r14, %r10	# _148, _3664
	setle	%r10b	#, tmp3478
	orl	%r10d, %r8d	# tmp3478, tmp3479
	andl	%r9d, %r8d	# tmp3474, tmp3480
	cmpq	$0, 32(%rsp)	#, %sfp
	setle	%r10b	#, tmp3482
	cmpq	%r12, 48(%rsp)	# _3673, %sfp
	setbe	%r9b	#, tmp3484
	orl	%r9d, %r10d	# tmp3484, tmp3485
	andl	%r10d, %r8d	# tmp3485, tmp3486
	cmpq	%rdi, 64(%rsp)	# _3686, %sfp
	setb	%r10b	#, tmp3488
	cmpq	%rdx, %r12	# _3693, _3673
	seta	%r9b	#, tmp3490
	orl	%r10d, %r9d	# tmp3488, tmp3491
	andl	%r9d, %r8d	# tmp3491, tmp3486
	cmpq	%rsi, 64(%rsp)	# _3707, %sfp
	movl	%r8d, %r10d	# tmp3486, tmp3492
	setb	%r8b	#, tmp3494
	cmpq	%rcx, %r12	# _3714, _3673
	seta	%r9b	#, tmp3496
	orl	%r8d, %r9d	# tmp3494, tmp3497
	andl	%r10d, %r9d	# tmp3492, tmp3498
	cmpq	96(%rsp), %rdi	# %sfp, _3686
	seta	%r8b	#, tmp3500
	cmpq	%rax, %rdx	# _3723, _3693
	setb	%r10b	#, tmp3502
	orl	%r10d, %r8d	# tmp3502, tmp3503
	andl	%r8d, %r9d	# tmp3503, tmp3504
	cmpq	96(%rsp), %rsi	# %sfp, _3707
	seta	%r10b	#, tmp3506
	cmpq	%rax, %rcx	# _3723, _3714
	setb	%r8b	#, tmp3508
	orl	%r10d, %r8d	# tmp3506, tmp3509
	movq	112(%rsp), %r10	# %sfp, _3772
	andl	%r8d, %r9d	# tmp3509, tmp3510
	cmpq	%r10, %rdi	# _3772, _3686
	seta	%dil	#, tmp3512
	cmpq	%rdx, %r11	# _3693, Fout
	seta	%dl	#, tmp3514
	orl	%edx, %edi	# tmp3514, tmp3515
	testb	%dil, %r9b	# tmp3515, tmp3510
# SUCC: 101 [10.0% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU) 80 [90.0% (guessed)]  count:12505932 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L29	#,
# BLOCK 80, count:12505932 (estimated locally) seq:78
# PRED: 79 [90.0% (guessed)]  count:12505932 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpq	%r10, %rsi	# _3772, _3707
	seta	%dl	#, tmp3518
	cmpq	%rcx, %r11	# _3714, Fout
	seta	%cl	#, tmp3520
	orb	%cl, %dl	# tmp3520, tmp3518
# SUCC: 101 [11.1% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU) 81 [88.9% (guessed)]  count:11116384 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L29	#,
# BLOCK 81, count:11116384 (estimated locally) seq:79
# PRED: 80 [88.9% (guessed)]  count:11116384 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	80(%rsp), %rdi	# %sfp, k
	movq	16(%rsp), %r15	# %sfp, fstride
	leaq	-8(%rdi), %rdx	#, tmp3522
	leaq	0(%rbp,%r15), %rcx	#, tmp3536
	shrq	$3, %rdx	#, tmp3523
	leaq	1(%rdx), %rdi	#, bnd.381
	leaq	0(,%rcx,4), %r9	#, tmp3537
	leaq	(%r15,%r15,2), %rdx	#, tmp3532
	salq	$3, %rcx	#, tmp3545
	movq	%rdi, 256(%rsp)	# bnd.381, %sfp
	movq	%r9, 160(%rsp)	# tmp3537, %sfp
	movq	%r15, %rdi	# fstride, _4250
	leaq	0(,%rdx,4), %r10	#, tmp3533
	leaq	0(,%rdx,8), %r9	#, tmp3541
	salq	$4, %rdx	#, tmp3532
	movq	%rcx, 16(%rsp)	# tmp3545, %sfp
	movq	%rdx, 32(%rsp)	# tmp3532, %sfp
	salq	$5, %rdi	#, _4250
	movd	%r13d, %xmm0	# epi3$i, tmp3527
	movq	%rdi, 264(%rsp)	# _4250, %sfp
	imulq	$28, %r15, %r13	#, fstride, _1281
	movq	%r15, %rdi	# fstride, _4311
	movq	128(%rsp), %r8	# %sfp, tw1
	salq	$6, %rdi	#, _4311
	punpcklwd	%xmm0, %xmm0	# tmp3527, tmp3528
	imulq	$56, %r15, %r15	#, fstride, _1293
	movq	%rdi, 288(%rsp)	# _4311, %sfp
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movq	%r14, 296(%rsp)	# _148, %sfp
	movq	%r11, 304(%rsp)	# Fout, %sfp
	pshufd	$0, %xmm0, %xmm7	#, tmp3528, tmp5787
	movq	%r11, %rdi	# Fout, ivtmp.940
	movdqa	.LC1(%rip), %xmm14	#, tmp5341
	movdqa	.LC2(%rip), %xmm13	#, tmp5342
	movq	16(%rsp), %r11	# %sfp, tmp3545
	movq	32(%rsp), %r14	# %sfp, tmp3549
	movq	%r13, 144(%rsp)	# _1281, %sfp
	movaps	%xmm7, 272(%rsp)	# tmp5787, %sfp
	movq	%r8, %rsi	# tw1, ivtmp.946
# kiss_fft.c:117:          tw2 += fstride*2;
	movq	%r8, %rcx	# tw1, ivtmp.949
	xorl	%edx, %edx	# ivtmp.932
# SUCC: 82 [always]  count:11116384 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	xorl	%r13d, %r13d	# ivtmp.930
# BLOCK 82, count:66698304 (estimated locally) seq:80
# PRED: 81 [always]  count:11116384 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 82 [83.3% (adjusted)]  count:55581920 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L30:
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movdqu	(%rdi), %xmm3	# MEM[base: _1265, offset: 0B], MEM[base: _1265, offset: 0B]
	movdqu	16(%rdi), %xmm2	# MEM[base: _1265, offset: 16B], MEM[base: _1265, offset: 16B]
	movdqa	%xmm3, %xmm1	# MEM[base: _1265, offset: 0B], tmp3554
	pmullw	%xmm13, %xmm1	# tmp5342, tmp3554
	pmulhw	%xmm13, %xmm3	# tmp5342, tmp3555
	incq	%r13	# ivtmp.930
	addq	$32, %rdi	#, ivtmp.940
	movdqa	%xmm1, %xmm0	# tmp3554, tmp3556
	punpcklwd	%xmm3, %xmm0	# tmp3555, tmp3556
	punpckhwd	%xmm3, %xmm1	# tmp3555, tmp3564
	paddd	%xmm14, %xmm0	# tmp5341, vect__125.412
	paddd	%xmm14, %xmm1	# tmp5341, vect__125.412
	psrad	$15, %xmm1	#, vect__126.413
	psrad	$15, %xmm0	#, vect__126.413
	movdqa	%xmm0, %xmm3	# vect__126.413, tmp3569
	punpcklwd	%xmm1, %xmm0	# vect__126.413, vect__127.414
	punpckhwd	%xmm1, %xmm3	# vect__126.413, tmp3569
	movdqa	%xmm0, %xmm1	# vect__127.414, tmp3570
	punpckhwd	%xmm3, %xmm1	# tmp3569, tmp3570
	punpcklwd	%xmm3, %xmm0	# tmp3569, vect__127.414
	punpcklwd	%xmm1, %xmm0	# tmp3570, vect__127.414
	movdqa	%xmm2, %xmm1	# MEM[base: _1265, offset: 16B], tmp3573
	pmullw	%xmm13, %xmm1	# tmp5342, tmp3573
	pmulhw	%xmm13, %xmm2	# tmp5342, tmp3574
	movups	%xmm0, -32(%rdi)	# vect__127.414, MEM[base: _1265, offset: 0B]
	movdqa	%xmm1, %xmm0	# tmp3573, tmp3575
	punpcklwd	%xmm2, %xmm0	# tmp3574, tmp3575
	punpckhwd	%xmm2, %xmm1	# tmp3574, tmp3583
	paddd	%xmm14, %xmm0	# tmp5341, vect__125.412
	paddd	%xmm14, %xmm1	# tmp5341, vect__125.412
	psrad	$15, %xmm1	#, vect__126.413
	psrad	$15, %xmm0	#, vect__126.413
	movdqa	%xmm0, %xmm2	# vect__126.413, tmp3588
	punpcklwd	%xmm1, %xmm0	# vect__126.413, vect__127.414
	punpckhwd	%xmm1, %xmm2	# vect__126.413, tmp3588
	movdqa	%xmm0, %xmm1	# vect__127.414, tmp3589
	punpckhwd	%xmm2, %xmm1	# tmp3588, tmp3589
	punpcklwd	%xmm2, %xmm0	# tmp3588, vect__127.414
	punpcklwd	%xmm1, %xmm0	# tmp3589, vect__127.414
	movups	%xmm0, -16(%rdi)	# vect__127.414, MEM[base: _1265, offset: 16B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movdqu	(%rax,%rdx), %xmm3	# MEM[base: _3723, index: ivtmp.932_1257, offset: 0B], MEM[base: _3723, index: ivtmp.932_1257, offset: 0B]
	movdqu	16(%rax,%rdx), %xmm2	# MEM[base: _3723, index: ivtmp.932_1257, offset: 16B], MEM[base: _3723, index: ivtmp.932_1257, offset: 16B]
	movdqa	%xmm3, %xmm1	# MEM[base: _3723, index: ivtmp.932_1257, offset: 0B], tmp3594
	pmullw	%xmm13, %xmm1	# tmp5342, tmp3594
	pmulhw	%xmm13, %xmm3	# tmp5342, tmp3595
	movdqa	%xmm1, %xmm0	# tmp3594, tmp3596
	punpcklwd	%xmm3, %xmm0	# tmp3595, tmp3596
	punpckhwd	%xmm3, %xmm1	# tmp3595, tmp3604
	paddd	%xmm14, %xmm0	# tmp5341, vect__139.402
	paddd	%xmm14, %xmm1	# tmp5341, vect__139.402
	psrad	$15, %xmm1	#, vect__140.403
	psrad	$15, %xmm0	#, vect__140.403
	movdqa	%xmm0, %xmm3	# vect__140.403, tmp3609
	punpcklwd	%xmm1, %xmm0	# vect__140.403, vect__141.404
	punpckhwd	%xmm1, %xmm3	# vect__140.403, tmp3609
	movdqa	%xmm0, %xmm1	# vect__141.404, tmp3610
	punpckhwd	%xmm3, %xmm1	# tmp3609, tmp3610
	punpcklwd	%xmm3, %xmm0	# tmp3609, vect__141.404
	punpcklwd	%xmm1, %xmm0	# tmp3610, vect__141.404
	movdqa	%xmm2, %xmm1	# MEM[base: _3723, index: ivtmp.932_1257, offset: 16B], tmp3613
	pmullw	%xmm13, %xmm1	# tmp5342, tmp3613
	pmulhw	%xmm13, %xmm2	# tmp5342, tmp3614
	movups	%xmm0, (%rax,%rdx)	# vect__141.404, MEM[base: _3723, index: ivtmp.932_1257, offset: 0B]
	movdqa	%xmm1, %xmm0	# tmp3613, tmp3615
	punpcklwd	%xmm2, %xmm0	# tmp3614, tmp3615
	punpckhwd	%xmm2, %xmm1	# tmp3614, tmp3623
	paddd	%xmm14, %xmm0	# tmp5341, vect__139.402
	paddd	%xmm14, %xmm1	# tmp5341, vect__139.402
	psrad	$15, %xmm1	#, vect__140.403
	psrad	$15, %xmm0	#, vect__140.403
	movdqa	%xmm0, %xmm2	# vect__140.403, tmp3628
	punpcklwd	%xmm1, %xmm0	# vect__140.403, vect__141.404
	punpckhwd	%xmm1, %xmm2	# vect__140.403, tmp3628
	movdqa	%xmm0, %xmm1	# vect__141.404, tmp3629
	punpckhwd	%xmm2, %xmm1	# tmp3628, tmp3629
	punpcklwd	%xmm2, %xmm0	# tmp3628, vect__141.404
	punpcklwd	%xmm1, %xmm0	# tmp3629, vect__141.404
	movups	%xmm0, 16(%rax,%rdx)	# vect__141.404, MEM[base: _3723, index: ivtmp.932_1257, offset: 16B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movdqu	(%r12,%rdx), %xmm3	# MEM[base: _3673, index: ivtmp.932_1257, offset: 0B], MEM[base: _3673, index: ivtmp.932_1257, offset: 0B]
	movdqu	16(%r12,%rdx), %xmm2	# MEM[base: _3673, index: ivtmp.932_1257, offset: 16B], MEM[base: _3673, index: ivtmp.932_1257, offset: 16B]
	movdqa	%xmm3, %xmm0	# MEM[base: _3673, index: ivtmp.932_1257, offset: 0B], vect_perm_even_4224
	punpcklwd	%xmm2, %xmm0	# MEM[base: _3673, index: ivtmp.932_1257, offset: 16B], vect_perm_even_4224
	movdqa	%xmm3, %xmm4	# MEM[base: _3673, index: ivtmp.932_1257, offset: 0B], tmp3632
	punpckhwd	%xmm2, %xmm4	# MEM[base: _3673, index: ivtmp.932_1257, offset: 16B], tmp3632
	movdqa	%xmm0, %xmm5	# vect_perm_even_4224, tmp3633
	punpckhwd	%xmm4, %xmm5	# tmp3632, tmp3633
	punpcklwd	%xmm4, %xmm0	# tmp3632, vect_perm_even_4224
	movdqa	%xmm3, %xmm1	# MEM[base: _3673, index: ivtmp.932_1257, offset: 0B], vect_perm_odd_4225
	punpcklwd	%xmm5, %xmm0	# tmp3633, vect_perm_even_4224
	punpcklwd	%xmm2, %xmm1	# MEM[base: _3673, index: ivtmp.932_1257, offset: 16B], vect_perm_odd_4225
	punpcklwd	%xmm4, %xmm1	# tmp3632, vect_perm_odd_4225
	movdqa	%xmm0, %xmm4	# vect_perm_even_4224, tmp3638
	pmullw	%xmm13, %xmm4	# tmp5342, tmp3638
	pmulhw	%xmm13, %xmm0	# tmp5342, tmp3639
	punpckhwd	%xmm5, %xmm1	# tmp3633, vect_perm_odd_4225
	movdqa	%xmm4, %xmm5	# tmp3638, tmp3640
	punpcklwd	%xmm0, %xmm5	# tmp3639, tmp3640
	punpckhwd	%xmm0, %xmm4	# tmp3639, tmp3647
	movdqa	%xmm1, %xmm0	# vect_perm_odd_4225, tmp3652
	pmullw	%xmm13, %xmm0	# tmp5342, tmp3652
	pmulhw	%xmm13, %xmm1	# tmp5342, tmp3653
	paddd	%xmm14, %xmm4	# tmp5341, vect__153.422
	psrad	$15, %xmm4	#, vect__153.422
	movdqa	%xmm4, %xmm9	# vect__153.422, vect__154.423
	movdqa	%xmm0, %xmm4	# tmp3652, tmp3654
	punpcklwd	%xmm1, %xmm4	# tmp3653, tmp3654
	punpckhwd	%xmm1, %xmm0	# tmp3653, tmp3661
	movdqa	%xmm3, %xmm1	# MEM[base: _3673, index: ivtmp.932_1257, offset: 0B], tmp3666
	pmullw	%xmm13, %xmm1	# tmp5342, tmp3666
	pmulhw	%xmm13, %xmm3	# tmp5342, tmp3667
	paddd	%xmm14, %xmm0	# tmp5341, vect__159.425
	psrad	$15, %xmm0	#, vect__159.425
	movdqa	%xmm0, %xmm11	# vect__159.425, vect__160.426
	movdqa	%xmm1, %xmm0	# tmp3666, tmp3668
	punpcklwd	%xmm3, %xmm0	# tmp3667, tmp3668
	punpckhwd	%xmm3, %xmm1	# tmp3667, tmp3676
	paddd	%xmm14, %xmm0	# tmp5341, vect__153.392
	paddd	%xmm14, %xmm1	# tmp5341, vect__153.392
	psrad	$15, %xmm1	#, vect__154.393
	psrad	$15, %xmm0	#, vect__154.393
	movdqa	%xmm0, %xmm3	# vect__154.393, tmp3681
	punpcklwd	%xmm1, %xmm0	# vect__154.393, vect__155.394
	punpckhwd	%xmm1, %xmm3	# vect__154.393, tmp3681
	movdqa	%xmm0, %xmm1	# vect__155.394, tmp3682
	punpckhwd	%xmm3, %xmm1	# tmp3681, tmp3682
	punpcklwd	%xmm3, %xmm0	# tmp3681, vect__155.394
	punpcklwd	%xmm1, %xmm0	# tmp3682, vect__155.394
	movdqa	%xmm2, %xmm1	# MEM[base: _3673, index: ivtmp.932_1257, offset: 16B], tmp3685
	pmullw	%xmm13, %xmm1	# tmp5342, tmp3685
	pmulhw	%xmm13, %xmm2	# tmp5342, tmp3686
	movups	%xmm0, (%r12,%rdx)	# vect__155.394, MEM[base: _3673, index: ivtmp.932_1257, offset: 0B]
	paddd	%xmm14, %xmm4	# tmp5341, vect__159.425
	psrad	$15, %xmm4	#, vect__159.425
	movdqa	%xmm1, %xmm0	# tmp3685, tmp3687
	punpcklwd	%xmm2, %xmm0	# tmp3686, tmp3687
	punpckhwd	%xmm2, %xmm1	# tmp3686, tmp3695
	paddd	%xmm14, %xmm0	# tmp5341, vect__153.392
	paddd	%xmm14, %xmm1	# tmp5341, vect__153.392
	psrad	$15, %xmm1	#, vect__154.393
	psrad	$15, %xmm0	#, vect__154.393
	movdqa	%xmm0, %xmm2	# vect__154.393, tmp3700
	punpcklwd	%xmm1, %xmm0	# vect__154.393, vect__155.394
	punpckhwd	%xmm1, %xmm2	# vect__154.393, tmp3700
	movdqa	%xmm0, %xmm1	# vect__155.394, tmp3701
	punpckhwd	%xmm2, %xmm1	# tmp3700, tmp3701
	punpcklwd	%xmm2, %xmm0	# tmp3700, vect__155.394
	punpcklwd	%xmm1, %xmm0	# tmp3701, vect__155.394
	movups	%xmm0, 16(%r12,%rdx)	# vect__155.394, MEM[base: _3673, index: ivtmp.932_1257, offset: 16B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movdqu	(%rax,%rdx), %xmm3	# MEM[base: _3723, index: ivtmp.932_1257, offset: 0B], MEM[base: _3723, index: ivtmp.932_1257, offset: 0B]
	movdqu	16(%rax,%rdx), %xmm1	# MEM[base: _3723, index: ivtmp.932_1257, offset: 16B], MEM[base: _3723, index: ivtmp.932_1257, offset: 16B]
	movzwl	(%rsi), %r8d	# MEM[base: _1270, offset: 0B], MEM[base: _1270, offset: 0B]
	movdqa	%xmm3, %xmm0	# MEM[base: _3723, index: ivtmp.932_1257, offset: 0B], tmp3704
	movdqa	%xmm3, %xmm15	# MEM[base: _3723, index: ivtmp.932_1257, offset: 0B], vect_perm_even_4248
	punpckhwd	%xmm1, %xmm0	# MEM[base: _3723, index: ivtmp.932_1257, offset: 16B], tmp3704
	punpcklwd	%xmm1, %xmm15	# MEM[base: _3723, index: ivtmp.932_1257, offset: 16B], vect_perm_even_4248
	punpcklwd	%xmm1, %xmm3	# MEM[base: _3723, index: ivtmp.932_1257, offset: 16B], vect_perm_odd_4249
	movd	%r8d, %xmm1	# MEM[base: _1270, offset: 0B], tmp3711
	movzwl	(%rsi,%rbp,2), %r8d	# MEM[base: _1270, index: _210, step: 2, offset: 0B], MEM[base: _1270, index: _210, step: 2, offset: 0B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movaps	%xmm4, 16(%rsp)	# vect__159.425, %sfp
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movd	%r8d, %xmm4	# MEM[base: _1270, index: _210, step: 2, offset: 0B], tmp3717
	movzwl	(%rsi,%rbp,4), %r8d	# MEM[base: _1270, index: _210, step: 4, offset: 0B], MEM[base: _1270, index: _210, step: 4, offset: 0B]
	movdqa	%xmm15, %xmm2	# vect_perm_even_4248, tmp3705
	punpckhwd	%xmm0, %xmm2	# tmp3704, tmp3705
	punpcklwd	%xmm0, %xmm15	# tmp3704, vect_perm_even_4248
	punpcklwd	%xmm0, %xmm3	# tmp3704, vect_perm_odd_4249
	movd	%r8d, %xmm0	# MEM[base: _1270, index: _210, step: 4, offset: 0B], tmp3723
	movq	160(%rsp), %r8	# %sfp, tmp3537
	punpcklwd	%xmm2, %xmm15	# tmp3705, vect_perm_even_4248
	pinsrw	$1, (%rsi,%r8), %xmm0	#, MEM[base: _1270, index: _1277, offset: 0B], tmp3724
	movzwl	(%rsi,%r9), %r8d	# MEM[base: _1270, index: _1279, offset: 0B], MEM[base: _1270, index: _1279, offset: 0B]
	punpckhwd	%xmm2, %xmm3	# tmp3705, vect_perm_odd_4249
	movd	%r8d, %xmm2	# MEM[base: _1270, index: _1279, offset: 0B], tmp3729
	movq	144(%rsp), %r8	# %sfp, _1281
	pinsrw	$1, (%rsi,%r10), %xmm4	#, MEM[base: _1270, index: _1274, offset: 0B], tmp3718
	pinsrw	$1, (%rsi,%r8), %xmm2	#, MEM[base: _1270, index: _1281, offset: 0B], tmp3730
	pinsrw	$1, (%rsi,%rbp), %xmm1	#, MEM[base: _1270, index: _210, offset: 0B], tmp3712
	movzwl	2(%rsi), %r8d	# MEM[base: _1270, offset: 2B], MEM[base: _1270, offset: 2B]
	punpckldq	%xmm4, %xmm1	# tmp3718, tmp3733
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	paddd	%xmm14, %xmm5	# tmp5341, vect__153.422
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movd	%r8d, %xmm4	# MEM[base: _1270, offset: 2B], tmp3741
	movzwl	2(%rsi,%rbp,2), %r8d	# MEM[base: _1270, index: _210, step: 2, offset: 2B], MEM[base: _1270, index: _210, step: 2, offset: 2B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	psrad	$15, %xmm5	#, vect__153.422
	movdqa	%xmm5, %xmm10	# vect__153.422, vect__154.423
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movd	%r8d, %xmm5	# MEM[base: _1270, index: _210, step: 2, offset: 2B], tmp3747
	movzwl	2(%rsi,%rbp,4), %r8d	# MEM[base: _1270, index: _210, step: 4, offset: 2B], MEM[base: _1270, index: _210, step: 4, offset: 2B]
	punpckldq	%xmm2, %xmm0	# tmp3730, tmp3735
	punpcklqdq	%xmm0, %xmm1	# tmp3735, tmp3737
	movd	%r8d, %xmm0	# MEM[base: _1270, index: _210, step: 4, offset: 2B], tmp3753
	movq	160(%rsp), %r8	# %sfp, tmp3537
	pinsrw	$1, 2(%rsi,%r10), %xmm5	#, MEM[base: _1270, index: _1274, offset: 2B], tmp3748
	pinsrw	$1, 2(%rbp,%rsi), %xmm4	#, MEM[base: _1270, index: _210, offset: 2B], tmp3742
	pinsrw	$1, 2(%rsi,%r8), %xmm0	#, MEM[base: _1270, index: _1277, offset: 2B], tmp3754
	movzwl	2(%rsi,%r9), %r8d	# MEM[base: _1270, index: _1279, offset: 2B], MEM[base: _1270, index: _1279, offset: 2B]
	punpckldq	%xmm5, %xmm4	# tmp3748, tmp3763
	movd	%r8d, %xmm2	# MEM[base: _1270, index: _1279, offset: 2B], tmp3759
	movq	144(%rsp), %r8	# %sfp, _1281
	movdqa	%xmm15, %xmm7	# vect_perm_even_4248, tmp3846
	pinsrw	$1, 2(%rsi,%r8), %xmm2	#, MEM[base: _1270, index: _1281, offset: 2B], tmp3760
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movzwl	(%rcx), %r8d	# MEM[base: _1282, offset: 0B], MEM[base: _1282, offset: 0B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	punpckldq	%xmm2, %xmm0	# tmp3760, tmp3765
	punpcklqdq	%xmm0, %xmm4	# tmp3765, tmp3767
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movd	%r8d, %xmm0	# MEM[base: _1282, offset: 0B], tmp3771
	movzwl	(%rcx,%rbx,2), %r8d	# MEM[base: _1282, index: _212, step: 2, offset: 0B], MEM[base: _1282, index: _212, step: 2, offset: 0B]
	pinsrw	$1, (%rcx,%rbx), %xmm0	#, MEM[base: _1282, index: _212, offset: 0B], tmp3772
	movd	%r8d, %xmm6	# MEM[base: _1282, index: _212, step: 2, offset: 0B], tmp3777
	movzwl	(%rcx,%rbx,4), %r8d	# MEM[base: _1282, index: _212, step: 4, offset: 0B], MEM[base: _1282, index: _212, step: 4, offset: 0B]
	pinsrw	$1, (%rcx,%r9), %xmm6	#, MEM[base: _1282, index: _1279, offset: 0B], tmp3778
	movd	%r8d, %xmm2	# MEM[base: _1282, index: _212, step: 4, offset: 0B], tmp3783
	movzwl	(%rcx,%r14), %r8d	# MEM[base: _1282, index: _1291, offset: 0B], MEM[base: _1282, index: _1291, offset: 0B]
	pinsrw	$1, (%rcx,%r11), %xmm2	#, MEM[base: _1282, index: _1289, offset: 0B], tmp3784
	movd	%r8d, %xmm5	# MEM[base: _1282, index: _1291, offset: 0B], tmp3789
	pinsrw	$1, (%rcx,%r15), %xmm5	#, MEM[base: _1282, index: _1293, offset: 0B], tmp3790
	punpckldq	%xmm6, %xmm0	# tmp3778, tmp3793
	punpckldq	%xmm5, %xmm2	# tmp3790, tmp3795
	punpcklqdq	%xmm2, %xmm0	# tmp3795, tmp3797
	pxor	%xmm2, %xmm2	# tmp3800
	pcmpgtw	%xmm0, %xmm2	# tmp3797, tmp3800
	movzwl	2(%rcx), %r8d	# MEM[base: _1282, offset: 2B], MEM[base: _1282, offset: 2B]
	movdqa	%xmm0, %xmm6	# tmp3797, tmp3801
	movdqa	%xmm0, %xmm12	# tmp3797, tmp3805
	movd	%r8d, %xmm0	# MEM[base: _1282, offset: 2B], tmp3809
	movzwl	2(%rcx,%rbx,2), %r8d	# MEM[base: _1282, index: _212, step: 2, offset: 2B], MEM[base: _1282, index: _212, step: 2, offset: 2B]
	punpcklwd	%xmm2, %xmm6	# tmp3800, tmp3801
	movaps	%xmm6, 32(%rsp)	# tmp3801, %sfp
	movd	%r8d, %xmm6	# MEM[base: _1282, index: _212, step: 2, offset: 2B], tmp3815
	movzwl	2(%rcx,%rbx,4), %r8d	# MEM[base: _1282, index: _212, step: 4, offset: 2B], MEM[base: _1282, index: _212, step: 4, offset: 2B]
	punpckhwd	%xmm2, %xmm12	# tmp3800, tmp3805
	movd	%r8d, %xmm2	# MEM[base: _1282, index: _212, step: 4, offset: 2B], tmp3821
	movzwl	2(%rcx,%r14), %r8d	# MEM[base: _1282, index: _1291, offset: 2B], MEM[base: _1282, index: _1291, offset: 2B]
	pinsrw	$1, 2(%rcx,%r9), %xmm6	#, MEM[base: _1282, index: _1279, offset: 2B], tmp3816
	movd	%r8d, %xmm5	# MEM[base: _1282, index: _1291, offset: 2B], tmp3827
	pinsrw	$1, 2(%rcx,%r15), %xmm5	#, MEM[base: _1282, index: _1293, offset: 2B], tmp3828
	pinsrw	$1, 2(%rbx,%rcx), %xmm0	#, MEM[base: _1282, index: _212, offset: 2B], tmp3810
	pinsrw	$1, 2(%rcx,%r11), %xmm2	#, MEM[base: _1282, index: _1289, offset: 2B], tmp3822
	punpckldq	%xmm6, %xmm0	# tmp3816, tmp3831
	punpckldq	%xmm5, %xmm2	# tmp3828, tmp3833
	punpcklqdq	%xmm2, %xmm0	# tmp3833, tmp3835
	pxor	%xmm2, %xmm2	# tmp3838
	pcmpgtw	%xmm0, %xmm2	# tmp3835, tmp3838
	movdqa	%xmm0, %xmm5	# tmp3835, tmp3843
	movdqa	%xmm0, %xmm8	# tmp3835, tmp3839
	punpckhwd	%xmm2, %xmm5	# tmp3838, tmp3843
	punpcklwd	%xmm2, %xmm8	# tmp3838, tmp3839
	movaps	%xmm5, 64(%rsp)	# tmp3843, %sfp
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movdqa	%xmm15, %xmm2	# vect_perm_even_4248, tmp3845
	movdqa	%xmm3, %xmm5	# vect_perm_odd_4249, tmp3849
	pmullw	%xmm1, %xmm2	# tmp3737, tmp3845
	pmullw	%xmm4, %xmm5	# tmp3767, tmp3849
	movdqa	%xmm3, %xmm6	# vect_perm_odd_4249, tmp3850
	pmulhw	%xmm1, %xmm7	# tmp3737, tmp3846
	pmulhw	%xmm4, %xmm6	# tmp3767, tmp3850
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm8, 48(%rsp)	# tmp3839, %sfp
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movdqa	%xmm2, %xmm0	# tmp3845, tmp3847
	movdqa	%xmm5, %xmm8	# tmp3849, tmp3851
	punpcklwd	%xmm7, %xmm0	# tmp3846, tmp3847
	punpcklwd	%xmm6, %xmm8	# tmp3850, tmp3851
	punpckhwd	%xmm6, %xmm5	# tmp3850, tmp3863
	punpckhwd	%xmm7, %xmm2	# tmp3846, tmp3859
	psubd	%xmm8, %xmm0	# tmp3851, vect__173.433
	psubd	%xmm5, %xmm2	# tmp3863, vect__173.433
	paddd	%xmm14, %xmm0	# tmp5341, vect__174.434
	paddd	%xmm14, %xmm2	# tmp5341, vect__174.434
	psrad	$15, %xmm2	#, vect__175.435
	psrad	$15, %xmm0	#, vect__175.435
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movdqa	%xmm0, %xmm5	# vect__175.435, tmp3868
	punpcklwd	%xmm2, %xmm0	# vect__175.435, vect__198.453
	punpckhwd	%xmm2, %xmm5	# vect__175.435, tmp3868
	movdqa	%xmm0, %xmm2	# vect__198.453, tmp3869
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movdqa	32(%rsp), %xmm6	# %sfp, tmp3801
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	punpckhwd	%xmm5, %xmm2	# tmp3868, tmp3869
	punpcklwd	%xmm5, %xmm0	# tmp3868, vect__198.453
	punpcklwd	%xmm2, %xmm0	# tmp3869, vect__198.453
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movdqa	%xmm10, %xmm2	# vect__154.423, tmp3873
	pmuludq	%xmm6, %xmm2	# tmp3801, tmp3873
	movdqa	%xmm10, %xmm7	# vect__154.423, tmp3875
	psrlq	$32, %xmm7	#, tmp3875
	psrlq	$32, %xmm6	#, tmp3876
	movaps	%xmm6, 96(%rsp)	# tmp3876, %sfp
	movaps	%xmm7, 208(%rsp)	# tmp3875, %sfp
	movdqa	%xmm7, %xmm5	# tmp3875, tmp3874
	movdqa	16(%rsp), %xmm7	# %sfp, vect__160.426
	movdqa	48(%rsp), %xmm8	# %sfp, tmp3839
	pmuludq	96(%rsp), %xmm5	# %sfp, tmp3874
	pshufd	$8, %xmm2, %xmm2	#, tmp3873, tmp3871
	pshufd	$8, %xmm5, %xmm5	#, tmp3874, tmp3872
	punpckldq	%xmm5, %xmm2	# tmp3872, vect__185.442
	movdqa	%xmm7, %xmm5	# vect__160.426, tmp3880
	psrlq	$32, %xmm7	#, tmp3882
	pmuludq	%xmm8, %xmm5	# tmp3839, tmp3880
	movdqa	%xmm7, %xmm6	# tmp3882, tmp3881
	psrlq	$32, %xmm8	#, tmp3883
	pmuludq	%xmm8, %xmm6	# tmp3883, tmp3881
	movaps	%xmm9, 192(%rsp)	# vect__154.423, %sfp
	pshufd	$8, %xmm5, %xmm5	#, tmp3880, tmp3878
	movaps	%xmm7, 224(%rsp)	# tmp3882, %sfp
	movaps	%xmm10, 176(%rsp)	# vect__154.423, %sfp
	pshufd	$8, %xmm6, %xmm6	#, tmp3881, tmp3879
	punpckldq	%xmm6, %xmm5	# tmp3879, vect__189.444
	psubd	%xmm5, %xmm2	# vect__189.444, vect__190.445
	movdqa	%xmm9, %xmm5	# vect__154.423, tmp3891
	psrlq	$32, %xmm9	#, tmp3893
	movdqa	%xmm9, %xmm7	# tmp3893, tmp3893
	movdqa	%xmm12, %xmm9	# tmp3805, tmp3894
	psrlq	$32, %xmm9	#, tmp3894
	movdqa	%xmm9, %xmm6	# tmp3894, tmp3892
	pmuludq	%xmm12, %xmm5	# tmp3805, tmp3891
	pmuludq	%xmm7, %xmm6	# tmp3893, tmp3892
	movaps	%xmm9, 240(%rsp)	# tmp3894, %sfp
	movdqa	64(%rsp), %xmm10	# %sfp, tmp3843
	paddd	%xmm14, %xmm2	# tmp5341, vect__191.446
	movdqa	%xmm10, %xmm9	# tmp3843, tmp3898
	psrlq	$32, %xmm10	#, tmp3901
	movaps	%xmm10, 112(%rsp)	# tmp3901, %sfp
	pshufd	$8, %xmm6, %xmm6	#, tmp3892, tmp3890
	pshufd	$8, %xmm5, %xmm5	#, tmp3891, tmp3889
	movdqa	112(%rsp), %xmm10	# %sfp, tmp3899
	punpckldq	%xmm6, %xmm5	# tmp3890, vect__185.442
	movdqa	%xmm11, %xmm6	# vect__160.426, tmp3900
	psrlq	$32, %xmm6	#, tmp3900
	pmuludq	%xmm6, %xmm10	# tmp3900, tmp3899
	pmuludq	%xmm11, %xmm9	# vect__160.426, tmp3898
	psrad	$15, %xmm2	#, vect__192.447
	pmuludq	208(%rsp), %xmm8	# %sfp, tmp3938
	pshufd	$8, %xmm8, %xmm8	#, tmp3938, tmp3936
	pshufd	$8, %xmm10, %xmm10	#, tmp3899, tmp3897
	pshufd	$8, %xmm9, %xmm9	#, tmp3898, tmp3896
	punpckldq	%xmm10, %xmm9	# tmp3897, vect__189.444
	psubd	%xmm9, %xmm5	# vect__189.444, vect__190.445
	paddd	%xmm14, %xmm5	# tmp5341, vect__191.446
	psrad	$15, %xmm5	#, vect__192.447
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movdqa	%xmm2, %xmm9	# vect__192.447, tmp3906
	punpcklwd	%xmm5, %xmm2	# vect__192.447, vect__199.454
	punpckhwd	%xmm5, %xmm9	# vect__192.447, tmp3906
	movdqa	%xmm2, %xmm5	# vect__199.454, tmp3907
	punpckhwd	%xmm9, %xmm5	# tmp3906, tmp3907
	punpcklwd	%xmm9, %xmm2	# tmp3906, vect__199.454
	punpcklwd	%xmm5, %xmm2	# tmp3907, vect__199.454
	movdqa	%xmm0, %xmm5	# vect__198.453, vect__200.455
	paddw	%xmm2, %xmm5	# vect__199.454, vect__200.455
	movdqa	%xmm5, %xmm10	# vect__200.455, vect__200.455
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movdqa	%xmm15, %xmm5	# vect_perm_even_4248, tmp3909
	pmullw	%xmm4, %xmm5	# tmp3767, tmp3909
	pmulhw	%xmm15, %xmm4	# vect_perm_even_4248, tmp3910
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	pmuludq	112(%rsp), %xmm7	# %sfp, tmp3956
	pshufd	$8, %xmm7, %xmm7	#, tmp3956, tmp3954
	pmuludq	240(%rsp), %xmm6	# %sfp, tmp3963
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movdqa	%xmm5, %xmm9	# tmp3909, tmp3909
	movdqa	%xmm5, %xmm15	# tmp3909, tmp3911
	movdqa	%xmm3, %xmm5	# vect_perm_odd_4249, tmp3913
	pmullw	%xmm1, %xmm5	# tmp3737, tmp3913
	pmulhw	%xmm1, %xmm3	# tmp3737, tmp3914
	punpcklwd	%xmm4, %xmm15	# tmp3910, tmp3911
	punpckhwd	%xmm4, %xmm9	# tmp3910, tmp3923
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	pshufd	$8, %xmm6, %xmm6	#, tmp3963, tmp3961
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movdqa	%xmm5, %xmm1	# tmp3913, tmp3915
	punpcklwd	%xmm3, %xmm1	# tmp3914, tmp3915
	punpckhwd	%xmm3, %xmm5	# tmp3914, tmp3927
	paddd	%xmm5, %xmm9	# tmp3927, vect__178.438
	paddd	%xmm15, %xmm1	# tmp3911, vect__178.438
	paddd	%xmm14, %xmm1	# tmp5341, vect__179.439
	paddd	%xmm14, %xmm9	# tmp5341, vect__179.439
	psrad	$15, %xmm9	#, vect__180.440
	psrad	$15, %xmm1	#, vect__180.440
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movdqa	%xmm1, %xmm3	# vect__180.440, tmp3932
	punpcklwd	%xmm9, %xmm1	# vect__180.440, vect__202.457
	punpckhwd	%xmm9, %xmm3	# vect__180.440, tmp3932
	movdqa	%xmm1, %xmm4	# vect__202.457, tmp3933
	punpckhwd	%xmm3, %xmm4	# tmp3932, tmp3933
	punpcklwd	%xmm3, %xmm1	# tmp3932, vect__202.457
	punpcklwd	%xmm4, %xmm1	# tmp3933, vect__202.457
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movdqa	224(%rsp), %xmm5	# %sfp, tmp3945
	movdqa	16(%rsp), %xmm4	# %sfp, tmp3944
	movdqa	176(%rsp), %xmm3	# %sfp, tmp3937
	pmuludq	32(%rsp), %xmm4	# %sfp, tmp3944
	pmuludq	96(%rsp), %xmm5	# %sfp, tmp3945
	pshufd	$8, %xmm4, %xmm4	#, tmp3944, tmp3942
	pshufd	$8, %xmm5, %xmm5	#, tmp3945, tmp3943
	punpckldq	%xmm5, %xmm4	# tmp3943, vect__194.449
	pmuludq	48(%rsp), %xmm3	# %sfp, tmp3937
	movdqa	%xmm11, %xmm5	# vect__160.426, tmp3962
	pshufd	$8, %xmm3, %xmm3	#, tmp3937, tmp3935
	pmuludq	%xmm12, %xmm5	# tmp3805, tmp3962
	punpckldq	%xmm8, %xmm3	# tmp3936, vect__193.448
	paddd	%xmm4, %xmm3	# vect__194.449, vect__195.450
	movdqa	192(%rsp), %xmm4	# %sfp, tmp3955
	paddd	%xmm14, %xmm3	# tmp5341, vect__196.451
	pmuludq	64(%rsp), %xmm4	# %sfp, tmp3955
	pshufd	$8, %xmm4, %xmm4	#, tmp3955, tmp3953
	punpckldq	%xmm7, %xmm4	# tmp3954, tmp3953
	movdqa	%xmm4, %xmm7	# tmp3953, vect__193.448
	pshufd	$8, %xmm5, %xmm4	#, tmp3962, tmp3960
	punpckldq	%xmm6, %xmm4	# tmp3961, vect__194.449
	paddd	%xmm7, %xmm4	# vect__193.448, vect__195.450
	paddd	%xmm14, %xmm4	# tmp5341, vect__196.451
	psrad	$15, %xmm4	#, vect__197.452
	psrad	$15, %xmm3	#, vect__197.452
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movdqa	%xmm3, %xmm5	# vect__197.452, tmp3970
	punpcklwd	%xmm4, %xmm3	# vect__197.452, vect__203.458
	punpckhwd	%xmm4, %xmm5	# vect__197.452, tmp3970
	movdqa	%xmm3, %xmm4	# vect__203.458, tmp3971
	punpckhwd	%xmm5, %xmm4	# tmp3970, tmp3971
	punpcklwd	%xmm5, %xmm3	# tmp3970, vect__203.458
	punpcklwd	%xmm4, %xmm3	# tmp3971, vect__203.458
	movdqa	%xmm1, %xmm5	# vect__202.457, vect__204.459
	paddw	%xmm3, %xmm5	# vect__203.458, vect__204.459
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	psubw	%xmm3, %xmm1	# vect__203.458, vect__208.463
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movdqu	-32(%rdi), %xmm3	# MEM[base: _1265, offset: 0B], MEM[base: _1265, offset: 0B]
	movdqu	-16(%rdi), %xmm6	# MEM[base: _1265, offset: 16B], MEM[base: _1265, offset: 16B]
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	psubw	%xmm2, %xmm0	# vect__199.454, vect__206.461
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movdqa	%xmm3, %xmm2	# MEM[base: _1265, offset: 0B], vect__215.469
	punpcklwd	%xmm6, %xmm2	# MEM[base: _1265, offset: 16B], vect__215.469
	movdqa	%xmm3, %xmm4	# MEM[base: _1265, offset: 0B], tmp3977
	punpckhwd	%xmm6, %xmm4	# MEM[base: _1265, offset: 16B], tmp3977
	movdqa	%xmm2, %xmm7	# vect__215.469, tmp3978
	punpckhwd	%xmm4, %xmm7	# tmp3977, tmp3978
	punpcklwd	%xmm4, %xmm2	# tmp3977, vect__215.469
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movdqa	%xmm10, %xmm8	# vect__200.455, vect__216.470
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	punpcklwd	%xmm6, %xmm3	# MEM[base: _1265, offset: 16B], vect__221.474
	punpcklwd	%xmm7, %xmm2	# tmp3978, vect__215.469
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	psraw	$1, %xmm8	#, vect__216.470
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	punpcklwd	%xmm4, %xmm3	# tmp3977, vect__221.474
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movdqa	%xmm5, %xmm4	# vect__204.459, vect__222.475
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	psubw	%xmm8, %xmm2	# vect__216.470, vect__218.472
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	punpckhwd	%xmm7, %xmm3	# tmp3978, vect__221.474
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	psraw	$1, %xmm4	#, vect__222.475
	psubw	%xmm4, %xmm3	# vect__222.475, vect__224.477
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movdqa	%xmm2, %xmm4	# vect__218.472, tmp3986
	punpcklwd	%xmm3, %xmm4	# vect__224.477, tmp3986
	punpckhwd	%xmm3, %xmm2	# vect__224.477, tmp3987
	movups	%xmm4, (%rax,%rdx)	# tmp3986, MEM[base: _3723, index: ivtmp.932_1257, offset: 0B]
	movups	%xmm2, 16(%rax,%rdx)	# tmp3987, MEM[base: _3723, index: ivtmp.932_1257, offset: 16B]
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movdqu	-32(%rdi), %xmm2	# MEM[base: _1265, offset: 0B], MEM[base: _1265, offset: 0B]
	movdqu	-16(%rdi), %xmm6	# MEM[base: _1265, offset: 16B], MEM[base: _1265, offset: 16B]
	movdqa	%xmm2, %xmm3	# MEM[base: _1265, offset: 0B], vect__236.491
	punpcklwd	%xmm6, %xmm3	# MEM[base: _1265, offset: 16B], vect__236.491
	movdqa	%xmm2, %xmm4	# MEM[base: _1265, offset: 0B], tmp3991
	punpckhwd	%xmm6, %xmm4	# MEM[base: _1265, offset: 16B], tmp3991
	movdqa	%xmm3, %xmm7	# vect__236.491, tmp3992
	punpckhwd	%xmm4, %xmm7	# tmp3991, tmp3992
	punpcklwd	%xmm4, %xmm3	# tmp3991, vect__236.491
	punpcklwd	%xmm6, %xmm2	# MEM[base: _1265, offset: 16B], vect__240.494
	punpcklwd	%xmm7, %xmm3	# tmp3992, vect__236.491
	punpcklwd	%xmm4, %xmm2	# tmp3991, vect__240.494
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movdqa	272(%rsp), %xmm12	# %sfp, vect_cst__4413
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	paddw	%xmm3, %xmm10	# vect__236.491, vect__237.492
	punpckhwd	%xmm7, %xmm2	# tmp3992, vect__240.494
	paddw	%xmm5, %xmm2	# vect__204.459, vect__241.495
	movdqa	%xmm10, %xmm3	# vect__237.492, tmp3998
	punpcklwd	%xmm2, %xmm3	# vect__241.495, tmp3998
	punpckhwd	%xmm2, %xmm10	# vect__241.495, tmp3999
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movdqa	%xmm12, %xmm2	# vect_cst__4413, tmp4003
	pmullw	%xmm1, %xmm2	# vect__208.463, tmp4003
	pmulhw	%xmm12, %xmm1	# vect_cst__4413, tmp4004
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movups	%xmm3, -32(%rdi)	# tmp3998, MEM[base: _1265, offset: 0B]
	movups	%xmm10, -16(%rdi)	# tmp3999, MEM[base: _1265, offset: 16B]
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movdqu	(%rax,%rdx), %xmm3	# MEM[base: _3723, index: ivtmp.932_1257, offset: 0B], MEM[base: _3723, index: ivtmp.932_1257, offset: 0B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movdqa	%xmm2, %xmm5	# tmp4003, tmp4005
	punpcklwd	%xmm1, %xmm5	# tmp4004, tmp4005
	punpckhwd	%xmm1, %xmm2	# tmp4004, tmp4012
	paddd	%xmm14, %xmm5	# tmp5341, vect__233.485
	paddd	%xmm14, %xmm2	# tmp5341, vect__233.485
	psrad	$15, %xmm2	#, vect__234.486
	psrad	$15, %xmm5	#, vect__234.486
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movdqa	%xmm5, %xmm1	# vect__234.486, tmp4016
	punpcklwd	%xmm2, %xmm5	# vect__234.486, vect__245.504
	punpckhwd	%xmm2, %xmm1	# vect__234.486, tmp4016
	movdqa	%xmm5, %xmm2	# vect__245.504, tmp4017
	punpckhwd	%xmm1, %xmm2	# tmp4016, tmp4017
	punpcklwd	%xmm1, %xmm5	# tmp4016, vect__245.504
	punpcklwd	%xmm2, %xmm5	# tmp4017, vect__245.504
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movdqa	%xmm12, %xmm2	# vect_cst__4413, tmp4023
	pmullw	%xmm0, %xmm2	# vect__206.461, tmp4023
	pmulhw	%xmm12, %xmm0	# vect_cst__4413, tmp4024
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movdqu	16(%rax,%rdx), %xmm4	# MEM[base: _3723, index: ivtmp.932_1257, offset: 16B], MEM[base: _3723, index: ivtmp.932_1257, offset: 16B]
	movdqa	%xmm3, %xmm6	# MEM[base: _3723, index: ivtmp.932_1257, offset: 0B], vect__244.503
	punpcklwd	%xmm4, %xmm6	# MEM[base: _3723, index: ivtmp.932_1257, offset: 16B], vect__244.503
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movdqa	%xmm2, %xmm1	# tmp4023, tmp4025
	punpcklwd	%xmm0, %xmm1	# tmp4024, tmp4025
	punpckhwd	%xmm0, %xmm2	# tmp4024, tmp4032
	paddd	%xmm14, %xmm1	# tmp5341, vect__229.482
	psrad	$15, %xmm1	#, vect__230.483
	paddd	%xmm14, %xmm2	# tmp5341, vect__229.482
	psrad	$15, %xmm2	#, vect__230.483
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movdqa	%xmm1, %xmm0	# vect__230.483, vect__250.508
	punpcklwd	%xmm2, %xmm0	# vect__230.483, vect__250.508
	movdqa	%xmm1, %xmm9	# vect__230.483, tmp4036
	punpckhwd	%xmm2, %xmm9	# vect__230.483, tmp4036
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movdqa	%xmm3, %xmm7	# MEM[base: _3723, index: ivtmp.932_1257, offset: 0B], tmp4019
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movdqa	%xmm0, %xmm1	# vect__250.508, tmp4037
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	punpckhwd	%xmm4, %xmm7	# MEM[base: _3723, index: ivtmp.932_1257, offset: 16B], tmp4019
	punpcklwd	%xmm4, %xmm3	# MEM[base: _3723, index: ivtmp.932_1257, offset: 16B], MEM[base: _3723, index: ivtmp.932_1257, offset: 0B]
	movdqa	%xmm6, %xmm8	# vect__244.503, tmp4020
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	punpckhwd	%xmm9, %xmm1	# tmp4036, tmp4037
	punpcklwd	%xmm9, %xmm0	# tmp4036, vect__250.508
	punpcklwd	%xmm1, %xmm0	# tmp4037, vect__250.508
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	punpckhwd	%xmm7, %xmm8	# tmp4019, tmp4020
	movdqa	%xmm3, %xmm1	# MEM[base: _3723, index: ivtmp.932_1257, offset: 0B], vect__249.507
	punpcklwd	%xmm7, %xmm6	# tmp4019, vect__244.503
	punpcklwd	%xmm8, %xmm6	# tmp4020, vect__244.503
	punpcklwd	%xmm7, %xmm1	# tmp4019, vect__249.507
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	paddw	%xmm5, %xmm6	# vect__245.504, vect__246.505
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	punpckhwd	%xmm8, %xmm1	# tmp4020, vect__249.507
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	psubw	%xmm0, %xmm1	# vect__250.508, vect__251.509
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movdqa	%xmm6, %xmm2	# vect__246.505, tmp4042
	punpcklwd	%xmm1, %xmm2	# vect__251.509, tmp4042
	punpckhwd	%xmm1, %xmm6	# vect__251.509, tmp4043
	movups	%xmm2, (%r12,%rdx)	# tmp4042, MEM[base: _3673, index: ivtmp.932_1257, offset: 0B]
	movups	%xmm6, 16(%r12,%rdx)	# tmp4043, MEM[base: _3673, index: ivtmp.932_1257, offset: 16B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movdqu	(%rax,%rdx), %xmm1	# MEM[base: _3723, index: ivtmp.932_1257, offset: 0B], MEM[base: _3723, index: ivtmp.932_1257, offset: 0B]
	movdqu	16(%rax,%rdx), %xmm4	# MEM[base: _3723, index: ivtmp.932_1257, offset: 16B], MEM[base: _3723, index: ivtmp.932_1257, offset: 16B]
	movdqa	%xmm1, %xmm2	# MEM[base: _3723, index: ivtmp.932_1257, offset: 0B], vect__254.517
	movdqa	%xmm1, %xmm3	# MEM[base: _3723, index: ivtmp.932_1257, offset: 0B], tmp4047
	punpcklwd	%xmm4, %xmm2	# MEM[base: _3723, index: ivtmp.932_1257, offset: 16B], vect__254.517
	punpckhwd	%xmm4, %xmm3	# MEM[base: _3723, index: ivtmp.932_1257, offset: 16B], tmp4047
	movdqa	%xmm2, %xmm6	# vect__254.517, tmp4048
	punpckhwd	%xmm3, %xmm6	# tmp4047, tmp4048
	punpcklwd	%xmm3, %xmm2	# tmp4047, vect__254.517
	punpcklwd	%xmm4, %xmm1	# MEM[base: _3723, index: ivtmp.932_1257, offset: 16B], vect__258.520
	punpcklwd	%xmm6, %xmm2	# tmp4048, vect__254.517
	punpcklwd	%xmm3, %xmm1	# tmp4047, vect__258.520
	psubw	%xmm5, %xmm2	# vect__245.504, vect__255.518
	punpckhwd	%xmm6, %xmm1	# tmp4048, vect__258.520
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	paddw	%xmm1, %xmm0	# vect__258.520, vect__259.521
	movdqa	%xmm2, %xmm1	# vect__255.518, tmp4054
	punpcklwd	%xmm0, %xmm1	# vect__259.521, tmp4054
	punpckhwd	%xmm0, %xmm2	# vect__259.521, tmp4055
	movups	%xmm1, (%rax,%rdx)	# tmp4054, MEM[base: _3723, index: ivtmp.932_1257, offset: 0B]
	movups	%xmm2, 16(%rax,%rdx)	# tmp4055, MEM[base: _3723, index: ivtmp.932_1257, offset: 16B]
	addq	264(%rsp), %rsi	# %sfp, ivtmp.946
	addq	$32, %rdx	#, ivtmp.932
	addq	288(%rsp), %rcx	# %sfp, ivtmp.949
	cmpq	256(%rsp), %r13	# %sfp, ivtmp.930
# SUCC: 82 [83.3% (adjusted)]  count:55581920 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 83 [16.7% (adjusted)]  count:11116384 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jb	.L30	#,
# BLOCK 83, count:11116384 (estimated locally) seq:81
# PRED: 82 [16.7% (adjusted)]  count:11116384 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movq	256(%rsp), %rdi	# %sfp, bnd.381
	movq	%rbp, %rdx	# _210, tmp4057
	leaq	0(,%rdi,8), %rax	#, niters_vector_mult_vf.382
	imulq	%rax, %rdx	# niters_vector_mult_vf.382, tmp4057
	movq	128(%rsp), %r15	# %sfp, tw1
	salq	$5, %rdi	#, bnd.381
	leaq	(%r15,%rdx), %r12	#, tmp.385
	movq	%rbx, %rdx	# _212, tmp4058
	movq	%rdi, %rcx	# bnd.381, tmp4056
	imulq	%rax, %rdx	# niters_vector_mult_vf.382, tmp4058
	movq	80(%rsp), %rdi	# %sfp, k
	movq	304(%rsp), %r11	# %sfp, Fout
	movq	%rdi, %rsi	# k, tmp.384
	movq	296(%rsp), %r14	# %sfp, _148
	addq	%r11, %rcx	# Fout, tmp.383
	subq	%rax, %rsi	# niters_vector_mult_vf.382, tmp.384
	leaq	(%r15,%rdx), %r13	#, tmp.386
	cmpq	%rax, %rdi	# niters_vector_mult_vf.382, k
# SUCC: 84 [87.5% (guessed)]  count:9726836 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 17 [12.5% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU)
	je	.L1	#,
# BLOCK 84, count:9726836 (estimated locally) seq:82
# PRED: 83 [87.5% (guessed)]  count:9726836 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	(%rcx,%rsi,4), %rax	#, _114
	movq	(%rsp), %rdx	# %sfp, _13
	movq	%rbp, 16(%rsp)	# _210, %sfp
	movq	%rax, (%rsp)	# _114, %sfp
	movq	%rbx, 32(%rsp)	# _212, %sfp
	addq	%rcx, %rdx	# tmp.383, _13
# SUCC: 85 [always]  count:9726836 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	(%rcx,%r14), %r9	#, ivtmp.921
# BLOCK 85, count:88425796 (estimated locally) seq:83
# PRED: 84 [always]  count:9726836 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 85 [89.0% (guessed)]  count:78698958 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L34:
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movswl	(%rcx), %eax	# MEM[base: Fout_3960, offset: 0B], MEM[base: Fout_3960, offset: 0B]
	imull	$10922, %eax, %eax	#, MEM[base: Fout_3960, offset: 0B], tmp4061
	addl	$16384, %eax	#, tmp4062
	sarl	$15, %eax	#, tmp4063
	movw	%ax, (%rcx)	# tmp4063, MEM[base: Fout_3960, offset: 0B]
	movswl	2(%rcx), %eax	# MEM[base: Fout_3960, offset: 2B], MEM[base: Fout_3960, offset: 2B]
	imull	$10922, %eax, %eax	#, MEM[base: Fout_3960, offset: 2B], tmp4065
	addl	$16384, %eax	#, tmp4066
	sarl	$15, %eax	#, tmp4067
	movw	%ax, 2(%rcx)	# tmp4067, MEM[base: Fout_3960, offset: 2B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movswl	(%rdx), %eax	# MEM[base: _103, offset: 0B], MEM[base: _103, offset: 0B]
	imull	$10922, %eax, %eax	#, MEM[base: _103, offset: 0B], tmp4069
	addl	$16384, %eax	#, tmp4070
	sarl	$15, %eax	#, tmp4071
	movw	%ax, (%rdx)	# tmp4071, MEM[base: _103, offset: 0B]
	movswl	2(%rdx), %eax	# MEM[base: _103, offset: 2B], MEM[base: _103, offset: 2B]
	imull	$10922, %eax, %eax	#, MEM[base: _103, offset: 2B], tmp4073
	addl	$16384, %eax	#, tmp4074
	sarl	$15, %eax	#, tmp4075
	movw	%ax, 2(%rdx)	# tmp4075, MEM[base: _103, offset: 2B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movswl	(%r9), %esi	# MEM[base: _110, offset: 0B], MEM[base: _110, offset: 0B]
	movswl	2(%r9), %eax	# MEM[base: _110, offset: 2B], MEM[base: _110, offset: 2B]
	imull	$10922, %esi, %esi	#, MEM[base: _110, offset: 0B], tmp4077
	imull	$10922, %eax, %eax	#, MEM[base: _110, offset: 2B], tmp4080
	addl	$16384, %esi	#, tmp4078
	addl	$16384, %eax	#, tmp4081
	sarl	$15, %eax	#, _4006
	sarl	$15, %esi	#, _3999
	movw	%si, (%r9)	# _3999, MEM[base: _110, offset: 0B]
	movw	%ax, 2(%r9)	# _4006, MEM[base: _110, offset: 2B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movswl	(%rdx), %r10d	# MEM[base: _103, offset: 0B], _4010
	movswl	2(%rdx), %ebp	# MEM[base: _103, offset: 2B], _4015
	movswl	(%r12), %r8d	# MEM[base: tw1_3962, offset: 0B], _4012
	movswl	2(%r12), %r14d	# MEM[base: tw1_3962, offset: 2B], _4017
	movl	%r10d, %edi	# _4010, tmp4082
	movl	%ebp, %r15d	# _4015, tmp4083
	imull	%r8d, %edi	# _4012, tmp4082
	imull	%r14d, %r15d	# _4017, tmp4083
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movswl	2(%r13), %ebx	# MEM[base: tw2_3963, offset: 2B], _4031
	movswl	0(%r13), %r11d	# MEM[base: tw2_3963, offset: 0B], _4028
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subl	%r15d, %edi	# tmp4083, tmp4084
	addl	$16384, %edi	#, tmp4085
	sarl	$15, %edi	#, tmp4085
	movl	%edi, 128(%rsp)	# tmp4085, %sfp
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movl	%eax, %r15d	# _4006, tmp4088
	movl	%esi, %edi	# _3999, tmp4087
	imull	%ebx, %r15d	# _4031, tmp4088
	imull	%r11d, %edi	# _4028, tmp4087
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	imull	%r14d, %r10d	# _4017, tmp4092
	imull	%ebp, %r8d	# _4015, tmp4093
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	subl	%r15d, %edi	# tmp4088, tmp4089
	addl	$16384, %edi	#, tmp4090
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movzwl	128(%rsp), %r15d	# %sfp, tmp5935
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	sarl	$15, %edi	#, tmp4091
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leal	16384(%r10,%r8), %r8d	#, tmp4095
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addl	%edi, %r15d	# tmp4091, _4043
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	sarl	$15, %r8d	#, tmp4096
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	imull	%ebx, %esi	# _4031, tmp4097
	imull	%r11d, %eax	# _4028, tmp4098
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movzwl	(%rcx), %ebx	# MEM[base: Fout_3960, offset: 0B], tmp4105
# kiss_fft.c:116:          tw1 += fstride;
	addq	16(%rsp), %r12	# %sfp, tmp.385
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leal	16384(%rsi,%rax), %eax	#, tmp4100
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movl	%r15d, %esi	# _4043, tmp4102
	sarw	%si	# tmp4102
	subl	%esi, %ebx	# tmp4102, tmp4105
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movw	%bx, (%rdx)	# tmp4105, MEM[base: _103, offset: 0B]
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	sarl	$15, %eax	#, tmp4101
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	leal	(%rax,%r8), %r10d	#, _4047
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movzwl	2(%rcx), %ebx	# MEM[base: Fout_3960, offset: 2B], tmp4110
	movl	%r10d, %esi	# _4047, tmp4107
	sarw	%si	# tmp4107
	subl	%esi, %ebx	# tmp4107, tmp4110
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movw	%bx, 2(%rdx)	# tmp4110, MEM[base: _103, offset: 2B]
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subl	%eax, %r8d	# tmp4101, tmp4112
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movl	136(%rsp), %ebx	# %sfp, _1236
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addw	%r15w, (%rcx)	# _4043, MEM[base: Fout_3960, offset: 0B]
	addw	%r10w, 2(%rcx)	# _4047, MEM[base: Fout_3960, offset: 2B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movswl	%r8w, %esi	# tmp4112, tmp4113
	imull	%ebx, %esi	# _1236, tmp4114
# kiss_fft.c:117:          tw2 += fstride*2;
	addq	32(%rsp), %r13	# %sfp, tmp.386
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movzwl	(%rdx), %eax	# MEM[base: _103, offset: 0B], tmp4119
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	addl	$16384, %esi	#, tmp4115
	sarl	$15, %esi	#, tmp4116
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addl	%esi, %eax	# tmp4116, tmp4119
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movw	%ax, (%r9)	# tmp4119, MEM[base: _110, offset: 0B]
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movzwl	128(%rsp), %eax	# %sfp, tmp4121
# kiss_fft.c:132:          ++Fout;
	addq	$4, %rcx	#, tmp.383
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subl	%edi, %eax	# tmp4091, tmp4121
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	cwtl
	imull	%ebx, %eax	# _1236, tmp4123
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movzwl	2(%rdx), %edi	# MEM[base: _103, offset: 2B], tmp4128
	addq	$4, %r9	#, ivtmp.921
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	addl	$16384, %eax	#, tmp4124
	sarl	$15, %eax	#, tmp4125
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	subl	%eax, %edi	# tmp4125, tmp4128
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movw	%di, -2(%r9)	# tmp4128, MEM[base: _110, offset: 2B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subw	%si, (%rdx)	# tmp4116, MEM[base: _103, offset: 0B]
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addw	%ax, 2(%rdx)	# tmp4125, MEM[base: _103, offset: 2B]
	addq	$4, %rdx	#, ivtmp.920
# kiss_fft.c:133:      }while(--k);
	cmpq	%rcx, (%rsp)	# tmp.383, %sfp
# SUCC: 85 [89.0% (guessed)]  count:78698958 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 86 [11.0% (guessed)]  count:9726838 (estimated locally) (FALLTHRU)
	jne	.L34	#,
# BLOCK 86, count:9726838 (estimated locally) seq:84
# PRED: 85 [11.0% (guessed)]  count:9726838 (estimated locally) (FALLTHRU)
# SUCC: 17 [always]  count:9726838 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L1	#
# BLOCK 87, count:11116385 (estimated locally) seq:85
# PRED: 70 [47.1% (guessed)]  count:11116385 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L147:
# SUCC: 88 [always]  count:11116385 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:36:         tw1 += fstride;
	movl	$1, %edi	#, _1418
# BLOCK 88, count:11116385 (estimated locally) seq:86
# PRED: 87 [always]  count:11116385 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 108 [always]  count:0 (estimated locally) (CAN_FALLTHRU)
.L21:
	leal	-1(%rdi), %edx	#, tmp3409
	leaq	4(%r11,%rdx,4), %rsi	#, _973
	movq	128(%rsp), %rdi	# %sfp, tw1
# SUCC: 90 [always]  count:11116385 (estimated locally) (CAN_FALLTHRU)
	jmp	.L25	#
# BLOCK 89, count:89941666 (estimated locally) seq:87
# PRED: 90 [89.0% (guessed)]  count:89941666 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L148:
# SUCC: 90 [always]  count:89941666 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
	addq	$4, %rcx	#, Fout
# BLOCK 90, count:101058052 (estimated locally) seq:88
# PRED: 89 [always]  count:89941666 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 88 [always]  count:11116385 (estimated locally) (CAN_FALLTHRU)
.L25:
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movswl	(%r11), %r8d	# MEM[base: Fout_2005, offset: 0B], MEM[base: Fout_2005, offset: 0B]
# kiss_fft.c:36:         tw1 += fstride;
	addq	$4, %rdi	#, tw1
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movl	%r8d, %edx	# MEM[base: Fout_2005, offset: 0B], tmp3414
	sall	$14, %edx	#, tmp3414
	subl	%r8d, %edx	# MEM[base: Fout_2005, offset: 0B], tmp3415
	addl	$16384, %edx	#, tmp3416
	movswl	2(%r11), %r8d	# MEM[base: Fout_2005, offset: 2B], MEM[base: Fout_2005, offset: 2B]
	sarl	$15, %edx	#, tmp3417
	movw	%dx, (%r11)	# tmp3417, MEM[base: Fout_2005, offset: 0B]
	movl	%r8d, %edx	# MEM[base: Fout_2005, offset: 2B], tmp3420
	sall	$14, %edx	#, tmp3420
	subl	%r8d, %edx	# MEM[base: Fout_2005, offset: 2B], tmp3421
	addl	$16384, %edx	#, tmp3422
	sarl	$15, %edx	#, tmp3423
	movw	%dx, 2(%r11)	# tmp3423, MEM[base: Fout_2005, offset: 2B]
# kiss_fft.c:39:         ++Fout2;
	addq	$4, %rax	#, Fout2
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movswl	-4(%rax), %edx	# MEM[base: Fout2_2007, offset: 0B], MEM[base: Fout2_2007, offset: 0B]
	movswl	-2(%rax), %r9d	# MEM[base: Fout2_2007, offset: 2B], MEM[base: Fout2_2007, offset: 2B]
	movl	%edx, %r8d	# MEM[base: Fout2_2007, offset: 0B], tmp3426
	sall	$14, %r8d	#, tmp3426
	subl	%edx, %r8d	# MEM[base: Fout2_2007, offset: 0B], tmp3427
	movl	%r9d, %edx	# MEM[base: Fout2_2007, offset: 2B], tmp3431
	sall	$14, %edx	#, tmp3431
	subl	%r9d, %edx	# MEM[base: Fout2_2007, offset: 2B], tmp3432
	addl	$16384, %r8d	#, tmp3428
	addl	$16384, %edx	#, tmp3433
	sarl	$15, %r8d	#, _2028
	sarl	$15, %edx	#, _2035
	movw	%r8w, -4(%rax)	# _2028, MEM[base: Fout2_2007, offset: 0B]
	movw	%dx, -2(%rax)	# _2035, MEM[base: Fout2_2007, offset: 2B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movl	%r8d, %r9d	# _2028, tmp3434
	movl	%edx, %r10d	# _2035, tmp3435
	movswl	-4(%rdi), %ebx	# MEM[base: tw1_2008, offset: 0B], _2039
	movswl	-2(%rdi), %ebp	# MEM[base: tw1_2008, offset: 2B], _2042
	imull	%ebx, %r9d	# _2039, tmp3434
	imull	%ebp, %r10d	# _2042, tmp3435
	imull	%ebp, %r8d	# _2042, tmp3443
	imull	%ebx, %edx	# _2039, tmp3444
	subl	%r10d, %r9d	# tmp3435, tmp3436
	addl	$16384, %r9d	#, tmp3437
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movzwl	(%r11), %r10d	# MEM[base: Fout_2005, offset: 0B], tmp3441
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	sarl	$15, %r9d	#, tmp3438
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subl	%r9d, %r10d	# tmp3438, tmp3441
	movw	%r10w, -4(%rax)	# tmp3441, MEM[base: Fout2_2007, offset: 0B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	leal	16384(%r8,%rdx), %edx	#, tmp3446
	sarl	$15, %edx	#, tmp3447
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movzwl	2(%r11), %r8d	# MEM[base: Fout_2005, offset: 2B], tmp3450
	subl	%edx, %r8d	# tmp3447, tmp3450
	movw	%r8w, -2(%rax)	# tmp3450, MEM[base: Fout2_2007, offset: 2B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addw	%r9w, (%r11)	# tmp3438, MEM[base: Fout_2005, offset: 0B]
	addw	%dx, 2(%r11)	# tmp3447, MEM[base: Fout_2005, offset: 2B]
# kiss_fft.c:40:         ++Fout;
	movq	%rcx, %r11	# Fout, Fout
# kiss_fft.c:41:     }while (--m);
	cmpq	%rcx, %rsi	# Fout, _973
# SUCC: 89 [89.0% (guessed)]  count:89941666 (estimated locally) (CAN_FALLTHRU) 91 [11.0% (guessed)]  count:11116386 (estimated locally) (FALLTHRU)
	jne	.L148	#,
# BLOCK 91, count:11116386 (estimated locally) seq:89
# PRED: 90 [11.0% (guessed)]  count:11116386 (estimated locally) (FALLTHRU)
# SUCC: 17 [always]  count:11116386 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L1	#
# BLOCK 92, count:13895480 (estimated locally) seq:90
# PRED: 64 [20.0% (guessed)]  count:13895480 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L145:
	movq	(%rsp), %r12	# %sfp, _13
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	movq	128(%rsp), %r15	# %sfp, tw1
	addq	%r11, %r12	# Fout, _13
	movq	%r15, (%rsp)	# tw1, %sfp
	leaq	(%r11,%rdx), %rbx	#, ivtmp.1068
# SUCC: 95 [always]  count:13895480 (estimated locally) (CAN_FALLTHRU)
	jmp	.L46	#
# BLOCK 93, count:63161286 (estimated locally) seq:91
# PRED: 95 [50.0% (guessed)]  count:63161283 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L149:
# kiss_fft.c:78:             Fout[m].r = scratch[5].r - scratch[4].i;
	movl	%edi, %eax	# _1866, tmp4997
	subl	%esi, %eax	# tmp4989, tmp4997
	addl	%eax, %edx	# tmp4997, tmp4998
# kiss_fft.c:79:             Fout[m].i = scratch[5].i + scratch[4].r;
	movzwl	136(%rsp), %eax	# %sfp, _1870
# kiss_fft.c:80:             Fout[m3].r = scratch[5].r + scratch[4].i;
	addl	%edi, %ecx	# _1866, tmp5000
# kiss_fft.c:79:             Fout[m].i = scratch[5].i + scratch[4].r;
	addl	%eax, %r10d	# _1870, tmp4999
# kiss_fft.c:81:             Fout[m3].i = scratch[5].i - scratch[4].r;
	subl	%r13d, %eax	# tmp4979, _1870
	addl	%eax, %r8d	# tmp5001, tmp5002
# kiss_fft.c:78:             Fout[m].r = scratch[5].r - scratch[4].i;
	movw	%dx, (%r12)	# tmp4998, MEM[base: _1357, offset: 0B]
# kiss_fft.c:79:             Fout[m].i = scratch[5].i + scratch[4].r;
	movw	%r10w, 2(%r12)	# tmp4999, MEM[base: _1357, offset: 2B]
# kiss_fft.c:80:             Fout[m3].r = scratch[5].r + scratch[4].i;
	movw	%cx, (%r11,%rbp)	# tmp5000, MEM[base: Fout_1748, index: _306, offset: 0B]
# SUCC: 94 [always]  count:63161286 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:81:             Fout[m3].i = scratch[5].i - scratch[4].r;
	movw	%r8w, 2(%r11,%rbp)	# tmp5002, MEM[base: Fout_1748, index: _306, offset: 2B]
# BLOCK 94, count:126322565 (estimated locally) seq:92
# PRED: 93 [always]  count:63161286 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 96 [always]  count:63161286 (estimated locally) (CAN_FALLTHRU)
.L48:
# kiss_fft.c:88:         ++Fout;
	addq	$4, %r11	#, Fout
	addq	$4, %r12	#, ivtmp.1067
	addq	$4, %rbx	#, ivtmp.1068
# kiss_fft.c:89:     }while(--k);
	decq	80(%rsp)	# %sfp
# SUCC: 95 [89.0% (guessed)]  count:112427083 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 17 [11.0% (guessed)]  count:13895482 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	je	.L1	#,
# BLOCK 95, count:126322565 (estimated locally) seq:93
# PRED: 94 [89.0% (guessed)]  count:112427083 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 92 [always]  count:13895480 (estimated locally) (CAN_FALLTHRU)
.L46:
# kiss_fft.c:61:         C_FIXDIV(*Fout,4); C_FIXDIV(Fout[m],4); C_FIXDIV(Fout[m2],4); C_FIXDIV(Fout[m3],4);
	movswl	(%r11), %edx	# MEM[base: Fout_1748, offset: 0B], MEM[base: Fout_1748, offset: 0B]
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movq	(%rsp), %r9	# %sfp, tw3
# kiss_fft.c:61:         C_FIXDIV(*Fout,4); C_FIXDIV(Fout[m],4); C_FIXDIV(Fout[m2],4); C_FIXDIV(Fout[m3],4);
	movl	%edx, %eax	# MEM[base: Fout_1748, offset: 0B], tmp4921
	sall	$13, %eax	#, tmp4921
	subl	%edx, %eax	# MEM[base: Fout_1748, offset: 0B], tmp4922
	addl	$16384, %eax	#, tmp4923
	movswl	2(%r11), %edx	# MEM[base: Fout_1748, offset: 2B], MEM[base: Fout_1748, offset: 2B]
	sarl	$15, %eax	#, tmp4924
	movw	%ax, (%r11)	# tmp4924, MEM[base: Fout_1748, offset: 0B]
	movl	%edx, %eax	# MEM[base: Fout_1748, offset: 2B], tmp4927
	sall	$13, %eax	#, tmp4927
	subl	%edx, %eax	# MEM[base: Fout_1748, offset: 2B], tmp4928
	addl	$16384, %eax	#, tmp4929
	sarl	$15, %eax	#, tmp4930
	movw	%ax, 2(%r11)	# tmp4930, MEM[base: Fout_1748, offset: 2B]
# kiss_fft.c:61:         C_FIXDIV(*Fout,4); C_FIXDIV(Fout[m],4); C_FIXDIV(Fout[m2],4); C_FIXDIV(Fout[m3],4);
	movswl	(%r12), %edx	# MEM[base: _1357, offset: 0B], MEM[base: _1357, offset: 0B]
	movl	%edx, %eax	# MEM[base: _1357, offset: 0B], tmp4933
	sall	$13, %eax	#, tmp4933
	subl	%edx, %eax	# MEM[base: _1357, offset: 0B], tmp4934
	addl	$16384, %eax	#, tmp4935
	movswl	2(%r12), %edx	# MEM[base: _1357, offset: 2B], MEM[base: _1357, offset: 2B]
	sarl	$15, %eax	#, tmp4936
	movw	%ax, (%r12)	# tmp4936, MEM[base: _1357, offset: 0B]
	movl	%edx, %eax	# MEM[base: _1357, offset: 2B], tmp4939
	sall	$13, %eax	#, tmp4939
	subl	%edx, %eax	# MEM[base: _1357, offset: 2B], tmp4940
	addl	$16384, %eax	#, tmp4941
	sarl	$15, %eax	#, tmp4942
	movw	%ax, 2(%r12)	# tmp4942, MEM[base: _1357, offset: 2B]
# kiss_fft.c:61:         C_FIXDIV(*Fout,4); C_FIXDIV(Fout[m],4); C_FIXDIV(Fout[m2],4); C_FIXDIV(Fout[m3],4);
	movswl	(%rbx), %edx	# MEM[base: _1362, offset: 0B], MEM[base: _1362, offset: 0B]
	movl	%edx, %eax	# MEM[base: _1362, offset: 0B], tmp4945
	sall	$13, %eax	#, tmp4945
	subl	%edx, %eax	# MEM[base: _1362, offset: 0B], tmp4946
	addl	$16384, %eax	#, tmp4947
	movswl	2(%rbx), %edx	# MEM[base: _1362, offset: 2B], MEM[base: _1362, offset: 2B]
	sarl	$15, %eax	#, tmp4948
	movw	%ax, (%rbx)	# tmp4948, MEM[base: _1362, offset: 0B]
	movl	%edx, %eax	# MEM[base: _1362, offset: 2B], tmp4951
	sall	$13, %eax	#, tmp4951
	subl	%edx, %eax	# MEM[base: _1362, offset: 2B], tmp4952
	addl	$16384, %eax	#, tmp4953
	sarl	$15, %eax	#, tmp4954
	movw	%ax, 2(%rbx)	# tmp4954, MEM[base: _1362, offset: 2B]
# kiss_fft.c:61:         C_FIXDIV(*Fout,4); C_FIXDIV(Fout[m],4); C_FIXDIV(Fout[m2],4); C_FIXDIV(Fout[m3],4);
	movswl	(%r11,%rbp), %eax	# MEM[base: Fout_1748, index: _306, offset: 0B], MEM[base: Fout_1748, index: _306, offset: 0B]
	movl	%eax, %ecx	# MEM[base: Fout_1748, index: _306, offset: 0B], tmp4957
	sall	$13, %ecx	#, tmp4957
	subl	%eax, %ecx	# MEM[base: Fout_1748, index: _306, offset: 0B], tmp4958
	movswl	2(%r11,%rbp), %eax	# MEM[base: Fout_1748, index: _306, offset: 2B], MEM[base: Fout_1748, index: _306, offset: 2B]
	addl	$16384, %ecx	#, tmp4959
	movl	%eax, %edx	# MEM[base: Fout_1748, index: _306, offset: 2B], tmp4962
	sall	$13, %edx	#, tmp4962
	subl	%eax, %edx	# MEM[base: Fout_1748, index: _306, offset: 2B], tmp4963
	addl	$16384, %edx	#, tmp4964
	sarl	$15, %ecx	#, _1803
	sarl	$15, %edx	#, _1810
	movw	%cx, (%r11,%rbp)	# _1803, MEM[base: Fout_1748, index: _306, offset: 0B]
	movw	%dx, 2(%r11,%rbp)	# _1810, MEM[base: Fout_1748, index: _306, offset: 2B]
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movswl	(%r12), %esi	# MEM[base: _1357, offset: 0B], _1814
	movswl	(%r15), %eax	# MEM[base: tw1_1749, offset: 0B], _1816
	movl	%esi, 16(%rsp)	# _1814, %sfp
	movswl	2(%r15), %esi	# MEM[base: tw1_1749, offset: 2B], _1821
	movl	%eax, 32(%rsp)	# _1816, %sfp
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movq	128(%rsp), %rax	# %sfp, tw2
	movswl	(%rbx), %r8d	# MEM[base: _1362, offset: 0B], _1832
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movl	%esi, 64(%rsp)	# _1821, %sfp
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movswl	(%r9), %esi	# MEM[base: tw3_1751, offset: 0B], _1850
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movswl	(%rax), %edi	# MEM[base: tw2_1750, offset: 0B], _1834
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movl	%esi, 48(%rsp)	# _1850, %sfp
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movl	%r8d, %esi	# _1832, tmp4965
	imull	%edi, %esi	# _1834, tmp4965
	movswl	2(%rbx), %r13d	# MEM[base: _1362, offset: 2B], _1837
	movswl	2(%rax), %r14d	# MEM[base: tw2_1750, offset: 2B], _1839
	movl	%esi, %eax	# tmp4965, tmp4965
	movl	%r13d, %esi	# _1837, tmp4966
	imull	%r14d, %esi	# _1839, tmp4966
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movswl	2(%r9), %r9d	# MEM[base: tw3_1751, offset: 2B], _1853
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movswl	2(%r12), %r10d	# MEM[base: _1357, offset: 2B], _1819
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	subl	%esi, %eax	# tmp4966, tmp4967
	addl	$16384, %eax	#, tmp4968
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movzwl	(%r11), %esi	# MEM[base: Fout_1748, offset: 0B], _1866
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	sarl	$15, %eax	#, tmp4969
	imull	%r14d, %r8d	# _1839, tmp4970
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	subl	%eax, %esi	# tmp4969, _1866
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	imull	%r13d, %edi	# _1837, tmp4971
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movw	%si, 96(%rsp)	# _1866, %sfp
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movl	64(%rsp), %esi	# %sfp, _1821
	movl	32(%rsp), %r13d	# %sfp, tmp4975
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	leal	16384(%r8,%rdi), %edi	#, tmp4973
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movl	%esi, %r8d	# _1821, tmp4976
	imull	%r10d, %r8d	# _1819, tmp4976
	imull	16(%rsp), %r13d	# %sfp, tmp4975
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movzwl	2(%r11), %r14d	# MEM[base: Fout_1748, offset: 2B], _1870
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	sarl	$15, %edi	#, tmp4974
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	subl	%edi, %r14d	# tmp4974, _1870
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	subl	%r8d, %r13d	# tmp4976, tmp4977
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movl	48(%rsp), %r8d	# %sfp, tmp4980
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movw	%r14w, 136(%rsp)	# _1870, %sfp
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movl	%edx, %r14d	# _1810, tmp4981
	imull	%r9d, %r14d	# _1853, tmp4981
	imull	%ecx, %r8d	# _1803, tmp4980
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	imull	32(%rsp), %r10d	# %sfp, tmp4986
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	imull	%r9d, %ecx	# _1853, tmp4990
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	imull	16(%rsp), %esi	# %sfp, tmp4985
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	imull	48(%rsp), %edx	# %sfp, tmp4991
	subl	%r14d, %r8d	# tmp4981, tmp4982
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	addl	$16384, %r13d	#, tmp4978
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	addl	$16384, %r8d	#, tmp4983
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	leal	16384(%rsi,%r10), %esi	#, tmp4988
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	leal	16384(%rcx,%rdx), %edx	#, tmp4993
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	sarl	$15, %r13d	#, tmp4979
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	sarl	$15, %r8d	#, tmp4984
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	sarl	$15, %esi	#, tmp4989
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	sarl	$15, %edx	#, tmp4994
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	addw	(%r11), %ax	# MEM[base: Fout_1748, offset: 0B], _1871
	addw	2(%r11), %di	# MEM[base: Fout_1748, offset: 2B], _1874
# kiss_fft.c:69:         C_ADD( scratch[3] , scratch[0] , scratch[2] );
	leal	(%r8,%r13), %r14d	#, _1879
	leal	(%rdx,%rsi), %r9d	#, _1882
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	movw	%ax, (%r11)	# _1871, MEM[base: Fout_1748, offset: 0B]
	movw	%di, 2(%r11)	# _1874, MEM[base: Fout_1748, offset: 2B]
# kiss_fft.c:71:         C_SUB( Fout[m2], *Fout, scratch[3] );
	subl	%r14d, %eax	# _1879, tmp4995
	subl	%r9d, %edi	# _1882, tmp4996
	movw	%di, 2(%rbx)	# tmp4996, MEM[base: _1362, offset: 2B]
	movw	%ax, (%rbx)	# tmp4995, MEM[base: _1362, offset: 0B]
# kiss_fft.c:73:         tw2 += fstride*2;
	movq	160(%rsp), %rdi	# %sfp, _401
# kiss_fft.c:70:         C_SUB( scratch[4] , scratch[0] , scratch[2] );
	movl	%r13d, %r10d	# tmp4979, _1883
	movl	%esi, %ecx	# tmp4989, _1884
	subl	%r8d, %r10d	# tmp4984, _1883
	subl	%edx, %ecx	# tmp4994, _1884
# kiss_fft.c:72:         tw1 += fstride;
	addq	144(%rsp), %r15	# %sfp, tw1
# kiss_fft.c:73:         tw2 += fstride*2;
	addq	%rdi, 128(%rsp)	# _401, %sfp
# kiss_fft.c:75:         C_ADDTO( *Fout , scratch[3] );
	addw	%r14w, (%r11)	# _1879, MEM[base: Fout_1748, offset: 0B]
# kiss_fft.c:74:         tw3 += fstride*3;
	movq	176(%rsp), %rdi	# %sfp, tmp4918
# kiss_fft.c:77:         if(st->inverse) {
	movl	112(%rsp), %r14d	# %sfp,
# kiss_fft.c:74:         tw3 += fstride*3;
	addq	%rdi, (%rsp)	# tmp4918, %sfp
# kiss_fft.c:75:         C_ADDTO( *Fout , scratch[3] );
	addw	%r9w, 2(%r11)	# _1882, MEM[base: Fout_1748, offset: 2B]
# kiss_fft.c:78:             Fout[m].r = scratch[5].r - scratch[4].i;
	movzwl	96(%rsp), %edi	# %sfp, _1866
# kiss_fft.c:77:         if(st->inverse) {
	testl	%r14d, %r14d	#
# SUCC: 93 [50.0% (guessed)]  count:63161283 (estimated locally) (CAN_FALLTHRU) 96 [50.0% (guessed)]  count:63161283 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L149	#,
# BLOCK 96, count:63161286 (estimated locally) seq:94
# PRED: 95 [50.0% (guessed)]  count:63161283 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:84:             Fout[m].i = scratch[5].i - scratch[4].r;
	movzwl	136(%rsp), %r14d	# %sfp, _1870
# kiss_fft.c:83:             Fout[m].r = scratch[5].r + scratch[4].i;
	addl	%edi, %ecx	# _1866, tmp5003
# kiss_fft.c:84:             Fout[m].i = scratch[5].i - scratch[4].r;
	movl	%r14d, %eax	# _1870, tmp5004
# kiss_fft.c:85:             Fout[m3].r = scratch[5].r - scratch[4].i;
	subl	%esi, %edi	# tmp4989, _1866
# kiss_fft.c:83:             Fout[m].r = scratch[5].r + scratch[4].i;
	movw	%cx, (%r12)	# tmp5003, MEM[base: _1357, offset: 0B]
# kiss_fft.c:84:             Fout[m].i = scratch[5].i - scratch[4].r;
	subl	%r13d, %eax	# tmp4979, tmp5004
# kiss_fft.c:85:             Fout[m3].r = scratch[5].r - scratch[4].i;
	movl	%edi, %ecx	# _1866, tmp5006
# kiss_fft.c:84:             Fout[m].i = scratch[5].i - scratch[4].r;
	addl	%eax, %r8d	# tmp5004, tmp5005
# kiss_fft.c:85:             Fout[m3].r = scratch[5].r - scratch[4].i;
	addl	%ecx, %edx	# tmp5006, tmp5007
# kiss_fft.c:86:             Fout[m3].i = scratch[5].i + scratch[4].r;
	addl	%r14d, %r10d	# _1870, tmp5008
# kiss_fft.c:84:             Fout[m].i = scratch[5].i - scratch[4].r;
	movw	%r8w, 2(%r12)	# tmp5005, MEM[base: _1357, offset: 2B]
# kiss_fft.c:85:             Fout[m3].r = scratch[5].r - scratch[4].i;
	movw	%dx, (%r11,%rbp)	# tmp5007, MEM[base: Fout_1748, index: _306, offset: 0B]
# kiss_fft.c:86:             Fout[m3].i = scratch[5].i + scratch[4].r;
	movw	%r10w, 2(%r11,%rbp)	# tmp5008, MEM[base: Fout_1748, index: _306, offset: 2B]
# SUCC: 94 [always]  count:63161286 (estimated locally) (CAN_FALLTHRU)
	jmp	.L48	#
# BLOCK 97, count:11116385 (estimated locally) seq:95
# PRED: 11 [11.1% (guessed)]  count:5558192 (estimated locally) (CAN_FALLTHRU) 10 [10.0% (guessed)]  count:5558192 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L37:
# kiss_fft.c:106:      tw1=tw2=st->twiddles;
	movq	128(%rsp), %rbp	# %sfp, tw1
	movq	%rbp, %rbx	# tw1, tw2
# SUCC: 99 [always]  count:11116385 (estimated locally) (CAN_FALLTHRU)
	jmp	.L43	#
# BLOCK 98, count:89941666 (estimated locally) seq:96
# PRED: 99 [89.0% (guessed)]  count:89941666 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L150:
# SUCC: 99 [always]  count:89941666 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
	decq	%r15	# k
# BLOCK 99, count:101058052 (estimated locally) seq:97
# PRED: 98 [always]  count:89941666 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 97 [always]  count:11116385 (estimated locally) (CAN_FALLTHRU)
.L43:
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movswl	(%r11), %ecx	# MEM[base: Fout_2954, offset: 0B], MEM[base: Fout_2954, offset: 0B]
	imull	$10922, %ecx, %ecx	#, MEM[base: Fout_2954, offset: 0B], tmp4842
	addl	$16384, %ecx	#, tmp4843
	sarl	$15, %ecx	#, tmp4844
	movw	%cx, (%r11)	# tmp4844, MEM[base: Fout_2954, offset: 0B]
	movswl	2(%r11), %ecx	# MEM[base: Fout_2954, offset: 2B], MEM[base: Fout_2954, offset: 2B]
	imull	$10922, %ecx, %ecx	#, MEM[base: Fout_2954, offset: 2B], tmp4846
	addl	$16384, %ecx	#, tmp4847
	sarl	$15, %ecx	#, tmp4848
	movw	%cx, 2(%r11)	# tmp4848, MEM[base: Fout_2954, offset: 2B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movswl	(%rax), %ecx	# MEM[base: _224, offset: 0B], MEM[base: _224, offset: 0B]
	imull	$10922, %ecx, %ecx	#, MEM[base: _224, offset: 0B], tmp4850
	addl	$16384, %ecx	#, tmp4851
	sarl	$15, %ecx	#, tmp4852
	movw	%cx, (%rax)	# tmp4852, MEM[base: _224, offset: 0B]
	movswl	2(%rax), %ecx	# MEM[base: _224, offset: 2B], MEM[base: _224, offset: 2B]
	imull	$10922, %ecx, %ecx	#, MEM[base: _224, offset: 2B], tmp4854
	addl	$16384, %ecx	#, tmp4855
	sarl	$15, %ecx	#, tmp4856
	movw	%cx, 2(%rax)	# tmp4856, MEM[base: _224, offset: 2B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movswl	(%rdx), %edi	# MEM[base: _232, offset: 0B], MEM[base: _232, offset: 0B]
	movswl	2(%rdx), %esi	# MEM[base: _232, offset: 2B], MEM[base: _232, offset: 2B]
	imull	$10922, %edi, %edi	#, MEM[base: _232, offset: 0B], tmp4858
	imull	$10922, %esi, %esi	#, MEM[base: _232, offset: 2B], tmp4861
	addl	$16384, %edi	#, tmp4859
	addl	$16384, %esi	#, tmp4862
	sarl	$15, %edi	#, _2993
	sarl	$15, %esi	#, _3000
	movw	%di, (%rdx)	# _2993, MEM[base: _232, offset: 0B]
	movw	%si, 2(%rdx)	# _3000, MEM[base: _232, offset: 2B]
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movswl	2(%rbx), %ecx	# MEM[base: tw2_2957, offset: 2B], _3025
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movswl	(%rax), %r10d	# MEM[base: _224, offset: 0B], _3004
	movswl	2(%rax), %r12d	# MEM[base: _224, offset: 2B], _3009
	movswl	2(%rbp), %r13d	# MEM[base: tw1_2956, offset: 2B], _3011
	movswl	0(%rbp), %r9d	# MEM[base: tw1_2956, offset: 0B], _3006
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movl	%ecx, 128(%rsp)	# _3025, %sfp
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movl	%r12d, %r8d	# _3009, tmp4864
	movl	%r10d, %ecx	# _3004, tmp4863
	imull	%r13d, %r8d	# _3011, tmp4864
	imull	%r9d, %ecx	# _3006, tmp4863
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movswl	(%rbx), %r14d	# MEM[base: tw2_2957, offset: 0B], _3022
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	imull	%r13d, %r10d	# _3011, tmp4873
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movl	%r14d, (%rsp)	# _3022, %sfp
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subl	%r8d, %ecx	# tmp4864, tmp4865
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movl	%r14d, %r8d	# _3022, tmp4868
	movl	128(%rsp), %r14d	# %sfp, tmp4869
	imull	%edi, %r8d	# _2993, tmp4868
	imull	%esi, %r14d	# _3000, tmp4869
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	imull	%r12d, %r9d	# _3009, tmp4874
	addl	$16384, %ecx	#, tmp4866
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	subl	%r14d, %r8d	# tmp4869, tmp4870
	addl	$16384, %r8d	#, tmp4871
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leal	16384(%r10,%r9), %r9d	#, tmp4876
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	imull	128(%rsp), %edi	# %sfp, tmp4878
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	sarl	$15, %ecx	#, tmp4867
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	sarl	$15, %r8d	#, tmp4872
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	sarl	$15, %r9d	#, tmp4877
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	imull	(%rsp), %esi	# %sfp, tmp4879
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	leal	(%r8,%rcx), %r14d	#, _3037
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movzwl	(%r11), %r13d	# MEM[base: Fout_2954, offset: 0B], tmp4886
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leal	16384(%rdi,%rsi), %esi	#, tmp4881
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movl	%r14d, %edi	# _3037, tmp4883
	sarw	%di	# tmp4883
	subl	%edi, %r13d	# tmp4883, tmp4886
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movw	%r13w, (%rax)	# tmp4886, MEM[base: _224, offset: 0B]
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	sarl	$15, %esi	#, tmp4882
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	leal	(%rsi,%r9), %r10d	#, _3041
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movzwl	2(%r11), %r13d	# MEM[base: Fout_2954, offset: 2B], tmp4891
	movl	%r10d, %edi	# _3041, tmp4888
	sarw	%di	# tmp4888
	subl	%edi, %r13d	# tmp4888, tmp4891
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movw	%r13w, 2(%rax)	# tmp4891, MEM[base: _224, offset: 2B]
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subl	%esi, %r9d	# tmp4882, tmp4893
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movswl	%r9w, %esi	# tmp4893, tmp4894
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addw	%r10w, 2(%r11)	# _3041, MEM[base: Fout_2954, offset: 2B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movl	136(%rsp), %r10d	# %sfp, _1236
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addw	%r14w, (%r11)	# _3037, MEM[base: Fout_2954, offset: 0B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	imull	%r10d, %esi	# _1236, tmp4895
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subl	%r8d, %ecx	# tmp4872, tmp4902
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movswl	%cx, %ecx	# tmp4902, tmp4903
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movzwl	(%rax), %edi	# MEM[base: _224, offset: 0B], tmp4900
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	addl	$16384, %esi	#, tmp4896
	sarl	$15, %esi	#, tmp4897
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addl	%esi, %edi	# tmp4897, tmp4900
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movw	%di, (%rdx)	# tmp4900, MEM[base: _232, offset: 0B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	imull	%r10d, %ecx	# _1236, tmp4904
# kiss_fft.c:116:          tw1 += fstride;
	addq	$4, %rbp	#, tw1
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movzwl	2(%rax), %edi	# MEM[base: _224, offset: 2B], tmp4909
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	addl	$16384, %ecx	#, tmp4905
	sarl	$15, %ecx	#, tmp4906
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	subl	%ecx, %edi	# tmp4906, tmp4909
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movw	%di, 2(%rdx)	# tmp4909, MEM[base: _232, offset: 2B]
# kiss_fft.c:117:          tw2 += fstride*2;
	addq	$8, %rbx	#, tw2
# kiss_fft.c:132:          ++Fout;
	addq	$4, %r11	#, Fout
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subw	%si, (%rax)	# tmp4897, MEM[base: _224, offset: 0B]
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addw	%cx, 2(%rax)	# tmp4906, MEM[base: _224, offset: 2B]
	addq	$4, %rdx	#, ivtmp.761
	addq	$4, %rax	#, ivtmp.760
# kiss_fft.c:133:      }while(--k);
	testq	%r15, %r15	# k
# SUCC: 98 [89.0% (guessed)]  count:89941666 (estimated locally) (CAN_FALLTHRU) 100 [11.0% (guessed)]  count:11116386 (estimated locally) (FALLTHRU)
	jne	.L150	#,
# BLOCK 100, count:11116386 (estimated locally) seq:98
# PRED: 99 [11.0% (guessed)]  count:11116386 (estimated locally) (FALLTHRU)
# SUCC: 17 [always]  count:11116386 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L1	#
# BLOCK 101, count:2779096 (estimated locally) seq:99
# PRED: 80 [11.1% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU) 79 [10.0% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU)
.L29:
# kiss_fft.c:106:      tw1=tw2=st->twiddles;
	movq	128(%rsp), %r10	# %sfp, tw1
	movq	%rbp, 16(%rsp)	# _210, %sfp
	movq	%rbx, 32(%rsp)	# _212, %sfp
	movq	%r12, %r8	# _3673, ivtmp.898
	movq	%r10, %r14	# tw1, tw2
# SUCC: 103 [always]  count:2779096 (estimated locally) (CAN_FALLTHRU)
	jmp	.L35	#
# BLOCK 102, count:22485416 (estimated locally) seq:100
# PRED: 103 [89.0% (guessed)]  count:22485416 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L151:
# SUCC: 103 [always]  count:22485416 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
	decq	%r15	# k
# BLOCK 103, count:25264512 (estimated locally) seq:101
# PRED: 102 [always]  count:22485416 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 101 [always]  count:2779096 (estimated locally) (CAN_FALLTHRU)
.L35:
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movswl	(%r11), %edx	# MEM[base: Fout_3807, offset: 0B], MEM[base: Fout_3807, offset: 0B]
	imull	$10922, %edx, %edx	#, MEM[base: Fout_3807, offset: 0B], tmp4131
	addl	$16384, %edx	#, tmp4132
	sarl	$15, %edx	#, tmp4133
	movw	%dx, (%r11)	# tmp4133, MEM[base: Fout_3807, offset: 0B]
	movswl	2(%r11), %edx	# MEM[base: Fout_3807, offset: 2B], MEM[base: Fout_3807, offset: 2B]
	imull	$10922, %edx, %edx	#, MEM[base: Fout_3807, offset: 2B], tmp4135
	addl	$16384, %edx	#, tmp4136
	sarl	$15, %edx	#, tmp4137
	movw	%dx, 2(%r11)	# tmp4137, MEM[base: Fout_3807, offset: 2B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movswl	(%rax), %edx	# MEM[base: _73, offset: 0B], MEM[base: _73, offset: 0B]
	imull	$10922, %edx, %edx	#, MEM[base: _73, offset: 0B], tmp4139
	addl	$16384, %edx	#, tmp4140
	sarl	$15, %edx	#, tmp4141
	movw	%dx, (%rax)	# tmp4141, MEM[base: _73, offset: 0B]
	movswl	2(%rax), %edx	# MEM[base: _73, offset: 2B], MEM[base: _73, offset: 2B]
	imull	$10922, %edx, %edx	#, MEM[base: _73, offset: 2B], tmp4143
	addl	$16384, %edx	#, tmp4144
	sarl	$15, %edx	#, tmp4145
	movw	%dx, 2(%rax)	# tmp4145, MEM[base: _73, offset: 2B]
# kiss_fft.c:109:          C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);
	movswl	(%r8), %ecx	# MEM[base: _2722, offset: 0B], MEM[base: _2722, offset: 0B]
	movswl	2(%r8), %edx	# MEM[base: _2722, offset: 2B], MEM[base: _2722, offset: 2B]
	imull	$10922, %ecx, %ecx	#, MEM[base: _2722, offset: 0B], tmp4147
	imull	$10922, %edx, %edx	#, MEM[base: _2722, offset: 2B], tmp4150
	addl	$16384, %ecx	#, tmp4148
	addl	$16384, %edx	#, tmp4151
	sarl	$15, %edx	#, _3853
	sarl	$15, %ecx	#, _3846
	movw	%cx, (%r8)	# _3846, MEM[base: _2722, offset: 0B]
	movw	%dx, 2(%r8)	# _3853, MEM[base: _2722, offset: 2B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movswl	(%rax), %r9d	# MEM[base: _73, offset: 0B], _3857
	movswl	2(%rax), %ebp	# MEM[base: _73, offset: 2B], _3862
	movswl	(%r10), %edi	# MEM[base: tw1_3809, offset: 0B], _3859
	movswl	2(%r10), %r12d	# MEM[base: tw1_3809, offset: 2B], _3864
	movl	%r9d, %esi	# _3857, tmp4152
	movl	%ebp, %r13d	# _3862, tmp4153
	imull	%edi, %esi	# _3859, tmp4152
	imull	%r12d, %r13d	# _3864, tmp4153
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movswl	(%r14), %ebx	# MEM[base: tw2_3810, offset: 0B], _3875
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	imull	%r12d, %r9d	# _3864, tmp4162
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movl	%ebx, 128(%rsp)	# _3875, %sfp
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subl	%r13d, %esi	# tmp4153, tmp4154
	addl	$16384, %esi	#, tmp4155
	sarl	$15, %esi	#, tmp4155
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movswl	2(%r14), %ebx	# MEM[base: tw2_3810, offset: 2B], _3878
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movl	%esi, (%rsp)	# tmp4155, %sfp
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movl	128(%rsp), %esi	# %sfp, tmp4157
	movl	%edx, %r13d	# _3853, tmp4158
	imull	%ebx, %r13d	# _3878, tmp4158
	imull	%ecx, %esi	# _3846, tmp4157
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	imull	%ebp, %edi	# _3862, tmp4163
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	subl	%r13d, %esi	# tmp4158, tmp4159
	addl	$16384, %esi	#, tmp4160
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movzwl	(%rsp), %r13d	# %sfp, tmp5954
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	sarl	$15, %esi	#, tmp4161
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leal	16384(%r9,%rdi), %edi	#, tmp4165
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addl	%esi, %r13d	# tmp4161, _3890
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	sarl	$15, %edi	#, tmp4166
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	imull	%ebx, %ecx	# _3878, tmp4167
	imull	128(%rsp), %edx	# %sfp, tmp4168
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movzwl	(%r11), %ebx	# MEM[base: Fout_3807, offset: 0B], tmp4175
# kiss_fft.c:116:          tw1 += fstride;
	addq	16(%rsp), %r10	# %sfp, tw1
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leal	16384(%rcx,%rdx), %edx	#, tmp4170
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movl	%r13d, %ecx	# _3890, tmp4172
	sarw	%cx	# tmp4172
	subl	%ecx, %ebx	# tmp4172, tmp4175
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movw	%bx, (%rax)	# tmp4175, MEM[base: _73, offset: 0B]
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	sarl	$15, %edx	#, tmp4171
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	leal	(%rdx,%rdi), %r9d	#, _3894
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movzwl	2(%r11), %ebx	# MEM[base: Fout_3807, offset: 2B], tmp4180
	movl	%r9d, %ecx	# _3894, tmp4177
	sarw	%cx	# tmp4177
	subl	%ecx, %ebx	# tmp4177, tmp4180
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movw	%bx, 2(%rax)	# tmp4180, MEM[base: _73, offset: 2B]
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subl	%edx, %edi	# tmp4171, tmp4182
# kiss_fft.c:117:          tw2 += fstride*2;
	addq	32(%rsp), %r14	# %sfp, tw2
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addw	%r13w, (%r11)	# _3890, MEM[base: Fout_3807, offset: 0B]
	addw	%r9w, 2(%r11)	# _3894, MEM[base: Fout_3807, offset: 2B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movl	136(%rsp), %ebx	# %sfp, _1236
	movswl	%di, %ecx	# tmp4182, tmp4183
	imull	%ebx, %ecx	# _1236, tmp4184
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movzwl	(%rax), %edx	# MEM[base: _73, offset: 0B], tmp4189
# kiss_fft.c:132:          ++Fout;
	addq	$4, %r11	#, Fout
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	addl	$16384, %ecx	#, tmp4185
	sarl	$15, %ecx	#, tmp4186
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addl	%ecx, %edx	# tmp4186, tmp4189
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movw	%dx, (%r8)	# tmp4189, MEM[base: _2722, offset: 0B]
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movzwl	(%rsp), %edx	# %sfp, tmp4191
	addq	$4, %r8	#, ivtmp.898
	subl	%esi, %edx	# tmp4161, tmp4191
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movswl	%dx, %edx	# tmp4191, tmp4192
	imull	%ebx, %edx	# _1236, tmp4193
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movzwl	2(%rax), %esi	# MEM[base: _73, offset: 2B], tmp4198
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	addl	$16384, %edx	#, tmp4194
	sarl	$15, %edx	#, tmp4195
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	subl	%edx, %esi	# tmp4195, tmp4198
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movw	%si, -2(%r8)	# tmp4198, MEM[base: _2722, offset: 2B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subw	%cx, (%rax)	# tmp4186, MEM[base: _73, offset: 0B]
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addw	%dx, 2(%rax)	# tmp4195, MEM[base: _73, offset: 2B]
	addq	$4, %rax	#, ivtmp.897
# kiss_fft.c:133:      }while(--k);
	testq	%r15, %r15	# k
# SUCC: 102 [89.0% (guessed)]  count:22485416 (estimated locally) (CAN_FALLTHRU) 104 [11.0% (guessed)]  count:2779096 (estimated locally) (FALLTHRU)
	jne	.L151	#,
# BLOCK 104, count:2779096 (estimated locally) seq:102
# PRED: 103 [11.0% (guessed)]  count:2779096 (estimated locally) (FALLTHRU)
# SUCC: 17 [always]  count:2779096 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L1	#
# BLOCK 105, count:2779096 (estimated locally) seq:103
# PRED: 72 [11.1% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU) 71 [10.0% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU)
.L13:
	movq	128(%rsp), %rsi	# %sfp, tw1
# SUCC: 106 [always]  count:2779096 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	4(%r11,%r10,4), %rcx	#, _163
# BLOCK 106, count:25264512 (estimated locally) seq:104
# PRED: 105 [always]  count:2779096 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 106 [89.0% (guessed)]  count:22485416 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L19:
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movswl	(%r11), %r8d	# MEM[base: Fout_2432, offset: 0B], MEM[base: Fout_2432, offset: 0B]
# kiss_fft.c:39:         ++Fout2;
	addq	$4, %rax	#, Fout2
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movl	%r8d, %edx	# MEM[base: Fout_2432, offset: 0B], tmp3007
	sall	$14, %edx	#, tmp3007
	subl	%r8d, %edx	# MEM[base: Fout_2432, offset: 0B], tmp3008
	addl	$16384, %edx	#, tmp3009
	movswl	2(%r11), %r8d	# MEM[base: Fout_2432, offset: 2B], MEM[base: Fout_2432, offset: 2B]
	sarl	$15, %edx	#, tmp3010
	movw	%dx, (%r11)	# tmp3010, MEM[base: Fout_2432, offset: 0B]
	movl	%r8d, %edx	# MEM[base: Fout_2432, offset: 2B], tmp3013
	sall	$14, %edx	#, tmp3013
	subl	%r8d, %edx	# MEM[base: Fout_2432, offset: 2B], tmp3014
	addl	$16384, %edx	#, tmp3015
	sarl	$15, %edx	#, tmp3016
	movw	%dx, 2(%r11)	# tmp3016, MEM[base: Fout_2432, offset: 2B]
# kiss_fft.c:33:         C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);
	movswl	-4(%rax), %edx	# MEM[base: Fout2_2434, offset: 0B], MEM[base: Fout2_2434, offset: 0B]
	movswl	-2(%rax), %r9d	# MEM[base: Fout2_2434, offset: 2B], MEM[base: Fout2_2434, offset: 2B]
	movl	%edx, %r8d	# MEM[base: Fout2_2434, offset: 0B], tmp3019
	sall	$14, %r8d	#, tmp3019
	subl	%edx, %r8d	# MEM[base: Fout2_2434, offset: 0B], tmp3020
	movl	%r9d, %edx	# MEM[base: Fout2_2434, offset: 2B], tmp3024
	sall	$14, %edx	#, tmp3024
	subl	%r9d, %edx	# MEM[base: Fout2_2434, offset: 2B], tmp3025
	addl	$16384, %r8d	#, tmp3021
	addl	$16384, %edx	#, tmp3026
	sarl	$15, %r8d	#, _2455
	sarl	$15, %edx	#, _2462
	movw	%r8w, -4(%rax)	# _2455, MEM[base: Fout2_2434, offset: 0B]
	movw	%dx, -2(%rax)	# _2462, MEM[base: Fout2_2434, offset: 2B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movl	%r8d, %r9d	# _2455, tmp3027
	movl	%edx, %r10d	# _2462, tmp3028
	movswl	(%rsi), %ebx	# MEM[base: tw1_2435, offset: 0B], _2466
	movswl	2(%rsi), %ebp	# MEM[base: tw1_2435, offset: 2B], _2469
	imull	%ebx, %r9d	# _2466, tmp3027
	imull	%ebp, %r10d	# _2469, tmp3028
	imull	%ebp, %r8d	# _2469, tmp3036
	imull	%ebx, %edx	# _2466, tmp3037
	subl	%r10d, %r9d	# tmp3028, tmp3029
	addl	$16384, %r9d	#, tmp3030
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movzwl	(%r11), %r10d	# MEM[base: Fout_2432, offset: 0B], tmp3034
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	sarl	$15, %r9d	#, tmp3031
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subl	%r9d, %r10d	# tmp3031, tmp3034
	movw	%r10w, -4(%rax)	# tmp3034, MEM[base: Fout2_2434, offset: 0B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	leal	16384(%r8,%rdx), %edx	#, tmp3039
	sarl	$15, %edx	#, tmp3040
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movzwl	2(%r11), %r8d	# MEM[base: Fout_2432, offset: 2B], tmp3043
# kiss_fft.c:36:         tw1 += fstride;
	addq	%rdi, %rsi	# _3597, tw1
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subl	%edx, %r8d	# tmp3040, tmp3043
	movw	%r8w, -2(%rax)	# tmp3043, MEM[base: Fout2_2434, offset: 2B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addw	%r9w, (%r11)	# tmp3031, MEM[base: Fout_2432, offset: 0B]
	addw	%dx, 2(%r11)	# tmp3040, MEM[base: Fout_2432, offset: 2B]
# kiss_fft.c:40:         ++Fout;
	addq	$4, %r11	#, Fout
# kiss_fft.c:41:     }while (--m);
	cmpq	%r11, %rcx	# Fout, _163
# SUCC: 106 [89.0% (guessed)]  count:22485416 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 107 [11.0% (guessed)]  count:2779096 (estimated locally) (FALLTHRU)
	jne	.L19	#,
# BLOCK 107, count:2779096 (estimated locally) seq:105
# PRED: 106 [11.0% (guessed)]  count:2779096 (estimated locally) (FALLTHRU)
# SUCC: 17 [always]  count:2779096 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L1	#
# BLOCK 108, count:0 (estimated locally) seq:106
# PRED: 56 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 55 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU)
.L141:
	leaq	4(%r11), %rcx	#, Fout
# SUCC: 88 [always]  count:0 (estimated locally) (CAN_FALLTHRU)
	jmp	.L21	#
	.cfi_endproc
.LFE55:
	.size	kf_work, .-kf_work
	.p2align 4
	.globl	kiss_fft_alloc
	.type	kiss_fft_alloc, @function
kiss_fft_alloc:
.LFB57:
	.cfi_startproc
	endbr64	
# BLOCK 2, count:250641430 (estimated locally) seq:0
# PRED: ENTRY [always]  count:250641430 (estimated locally) (FALLTHRU)
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# kiss_fft.c:343:         + sizeof(kiss_fft_cpx)*(nfft-1); /* twiddle factors*/
	leal	-1(%rdi), %r15d	#, tmp337
	movslq	%r15d, %rax	# tmp337, tmp187
# kiss_fft.c:340: {
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebx	# tmp376, nfft
# kiss_fft.c:342:     size_t memneeded = sizeof(struct kiss_fft_state)
	leaq	268(,%rax,4), %rdi	#, memneeded
# kiss_fft.c:340: {
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
# kiss_fft.c:345:     if ( lenmem==NULL ) {
	testq	%rcx, %rcx	# lenmem
# SUCC: 65 [17.4% (guessed)]  count:43686801 (estimated locally) (CAN_FALLTHRU) 3 [82.6% (guessed)]  count:206954629 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L225	#,
# BLOCK 3, count:206954630 (estimated locally) seq:1
# PRED: 2 [82.6% (guessed)]  count:206954629 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%rdx, %r12	# tmp378, mem
# kiss_fft.c:348:         if (mem != NULL && *lenmem >= memneeded)
	testq	%rdx, %rdx	# mem
# SUCC: 4 [85.1% (guessed)]  count:176118391 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 69 [14.9% (guessed)]  count:30836239 (estimated locally) (CAN_FALLTHRU)
	je	.L226	#,
# BLOCK 4, count:176118389 (estimated locally) seq:2
# PRED: 3 [85.1% (guessed)]  count:176118391 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:348:         if (mem != NULL && *lenmem >= memneeded)
	cmpq	%rdi, (%rcx)	# memneeded, *lenmem_31(D)
# kiss_fft.c:350:         *lenmem = memneeded;
	movq	%rdi, (%rcx)	# memneeded, *lenmem_31(D)
# SUCC: 5 [71.0% (guessed)]  count:125044056 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 29 [29.0% (guessed)]  count:51074333 (estimated locally) (CAN_FALLTHRU)
# kiss_fft.c:348:         if (mem != NULL && *lenmem >= memneeded)
	jb	.L227	#,
# BLOCK 5, count:118111601 (estimated locally) seq:3
# PRED: 4 [71.0% (guessed)]  count:125044056 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 66 [always]  count:0 (estimated locally) (CAN_FALLTHRU)
.L154:
	pxor	%xmm7, %xmm7	# _125
	cvtsi2sdl	%ebx, %xmm7	# nfft, _125
# kiss_fft.c:354:         st->nfft=nfft;
	movl	%ebx, (%r12)	# nfft, st_111->nfft
# kiss_fft.c:355:         st->inverse = inverse_fft;
	movl	%esi, 4(%r12)	# inverse_fft, st_111->inverse
	movsd	%xmm7, 24(%rsp)	# _125, %sfp
# kiss_fft.c:357:         for (i=0;i<nfft;++i) {
	testl	%ebx, %ebx	# nfft
# SUCC: 6 [89.0% (guessed)]  count:105119325 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 9 [11.0% (guessed)]  count:12992276 (estimated locally) (CAN_FALLTHRU)
	jle	.L193	#,
# BLOCK 6, count:105119325 (estimated locally) seq:4
# PRED: 5 [89.0% (guessed)]  count:105119325 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movsd	.LC8(%rip), %xmm0	#, tmp277
	movsd	.LC10(%rip), %xmm2	#, tmp331
	movsd	.LC9(%rip), %xmm1	#, tmp334
	movl	%r15d, %r15d	# tmp337, _135
	xorl	%ebp, %ebp	# ivtmp.1133
	leaq	40(%rsp), %r14	#, tmp336
	leaq	32(%rsp), %r13	#, tmp335
	movsd	%xmm2, (%rsp)	# tmp331, %sfp
	divsd	24(%rsp), %xmm0	# %sfp, reciptmp_110
	testl	%esi, %esi	# inverse_fft
# SUCC: 7 [50.0% (guessed)]  count:52559663 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 62 [50.0% (guessed)]  count:52559663 (estimated locally) (CAN_FALLTHRU)
	jne	.L189	#,
# BLOCK 7, count:52559663 (estimated locally) seq:5
# PRED: 6 [50.0% (guessed)]  count:52559663 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:359:             double phase = -2*pi*i / nfft;
	mulsd	%xmm1, %xmm0	# tmp334, reciptmp_110
	movsd	.LC11(%rip), %xmm7	#, tmp332
	movsd	%xmm7, 8(%rsp)	# tmp332, %sfp
# SUCC: 8 [always]  count:52559663 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movsd	%xmm0, 16(%rsp)	# reciptmp_110, %sfp
# BLOCK 8, count:477815114 (estimated locally) seq:6
# PRED: 7 [always]  count:52559663 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 8 [89.0% (guessed)]  count:425255452 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L192:
# kiss_fft.c:359:             double phase = -2*pi*i / nfft;
	pxor	%xmm0, %xmm0	# tmp281
	cvtsi2sdl	%ebp, %xmm0	# ivtmp.1133, tmp281
	movq	%r13, %rsi	# tmp335,
	movq	%r14, %rdi	# tmp336,
# kiss_fft.c:359:             double phase = -2*pi*i / nfft;
	mulsd	16(%rsp), %xmm0	# %sfp, phase
	call	sincos@PLT	#
# kiss_fft.c:362:             kf_cexp(st->twiddles+i, phase );
	movsd	32(%rsp), %xmm1	#, tmp286
	movsd	(%rsp), %xmm3	# %sfp, tmp331
	movsd	8(%rsp), %xmm5	# %sfp, tmp332
	mulsd	%xmm3, %xmm1	# tmp331, tmp286
	movsd	40(%rsp), %xmm0	#, sincostmp_269
	pxor	%xmm2, %xmm2	# tmp291
	mulsd	%xmm3, %xmm0	# tmp331, tmp294
	addsd	%xmm5, %xmm1	# tmp332, tmp288
	cvttsd2sil	%xmm1, %eax	# tmp288, tmp290
	addsd	%xmm5, %xmm0	# tmp332, tmp296
	cvtsi2sdl	%eax, %xmm2	# tmp290, tmp291
	leal	-1(%rax), %edx	#, tmp292
	comisd	%xmm1, %xmm2	# tmp288, tmp291
	pxor	%xmm1, %xmm1	# tmp299
	cmova	%edx, %eax	# tmp290,, tmp292, tmp290
	movw	%ax, 264(%r12,%rbp,4)	# tmp290, MEM[base: st_111, index: ivtmp.1133_195, step: 4, offset: 264B]
	cvttsd2sil	%xmm0, %eax	# tmp296, tmp298
	cvtsi2sdl	%eax, %xmm1	# tmp298, tmp299
	leal	-1(%rax), %edx	#, tmp300
	comisd	%xmm0, %xmm1	# tmp296, tmp299
	cmova	%edx, %eax	# tmp298,, tmp300, tmp298
	movw	%ax, 266(%r12,%rbp,4)	# tmp298, MEM[base: st_111, index: ivtmp.1133_195, step: 4, offset: 266B]
	movq	%rbp, %rax	# ivtmp.1133, ivtmp.1133
	incq	%rbp	# ivtmp.1133
# kiss_fft.c:357:         for (i=0;i<nfft;++i) {
	cmpq	%rax, %r15	# ivtmp.1133, _135
# SUCC: 8 [89.0% (guessed)]  count:425255452 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 9 [11.0% (guessed)]  count:52559662 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L192	#,
# BLOCK 9, count:118111601 (estimated locally) seq:7
# PRED: 8 [11.0% (guessed)]  count:52559662 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT) 5 [11.0% (guessed)]  count:12992276 (estimated locally) (CAN_FALLTHRU) 64 [always]  count:52559662 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
.L193:
# kiss_fft.c:313:     floor_sqrt = floor( sqrt((double)n) );
	movsd	24(%rsp), %xmm0	# %sfp, _125
	movsd	.LC5(%rip), %xmm1	#, tmp194
	sqrtsd	%xmm0, %xmm0	# _125, _125
	movsd	.LC4(%rip), %xmm2	#, tmp190
# kiss_fft.c:365:         kf_factor(nfft,st->factors);
	leaq	8(%r12), %rcx	#, facbuf
# kiss_fft.c:313:     floor_sqrt = floor( sqrt((double)n) );
	andpd	%xmm0, %xmm1	# _50, tmp192
	comisd	%xmm1, %xmm2	# tmp192, tmp190
# SUCC: 11 [50.0% (guessed)]  count:59055801 (estimated locally) (CAN_FALLTHRU) 10 [50.0% (guessed)]  count:59055801 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jbe	.L159	#,
# BLOCK 10, count:59055801 (estimated locally) seq:8
# PRED: 9 [50.0% (guessed)]  count:59055801 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cvttsd2siq	%xmm0, %rax	# _50, tmp195
	pxor	%xmm0, %xmm0	# _50
# SUCC: 11 [always]  count:59055801 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cvtsi2sdq	%rax, %xmm0	# tmp195, _50
# BLOCK 11, count:118111602 (estimated locally) seq:9
# PRED: 9 [50.0% (guessed)]  count:59055801 (estimated locally) (CAN_FALLTHRU) 10 [always]  count:59055801 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
.L159:
	movsd	.LC6(%rip), %xmm1	#, tmp196
	leaq	16(%r12), %rdi	#, prephitmp_214
	comisd	%xmm0, %xmm1	# _50, tmp196
# kiss_fft.c:311:     int p=4;
	movl	$4, %esi	#, p
	movsd	.LC7(%rip), %xmm1	#, tmp197
# SUCC: 12 [50.0% (guessed)]  count:59055801 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 33 [50.0% (guessed)]  count:59055801 (estimated locally) (CAN_FALLTHRU)
	jbe	.L218	#,
# BLOCK 12, count:59055801 (estimated locally) seq:10
# PRED: 11 [50.0% (guessed)]  count:59055801 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	comisd	%xmm0, %xmm1	# _50, tmp197
# SUCC: 13 [50.0% (guessed)]  count:29527901 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 24 [50.0% (guessed)]  count:29527901 (estimated locally) (CAN_FALLTHRU)
	ja	.L162	#,
# BLOCK 13, count:208299979 (estimated locally) seq:11
# PRED: 21 [always]  count:89388275 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 12 [50.0% (guessed)]  count:29527901 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 31 [50.0% (guessed)]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 32 [always]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L171:
# kiss_fft.c:317:         while (n % p) {
	movl	%ebx, %eax	# nfft, tmp200
	cltd
	idivl	%esi	# p
# kiss_fft.c:317:         while (n % p) {
	testl	%edx, %edx	# tmp199
# SUCC: 16 [50.0% (guessed)]  count:104149990 (estimated locally) (CAN_FALLTHRU) 14 [50.0% (guessed)]  count:104149990 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L163	#,
# BLOCK 14, count:223495271 (estimated locally) seq:12
# PRED: 13 [50.0% (guessed)]  count:104149990 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 15 [50.0% (guessed)]  count:99455396 (estimated locally) (CAN_FALLTHRU) 70 [always]  count:9945441 (estimated locally) (CAN_FALLTHRU)
.L170:
# kiss_fft.c:326:         n /= p;
	movl	%ebx, %eax	# nfft, nfft
	cltd
	idivl	%esi	# p
# kiss_fft.c:327:         *facbuf++ = p;
	movl	%esi, (%rcx)	# p, *facbuf_218
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# nfft, MEM[(int *)facbuf_218 + 4B]
# kiss_fft.c:326:         n /= p;
	movl	%eax, %ebx	# nfft, nfft
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$1, %eax	#, nfft
# SUCC: 15 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 30 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L152	#,
# BLOCK 15, count:198910791 (estimated locally) seq:13
# PRED: 14 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	16(%rcx), %rax	#, pretmp_224
	movq	%rdi, %rcx	# prephitmp_214, facbuf
	movq	%rax, %rdi	# pretmp_224, prephitmp_214
# kiss_fft.c:317:         while (n % p) {
	movl	%ebx, %eax	# nfft, tmp200
	cltd
	idivl	%esi	# p
# kiss_fft.c:317:         while (n % p) {
	testl	%edx, %edx	# tmp199
# SUCC: 16 [50.0% (guessed)]  count:99455396 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 14 [50.0% (guessed)]  count:99455396 (estimated locally) (CAN_FALLTHRU)
	je	.L170	#,
# BLOCK 16, count:203605385 (estimated locally) seq:14
# PRED: 13 [50.0% (guessed)]  count:104149990 (estimated locally) (CAN_FALLTHRU) 15 [50.0% (guessed)]  count:99455396 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
.L163:
# kiss_fft.c:318:             switch (p) {
	cmpl	$2, %esi	#, p
# SUCC: 17 [72.5% (guessed)]  count:147538931 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 21 [27.5% (guessed)]  count:56066454 (estimated locally) (CAN_FALLTHRU)
	je	.L168	#,
# BLOCK 17, count:203605385 (estimated locally) seq:15
# PRED: 16 [72.5% (guessed)]  count:147538931 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$4, %esi	#, p
# SUCC: 31 [38.0% (guessed)]  count:77377641 (estimated locally) (CAN_FALLTHRU) 18 [62.0% (guessed)]  count:126227744 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L228	#,
# BLOCK 18, count:44698608 (estimated locally) seq:16
# PRED: 17 [62.0% (guessed)]  count:126227744 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:317:         while (n % p) {
	testb	$1, %bl	#, nfft
# SUCC: 21 [50.0% (guessed)]  count:22349304 (estimated locally) (CAN_FALLTHRU) 19 [50.0% (guessed)]  count:22349304 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L168	#,
# BLOCK 19, count:22349304 (estimated locally) seq:17
# PRED: 18 [50.0% (guessed)]  count:22349304 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:326:         n /= p;
	movl	%ebx, %eax	# nfft, tmp204
	shrl	$31, %eax	#, tmp204
	addl	%ebx, %eax	# nfft, tmp205
	sarl	%eax	# tmp206
# kiss_fft.c:327:         *facbuf++ = p;
	movl	$2, (%rcx)	#, *facbuf_211
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# tmp206, MEM[(int *)facbuf_211 + 4B]
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$3, %ebx	#, nfft
# SUCC: 20 [89.0% (guessed)]  count:19890881 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 30 [11.0% (guessed)]  count:2458423 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L152	#,
# BLOCK 20, count:19890881 (estimated locally) seq:18
# PRED: 19 [89.0% (guessed)]  count:19890881 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	16(%rcx), %rdx	#, pretmp_253
# kiss_fft.c:317:         while (n % p) {
	movl	%eax, %ebx	# tmp206, nfft
	movq	%rdi, %rcx	# prephitmp_214, facbuf
	movq	%rdx, %rdi	# pretmp_253, prephitmp_214
	testb	$1, %al	#, tmp206
# SUCC: 21 [50.0% (guessed)]  count:9945441 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 70 [50.0% (guessed)]  count:9945441 (estimated locally) (CAN_FALLTHRU)
	je	.L169	#,
# BLOCK 21, count:89388275 (estimated locally) seq:19
# PRED: 18 [50.0% (guessed)]  count:22349304 (estimated locally) (CAN_FALLTHRU) 20 [50.0% (guessed)]  count:9945441 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 16 [27.5% (guessed)]  count:56066454 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L168:
# kiss_fft.c:329:     } while (n > 1);
	movl	%ebx, %esi	# nfft, p
# SUCC: 13 [always]  count:89388275 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jmp	.L171	#
# BLOCK 22, count:104149989 (estimated locally) seq:20
# PRED: 24 [50.0% (guessed)]  count:104149990 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L198:
# kiss_fft.c:318:             switch (p) {
	leal	-2(%rsi), %eax	#, tmp325
	andl	$-3, %eax	#, tmp325
# SUCC: 23 [63.8% (guessed)]  count:66415777 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 28 [36.2% (guessed)]  count:37734212 (estimated locally) (CAN_FALLTHRU)
	je	.L204	#,
# BLOCK 23, count:89388275 (estimated locally) seq:21
# PRED: 22 [63.8% (guessed)]  count:66415777 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 27 [63.8% (guessed)]  count:63422065 (estimated locally) (CAN_FALLTHRU)
.L230:
	addl	$2, %esi	#, p
# kiss_fft.c:323:             if (p > floor_sqrt)
	pxor	%xmm1, %xmm1	# tmp327
	cvtsi2sdl	%esi, %xmm1	# p, tmp327
	comisd	%xmm0, %xmm1	# _50, tmp327
# SUCC: 24 [always]  count:89388275 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
	cmova	%ebx, %esi	# p,, nfft, p
# BLOCK 24, count:208299979 (estimated locally) seq:22
# PRED: 12 [50.0% (guessed)]  count:29527901 (estimated locally) (CAN_FALLTHRU) 23 [always]  count:89388275 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 28 [always]  count:73767543 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
.L162:
	movl	%ebx, %eax	# nfft, tmp328
	cltd
	idivl	%esi	# p
# kiss_fft.c:317:         while (n % p) {
	testl	%edx, %edx	# tmp329
# SUCC: 22 [50.0% (guessed)]  count:104149990 (estimated locally) (CAN_FALLTHRU) 25 [50.0% (guessed)]  count:104149990 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L198	#,
# BLOCK 25, count:223495271 (estimated locally) seq:23
# PRED: 24 [50.0% (guessed)]  count:104149990 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 26 [50.0% (guessed)]  count:99455396 (estimated locally) (CAN_FALLTHRU)
.L229:
# kiss_fft.c:327:         *facbuf++ = p;
	movl	%esi, (%rcx)	# p, *facbuf_59
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# nfft, MEM[(int *)facbuf_59 + 4B]
# kiss_fft.c:326:         n /= p;
	movl	%eax, %ebx	# tmp328, nfft
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$1, %eax	#, nfft
# SUCC: 26 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 30 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L152	#,
# BLOCK 26, count:198910791 (estimated locally) seq:24
# PRED: 25 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	16(%rcx), %rax	#, pretmp_175
	movq	%rdi, %rcx	# prephitmp_214, facbuf
	movq	%rax, %rdi	# pretmp_175, prephitmp_214
	movl	%ebx, %eax	# nfft, tmp328
	cltd
	idivl	%esi	# p
# kiss_fft.c:317:         while (n % p) {
	testl	%edx, %edx	# tmp329
# SUCC: 27 [50.0% (guessed)]  count:99455396 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 25 [50.0% (guessed)]  count:99455396 (estimated locally) (CAN_FALLTHRU)
	je	.L229	#,
# BLOCK 27, count:99455396 (estimated locally) seq:25
# PRED: 26 [50.0% (guessed)]  count:99455396 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:318:             switch (p) {
	leal	-2(%rsi), %eax	#, tmp325
	andl	$-3, %eax	#, tmp325
# SUCC: 23 [63.8% (guessed)]  count:63422065 (estimated locally) (CAN_FALLTHRU) 28 [36.2% (guessed)]  count:36033331 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L230	#,
# BLOCK 28, count:73767543 (estimated locally) seq:26
# PRED: 22 [36.2% (guessed)]  count:37734212 (estimated locally) (CAN_FALLTHRU) 27 [36.2% (guessed)]  count:36033331 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
.L204:
	movl	%ebx, %esi	# nfft, p
# SUCC: 24 [always]  count:73767543 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jmp	.L162	#
# BLOCK 29, count:51074332 (estimated locally) seq:27
# PRED: 4 [29.0% (guessed)]  count:51074333 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L227:
# SUCC: 30 [always]  count:51074332 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:341:     kiss_fft_cfg st=NULL;
	xorl	%r12d, %r12d	# <retval>
# BLOCK 30, count:250534154 (estimated locally) seq:28
# PRED: 25 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 65 [always (guessed)]  count:50619257 (estimated locally) (CAN_FALLTHRU) 50 [11.0% (guessed)]  count:2458178 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 29 [always]  count:51074332 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 14 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 19 [11.0% (guessed)]  count:2458423 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 38 [11.0% (guessed)]  count:2458423 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 57 [11.0% (guessed)]  count:2458178 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 40 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 46 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 69 [always]  count:30836239 (estimated locally) (CAN_FALLTHRU)
.L152:
# kiss_fft.c:368: }
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	movq	%r12, %rax	# <retval>,
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# SUCC: EXIT [always]  count:250534154 (estimated locally)
	ret	
# BLOCK 31, count:89388275 (estimated locally) seq:29
# PRED: 17 [38.0% (guessed)]  count:77377641 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L228:
	.cfi_restore_state
	addl	$2, %esi	#, p
# kiss_fft.c:323:             if (p > floor_sqrt)
	pxor	%xmm1, %xmm1	# tmp208
	cvtsi2sdl	%esi, %xmm1	# p, tmp208
	comisd	%xmm0, %xmm1	# _50, tmp208
# SUCC: 32 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 13 [50.0% (guessed)]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jbe	.L171	#,
# BLOCK 32, count:44694138 (estimated locally) seq:30
# PRED: 31 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:329:     } while (n > 1);
	movl	%ebx, %esi	# nfft, p
# SUCC: 13 [always]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jmp	.L171	#
# BLOCK 33, count:59055801 (estimated locally) seq:31
# PRED: 11 [50.0% (guessed)]  count:59055801 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L218:
	comisd	%xmm0, %xmm1	# _50, tmp209
# kiss_fft.c:317:         while (n % p) {
	movq	.LC3(%rip), %rax	#, tmp396
	movq	%rax, %xmm2	# tmp396, _133
# SUCC: 34 [50.0% (guessed)]  count:29527901 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 45 [50.0% (guessed)]  count:29527901 (estimated locally) (CAN_FALLTHRU)
	ja	.L172	#,
# BLOCK 34, count:407210770 (estimated locally) seq:32
# PRED: 41 [always]  count:198910791 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 33 [50.0% (guessed)]  count:29527901 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 61 [always]  count:89388275 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L180:
# kiss_fft.c:317:         while (n % p) {
	movl	%ebx, %eax	# nfft, tmp212
	cltd
	idivl	%esi	# p
# kiss_fft.c:317:         while (n % p) {
	testl	%edx, %edx	# tmp211
# SUCC: 35 [50.0% (guessed)]  count:203605385 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 40 [50.0% (guessed)]  count:203605385 (estimated locally) (CAN_FALLTHRU)
	je	.L173	#,
# BLOCK 35, count:203605385 (estimated locally) seq:33
# PRED: 34 [50.0% (guessed)]  count:203605385 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:318:             switch (p) {
	cmpl	$2, %esi	#, p
# SUCC: 36 [72.5% (guessed)]  count:147538931 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 56 [27.5% (guessed)]  count:56066454 (estimated locally) (CAN_FALLTHRU)
	je	.L174	#,
# BLOCK 36, count:203605385 (estimated locally) seq:34
# PRED: 35 [72.5% (guessed)]  count:147538931 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$4, %esi	#, p
# SUCC: 60 [38.0% (guessed)]  count:77377641 (estimated locally) (CAN_FALLTHRU) 37 [62.0% (guessed)]  count:126227744 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L231	#,
# BLOCK 37, count:44698608 (estimated locally) seq:35
# PRED: 36 [62.0% (guessed)]  count:126227744 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:317:         while (n % p) {
	testb	$1, %bl	#, nfft
# SUCC: 56 [50.0% (guessed)]  count:22349304 (estimated locally) (CAN_FALLTHRU) 38 [50.0% (guessed)]  count:22349304 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L174	#,
# BLOCK 38, count:22349304 (estimated locally) seq:36
# PRED: 37 [50.0% (guessed)]  count:22349304 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:326:         n /= p;
	movl	%ebx, %eax	# nfft, tmp214
	shrl	$31, %eax	#, tmp214
	addl	%ebx, %eax	# nfft, tmp215
	sarl	%eax	# tmp216
# kiss_fft.c:327:         *facbuf++ = p;
	movl	$2, (%rcx)	#, *facbuf_158
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# tmp216, MEM[(int *)facbuf_158 + 4B]
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$3, %ebx	#, nfft
# SUCC: 39 [89.0% (guessed)]  count:19890881 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 30 [11.0% (guessed)]  count:2458423 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L152	#,
# BLOCK 39, count:19890881 (estimated locally) seq:37
# PRED: 38 [89.0% (guessed)]  count:19890881 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	16(%rcx), %rdx	#, pretmp_173
# kiss_fft.c:317:         while (n % p) {
	movl	%eax, %ebx	# tmp216, nfft
	movq	%rdi, %rcx	# prephitmp_214, facbuf
# kiss_fft.c:319:                 case 4: p = 2; break;
	movl	$2, %esi	#, p
# kiss_fft.c:317:         while (n % p) {
	movq	%rdx, %rdi	# pretmp_173, prephitmp_214
	testb	$1, %al	#, tmp216
# SUCC: 40 [50.0% (guessed)]  count:9945441 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 56 [50.0% (guessed)]  count:9945441 (estimated locally) (CAN_FALLTHRU)
	jne	.L174	#,
# BLOCK 40, count:223495271 (estimated locally) seq:38
# PRED: 39 [50.0% (guessed)]  count:9945441 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 34 [50.0% (guessed)]  count:203605385 (estimated locally) (CAN_FALLTHRU) 58 [50.0% (guessed)]  count:9944446 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L173:
# kiss_fft.c:326:         n /= p;
	movl	%ebx, %eax	# nfft, nfft
	cltd
	idivl	%esi	# p
# kiss_fft.c:327:         *facbuf++ = p;
	movl	%esi, (%rcx)	# p, *facbuf_198
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# nfft, MEM[(int *)facbuf_198 + 4B]
# kiss_fft.c:326:         n /= p;
	movl	%eax, %ebx	# nfft, nfft
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$1, %eax	#, nfft
# SUCC: 41 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 30 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L152	#,
# BLOCK 41, count:198910791 (estimated locally) seq:39
# PRED: 40 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	16(%rcx), %rax	#, pretmp_204
	movq	%rdi, %rcx	# prephitmp_214, facbuf
	movq	%rax, %rdi	# pretmp_204, prephitmp_214
# SUCC: 34 [always]  count:198910791 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jmp	.L180	#
# BLOCK 42, count:104149989 (estimated locally) seq:40
# PRED: 45 [50.0% (guessed)]  count:104149990 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L181:
# kiss_fft.c:318:             switch (p) {
	cmpl	$2, %esi	#, p
# SUCC: 43 [72.5% (guessed)]  count:75470391 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 49 [27.5% (guessed)]  count:28679598 (estimated locally) (CAN_FALLTHRU)
	je	.L183	#,
# BLOCK 43, count:203605385 (estimated locally) seq:41
# PRED: 42 [72.5% (guessed)]  count:75470391 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 48 [72.5% (guessed)]  count:72068540 (estimated locally) (CAN_FALLTHRU)
.L232:
	cmpl	$4, %esi	#, p
# SUCC: 53 [38.0% (guessed)]  count:77377641 (estimated locally) (CAN_FALLTHRU) 44 [62.0% (guessed)]  count:126227744 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L184	#,
# BLOCK 44, count:89388275 (estimated locally) seq:42
# PRED: 43 [62.0% (guessed)]  count:126227744 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# SUCC: 45 [always]  count:89388275 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
# kiss_fft.c:329:     } while (n > 1);
	movl	%ebx, %esi	# nfft, p
# BLOCK 45, count:208299979 (estimated locally) seq:43
# PRED: 44 [always]  count:89388275 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 33 [50.0% (guessed)]  count:29527901 (estimated locally) (CAN_FALLTHRU) 54 [50.0% (guessed)]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 55 [always]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
.L172:
# kiss_fft.c:317:         while (n % p) {
	movl	%ebx, %eax	# nfft, tmp248
	cltd
	idivl	%esi	# p
# kiss_fft.c:317:         while (n % p) {
	testl	%edx, %edx	# tmp247
# SUCC: 42 [50.0% (guessed)]  count:104149990 (estimated locally) (CAN_FALLTHRU) 46 [50.0% (guessed)]  count:104149990 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L181	#,
# BLOCK 46, count:223495271 (estimated locally) seq:44
# PRED: 45 [50.0% (guessed)]  count:104149990 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 47 [50.0% (guessed)]  count:99455396 (estimated locally) (CAN_FALLTHRU) 71 [always]  count:9944446 (estimated locally) (CAN_FALLTHRU)
.L188:
# kiss_fft.c:326:         n /= p;
	movl	%ebx, %eax	# nfft, nfft
	cltd
	idivl	%esi	# p
# kiss_fft.c:327:         *facbuf++ = p;
	movl	%esi, (%rcx)	# p, *facbuf_152
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# nfft, MEM[(int *)facbuf_152 + 4B]
# kiss_fft.c:326:         n /= p;
	movl	%eax, %ebx	# nfft, nfft
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$1, %eax	#, nfft
# SUCC: 47 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 30 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L152	#,
# BLOCK 47, count:198910791 (estimated locally) seq:45
# PRED: 46 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	16(%rcx), %rax	#, pretmp_146
	movq	%rdi, %rcx	# prephitmp_214, facbuf
	movq	%rax, %rdi	# pretmp_146, prephitmp_214
# kiss_fft.c:317:         while (n % p) {
	movl	%ebx, %eax	# nfft, tmp248
	cltd
	idivl	%esi	# p
# kiss_fft.c:317:         while (n % p) {
	testl	%edx, %edx	# tmp247
# SUCC: 48 [50.0% (guessed)]  count:99455396 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 46 [50.0% (guessed)]  count:99455396 (estimated locally) (CAN_FALLTHRU)
	je	.L188	#,
# BLOCK 48, count:99455396 (estimated locally) seq:46
# PRED: 47 [50.0% (guessed)]  count:99455396 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:318:             switch (p) {
	cmpl	$2, %esi	#, p
# SUCC: 43 [72.5% (guessed)]  count:72068540 (estimated locally) (CAN_FALLTHRU) 49 [27.5% (guessed)]  count:27386856 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L232	#,
# BLOCK 49, count:89388275 (estimated locally) seq:47
# PRED: 42 [27.5% (guessed)]  count:28679598 (estimated locally) (CAN_FALLTHRU) 48 [27.5% (guessed)]  count:27386856 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
.L183:
# kiss_fft.c:323:             if (p > floor_sqrt)
	imull	$-1431655765, %ebx, %eax	#, nfft, tmp260
	addl	$715827882, %eax	#, tmp261
# kiss_fft.c:317:         while (n % p) {
	cmpl	$1431655764, %eax	#, tmp261
# SUCC: 67 [50.0% (guessed)]  count:44694138 (estimated locally) (CAN_FALLTHRU) 50 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	ja	.L203	#,
# BLOCK 50, count:22347069 (estimated locally) seq:48
# PRED: 49 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:326:         n /= p;
	movslq	%ebx, %rax	# nfft, nfft
	imulq	$1431655766, %rax, %rax	#, nfft, tmp263
	movl	%ebx, %edx	# nfft, tmp265
	sarl	$31, %edx	#, tmp265
	shrq	$32, %rax	#, tmp264
	subl	%edx, %eax	# tmp265, n
# kiss_fft.c:327:         *facbuf++ = p;
	movl	$3, (%rcx)	#, *facbuf_77
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# n, MEM[(int *)facbuf_77 + 4B]
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$5, %ebx	#, nfft
# SUCC: 51 [89.0% (guessed)]  count:19888891 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 30 [11.0% (guessed)]  count:2458178 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L152	#,
# BLOCK 51, count:19888892 (estimated locally) seq:49
# PRED: 50 [89.0% (guessed)]  count:19888891 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	imull	$-1431655765, %eax, %edx	#, n, tmp275
# kiss_fft.c:326:         n /= p;
	movl	%eax, %ebx	# n, nfft
# kiss_fft.c:329:     } while (n > 1);
	addl	$715827882, %edx	#, tmp276
# kiss_fft.c:317:         while (n % p) {
	cmpl	$1431655764, %edx	#, tmp276
	leaq	16(%rcx), %rdx	#, pretmp_116
	movq	%rdi, %rcx	# prephitmp_214, facbuf
	movq	%rdx, %rdi	# pretmp_116, prephitmp_214
# SUCC: 52 [50.0% (guessed)]  count:9944446 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 71 [50.0% (guessed)]  count:9944446 (estimated locally) (CAN_FALLTHRU)
	jbe	.L187	#,
# BLOCK 52, count:9944446 (estimated locally) seq:50
# PRED: 51 [50.0% (guessed)]  count:9944446 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	.LC3(%rip), %rax	#, tmp406
	movl	$5, %esi	#, p
	movq	%rax, %xmm1	# tmp406, _94
# SUCC: 54 [always]  count:9944446 (estimated locally) (CAN_FALLTHRU)
	jmp	.L186	#
# BLOCK 53, count:56070297 (estimated locally) seq:51
# PRED: 43 [38.0% (guessed)]  count:77377641 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L184:
	addl	$2, %esi	#, p
	pxor	%xmm1, %xmm1	# _94
# SUCC: 54 [always]  count:56070297 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cvtsi2sdl	%esi, %xmm1	# p, _94
# BLOCK 54, count:89388275 (estimated locally) seq:52
# PRED: 53 [always]  count:56070297 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 52 [always]  count:9944446 (estimated locally) (CAN_FALLTHRU) 67 [always]  count:44694138 (estimated locally) (CAN_FALLTHRU)
.L186:
# kiss_fft.c:323:             if (p > floor_sqrt)
	comisd	%xmm0, %xmm1	# _50, _94
# SUCC: 55 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 45 [50.0% (guessed)]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jbe	.L172	#,
# BLOCK 55, count:44694138 (estimated locally) seq:53
# PRED: 54 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:329:     } while (n > 1);
	movl	%ebx, %esi	# nfft, p
# SUCC: 45 [always]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jmp	.L172	#
# BLOCK 56, count:89388275 (estimated locally) seq:54
# PRED: 37 [50.0% (guessed)]  count:22349304 (estimated locally) (CAN_FALLTHRU) 35 [27.5% (guessed)]  count:56066454 (estimated locally) (CAN_FALLTHRU) 39 [50.0% (guessed)]  count:9945441 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L174:
	imull	$-1431655765, %ebx, %eax	#, nfft, tmp227
	addl	$715827882, %eax	#, tmp228
# kiss_fft.c:317:         while (n % p) {
	cmpl	$1431655764, %eax	#, tmp228
# SUCC: 68 [50.0% (guessed)]  count:44694138 (estimated locally) (CAN_FALLTHRU) 57 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	ja	.L201	#,
# BLOCK 57, count:22347069 (estimated locally) seq:55
# PRED: 56 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:326:         n /= p;
	movslq	%ebx, %rax	# nfft, nfft
	imulq	$1431655766, %rax, %rax	#, nfft, tmp230
	movl	%ebx, %edx	# nfft, tmp232
	sarl	$31, %edx	#, tmp232
	shrq	$32, %rax	#, tmp231
	subl	%edx, %eax	# tmp232, n
# kiss_fft.c:327:         *facbuf++ = p;
	movl	$3, (%rcx)	#, *facbuf_68
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# n, MEM[(int *)facbuf_68 + 4B]
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$5, %ebx	#, nfft
# SUCC: 58 [89.0% (guessed)]  count:19888891 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 30 [11.0% (guessed)]  count:2458178 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L152	#,
# BLOCK 58, count:19888892 (estimated locally) seq:56
# PRED: 57 [89.0% (guessed)]  count:19888891 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	imull	$-1431655765, %eax, %edx	#, n, tmp242
# kiss_fft.c:326:         n /= p;
	movl	%eax, %ebx	# n, nfft
# kiss_fft.c:320:                 case 2: p = 3; break;
	movl	$3, %esi	#, p
# kiss_fft.c:329:     } while (n > 1);
	addl	$715827882, %edx	#, tmp243
# kiss_fft.c:317:         while (n % p) {
	cmpl	$1431655764, %edx	#, tmp243
	leaq	16(%rcx), %rdx	#, pretmp_185
	movq	%rdi, %rcx	# prephitmp_214, facbuf
	movq	%rdx, %rdi	# pretmp_185, prephitmp_214
# SUCC: 40 [50.0% (guessed)]  count:9944446 (estimated locally) (CAN_FALLTHRU) 59 [50.0% (guessed)]  count:9944446 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jbe	.L173	#,
# BLOCK 59, count:9944446 (estimated locally) seq:57
# PRED: 58 [50.0% (guessed)]  count:9944446 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movapd	%xmm2, %xmm1	# _133, _133
	movl	$5, %esi	#, p
# SUCC: 61 [always]  count:9944446 (estimated locally) (CAN_FALLTHRU)
	jmp	.L176	#
# BLOCK 60, count:56070297 (estimated locally) seq:58
# PRED: 36 [38.0% (guessed)]  count:77377641 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L231:
	addl	$2, %esi	#, p
	pxor	%xmm1, %xmm1	# _133
# SUCC: 61 [always]  count:56070297 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cvtsi2sdl	%esi, %xmm1	# p, _133
# BLOCK 61, count:89388275 (estimated locally) seq:59
# PRED: 60 [always]  count:56070297 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 59 [always]  count:9944446 (estimated locally) (CAN_FALLTHRU) 68 [always]  count:44694138 (estimated locally) (CAN_FALLTHRU)
.L176:
# kiss_fft.c:323:             if (p > floor_sqrt)
	comisd	%xmm0, %xmm1	# _50, _133
	cmova	%ebx, %esi	# p,, nfft, p
# SUCC: 34 [always]  count:89388275 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jmp	.L180	#
# BLOCK 62, count:52559663 (estimated locally) seq:60
# PRED: 6 [50.0% (guessed)]  count:52559663 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L189:
# kiss_fft.c:359:             double phase = -2*pi*i / nfft;
	mulsd	%xmm1, %xmm0	# tmp334, reciptmp_110
	movsd	.LC11(%rip), %xmm3	#, tmp332
	movsd	%xmm3, 8(%rsp)	# tmp332, %sfp
# SUCC: 63 [always]  count:52559663 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movsd	%xmm0, 16(%rsp)	# reciptmp_110, %sfp
# BLOCK 63, count:477815114 (estimated locally) seq:61
# PRED: 62 [always]  count:52559663 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 63 [89.0% (guessed)]  count:425255452 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L196:
# kiss_fft.c:359:             double phase = -2*pi*i / nfft;
	pxor	%xmm0, %xmm0	# tmp302
	cvtsi2sdl	%ebp, %xmm0	# ivtmp.1141, tmp302
	movq	%r13, %rsi	# tmp335,
	movq	%r14, %rdi	# tmp336,
# kiss_fft.c:359:             double phase = -2*pi*i / nfft;
	mulsd	16(%rsp), %xmm0	# %sfp, phase
# kiss_fft.c:361:                 phase *= -1;
	xorpd	.LC12(%rip), %xmm0	#, phase
	call	sincos@PLT	#
# kiss_fft.c:362:             kf_cexp(st->twiddles+i, phase );
	movsd	32(%rsp), %xmm1	#, tmp310
	movsd	(%rsp), %xmm4	# %sfp, tmp331
	movsd	8(%rsp), %xmm6	# %sfp, tmp332
	mulsd	%xmm4, %xmm1	# tmp331, tmp310
	movsd	40(%rsp), %xmm0	#, sincostmp_101
	pxor	%xmm2, %xmm2	# tmp315
	mulsd	%xmm4, %xmm0	# tmp331, tmp318
	addsd	%xmm6, %xmm1	# tmp332, tmp312
	cvttsd2sil	%xmm1, %eax	# tmp312, tmp314
	addsd	%xmm6, %xmm0	# tmp332, tmp320
	cvtsi2sdl	%eax, %xmm2	# tmp314, tmp315
	leal	-1(%rax), %edx	#, tmp316
	comisd	%xmm1, %xmm2	# tmp312, tmp315
	pxor	%xmm1, %xmm1	# tmp323
	cmova	%edx, %eax	# tmp314,, tmp316, tmp314
	movw	%ax, 264(%r12,%rbp,4)	# tmp314, MEM[base: st_111, index: ivtmp.1141_85, step: 4, offset: 264B]
	cvttsd2sil	%xmm0, %eax	# tmp320, tmp322
	cvtsi2sdl	%eax, %xmm1	# tmp322, tmp323
	leal	-1(%rax), %edx	#, tmp324
	comisd	%xmm0, %xmm1	# tmp320, tmp323
	cmova	%edx, %eax	# tmp322,, tmp324, tmp322
	movw	%ax, 266(%r12,%rbp,4)	# tmp322, MEM[base: st_111, index: ivtmp.1141_85, step: 4, offset: 266B]
	movq	%rbp, %rax	# ivtmp.1141, ivtmp.1141
	incq	%rbp	# ivtmp.1141
# kiss_fft.c:357:         for (i=0;i<nfft;++i) {
	cmpq	%r15, %rax	# _90, ivtmp.1141
# SUCC: 63 [89.0% (guessed)]  count:425255452 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 64 [11.0% (guessed)]  count:52559662 (estimated locally) (FALLTHRU)
	jne	.L196	#,
# BLOCK 64, count:52559662 (estimated locally) seq:62
# PRED: 63 [11.0% (guessed)]  count:52559662 (estimated locally) (FALLTHRU)
# SUCC: 9 [always]  count:52559662 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L193	#
# BLOCK 65, count:50619257 (estimated locally) seq:63
# PRED: 2 [17.4% (guessed)]  count:43686801 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L225:
	movl	%esi, (%rsp)	# inverse_fft, %sfp
# kiss_fft.c:346:         st = ( kiss_fft_cfg)KISS_FFT_MALLOC( memneeded );
	call	malloc@PLT	#
# kiss_fft.c:352:     if (st) {
	testq	%rax, %rax	# <retval>
	movl	(%rsp), %esi	# %sfp, inverse_fft
# kiss_fft.c:346:         st = ( kiss_fft_cfg)KISS_FFT_MALLOC( memneeded );
	movq	%rax, %r12	# tmp380, <retval>
# SUCC: 66 [never (guessed)]  count:0 (estimated locally) (FALLTHRU) 30 [always (guessed)]  count:50619257 (estimated locally) (CAN_FALLTHRU)
# kiss_fft.c:352:     if (st) {
	je	.L152	#,
# BLOCK 66, count:0 (estimated locally) seq:64
# PRED: 65 [never (guessed)]  count:0 (estimated locally) (FALLTHRU)
# SUCC: 5 [always]  count:0 (estimated locally) (CAN_FALLTHRU)
	jmp	.L154	#
# BLOCK 67, count:44694138 (estimated locally) seq:65
# PRED: 49 [50.0% (guessed)]  count:44694138 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L203:
# kiss_fft.c:317:         while (n % p) {
	movapd	%xmm2, %xmm1	# _94, _94
	movl	$5, %esi	#, p
# SUCC: 54 [always]  count:44694138 (estimated locally) (CAN_FALLTHRU)
	jmp	.L186	#
# BLOCK 68, count:44694138 (estimated locally) seq:66
# PRED: 56 [50.0% (guessed)]  count:44694138 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L201:
	movq	.LC3(%rip), %rax	#, tmp400
	movl	$5, %esi	#, p
	movq	%rax, %xmm1	# tmp400, _133
# SUCC: 61 [always]  count:44694138 (estimated locally) (CAN_FALLTHRU)
	jmp	.L176	#
# BLOCK 69, count:30836239 (estimated locally) seq:67
# PRED: 3 [14.9% (guessed)]  count:30836239 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L226:
# kiss_fft.c:350:         *lenmem = memneeded;
	movq	%rdi, (%rcx)	# memneeded, *lenmem_31(D)
# SUCC: 30 [always]  count:30836239 (estimated locally) (CAN_FALLTHRU)
	jmp	.L152	#
# BLOCK 70, count:9945441 (estimated locally) seq:68
# PRED: 20 [50.0% (guessed)]  count:9945441 (estimated locally) (CAN_FALLTHRU)
.L169:
# kiss_fft.c:319:                 case 4: p = 2; break;
	movl	$2, %esi	#, p
# SUCC: 14 [always]  count:9945441 (estimated locally) (CAN_FALLTHRU)
	jmp	.L170	#
# BLOCK 71, count:9944446 (estimated locally) seq:69
# PRED: 51 [50.0% (guessed)]  count:9944446 (estimated locally) (CAN_FALLTHRU)
.L187:
# kiss_fft.c:320:                 case 2: p = 3; break;
	movl	$3, %esi	#, p
# SUCC: 46 [always]  count:9944446 (estimated locally) (CAN_FALLTHRU)
	jmp	.L188	#
	.cfi_endproc
.LFE57:
	.size	kiss_fft_alloc, .-kiss_fft_alloc
	.p2align 4
	.globl	kiss_fft_stride
	.type	kiss_fft_stride, @function
kiss_fft_stride:
.LFB58:
	.cfi_startproc
	endbr64	
# BLOCK 2, count:1073741824 (estimated locally) seq:0
# PRED: ENTRY [always]  count:1073741824 (estimated locally) (FALLTHRU)
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	8(%rdi), %r8	#, pretmp_18
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp	# tmp107, fin
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# tmp106, st
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
# kiss_fft.c:373:     if (fin == fout) {
	cmpq	%rdx, %rsi	# fout, fin
# SUCC: 4 [30.0% (guessed)]  count:322122544 (estimated locally) (CAN_FALLTHRU) 3 [70.0% (guessed)]  count:751619280 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L236	#,
# BLOCK 3, count:751619278 (estimated locally) seq:1
# PRED: 2 [70.0% (guessed)]  count:751619280 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:383: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
# kiss_fft.c:381:         kf_work( fout, fin, 1,in_stride, st->factors,st );
	movq	%rbx, %r9	# st,
# kiss_fft.c:383: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	movq	%rdx, %rdi	# tmp108, fout
	popq	%r12	#
	.cfi_def_cfa_offset 8
# kiss_fft.c:381:         kf_work( fout, fin, 1,in_stride, st->factors,st );
	movl	$1, %edx	#,
# SUCC: EXIT [always]  count:751619278 (estimated locally) (ABNORMAL,SIBCALL)
	jmp	kf_work	#
# BLOCK 4, count:322122547 (estimated locally) seq:2
# PRED: 2 [30.0% (guessed)]  count:322122544 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L236:
	.cfi_restore_state
# kiss_fft.c:376:         kiss_fft_cpx * tmpbuf = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC( sizeof(kiss_fft_cpx)*st->nfft);
	movslq	(%rdi), %rdi	# st_4(D)->nfft, st_4(D)->nfft
	movl	%ecx, 12(%rsp)	# in_stride, %sfp
	salq	$2, %rdi	#, tmp96
	movq	%r8, (%rsp)	# pretmp_18, %sfp
	call	malloc@PLT	#
# kiss_fft.c:377:         kf_work(tmpbuf,fin,1,in_stride, st->factors,st);
	movq	(%rsp), %r8	# %sfp, pretmp_18
	movl	12(%rsp), %ecx	# %sfp, in_stride
	movq	%rbx, %r9	# st,
	movq	%rbp, %rsi	# fin,
	movq	%rax, %rdi	# tmp97,
	movl	$1, %edx	#,
# kiss_fft.c:376:         kiss_fft_cpx * tmpbuf = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC( sizeof(kiss_fft_cpx)*st->nfft);
	movq	%rax, %r12	# tmp110, tmp97
# kiss_fft.c:377:         kf_work(tmpbuf,fin,1,in_stride, st->factors,st);
	call	kf_work	#
# kiss_fft.c:378:         memcpy(fout,tmpbuf,sizeof(kiss_fft_cpx)*st->nfft);
	movslq	(%rbx), %rdx	# st_4(D)->nfft, st_4(D)->nfft
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:34:   return __builtin___memcpy_chk (__dest, __src, __len, __bos0 (__dest));
	movq	%rbp, %rdi	# fin,
	movq	%r12, %rsi	# tmp97,
# kiss_fft.c:378:         memcpy(fout,tmpbuf,sizeof(kiss_fft_cpx)*st->nfft);
	salq	$2, %rdx	#, tmp100
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:34:   return __builtin___memcpy_chk (__dest, __src, __len, __bos0 (__dest));
	call	memcpy@PLT	#
# kiss_fft.c:383: }
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
# kiss_fft.c:379:         KISS_FFT_TMP_FREE(tmpbuf);
	movq	%r12, %rdi	# tmp97,
# kiss_fft.c:383: }
	popq	%r12	#
	.cfi_def_cfa_offset 8
# SUCC: EXIT [always]  count:322122547 (estimated locally) (ABNORMAL,SIBCALL)
# kiss_fft.c:379:         KISS_FFT_TMP_FREE(tmpbuf);
	jmp	free@PLT	#
	.cfi_endproc
.LFE58:
	.size	kiss_fft_stride, .-kiss_fft_stride
	.p2align 4
	.globl	kiss_fft
	.type	kiss_fft, @function
kiss_fft:
.LFB59:
	.cfi_startproc
	endbr64	
# BLOCK 2, count:1073741824 (estimated locally) seq:0
# PRED: ENTRY [always]  count:1073741824 (estimated locally) (FALLTHRU)
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	8(%rdi), %r8	#, pretmp_15
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp	# tmp106, fin
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# tmp105, cfg
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
# kiss_fft.c:373:     if (fin == fout) {
	cmpq	%rdx, %rsi	# fout, fin
# SUCC: 4 [30.0% (guessed)]  count:322122544 (estimated locally) (CAN_FALLTHRU) 3 [70.0% (guessed)]  count:751619280 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L240	#,
# BLOCK 3, count:751619278 (estimated locally) seq:1
# PRED: 2 [70.0% (guessed)]  count:751619280 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:388: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
# kiss_fft.c:381:         kf_work( fout, fin, 1,in_stride, st->factors,st );
	movq	%rbx, %r9	# cfg,
# kiss_fft.c:388: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	movq	%rdx, %rdi	# tmp107, fout
# kiss_fft.c:381:         kf_work( fout, fin, 1,in_stride, st->factors,st );
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
# kiss_fft.c:388: }
	popq	%r12	#
	.cfi_def_cfa_offset 8
# SUCC: EXIT [always]  count:751619278 (estimated locally) (ABNORMAL,SIBCALL)
# kiss_fft.c:381:         kf_work( fout, fin, 1,in_stride, st->factors,st );
	jmp	kf_work	#
# BLOCK 4, count:322122547 (estimated locally) seq:2
# PRED: 2 [30.0% (guessed)]  count:322122544 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L240:
	.cfi_restore_state
# kiss_fft.c:376:         kiss_fft_cpx * tmpbuf = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC( sizeof(kiss_fft_cpx)*st->nfft);
	movslq	(%rdi), %rdi	# cfg_2(D)->nfft, cfg_2(D)->nfft
	movq	%r8, 8(%rsp)	# pretmp_15, %sfp
	salq	$2, %rdi	#, tmp95
	call	malloc@PLT	#
# kiss_fft.c:377:         kf_work(tmpbuf,fin,1,in_stride, st->factors,st);
	movq	8(%rsp), %r8	# %sfp, pretmp_15
	movq	%rbx, %r9	# cfg,
	movq	%rbp, %rsi	# fin,
	movq	%rax, %rdi	# tmp96,
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
# kiss_fft.c:376:         kiss_fft_cpx * tmpbuf = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC( sizeof(kiss_fft_cpx)*st->nfft);
	movq	%rax, %r12	# tmp108, tmp96
# kiss_fft.c:377:         kf_work(tmpbuf,fin,1,in_stride, st->factors,st);
	call	kf_work	#
# kiss_fft.c:378:         memcpy(fout,tmpbuf,sizeof(kiss_fft_cpx)*st->nfft);
	movslq	(%rbx), %rdx	# cfg_2(D)->nfft, cfg_2(D)->nfft
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:34:   return __builtin___memcpy_chk (__dest, __src, __len, __bos0 (__dest));
	movq	%rbp, %rdi	# fin,
	movq	%r12, %rsi	# tmp96,
# kiss_fft.c:378:         memcpy(fout,tmpbuf,sizeof(kiss_fft_cpx)*st->nfft);
	salq	$2, %rdx	#, tmp99
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:34:   return __builtin___memcpy_chk (__dest, __src, __len, __bos0 (__dest));
	call	memcpy@PLT	#
# kiss_fft.c:388: }
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
# kiss_fft.c:379:         KISS_FFT_TMP_FREE(tmpbuf);
	movq	%r12, %rdi	# tmp96,
# kiss_fft.c:388: }
	popq	%r12	#
	.cfi_def_cfa_offset 8
# SUCC: EXIT [always]  count:322122547 (estimated locally) (ABNORMAL,SIBCALL)
# kiss_fft.c:379:         KISS_FFT_TMP_FREE(tmpbuf);
	jmp	free@PLT	#
	.cfi_endproc
.LFE59:
	.size	kiss_fft, .-kiss_fft
	.p2align 4
	.globl	kiss_fft_cleanup
	.type	kiss_fft_cleanup, @function
kiss_fft_cleanup:
.LFB60:
	.cfi_startproc
	endbr64	
# BLOCK 2, count:1073741824 (estimated locally) seq:0
# PRED: ENTRY [always]  count:1073741824 (estimated locally) (FALLTHRU)
# SUCC: EXIT [always]  count:1073741824 (estimated locally)
# kiss_fft.c:394: }
	ret	
	.cfi_endproc
.LFE60:
	.size	kiss_fft_cleanup, .-kiss_fft_cleanup
	.p2align 4
	.globl	kiss_fft_next_fast_size
	.type	kiss_fft_next_fast_size, @function
kiss_fft_next_fast_size:
.LFB61:
	.cfi_startproc
	endbr64	
# BLOCK 2, count:12992274 (estimated locally) seq:0
# PRED: ENTRY [always]  count:12992274 (estimated locally) (FALLTHRU)
	movl	%edi, %r8d	# tmp157, n
# SUCC: 3 [always]  count:12992274 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# BLOCK 3, count:118111599 (estimated locally) seq:1
# PRED: 2 [always]  count:12992274 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 12 [always]  count:105119325 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L250:
# kiss_fft.c:400:         while ( (m%2) == 0 ) m/=2;
	movl	%r8d, %eax	# n, m
	testb	$1, %r8b	#, n
# SUCC: 4 [89.0% (guessed)]  count:105119323 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 7 [11.0% (guessed)]  count:12992276 (estimated locally) (CAN_FALLTHRU)
	jne	.L256	#,
# BLOCK 4, count:955630213 (estimated locally) seq:2
# PRED: 3 [89.0% (guessed)]  count:105119323 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 4 [89.0% (guessed)]  count:850510890 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L244:
# kiss_fft.c:400:         while ( (m%2) == 0 ) m/=2;
	movl	%eax, %edx	# m, tmp95
	shrl	$31, %edx	#, tmp95
	addl	%eax, %edx	# m, tmp96
	movl	%edx, %eax	# tmp96, m
	sarl	%eax	# m
# kiss_fft.c:400:         while ( (m%2) == 0 ) m/=2;
	andl	$2, %edx	#, tmp96
# SUCC: 4 [89.0% (guessed)]  count:850510890 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 5 [11.0% (guessed)]  count:105119323 (estimated locally) (FALLTHRU)
	je	.L244	#,
# BLOCK 5, count:105119323 (estimated locally) seq:3
# PRED: 4 [11.0% (guessed)]  count:105119323 (estimated locally) (FALLTHRU)
# SUCC: 7 [always]  count:105119323 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L256	#
# BLOCK 6, count:955630219 (estimated locally) seq:4
# PRED: 7 [89.0% (guessed)]  count:955630219 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L246:
# kiss_fft.c:401:         while ( (m%3) == 0 ) m/=3;
	movslq	%eax, %rdx	# m, m
	imulq	$1431655766, %rdx, %rdx	#, m, tmp112
	sarl	$31, %eax	#, tmp114
	shrq	$32, %rdx	#, tmp113
	movl	%edx, %ecx	# tmp113, m
	subl	%eax, %ecx	# tmp114, m
# SUCC: 7 [always]  count:955630219 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
	movl	%ecx, %eax	# m, m
# BLOCK 7, count:1073741818 (estimated locally) seq:5
# PRED: 6 [always]  count:955630219 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 3 [11.0% (guessed)]  count:12992276 (estimated locally) (CAN_FALLTHRU) 5 [always]  count:105119323 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
.L256:
	imull	$-1431655765, %eax, %edx	#, m, tmp124
	addl	$715827882, %edx	#, tmp125
# kiss_fft.c:401:         while ( (m%3) == 0 ) m/=3;
	cmpl	$1431655764, %edx	#, tmp125
# SUCC: 6 [89.0% (guessed)]  count:955630219 (estimated locally) (CAN_FALLTHRU) 8 [11.0% (guessed)]  count:118111599 (estimated locally) (FALLTHRU)
	jbe	.L246	#,
# BLOCK 8, count:118111599 (estimated locally) seq:6
# PRED: 7 [11.0% (guessed)]  count:118111599 (estimated locally) (FALLTHRU)
# SUCC: 10 [always]  count:118111599 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L257	#
# BLOCK 9, count:955630225 (estimated locally) seq:7
# PRED: 10 [89.0% (guessed)]  count:955630224 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L248:
# kiss_fft.c:402:         while ( (m%5) == 0 ) m/=5;
	movslq	%eax, %rdx	# m, m
	imulq	$1717986919, %rdx, %rdx	#, m, tmp140
	sarl	$31, %eax	#, tmp143
	sarq	$33, %rdx	#, tmp142
	subl	%eax, %edx	# tmp143, tmp142
# SUCC: 10 [always]  count:955630225 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
	movl	%edx, %eax	# tmp142, m
# BLOCK 10, count:1073741824 (estimated locally) seq:8
# PRED: 9 [always]  count:955630225 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 8 [always]  count:118111599 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
.L257:
	imull	$-858993459, %eax, %edx	#, m, tmp154
	addl	$429496729, %edx	#, tmp155
# kiss_fft.c:402:         while ( (m%5) == 0 ) m/=5;
	cmpl	$858993458, %edx	#, tmp155
# SUCC: 9 [89.0% (guessed)]  count:955630224 (estimated locally) (CAN_FALLTHRU) 11 [11.0% (guessed)]  count:118111600 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jbe	.L248	#,
# BLOCK 11, count:118111601 (estimated locally) seq:9
# PRED: 10 [11.0% (guessed)]  count:118111600 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
# kiss_fft.c:403:         if (m<=1)
	cmpl	$1, %eax	#, m
# SUCC: 13 [11.0% (guessed)]  count:12992276 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 12 [89.0% (guessed)]  count:105119325 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jle	.L249	#,
# BLOCK 12, count:105119325 (estimated locally) seq:10
# PRED: 11 [89.0% (guessed)]  count:105119325 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:405:         n++;
	incl	%r8d	# n
# SUCC: 3 [always]  count:105119325 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
# kiss_fft.c:398:     while(1) {
	jmp	.L250	#
# BLOCK 13, count:12992276 (estimated locally) seq:11
# PRED: 11 [11.0% (guessed)]  count:12992276 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	.p2align 4,,10
	.p2align 3
.L249:
# kiss_fft.c:408: }
	movl	%r8d, %eax	# n,
# SUCC: EXIT [always]  count:12992276 (estimated locally)
	ret	
	.cfi_endproc
.LFE61:
	.size	kiss_fft_next_fast_size, .-kiss_fft_next_fast_size
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.value	16383
	.value	16383
	.value	16383
	.value	16383
	.value	16383
	.value	16383
	.value	16383
	.value	16383
	.align 16
.LC1:
	.long	16384
	.long	16384
	.long	16384
	.long	16384
	.align 16
.LC2:
	.value	10922
	.value	10922
	.value	10922
	.value	10922
	.value	10922
	.value	10922
	.value	10922
	.value	10922
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	0
	.long	1075052544
	.align 8
.LC4:
	.long	0
	.long	1127219200
	.section	.rodata.cst16
	.align 16
.LC5:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC6:
	.long	0
	.long	1074266112
	.align 8
.LC7:
	.long	0
	.long	1073741824
	.align 8
.LC8:
	.long	0
	.long	1072693248
	.align 8
.LC9:
	.long	1413754136
	.long	-1072094725
	.align 8
.LC10:
	.long	0
	.long	1088421824
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.section	.rodata.cst16
	.align 16
.LC12:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
