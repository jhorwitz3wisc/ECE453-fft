	.file	"kiss_fft.c"
# GNU C17 (Ubuntu 9.3.0-17ubuntu1~20.04) version 9.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu kiss_fft.c
# --param l1-cache-size=48 --param l1-cache-line-size=64
# --param l2-cache-size=6144 -mtune=icelake-client -march=x86-64 -O3
# -ffast-math -fomit-frame-pointer -fverbose-asm
# -fasynchronous-unwind-tables -fstack-protector-strong -Wformat
# -Wformat-security -fstack-clash-protection -fcf-protection
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
	.type	kf_bfly_generic, @function
kf_bfly_generic:
.LFB54:
	.cfi_startproc
# BLOCK 2, count:1804254 (estimated locally) seq:0
# PRED: ENTRY [always]  count:1804254 (estimated locally) (FALLTHRU)
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15	# tmp234, Fout
	movslq	%r8d, %rdi	# tmp238,
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%ecx, %r14d	# tmp237, m
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13	# tmp235, fstride
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12	#,
# kiss_fft.c:211:     kiss_fft_cpx * scratch = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC(sizeof(kiss_fft_cpx)*p);
	salq	$3, %rdi	#, tmp181
# kiss_fft.c:205: {
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
# kiss_fft.c:207:     kiss_fft_cpx * twiddles = st->twiddles;
	leaq	264(%rdx), %rbp	#, twiddles
# kiss_fft.c:205: {
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# kiss_fft.c:205: {
	movl	%ecx, 24(%rsp)	# m, %sfp
# kiss_fft.c:209:     int Norig = st->nfft;
	movl	(%rdx), %ebx	# st_49(D)->nfft, Norig
# kiss_fft.c:211:     kiss_fft_cpx * scratch = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC(sizeof(kiss_fft_cpx)*p);
	call	malloc@PLT	#
	movq	%rax, %r8	# tmp239, scratch
# kiss_fft.c:213:     for ( u=0; u<m; ++u ) {
	testl	%r14d, %r14d	# m
# SUCC: 3 [89.0% (guessed)]  count:1605786 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 10 [11.0% (guessed)]  count:198468 (estimated locally) (CAN_FALLTHRU)
	jle	.L2	#,
# BLOCK 3, count:1605786 (estimated locally) seq:1
# PRED: 2 [89.0% (guessed)]  count:1605786 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$1, %r14d	#, m
# SUCC: 4 [80.0% (guessed)]  count:1284629 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 11 [20.0% (guessed)]  count:321157 (estimated locally) (CAN_FALLTHRU)
	jne	.L32	#,
# BLOCK 4, count:11678450 (estimated locally) seq:2
# PRED: 3 [80.0% (guessed)]  count:1284629 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:215:         for ( q1=0 ; q1<p ; ++q1 ) {
	testl	%r12d, %r12d	# p
# SUCC: 5 [89.0% (guessed)]  count:10393821 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 10 [11.0% (guessed)]  count:1284629 (estimated locally) (CAN_FALLTHRU)
	jle	.L2	#,
# BLOCK 5, count:10393820 (estimated locally) seq:3
# PRED: 4 [89.0% (guessed)]  count:10393821 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:216:             scratch[q1] = Fout[ k  ];
	leal	-1(%r12), %r14d	#, _46
	movq	%r15, %rsi	# Fout,
	movq	%rax, %rdi	# scratch,
	leaq	8(,%r14,8), %rdx	#, tmp195
	call	memcpy@PLT	#
	movq	%rax, %r8	#, scratch
	movq	(%r8), %r10	# *scratch_55, *scratch_55
	leal	-2(%r12), %eax	#, tmp204
	movq	%r15, %rsi	# Fout, ivtmp.95
	leaq	8(%r15,%r14,8), %r11	#, _15
	leaq	16(%r8,%rax,8), %r9	#, _105
# SUCC: 6 [always]  count:10393820 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	xorl	%edi, %edi	# ivtmp.97
# BLOCK 6, count:94489281 (estimated locally) seq:4
# PRED: 5 [always]  count:10393820 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 9 [89.0% (guessed)]  count:84095460 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L15:
# kiss_fft.c:224:             Fout[ k ] = scratch[0];
	movq	%r10, (%rsi)	# *scratch_55, MEM[base: _91, offset: 0B]
# kiss_fft.c:225:             for (q=1;q<p;++q ) {
	cmpl	$1, %r12d	#, p
# SUCC: 7 [89.0% (guessed)]  count:84095460 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 9 [11.0% (guessed)]  count:10393821 (estimated locally) (CAN_FALLTHRU)
	je	.L18	#,
# BLOCK 7, count:84095460 (estimated locally) seq:5
# PRED: 6 [89.0% (guessed)]  count:84095460 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movss	(%rsi), %xmm4	# MEM[base: _91, offset: 0B], _115
	movss	4(%rsi), %xmm3	# MEM[base: _91, offset: 4B], _111
	leaq	8(%r8), %rdx	#, ivtmp.86
# SUCC: 8 [always]  count:84095460 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:223:             int twidx=0;
	xorl	%eax, %eax	# twidx
# BLOCK 8, count:764504185 (estimated locally) seq:6
# PRED: 7 [always]  count:84095460 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 8 [89.0% (guessed)]  count:680408725 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L17:
# kiss_fft.c:226:                 twidx += fstride * k;
	addl	%edi, %eax	# ivtmp.97, _156
# kiss_fft.c:227:                 if (twidx>=Norig) twidx-=Norig;
	movl	%eax, %ecx	# _156, tmp228
	subl	%ebx, %ecx	# Norig, tmp228
	cmpl	%eax, %ebx	# _156, Norig
	cmovle	%ecx, %eax	# tmp228,, twidx
# kiss_fft.c:228:                 C_MUL(t,scratch[q] , twiddles[twidx] );
	movss	4(%rdx), %xmm6	# MEM[base: _118, offset: 4B], _127
	movslq	%eax, %rcx	# twidx, twidx
	leaq	0(%rbp,%rcx,8), %rcx	#, _37
	movss	(%rcx), %xmm0	# _37->r, _29
	movss	4(%rcx), %xmm5	# _37->i, _128
	movss	(%rdx), %xmm1	# MEM[base: _118, offset: 0B], _40
	movaps	%xmm0, %xmm2	# _29, tmp210
	movaps	%xmm6, %xmm7	# _127, tmp211
	mulss	%xmm1, %xmm2	# _40, tmp210
	mulss	%xmm5, %xmm7	# _128, tmp211
	mulss	%xmm6, %xmm0	# _127, tmp213
	mulss	%xmm5, %xmm1	# _128, tmp214
	addq	$8, %rdx	#, ivtmp.86
# kiss_fft.c:229:                 C_ADDTO( Fout[ k ] ,t);
	subss	%xmm7, %xmm2	# tmp211, tmp212
# kiss_fft.c:228:                 C_MUL(t,scratch[q] , twiddles[twidx] );
	addss	%xmm1, %xmm0	# tmp214, tmp215
# kiss_fft.c:229:                 C_ADDTO( Fout[ k ] ,t);
	addss	%xmm2, %xmm4	# tmp212, _115
	addss	%xmm0, %xmm3	# tmp215, _111
	movss	%xmm4, (%rsi)	# _115, MEM[base: _91, offset: 0B]
	movss	%xmm3, 4(%rsi)	# _111, MEM[base: _91, offset: 4B]
# kiss_fft.c:225:             for (q=1;q<p;++q ) {
	cmpq	%rdx, %r9	# ivtmp.86, _105
# SUCC: 8 [89.0% (guessed)]  count:680408725 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 9 [11.0% (guessed)]  count:84095460 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L17	#,
# BLOCK 9, count:94489281 (estimated locally) seq:7
# PRED: 6 [11.0% (guessed)]  count:10393821 (estimated locally) (CAN_FALLTHRU) 8 [11.0% (guessed)]  count:84095460 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
.L18:
	addq	$8, %rsi	#, ivtmp.95
	addl	%r13d, %edi	# _98, ivtmp.97
# kiss_fft.c:222:         for ( q1=0 ; q1<p ; ++q1 ) {
	cmpq	%rsi, %r11	# ivtmp.95, _15
# SUCC: 6 [89.0% (guessed)]  count:84095460 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 10 [11.0% (guessed)]  count:10393821 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L15	#,
# BLOCK 10, count:1804255 (estimated locally) seq:8
# PRED: 9 [11.0% (guessed)]  count:10393821 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT) 2 [11.0% (guessed)]  count:198468 (estimated locally) (CAN_FALLTHRU) 4 [11.0% (guessed)]  count:1284629 (estimated locally) (CAN_FALLTHRU) 20 [always]  count:321157 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
.L2:
# kiss_fft.c:235: }
	addq	$40, %rsp	#,
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
# kiss_fft.c:234:     KISS_FFT_TMP_FREE(scratch);
	movq	%r8, %rdi	# scratch,
# kiss_fft.c:235: }
	popq	%r15	#
	.cfi_def_cfa_offset 8
# SUCC: EXIT [always]  count:1804255 (estimated locally) (ABNORMAL,SIBCALL)
# kiss_fft.c:234:     KISS_FFT_TMP_FREE(scratch);
	jmp	free@PLT	#
# BLOCK 11, count:321157 (estimated locally) seq:9
# PRED: 3 [20.0% (guessed)]  count:321157 (estimated locally) (CAN_FALLTHRU)
.L32:
	.cfi_restore_state
	movslq	24(%rsp), %r10	# %sfp,
	leal	-1(%r12), %eax	#, tmp218
	movq	%r15, 8(%rsp)	# Fout, %sfp
# kiss_fft.c:213:     for ( u=0; u<m; ++u ) {
	movl	$0, 20(%rsp)	#, %sfp
# kiss_fft.c:213:     for ( u=0; u<m; ++u ) {
	movl	$0, 16(%rsp)	#, %sfp
	movq	%r10, %rdi	#,
	leaq	8(%r8,%rax,8), %r14	#, _229
	leal	-2(%r12), %eax	#, tmp222
	movl	%r13d, 28(%rsp)	# fstride, %sfp
	salq	$3, %r10	#, _213
	imull	%edi, %r13d	# m, _201
# SUCC: 12 [always]  count:321157 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	16(%r8,%rax,8), %rdi	#, _26
# BLOCK 12, count:2919612 (estimated locally) seq:10
# PRED: 11 [always]  count:321157 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 19 [89.0% (guessed)]  count:2598456 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
.L12:
# kiss_fft.c:215:         for ( q1=0 ; q1<p ; ++q1 ) {
	movq	8(%rsp), %rdx	# %sfp, ivtmp.126
	movq	%r8, %rax	# scratch, ivtmp.127
	testl	%r12d, %r12d	# p
# SUCC: 13 [89.0% (guessed)]  count:2598455 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 19 [11.0% (guessed)]  count:321157 (estimated locally) (CAN_FALLTHRU)
	jle	.L8	#,
# BLOCK 13, count:23622319 (estimated locally) seq:11
# PRED: 13 [89.0% (guessed)]  count:21023864 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 12 [89.0% (guessed)]  count:2598455 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L5:
# kiss_fft.c:216:             scratch[q1] = Fout[ k  ];
	movq	(%rdx), %rcx	# MEM[base: _221, offset: 0B], MEM[base: _221, offset: 0B]
	addq	$8, %rax	#, ivtmp.127
	movq	%rcx, -8(%rax)	# MEM[base: _221, offset: 0B], MEM[base: _222, offset: 0B]
	addq	%r10, %rdx	# _213, ivtmp.126
# kiss_fft.c:215:         for ( q1=0 ; q1<p ; ++q1 ) {
	cmpq	%r14, %rax	# _229, ivtmp.127
# SUCC: 13 [89.0% (guessed)]  count:21023864 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 14 [11.0% (guessed)]  count:2598455 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L5	#,
# BLOCK 14, count:2598455 (estimated locally) seq:12
# PRED: 13 [11.0% (guessed)]  count:2598455 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movl	20(%rsp), %esi	# %sfp, ivtmp.116
	movq	8(%rsp), %rcx	# %sfp, ivtmp.115
	movq	(%r8), %r11	# *scratch_55, *scratch_55
# SUCC: 15 [always]  count:2598455 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	xorl	%r9d, %r9d	# q1
# BLOCK 15, count:23622319 (estimated locally) seq:13
# PRED: 14 [always]  count:2598455 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [89.0% (guessed)]  count:21023865 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L7:
# kiss_fft.c:224:             Fout[ k ] = scratch[0];
	movq	%r11, (%rcx)	# *scratch_55, MEM[base: _205, offset: 0B]
# kiss_fft.c:225:             for (q=1;q<p;++q ) {
	cmpl	$1, %r12d	#, p
# SUCC: 16 [89.0% (guessed)]  count:21023864 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:2598455 (estimated locally) (CAN_FALLTHRU)
	je	.L11	#,
# BLOCK 16, count:21023864 (estimated locally) seq:14
# PRED: 15 [89.0% (guessed)]  count:21023864 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movss	(%rcx), %xmm4	# MEM[base: _205, offset: 0B], prephitmp_169
	movss	4(%rcx), %xmm3	# MEM[base: _205, offset: 4B], prephitmp_170
	leaq	8(%r8), %rdx	#, ivtmp.104
# SUCC: 17 [always]  count:21023864 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:223:             int twidx=0;
	xorl	%eax, %eax	# twidx
# BLOCK 17, count:191126041 (estimated locally) seq:15
# PRED: 16 [always]  count:21023864 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 17 [89.0% (guessed)]  count:170102177 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L10:
# kiss_fft.c:226:                 twidx += fstride * k;
	addl	%esi, %eax	# ivtmp.116, _172
# kiss_fft.c:227:                 if (twidx>=Norig) twidx-=Norig;
	movl	%eax, %r15d	# _172, tmp226
	subl	%ebx, %r15d	# Norig, tmp226
	cmpl	%eax, %ebx	# _172, Norig
	cmovle	%r15d, %eax	# tmp226,, twidx
# kiss_fft.c:228:                 C_MUL(t,scratch[q] , twiddles[twidx] );
	movss	(%rdx), %xmm0	# MEM[base: _19, offset: 0B], _179
	movslq	%eax, %r15	# twidx, twidx
	movss	4(%rdx), %xmm5	# MEM[base: _19, offset: 4B], _185
	leaq	0(%rbp,%r15,8), %r15	#, _182
	movss	(%r15), %xmm1	# _182->r, _183
	movss	4(%r15), %xmm6	# _182->i, _186
	movaps	%xmm0, %xmm2	# _179, tmp187
	movaps	%xmm5, %xmm7	# _185, tmp188
	mulss	%xmm1, %xmm2	# _183, tmp187
	mulss	%xmm6, %xmm7	# _186, tmp188
	mulss	%xmm6, %xmm0	# _186, tmp190
	mulss	%xmm5, %xmm1	# _185, tmp191
	addq	$8, %rdx	#, ivtmp.104
# kiss_fft.c:229:                 C_ADDTO( Fout[ k ] ,t);
	subss	%xmm7, %xmm2	# tmp188, tmp189
# kiss_fft.c:228:                 C_MUL(t,scratch[q] , twiddles[twidx] );
	addss	%xmm1, %xmm0	# tmp191, tmp192
# kiss_fft.c:229:                 C_ADDTO( Fout[ k ] ,t);
	addss	%xmm2, %xmm4	# tmp189, prephitmp_169
	addss	%xmm0, %xmm3	# tmp192, prephitmp_170
	movss	%xmm4, (%rcx)	# prephitmp_169, MEM[base: _205, offset: 0B]
	movss	%xmm3, 4(%rcx)	# prephitmp_170, MEM[base: _205, offset: 4B]
# kiss_fft.c:225:             for (q=1;q<p;++q ) {
	cmpq	%rdx, %rdi	# ivtmp.104, _26
# SUCC: 17 [89.0% (guessed)]  count:170102177 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:21023864 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L10	#,
# BLOCK 18, count:23622320 (estimated locally) seq:16
# PRED: 15 [11.0% (guessed)]  count:2598455 (estimated locally) (CAN_FALLTHRU) 17 [11.0% (guessed)]  count:21023864 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
.L11:
# kiss_fft.c:222:         for ( q1=0 ; q1<p ; ++q1 ) {
	incl	%r9d	# q1
	addq	%r10, %rcx	# _213, ivtmp.115
	addl	%r13d, %esi	# _201, ivtmp.116
# kiss_fft.c:222:         for ( q1=0 ; q1<p ; ++q1 ) {
	cmpl	%r9d, %r12d	# q1, p
# SUCC: 15 [89.0% (guessed)]  count:21023865 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 19 [11.0% (guessed)]  count:2598455 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L7	#,
# BLOCK 19, count:2919613 (estimated locally) seq:17
# PRED: 18 [11.0% (guessed)]  count:2598455 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT) 12 [11.0% (guessed)]  count:321157 (estimated locally) (CAN_FALLTHRU)
.L8:
# kiss_fft.c:213:     for ( u=0; u<m; ++u ) {
	incl	16(%rsp)	# %sfp
	movl	28(%rsp), %edx	# %sfp, _235
	addq	$8, 8(%rsp)	#, %sfp
	addl	%edx, 20(%rsp)	# _235, %sfp
	movl	16(%rsp), %eax	# %sfp, u
# kiss_fft.c:213:     for ( u=0; u<m; ++u ) {
	cmpl	%eax, 24(%rsp)	# u, %sfp
# SUCC: 12 [89.0% (guessed)]  count:2598456 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 20 [11.0% (guessed)]  count:321157 (estimated locally) (FALLTHRU)
	jne	.L12	#,
# BLOCK 20, count:321157 (estimated locally) seq:18
# PRED: 19 [11.0% (guessed)]  count:321157 (estimated locally) (FALLTHRU)
# SUCC: 10 [always]  count:321157 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L2	#
	.cfi_endproc
.LFE54:
	.size	kf_bfly_generic, .-kf_bfly_generic
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
	movq	%rdi, %r11	# tmp2632, Fout
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movslq	%ecx, %r14	# in_stride, in_stride
	imulq	%rdx, %r14	# fstride, tmp1627
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	salq	$3, %r14	#, _754
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%r9, %r12	# tmp2637, st
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx	# tmp2633, f
	subq	$200, %rsp	#,
	.cfi_def_cfa_offset 256
# kiss_fft.c:249:     const int m=*factors++; /* stage's fft length/p */
	movl	4(%r8), %edi	# MEM[(int *)factors_25(D) + 4B], m
# kiss_fft.c:248:     const int p=*factors++; /* the radix  */
	movl	(%r8), %r13d	# *factors_25(D), p
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	movl	%edi, %eax	# m, tmp1623
	imull	%r13d, %eax	# p, tmp1623
# kiss_fft.c:246: {
	movq	%rdx, 40(%rsp)	# fstride, %sfp
# kiss_fft.c:249:     const int m=*factors++; /* stage's fft length/p */
	movl	%edi, 32(%rsp)	# m, %sfp
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	cltq
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	leaq	(%r11,%rax,8), %rax	#, Fout_end
# kiss_fft.c:276:     if (m==1) {
	cmpl	$1, %edi	#, m
# SUCC: 25 [34.0% (guessed)]  count:118111601 (estimated locally) (CAN_FALLTHRU) 3 [66.0% (guessed)]  count:229275458 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L148	#,
# BLOCK 3, count:229275458 (estimated locally) seq:1
# PRED: 2 [66.0% (guessed)]  count:229275458 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	movslq	32(%rsp), %rdx	# %sfp, m
# kiss_fft.c:287:             kf_work( Fout , f, fstride*p, in_stride, factors,st);
	movslq	%r13d, %r15	# p, p
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	leaq	0(,%rdx,8), %rsi	#, _13
# kiss_fft.c:287:             kf_work( Fout , f, fstride*p, in_stride, factors,st);
	imulq	40(%rsp), %r15	# %sfp, _8
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	movq	%rsi, (%rsp)	# _13, %sfp
	movq	%rax, 16(%rsp)	# Fout_end, %sfp
	movq	%r11, 56(%rsp)	# Fout, %sfp
# kiss_fft.c:249:     const int m=*factors++; /* stage's fft length/p */
	addq	$8, %r8	#, factors
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	movl	%r13d, 48(%rsp)	# p, %sfp
	movq	%r14, 24(%rsp)	# _754, %sfp
	movq	%rbx, %r12	# f, f
	movq	%r11, %r13	# Fout, Fout
	movl	%ecx, %ebp	# in_stride, in_stride
	movq	%r9, %r14	# st, st
# SUCC: 4 [always]  count:229275458 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%r8, %rbx	# factors, factors
# BLOCK 4, count:1042161184 (estimated locally) seq:2
# PRED: 3 [always]  count:229275458 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 4 [78.0% (guessed)]  count:812885725 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
.L42:
# kiss_fft.c:287:             kf_work( Fout , f, fstride*p, in_stride, factors,st);
	movq	%r12, %rsi	# f,
	movq	%r13, %rdi	# Fout,
	movq	%r14, %r9	# st,
	movq	%rbx, %r8	# factors,
	movl	%ebp, %ecx	# in_stride,
	movq	%r15, %rdx	# _8,
	call	kf_work	#
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	addq	(%rsp), %r13	# %sfp, Fout
# kiss_fft.c:288:             f += fstride*in_stride;
	addq	24(%rsp), %r12	# %sfp, f
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	cmpq	%r13, 16(%rsp)	# Fout, %sfp
# SUCC: 4 [78.0% (guessed)]  count:812885725 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 5 [22.0% (guessed)]  count:229275459 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L42	#,
# BLOCK 5, count:229275459 (estimated locally) seq:3
# PRED: 4 [22.0% (guessed)]  count:229275459 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movl	48(%rsp), %r13d	# %sfp, p
	movq	56(%rsp), %r11	# %sfp, Fout
	movq	%r14, %r12	# st, st
# kiss_fft.c:295:     switch (p) {
	cmpl	$4, %r13d	#, p
# SUCC: 6 [80.0% (adjusted)]  count:183420367 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 28 [20.0% (adjusted)]  count:45855092 (estimated locally) (CAN_FALLTHRU)
	je	.L36	#,
# BLOCK 6, count:347387061 (estimated locally) seq:4
# PRED: 5 [80.0% (adjusted)]  count:183420367 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 27 [80.0% (adjusted)]  count:94489280 (estimated locally) (CAN_FALLTHRU)
.L151:
# SUCC: 7 [62.5% (adjusted)]  count:217116913 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 19 [37.5% (adjusted)]  count:130270148 (estimated locally) (CAN_FALLTHRU)
	jg	.L37	#,
# BLOCK 7, count:347387061 (estimated locally) seq:5
# PRED: 6 [62.5% (adjusted)]  count:217116913 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$2, %r13d	#, p
# SUCC: 8 [60.0% (adjusted)]  count:208432237 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 38 [40.0% (adjusted)]  count:138954824 (estimated locally) (CAN_FALLTHRU)
	je	.L38	#,
# BLOCK 8, count:347387061 (estimated locally) seq:6
# PRED: 7 [60.0% (adjusted)]  count:208432237 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$3, %r13d	#, p
# SUCC: 37 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 9 [always (guessed)]  count:347387061 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L40	#,
# BLOCK 9, count:69477412 (estimated locally) seq:7
# PRED: 8 [always (guessed)]  count:347387061 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:297:         case 3: kf_bfly3(Fout,fstride,st,m); break; 
	movslq	32(%rsp), %rbx	# %sfp, k
# kiss_fft.c:104:      epi3 = st->twiddles[fstride*m];
	movq	40(%rsp), %rsi	# %sfp, fstride
	movq	%rbx, %rax	# k, tmp1858
	imulq	%rsi, %rax	# fstride, tmp1858
# kiss_fft.c:297:         case 3: kf_bfly3(Fout,fstride,st,m); break; 
	movq	%rbx, 16(%rsp)	# k, %sfp
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leaq	0(,%rbx,8), %r13	#, _81
# kiss_fft.c:117:          tw2 += fstride*2;
	movq	%rsi, %r8	# fstride, _114
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	salq	$4, %rbx	#, _95
	movq	%rbx, (%rsp)	# _95, %sfp
# kiss_fft.c:104:      epi3 = st->twiddles[fstride*m];
	movss	268(%r12,%rax,8), %xmm4	# MEM[(struct  *)_78 + 4B], epi3$i
# kiss_fft.c:106:      tw1=tw2=st->twiddles;
	leaq	264(%r12), %r14	#, tw1
# kiss_fft.c:116:          tw1 += fstride;
	leaq	0(,%rsi,8), %r15	#, _112
# kiss_fft.c:117:          tw2 += fstride*2;
	salq	$4, %r8	#, _114
	cmpq	$1, %rsi	#, fstride
# SUCC: 10 [80.0% (guessed)]  count:55581930 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 48 [20.0% (guessed)]  count:13895482 (estimated locally) (CAN_FALLTHRU)
	jne	.L149	#,
# BLOCK 10, count:55581930 (estimated locally) seq:8
# PRED: 9 [80.0% (guessed)]  count:55581930 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	16(%rsp), %rax	# %sfp, k
	movq	%rbx, %r9	# _95, _95
	leaq	-1(%rax), %rsi	#, k
	leaq	0(,%rsi,8), %rdi	#, _1414
	leaq	4(%r13,%rdi), %rdx	#, tmp2177
	addq	%r11, %rdx	# Fout, tmp2178
	cmpq	%rdx, %r14	# tmp2178, tw1
	leaq	4(%r9,%rdi), %r9	#, tmp2184
	seta	%bpl	#, tmp2179
	leaq	32(%rbx), %rax	#, _1399
	addq	%r11, %r9	# Fout, tmp2185
	movq	%rsi, %rdx	# k, tmp2181
	leaq	268(%r12,%rdi), %r8	#, _1432
	movq	%rax, 24(%rsp)	# _1399, %sfp
	salq	$4, %rdx	#, tmp2181
	leaq	32(%r11), %rbx	#, _1407
	cmpq	%r9, %r14	# tmp2185, tw1
	leaq	4(%r11,%rdi), %rdi	#, tmp2188
	leaq	32(%r13), %r15	#, _1395
	movq	%rbx, %rcx	# _1407, _1407
	seta	%bl	#, tmp2186
	cmpq	%rdi, %r14	# tmp2188, tw1
	leaq	268(%r12,%rdx), %r10	#, _1457
	seta	%r12b	#, tmp2189
	cmpq	(%rsp), %r15	# %sfp, _1395
	setle	%r9b	#, tmp2191
	cmpq	%r13, 24(%rsp)	# _81, %sfp
	setle	%dil	#, tmp2193
	leaq	(%r11,%r13), %rax	#, _1408
	orl	%edi, %r9d	# tmp2193, tmp2194
	testq	%r15, %r15	# _1395
	setle	%dil	#, tmp2196
	cmpq	%rax, %rcx	# _1408, _1407
	setbe	%r15b	#, tmp2198
	orl	%r15d, %edi	# tmp2198, tmp2199
	andl	%edi, %r9d	# tmp2199, tmp2200
	cmpq	$2, %rsi	#, k
	seta	%r15b	#, tmp2202
	leaq	(%rax,%r13), %rdx	#, _1466
	andl	%r15d, %r9d	# tmp2202, tmp2203
	cmpq	$0, 24(%rsp)	#, %sfp
	setle	%r15b	#, tmp2205
	cmpq	%rdx, %rcx	# _1466, _1407
	setbe	%dil	#, tmp2207
	orl	%edi, %r15d	# tmp2207, tmp2208
	andl	%r15d, %r9d	# tmp2208, tmp2209
	cmpq	%r8, %rax	# _1432, _1408
	seta	%r15b	#, tmp2211
	orl	%ebp, %r15d	# tmp2179, tmp2212
	andl	%r9d, %r15d	# tmp2209, tmp2213
	cmpq	%r10, %rax	# _1457, _1408
	seta	%r9b	#, tmp2215
	orl	%r9d, %ebp	# tmp2215, tmp2216
	andl	%r15d, %ebp	# tmp2213, tmp2217
	cmpq	%rdx, %r8	# _1466, _1432
	setb	%r9b	#, tmp2219
	orl	%ebx, %r9d	# tmp2186, tmp2220
	andl	%r9d, %ebp	# tmp2220, tmp2221
	cmpq	%rdx, %r10	# _1466, _1457
	setb	%dil	#, tmp2223
	orl	%edi, %ebx	# tmp2223, tmp2224
	andl	%ebp, %ebx	# tmp2221, tmp2225
	cmpq	%r8, %r11	# _1432, Fout
	seta	%dil	#, tmp2227
	orl	%r12d, %edi	# tmp2189, tmp2228
	testb	%dil, %bl	# tmp2228, tmp2225
# SUCC: 70 [10.0% (guessed)]  count:5558193 (estimated locally) (CAN_FALLTHRU) 11 [90.0% (guessed)]  count:50023737 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L66	#,
# BLOCK 11, count:50023737 (estimated locally) seq:9
# PRED: 10 [90.0% (guessed)]  count:50023737 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpq	%r10, %r11	# _1457, Fout
	seta	%dil	#, tmp2231
	orb	%r12b, %dil	# tmp2189, tmp2231
# SUCC: 70 [11.1% (guessed)]  count:5558193 (estimated locally) (CAN_FALLTHRU) 12 [88.9% (guessed)]  count:44465544 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L66	#,
# BLOCK 12, count:44465544 (estimated locally) seq:10
# PRED: 11 [88.9% (guessed)]  count:44465544 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	16(%rsp), %rbx	# %sfp, k
	movaps	%xmm4, %xmm5	# epi3$i, vect_cst__1836
	leaq	-4(%rbx), %r9	#, tmp2233
	shrq	$2, %r9	#, tmp2234
	movapd	.LC0(%rip), %xmm3	#, tmp2628
	movaps	64(%rsp), %xmm8	# %sfp, tmp2283
	movaps	80(%rsp), %xmm9	# %sfp, tmp2285
	movaps	96(%rsp), %xmm10	# %sfp, tmp2297
	movaps	112(%rsp), %xmm11	# %sfp, tmp2299
	shufps	$0, %xmm5, %xmm5	# vect_cst__1836
	incq	%r9	# bnd.209
	movq	%r14, %rdi	# tw1, ivtmp.484
	movq	%r11, %r8	# Fout, ivtmp.492
	movq	%r14, %rsi	# tw1, ivtmp.489
	xorl	%ecx, %ecx	# ivtmp.482
	xorl	%r10d, %r10d	# ivtmp.480
	movss	%xmm4, 24(%rsp)	# epi3$i, %sfp
# SUCC: 13 [always]  count:44465544 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movaps	%xmm5, (%rsp)	# vect_cst__1836, %sfp
# BLOCK 13, count:266793263 (estimated locally) seq:11
# PRED: 12 [always]  count:44465544 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 13 [83.3% (adjusted)]  count:222327720 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L67:
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movups	(%rax,%rcx), %xmm2	# MEM[base: _1408, index: ivtmp.482_2480, offset: 0B], MEM[base: _1408, index: ivtmp.482_2480, offset: 0B]
	movups	16(%rax,%rcx), %xmm1	# MEM[base: _1408, index: ivtmp.482_2480, offset: 16B], MEM[base: _1408, index: ivtmp.482_2480, offset: 16B]
	movaps	%xmm2, %xmm5	# MEM[base: _1408, index: ivtmp.482_2480, offset: 0B], vect_perm_even_1727
	movss	16(%rdi), %xmm7	# MEM[base: _2493, offset: 16B], tmp2239
	shufps	$136, %xmm1, %xmm5	#, MEM[base: _1408, index: ivtmp.482_2480, offset: 16B], vect_perm_even_1727
	shufps	$221, %xmm1, %xmm2	#, MEM[base: _1408, index: ivtmp.482_2480, offset: 16B], vect_perm_odd_1728
	movss	24(%rdi), %xmm1	# MEM[base: _2493, offset: 24B], MEM[base: _2493, offset: 24B]
	movss	8(%rdi), %xmm4	# MEM[base: _2493, offset: 8B], MEM[base: _2493, offset: 8B]
	unpcklps	%xmm1, %xmm7	# MEM[base: _2493, offset: 24B], tmp2239
	movaps	%xmm7, %xmm1	# tmp2239, tmp2239
	movss	(%rdi), %xmm7	# MEM[base: _2493, offset: 0B], tmp2242
	movss	28(%rdi), %xmm6	# MEM[base: _2493, offset: 28B], MEM[base: _2493, offset: 28B]
	unpcklps	%xmm4, %xmm7	# MEM[base: _2493, offset: 8B], tmp2242
	movaps	%xmm7, %xmm4	# tmp2242, tmp2242
	movss	4(%rdi), %xmm0	# MEM[base: _2493, offset: 4B], tmp2249
	movss	20(%rdi), %xmm7	# MEM[base: _2493, offset: 20B], tmp2246
	movlhps	%xmm1, %xmm4	# tmp2239, tmp2238
	movss	12(%rdi), %xmm1	# MEM[base: _2493, offset: 12B], MEM[base: _2493, offset: 12B]
	unpcklps	%xmm6, %xmm7	# MEM[base: _2493, offset: 28B], tmp2246
	unpcklps	%xmm1, %xmm0	# MEM[base: _2493, offset: 12B], tmp2249
	movlhps	%xmm7, %xmm0	# tmp2246, tmp2245
	movaps	%xmm2, %xmm6	# vect_perm_odd_1728, vect__835.220
	mulps	%xmm0, %xmm6	# tmp2245, vect__835.220
	mulps	%xmm4, %xmm2	# tmp2238, vect__812.223
	mulps	%xmm5, %xmm0	# vect_perm_even_1727, vect__833.222
	movaps	%xmm5, %xmm1	# vect_perm_even_1727, vect__838.219
	mulps	%xmm4, %xmm1	# tmp2238, vect__838.219
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	48(%rsi), %xmm7	# MEM[base: _2498, offset: 48B], MEM[base: _2498, offset: 48B]
	movss	32(%rsi), %xmm5	# MEM[base: _2498, offset: 32B], tmp2259
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addps	%xmm2, %xmm0	# vect__812.223, vect__811.224
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movups	(%rdx,%rcx), %xmm2	# MEM[base: _1466, index: ivtmp.482_2480, offset: 0B], MEM[base: _1466, index: ivtmp.482_2480, offset: 0B]
	movups	16(%rdx,%rcx), %xmm4	# MEM[base: _1466, index: ivtmp.482_2480, offset: 16B], MEM[base: _1466, index: ivtmp.482_2480, offset: 16B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subps	%xmm6, %xmm1	# vect__835.220, vect__834.221
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	unpcklps	%xmm7, %xmm5	# MEM[base: _2498, offset: 48B], tmp2259
	movaps	%xmm2, %xmm6	# MEM[base: _1466, index: ivtmp.482_2480, offset: 0B], vect_perm_even_1765
	shufps	$136, %xmm4, %xmm6	#, MEM[base: _1466, index: ivtmp.482_2480, offset: 16B], vect_perm_even_1765
	movaps	%xmm5, %xmm7	# tmp2259, tmp2259
	shufps	$221, %xmm4, %xmm2	#, MEM[base: _1466, index: ivtmp.482_2480, offset: 16B], vect_perm_odd_1766
	movss	(%rsi), %xmm5	# MEM[base: _2498, offset: 0B], tmp2262
	movss	16(%rsi), %xmm4	# MEM[base: _2498, offset: 16B], MEM[base: _2498, offset: 16B]
	movss	4(%rsi), %xmm12	# MEM[base: _2498, offset: 4B], tmp2269
	unpcklps	%xmm4, %xmm5	# MEM[base: _2498, offset: 16B], tmp2262
	movaps	%xmm5, %xmm4	# tmp2262, tmp2262
	movlhps	%xmm7, %xmm4	# tmp2259, tmp2258
	movss	36(%rsi), %xmm5	# MEM[base: _2498, offset: 36B], tmp2266
	movss	52(%rsi), %xmm7	# MEM[base: _2498, offset: 52B], MEM[base: _2498, offset: 52B]
	movaps	%xmm6, %xmm13	# vect_perm_even_1765, vect__807.229
	unpcklps	%xmm7, %xmm5	# MEM[base: _2498, offset: 52B], tmp2266
	movaps	%xmm5, %xmm7	# tmp2266, tmp2266
	movss	20(%rsi), %xmm5	# MEM[base: _2498, offset: 20B], MEM[base: _2498, offset: 20B]
	mulps	%xmm4, %xmm13	# tmp2258, vect__807.229
	unpcklps	%xmm5, %xmm12	# MEM[base: _2498, offset: 20B], tmp2269
	movaps	%xmm12, %xmm5	# tmp2269, tmp2269
	movlhps	%xmm7, %xmm5	# tmp2266, tmp2265
	movaps	%xmm2, %xmm12	# vect_perm_odd_1766, vect__804.230
	mulps	%xmm5, %xmm12	# tmp2265, vect__804.230
	mulps	%xmm6, %xmm5	# vect_perm_even_1765, vect__802.232
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# vect__834.221, vect__803.231
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	mulps	%xmm4, %xmm2	# tmp2258, vect__801.233
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movups	(%r8), %xmm14	# MEM[base: _2503, offset: 0B], MEM[base: _2503, offset: 0B]
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	subps	%xmm12, %xmm6	# vect__804.230, vect__803.231
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movaps	%xmm14, %xmm15	# MEM[base: _2503, offset: 0B], vect_perm_even_1806
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm0, %xmm7	# vect__811.224, vect__798.236
	addps	%xmm13, %xmm6	# vect__807.229, vect__799.235
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addps	%xmm2, %xmm5	# vect__801.233, vect__800.234
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movups	16(%r8), %xmm2	# MEM[base: _2503, offset: 16B], MEM[base: _2503, offset: 16B]
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movhlps	%xmm6, %xmm9	# vect__799.235, tmp2285
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	shufps	$221, %xmm2, %xmm14	#, MEM[base: _2503, offset: 16B], vect_perm_odd_1807
	shufps	$136, %xmm2, %xmm15	#, MEM[base: _2503, offset: 16B], vect_perm_even_1806
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm6, %xmm4	# vect__799.235, vect__790.245
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movhlps	%xmm15, %xmm8	# vect_perm_even_1806, tmp2283
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	mulpd	%xmm3, %xmm4	# tmp2628, vect__789.246
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm15, %xmm2	# vect_perm_even_1806, vect__791.244
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm9, %xmm15	# tmp2285, vect__790.245
	mulpd	%xmm3, %xmm15	# tmp2628, vect__789.246
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addps	%xmm5, %xmm7	# vect__800.234, vect__798.236
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subpd	%xmm4, %xmm2	# vect__789.246, vect__788.247
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm8, %xmm4	# tmp2283, vect__791.244
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movhlps	%xmm7, %xmm11	# vect__798.236, tmp2299
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subpd	%xmm15, %xmm4	# vect__789.246, vect__788.247
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movhlps	%xmm14, %xmm10	# vect_perm_odd_1807, tmp2297
	cvtps2pd	%xmm14, %xmm15	# vect_perm_odd_1807, vect__784.249
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtpd2ps	%xmm4, %xmm4	# vect__788.247, tmp2290
	cvtpd2ps	%xmm2, %xmm2	# vect__788.247, tmp2289
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtps2pd	%xmm11, %xmm14	# tmp2299, vect__783.250
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movlhps	%xmm4, %xmm2	# tmp2290, vect__787.248
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	mulpd	%xmm3, %xmm14	# tmp2628, vect__782.251
	cvtps2pd	%xmm7, %xmm4	# vect__798.236, vect__783.250
	mulpd	%xmm3, %xmm4	# tmp2628, vect__782.251
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subps	%xmm13, %xmm1	# vect__807.229, vect__797.237
	subps	%xmm5, %xmm0	# vect__800.234, vect__795.239
	incq	%r10	# ivtmp.480
	addps	%xmm1, %xmm12	# vect__797.237, vect__796.238
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subpd	%xmm4, %xmm15	# vect__782.251, vect__781.252
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtps2pd	%xmm10, %xmm4	# tmp2297, vect__784.249
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subpd	%xmm14, %xmm4	# vect__782.251, vect__781.252
	cvtpd2ps	%xmm15, %xmm15	# vect__781.252, tmp2303
	addq	$32, %rdi	#, ivtmp.484
	cvtpd2ps	%xmm4, %xmm4	# vect__781.252, tmp2304
	movlhps	%xmm4, %xmm15	# tmp2304, vect__780.253
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movaps	%xmm2, %xmm4	# vect__787.248, tmp2305
	unpcklps	%xmm15, %xmm4	# vect__780.253, tmp2305
	unpckhps	%xmm15, %xmm2	# vect__780.253, tmp2306
	movups	%xmm2, 16(%rax,%rcx)	# tmp2306, MEM[base: _1408, index: ivtmp.482_2480, offset: 16B]
	movups	%xmm4, (%rax,%rcx)	# tmp2305, MEM[base: _1408, index: ivtmp.482_2480, offset: 0B]
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movups	(%r8), %xmm1	# MEM[base: _2503, offset: 0B], MEM[base: _2503, offset: 0B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movaps	(%rsp), %xmm2	# %sfp, vect_cst__1836
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movups	16(%r8), %xmm4	# MEM[base: _2503, offset: 16B], MEM[base: _2503, offset: 16B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulps	%xmm2, %xmm0	# vect_cst__1836, vect__777.257
	mulps	%xmm2, %xmm12	# vect_cst__1836, vect__778.256
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movaps	%xmm1, %xmm2	# MEM[base: _2503, offset: 0B], tmp2312
	shufps	$136, %xmm4, %xmm2	#, MEM[base: _2503, offset: 16B], tmp2312
	addps	%xmm2, %xmm6	# tmp2312, vect__775.262
	shufps	$221, %xmm4, %xmm1	#, MEM[base: _2503, offset: 16B], tmp2313
	addps	%xmm1, %xmm7	# tmp2313, vect__772.263
	movaps	%xmm6, %xmm1	# vect__775.262, tmp2314
	addq	$64, %rsi	#, ivtmp.489
	unpcklps	%xmm7, %xmm1	# vect__772.263, tmp2314
	unpckhps	%xmm7, %xmm6	# vect__772.263, tmp2315
	movups	%xmm1, (%r8)	# tmp2314, MEM[base: _2503, offset: 0B]
	movups	%xmm6, 16(%r8)	# tmp2315, MEM[base: _2503, offset: 16B]
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movups	(%rax,%rcx), %xmm1	# MEM[base: _1408, index: ivtmp.482_2480, offset: 0B], MEM[base: _1408, index: ivtmp.482_2480, offset: 0B]
	movups	16(%rax,%rcx), %xmm4	# MEM[base: _1408, index: ivtmp.482_2480, offset: 16B], MEM[base: _1408, index: ivtmp.482_2480, offset: 16B]
	movaps	%xmm1, %xmm2	# MEM[base: _1408, index: ivtmp.482_2480, offset: 0B], tmp2318
	shufps	$136, %xmm4, %xmm2	#, MEM[base: _1408, index: ivtmp.482_2480, offset: 16B], tmp2318
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addps	%xmm0, %xmm2	# vect__777.257, vect__769.270
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	shufps	$221, %xmm4, %xmm1	#, MEM[base: _1408, index: ivtmp.482_2480, offset: 16B], tmp2319
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	subps	%xmm12, %xmm1	# vect__778.256, vect__766.271
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movaps	%xmm2, %xmm4	# vect__769.270, tmp2320
	addq	$32, %r8	#, ivtmp.492
	unpcklps	%xmm1, %xmm4	# vect__766.271, tmp2320
	unpckhps	%xmm1, %xmm2	# vect__766.271, tmp2321
	movups	%xmm4, (%rdx,%rcx)	# tmp2320, MEM[base: _1466, index: ivtmp.482_2480, offset: 0B]
	movups	%xmm2, 16(%rdx,%rcx)	# tmp2321, MEM[base: _1466, index: ivtmp.482_2480, offset: 16B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movups	(%rax,%rcx), %xmm1	# MEM[base: _1408, index: ivtmp.482_2480, offset: 0B], MEM[base: _1408, index: ivtmp.482_2480, offset: 0B]
	movups	16(%rax,%rcx), %xmm4	# MEM[base: _1408, index: ivtmp.482_2480, offset: 16B], MEM[base: _1408, index: ivtmp.482_2480, offset: 16B]
	movaps	%xmm1, %xmm2	# MEM[base: _1408, index: ivtmp.482_2480, offset: 0B], tmp2324
	shufps	$136, %xmm4, %xmm2	#, MEM[base: _1408, index: ivtmp.482_2480, offset: 16B], tmp2324
	subps	%xmm0, %xmm2	# vect__777.257, tmp2324
	shufps	$221, %xmm4, %xmm1	#, MEM[base: _1408, index: ivtmp.482_2480, offset: 16B], tmp2325
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addps	%xmm1, %xmm12	# tmp2325, vect__760.279
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movaps	%xmm2, %xmm0	# tmp2324, vect__763.278
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movaps	%xmm2, %xmm1	# vect__763.278, tmp2326
	unpcklps	%xmm12, %xmm1	# vect__760.279, tmp2326
	unpckhps	%xmm12, %xmm0	# vect__760.279, tmp2327
	movups	%xmm1, (%rax,%rcx)	# tmp2326, MEM[base: _1408, index: ivtmp.482_2480, offset: 0B]
	movups	%xmm0, 16(%rax,%rcx)	# tmp2327, MEM[base: _1408, index: ivtmp.482_2480, offset: 16B]
	addq	$32, %rcx	#, ivtmp.482
	cmpq	%r10, %r9	# ivtmp.480, bnd.209
# SUCC: 13 [83.3% (adjusted)]  count:222327720 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 14 [16.7% (adjusted)]  count:44465543 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	ja	.L67	#,
# BLOCK 14, count:44465543 (estimated locally) seq:12
# PRED: 13 [16.7% (adjusted)]  count:44465543 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movq	16(%rsp), %rbx	# %sfp, k
	movq	%r9, %rcx	# bnd.209, _1714
	leaq	0(,%r9,4), %rax	#, niters_vector_mult_vf.210
	salq	$5, %rcx	#, _1714
	movq	%rbx, %rsi	# k, tmp.212
	salq	$6, %r9	#, tmp2328
	addq	%rcx, %r11	# _1714, tmp.211
	movss	24(%rsp), %xmm4	# %sfp, epi3$i
	subq	%rax, %rsi	# niters_vector_mult_vf.210, tmp.212
	addq	%r14, %rcx	# tw1, tmp.213
	addq	%r14, %r9	# tw1, tmp.214
	cmpq	%rax, %rbx	# niters_vector_mult_vf.210, k
# SUCC: 15 [75.0% (guessed)]  count:33349157 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [25.0% (guessed)]  count:11116386 (estimated locally) (CAN_FALLTHRU)
	je	.L33	#,
# BLOCK 15, count:33349158 (estimated locally) seq:13
# PRED: 14 [75.0% (guessed)]  count:33349157 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leaq	(%r11,%r13), %rax	#, _881
	movss	(%rax), %xmm2	# _881->r, _22
	movss	4(%rcx), %xmm3	# tmp.213_1716->i, _877
	movss	(%rcx), %xmm1	# tmp.213_1716->r, _420
	movss	4(%rax), %xmm5	# _881->i, _1101
	movaps	%xmm2, %xmm0	# _22, tmp2329
	mulss	%xmm1, %xmm0	# _420, tmp2329
	mulss	%xmm3, %xmm2	# _877, tmp2332
	mulss	%xmm5, %xmm1	# _1101, tmp2331
	movaps	%xmm3, %xmm6	# _877, tmp2330
	mulss	%xmm5, %xmm6	# _1101, tmp2330
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leaq	(%rax,%r13), %rdx	#, _872
	movss	4(%rdx), %xmm3	# _872->i, _868
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm2, %xmm1	# tmp2332, _873
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%r9), %xmm2	# tmp.214_1718->i, _867
	movss	(%r9), %xmm5	# tmp.214_1718->r, _870
	movss	(%rdx), %xmm7	# _872->r, _871
	movaps	%xmm2, %xmm8	# _867, _866
	mulss	%xmm3, %xmm8	# _868, _866
	mulss	%xmm7, %xmm2	# _871, tmp2334
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm6, %xmm0	# tmp2330, _875
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	mulss	%xmm5, %xmm3	# _870, tmp2333
	movaps	%xmm5, %xmm9	# _870, _869
	mulss	%xmm7, %xmm9	# _871, _869
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm0, %xmm5	# _875, tmp2335
	subss	%xmm8, %xmm5	# _866, tmp2335
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm2, %xmm3	# tmp2334, tmp2333
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp2337
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm9, %xmm5	# _869, _859
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm3, %xmm7	# tmp2333, _860
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm3, %xmm6	# _860, _857
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movsd	.LC1(%rip), %xmm3	#, tmp2339
	cvtss2sd	%xmm5, %xmm10	# _859, tmp2337
	mulsd	%xmm3, %xmm10	# tmp2339, tmp2338
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm1, %xmm6	# _873, _857
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm2, %xmm2	# tmp2336
	cvtss2sd	(%r11), %xmm2	# tmp.211_1713->r, tmp2336
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm7, %xmm1	# _860, tmp2351
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm2	# tmp2338, tmp2340
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp2343
	cvtss2sd	%xmm6, %xmm10	# _857, tmp2343
	mulsd	%xmm3, %xmm10	# tmp2339, tmp2344
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm2, %xmm2	# tmp2340, tmp2341
	movss	%xmm2, (%rax)	# tmp2341, _881->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm2, %xmm2	# tmp2342
	cvtss2sd	4(%r11), %xmm2	# tmp.211_1713->i, tmp2342
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	(%r11), %xmm5	# tmp.211_1713->r, tmp2352
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm10, %xmm2	# tmp2344, tmp2346
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm9, %xmm0	# _869, tmp2349
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm1	# epi3$i, _65
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm2, %xmm2	# tmp2346, tmp2348
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm8, %xmm0	# _866, tmp2350
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movss	%xmm2, 4(%rax)	# tmp2348, _881->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm5, (%r11)	# tmp2352, tmp.211_1713->r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rax), %xmm2	# _881->r, tmp2356
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	4(%r11), %xmm6	# tmp.211_1713->i, tmp2354
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _63
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm2	# _65, tmp2356
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, 4(%r11)	# tmp2354, tmp.211_1713->i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm2, (%rdx)	# tmp2356, _872->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rax), %xmm2	# _881->i, _881->i
	subss	%xmm0, %xmm2	# _63, tmp2358
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm2, 4(%rdx)	# tmp2358, _872->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rax), %xmm2	# _881->r, _881->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rax), %xmm0	# _881->i, tmp2362
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm2	# _65, _881->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rax)	# tmp2362, _881->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm2, (%rax)	# tmp2360, _881->r
# kiss_fft.c:133:      }while(--k);
	cmpq	$1, %rsi	#, tmp.212
# SUCC: 16 [89.0% (guessed)]  count:29680751 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:3668407 (estimated locally) (CAN_FALLTHRU)
	je	.L33	#,
# BLOCK 16, count:29680752 (estimated locally) seq:14
# PRED: 15 [89.0% (guessed)]  count:29680751 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movss	8(%rcx), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.213_1716 + 8B].r, _746
	leaq	8(%r11,%r13), %rax	#, _756
	movss	12(%rcx), %xmm2	# MEM[(struct kiss_fft_cpx *)tmp.213_1716 + 8B].i, _743
	movss	(%rax), %xmm5	# _756->r, _747
	movss	4(%rax), %xmm1	# _756->i, _744
	movaps	%xmm6, %xmm0	# _746, tmp2366
	movaps	%xmm2, %xmm7	# _743, tmp2367
	mulss	%xmm1, %xmm7	# _744, tmp2367
	mulss	%xmm5, %xmm2	# _747, tmp2369
	mulss	%xmm5, %xmm0	# _747, tmp2366
	mulss	%xmm6, %xmm1	# _746, tmp2368
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	20(%r9), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.214_1718 + 16B].i, _732
	leaq	(%rax,%r13), %rdx	#, _737
	movss	4(%rdx), %xmm6	# _737->i, _733
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm7, %xmm0	# tmp2367, _741
	addss	%xmm2, %xmm1	# tmp2369, _738
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	16(%r9), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.214_1718 + 16B].r, _735
	movss	(%rdx), %xmm2	# _737->r, _736
	movaps	%xmm5, %xmm8	# _732, _731
	mulss	%xmm6, %xmm8	# _733, _731
	mulss	%xmm2, %xmm5	# _736, tmp2371
	mulss	%xmm7, %xmm6	# _735, tmp2370
	movaps	%xmm7, %xmm9	# _735, _734
	mulss	%xmm2, %xmm9	# _736, _734
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp2374
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm5, %xmm6	# tmp2371, tmp2370
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm0, %xmm5	# _741, tmp2372
	subss	%xmm8, %xmm5	# _731, tmp2372
	movaps	%xmm6, %xmm7	# _727, _725
	addss	%xmm1, %xmm7	# _738, _725
	addss	%xmm9, %xmm5	# _734, _726
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm6, %xmm2	# tmp2370, _727
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm6, %xmm6	# tmp2373
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm5, %xmm10	# _726, tmp2374
	mulsd	%xmm3, %xmm10	# tmp2339, tmp2375
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	8(%r11), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.211_1713 + 8B].r, tmp2373
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm2, %xmm1	# _727, tmp2388
	subss	%xmm9, %xmm0	# _734, tmp2386
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm6	# tmp2375, tmp2377
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp2380
	cvtss2sd	%xmm7, %xmm10	# _725, tmp2380
	mulsd	%xmm3, %xmm10	# tmp2339, tmp2381
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm6, %xmm6	# tmp2377, tmp2378
	movss	%xmm6, (%rax)	# tmp2378, _756->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm6, %xmm6	# tmp2379
	cvtss2sd	12(%r11), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.211_1713 + 8B].i, tmp2379
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	8(%r11), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.211_1713 + 8B].r, tmp2389
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm10, %xmm6	# tmp2381, tmp2383
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm1	# epi3$i, _704
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm8, %xmm0	# _731, tmp2387
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm6, %xmm6	# tmp2383, tmp2385
	movss	%xmm6, 4(%rax)	# tmp2385, _756->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm5, 8(%r11)	# tmp2389, MEM[(struct kiss_fft_cpx *)tmp.211_1713 + 8B].r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rax), %xmm2	# _756->r, tmp2393
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	12(%r11), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.211_1713 + 8B].i, tmp2391
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _705
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm2	# _704, tmp2393
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm7, 12(%r11)	# tmp2391, MEM[(struct kiss_fft_cpx *)tmp.211_1713 + 8B].i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm2, (%rdx)	# tmp2393, _737->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rax), %xmm2	# _756->i, _756->i
	subss	%xmm0, %xmm2	# _705, tmp2395
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm2, 4(%rdx)	# tmp2395, _737->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rax), %xmm2	# _756->r, _756->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rax), %xmm0	# _756->i, tmp2399
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm2	# _704, _756->r
# kiss_fft.c:132:          ++Fout;
	leaq	16(%r11), %rdx	#, Fout
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rax)	# tmp2399, _756->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm2, (%rax)	# tmp2397, _756->r
# kiss_fft.c:133:      }while(--k);
	cmpq	$2, %rsi	#, tmp.212
# SUCC: 17 [89.0% (guessed)]  count:26415869 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:3264883 (estimated locally) (CAN_FALLTHRU)
	je	.L33	#,
# BLOCK 17, count:26415869 (estimated locally) seq:15
# PRED: 16 [89.0% (guessed)]  count:26415869 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addq	%r13, %rdx	# _81, _1643
	movss	(%rdx), %xmm6	# _1643->r, _1644
	movss	20(%rcx), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.213_1716 + 16B].i, _1648
	movss	16(%rcx), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.213_1716 + 16B].r, _1645
	movss	4(%rdx), %xmm2	# _1643->i, _1647
	movaps	%xmm6, %xmm1	# _1644, tmp2401
	mulss	%xmm5, %xmm1	# _1645, tmp2401
	mulss	%xmm7, %xmm6	# _1648, tmp2403
	mulss	%xmm2, %xmm5	# _1647, tmp2404
	movaps	%xmm2, %xmm8	# _1647, tmp2402
	mulss	%xmm7, %xmm8	# _1648, tmp2402
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leaq	(%rdx,%r13), %rax	#, _1654
	movss	(%rax), %xmm7	# _1654->r, _1655
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm5, %xmm6	# tmp2404, tmp2403
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%rax), %xmm5	# _1654->i, _1658
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm8, %xmm1	# tmp2402, _1650
	movaps	%xmm6, %xmm2	# tmp2403, _1653
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	36(%r9), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.214_1718 + 32B].i, _1659
	movss	32(%r9), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.214_1718 + 32B].r, _1656
	movaps	%xmm7, %xmm0	# _1655, _1657
	mulss	%xmm6, %xmm0	# _1656, _1657
	mulss	%xmm8, %xmm7	# _1659, tmp2405
	mulss	%xmm5, %xmm6	# _1658, tmp2406
	movaps	%xmm5, %xmm9	# _1658, _1660
	mulss	%xmm8, %xmm9	# _1659, _1660
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp2409
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm2, %xmm8	# _1653, _1666
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm6, %xmm7	# tmp2406, tmp2405
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# _1650, tmp2407
	subss	%xmm9, %xmm6	# _1660, tmp2407
	addss	%xmm7, %xmm8	# _1664, _1666
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm7, %xmm5	# tmp2405, _1664
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm0, %xmm6	# _1657, _1665
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp2408
	cvtss2sd	16(%r11), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.211_1713 + 16B].r, tmp2408
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm10	# _1665, tmp2409
	mulsd	%xmm3, %xmm10	# tmp2339, tmp2410
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _1657, _1650
	subss	%xmm5, %xmm2	# _1664, tmp2423
	movaps	%xmm1, %xmm0	# _1650, tmp2421
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm7	# tmp2410, tmp2412
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp2415
	cvtss2sd	%xmm8, %xmm10	# _1666, tmp2415
	mulsd	%xmm10, %xmm3	# tmp2415, tmp2416
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _1660, tmp2422
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp2412, tmp2413
	movss	%xmm7, (%rdx)	# tmp2413, _1643->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp2414
	cvtss2sd	20(%r11), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.211_1713 + 16B].i, tmp2414
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	16(%r11), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.211_1713 + 16B].r, tmp2424
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm3, %xmm7	# tmp2416, tmp2414
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _1686
	mulss	%xmm2, %xmm4	# tmp2423, _1687
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm3, %xmm3	# tmp2420
	cvtsd2ss	%xmm7, %xmm3	# tmp2418, tmp2420
	movss	%xmm3, 4(%rdx)	# tmp2420, _1643->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, 16(%r11)	# tmp2424, MEM[(struct kiss_fft_cpx *)tmp.211_1713 + 16B].r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rdx), %xmm1	# _1643->r, tmp2428
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	20(%r11), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.211_1713 + 16B].i, tmp2426
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm4, %xmm1	# _1687, tmp2428
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm8, 20(%r11)	# tmp2426, MEM[(struct kiss_fft_cpx *)tmp.211_1713 + 16B].i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm1, (%rax)	# tmp2428, _1654->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rdx), %xmm1	# _1643->i, _1643->i
	subss	%xmm0, %xmm1	# _1686, tmp2430
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm1, 4(%rax)	# tmp2430, _1654->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rdx), %xmm1	# _1643->r, _1643->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rdx), %xmm0	# _1643->i, tmp2434
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm4, %xmm1	# _1687, tmp2432
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rdx)	# tmp2434, _1643->i
# SUCC: 18 [always]  count:26415869 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm1, (%rdx)	# tmp2432, _1643->r
# BLOCK 18, count:277909651 (estimated locally) seq:16
# PRED: 63 [always]  count:6603967 (estimated locally) (CAN_FALLTHRU) 34 [11.0% (guessed)]  count:55581930 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 60 [25.0% (guessed)]  count:2779097 (estimated locally) (CAN_FALLTHRU) 61 [11.0% (guessed)]  count:917102 (estimated locally) (CAN_FALLTHRU) 62 [11.0% (guessed)]  count:816221 (estimated locally) (CAN_FALLTHRU) 69 [always]  count:11116386 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 55 [always]  count:6603967 (estimated locally) (CAN_FALLTHRU) 43 [25.0% (guessed)]  count:11116386 (estimated locally) (CAN_FALLTHRU) 44 [11.0% (guessed)]  count:3668407 (estimated locally) (CAN_FALLTHRU) 45 [11.0% (guessed)]  count:3264883 (estimated locally) (CAN_FALLTHRU) 77 [always]  count:2779096 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 32 [always]  count:13895482 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 20 [11.0% (guessed)]  count:7642515 (estimated locally) (CAN_FALLTHRU) 24 [always]  count:49467918 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 52 [25.0% (guessed)]  count:2779097 (estimated locally) (CAN_FALLTHRU) 53 [11.0% (guessed)]  count:917102 (estimated locally) (CAN_FALLTHRU) 54 [11.0% (guessed)]  count:816221 (estimated locally) (CAN_FALLTHRU) 66 [always]  count:12366979 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 73 [always]  count:11116386 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 17 [always]  count:26415869 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 14 [25.0% (guessed)]  count:11116386 (estimated locally) (CAN_FALLTHRU) 15 [11.0% (guessed)]  count:3668407 (estimated locally) (CAN_FALLTHRU) 16 [11.0% (guessed)]  count:3264883 (estimated locally) (CAN_FALLTHRU) 46 [always]  count:26415869 (estimated locally) (CAN_FALLTHRU) 80 [always]  count:2779096 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
.L33:
# kiss_fft.c:302: }
	addq	$200, %rsp	#,
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
# SUCC: EXIT [always]  count:277909651 (estimated locally)
	ret	
# BLOCK 19, count:347387061 (estimated locally) seq:17
# PRED: 6 [37.5% (adjusted)]  count:130270148 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L37:
	.cfi_restore_state
# kiss_fft.c:295:     switch (p) {
	cmpl	$5, %r13d	#, p
# SUCC: 37 [33.3% (adjusted)]  count:115795688 (estimated locally) (CAN_FALLTHRU) 20 [66.7% (adjusted)]  count:231591373 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L40	#,
# BLOCK 20, count:69477412 (estimated locally) seq:18
# PRED: 19 [66.7% (adjusted)]  count:231591373 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movq	40(%rsp), %rbx	# %sfp, fstride
	movslq	32(%rsp), %rcx	# %sfp,
	movq	%rbx, %rax	# fstride, tmp2519
	imulq	%rcx, %rax	# _221, tmp2519
	movq	%rcx, %r10	#,
# kiss_fft.c:153:     Fout1=Fout0+m;
	salq	$3, %rcx	#, _231
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	leaq	0(,%rax,8), %rdx	#, _223
	leaq	264(%r12,%rdx), %rax	#, _224
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movss	4(%rax), %xmm3	# MEM[(struct kiss_fft_cpx *)_224 + 4B], ya$i
	movss	(%rax), %xmm15	# MEM[(struct kiss_fft_cpx *)_224], ya$r
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	addq	%rdx, %rax	# _223, _228
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movss	%xmm3, (%rsp)	# ya$i, %sfp
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	movss	(%rax), %xmm3	# MEM[(struct kiss_fft_cpx *)_228], yb$r
# kiss_fft.c:153:     Fout1=Fout0+m;
	leaq	(%r11,%rcx), %rsi	#, Fout1
# kiss_fft.c:154:     Fout2=Fout0+2*m;
	leaq	(%rsi,%rcx), %rdi	#, Fout2
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	movss	%xmm3, 16(%rsp)	# yb$r, %sfp
	movss	4(%rax), %xmm3	# MEM[(struct kiss_fft_cpx *)_228 + 4B], yb$i
# kiss_fft.c:155:     Fout3=Fout0+3*m;
	leaq	(%rdi,%rcx), %r8	#, Fout3
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	movss	%xmm3, 24(%rsp)	# yb$i, %sfp
# kiss_fft.c:156:     Fout4=Fout0+4*m;
	addq	%r8, %rcx	# Fout3, Fout4
# kiss_fft.c:159:     for ( u=0; u<m; ++u ) {
	testl	%r10d, %r10d	# m
# SUCC: 21 [89.0% (guessed)]  count:61834897 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:7642515 (estimated locally) (CAN_FALLTHRU)
	jle	.L33	#,
# BLOCK 21, count:61834897 (estimated locally) seq:19
# PRED: 20 [89.0% (guessed)]  count:61834897 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpq	$1, %rbx	#, fstride
# SUCC: 22 [80.0% (guessed)]  count:49467918 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 64 [20.0% (guessed)]  count:12366979 (estimated locally) (CAN_FALLTHRU)
	jne	.L150	#,
# BLOCK 22, count:49467918 (estimated locally) seq:20
# PRED: 21 [80.0% (guessed)]  count:49467918 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movl	%r10d, %eax	# m, m
	decl	%eax	# tmp2578
	leaq	8(,%rax,8), %r9	#, _2584
	movq	%r12, %rdx	# st, ivtmp.715
# SUCC: 23 [always]  count:49467918 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	xorl	%eax, %eax	# ivtmp.700
# BLOCK 23, count:449708347 (estimated locally) seq:21
# PRED: 22 [always]  count:49467918 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 23 [89.0% (guessed)]  count:400240429 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L82:
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	movss	264(%r12,%rax), %xmm0	# MEM[base: st_34(D), index: ivtmp.700_2574, offset: 264B], _657
	movss	268(%r12,%rax), %xmm1	# MEM[base: st_34(D), index: ivtmp.700_2574, offset: 268B], _654
	movss	(%rsi,%rax), %xmm4	# MEM[base: Fout1_232, index: ivtmp.700_2574, offset: 0B], _662
	movss	4(%rsi,%rax), %xmm2	# MEM[base: Fout1_232, index: ivtmp.700_2574, offset: 4B], _655
	movaps	%xmm0, %xmm3	# _657, tmp2580
	movaps	%xmm1, %xmm5	# _654, tmp2581
	mulss	%xmm2, %xmm5	# _655, tmp2581
	mulss	%xmm4, %xmm3	# _662, tmp2580
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movss	(%rdi,%rax), %xmm6	# MEM[base: Fout2_236, index: ivtmp.700_2574, offset: 0B], _648
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	mulss	%xmm4, %xmm1	# _662, tmp2583
	mulss	%xmm2, %xmm0	# _655, tmp2582
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movss	268(%r12,%rax,2), %xmm4	# MEM[base: st_34(D), index: ivtmp.700_2574, step: 2, offset: 268B], _639
	movss	264(%r12,%rax,2), %xmm2	# MEM[base: st_34(D), index: ivtmp.700_2574, step: 2, offset: 264B], _642
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	subss	%xmm5, %xmm3	# tmp2581, _652
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movss	4(%rdi,%rax), %xmm5	# MEM[base: Fout2_236, index: ivtmp.700_2574, offset: 4B], _640
	movaps	%xmm2, %xmm8	# _642, tmp2584
	movaps	%xmm4, %xmm7	# _639, tmp2585
	mulss	%xmm5, %xmm2	# _640, tmp2586
	mulss	%xmm6, %xmm4	# _648, tmp2587
	mulss	%xmm5, %xmm7	# _640, tmp2585
	mulss	%xmm6, %xmm8	# _648, tmp2584
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	4(%r8,%rax), %xmm5	# MEM[base: Fout3_240, index: ivtmp.700_2574, offset: 4B], _625
	movss	(%r8,%rax), %xmm6	# MEM[base: Fout3_240, index: ivtmp.700_2574, offset: 0B], _633
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	addss	%xmm4, %xmm2	# tmp2587, _634
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	268(%rdx), %xmm4	# MEM[base: _2579, offset: 268B], _624
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	subss	%xmm7, %xmm8	# tmp2585, _637
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	264(%rdx), %xmm7	# MEM[base: _2579, offset: 264B], _627
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	addss	%xmm1, %xmm0	# tmp2583, _649
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movaps	%xmm4, %xmm1	# _624, _623
	mulss	%xmm5, %xmm1	# _625, _623
	mulss	%xmm6, %xmm4	# _633, tmp2589
	mulss	%xmm7, %xmm5	# _627, tmp2588
	movaps	%xmm7, %xmm9	# _627, _626
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	(%rcx,%rax), %xmm14	# MEM[base: Fout4_244, index: ivtmp.700_2574, offset: 0B], _618
	movss	264(%r12,%rax,4), %xmm7	# MEM[base: st_34(D), index: ivtmp.700_2574, step: 4, offset: 264B], _612
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	mulss	%xmm6, %xmm9	# _633, _626
	addss	%xmm4, %xmm5	# tmp2589, tmp2588
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	4(%rcx,%rax), %xmm4	# MEM[base: Fout4_244, index: ivtmp.700_2574, offset: 4B], _610
	movaps	%xmm7, %xmm13	# _612, _611
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movaps	%xmm5, %xmm6	# tmp2588, _619
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	268(%r12,%rax,4), %xmm5	# MEM[base: st_34(D), index: ivtmp.700_2574, step: 4, offset: 268B], _609
	mulss	%xmm4, %xmm7	# _610, tmp2590
	movaps	%xmm5, %xmm10	# _609, _608
	mulss	%xmm14, %xmm5	# _618, tmp2591
	mulss	%xmm4, %xmm10	# _610, _608
	mulss	%xmm14, %xmm13	# _618, _611
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	movaps	%xmm3, %xmm4	# _652, tmp2592
# kiss_fft.c:161:         scratch[0] = *Fout0;
	movss	(%r11,%rax), %xmm12	# MEM[base: Fout_24(D), index: ivtmp.700_2574, offset: 0B], scratch$0$r
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	addss	%xmm5, %xmm7	# tmp2591, _604
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	subss	%xmm10, %xmm4	# _608, tmp2592
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	subss	%xmm13, %xmm3	# _611, tmp2593
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	movaps	%xmm7, %xmm5	# _604, _602
	addss	%xmm13, %xmm4	# _611, _603
	addss	%xmm0, %xmm5	# _649, _602
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	subss	%xmm7, %xmm0	# _604, _599
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	movaps	%xmm9, %xmm7	# _626, tmp2594
	addss	%xmm8, %xmm7	# _637, tmp2594
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	addss	%xmm10, %xmm3	# _608, _600
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	movaps	%xmm6, %xmm10	# _619, _597
	addss	%xmm2, %xmm10	# _634, _597
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	subss	%xmm6, %xmm2	# _619, _594
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	movaps	%xmm4, %xmm6	# _603, tmp2596
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	subss	%xmm1, %xmm7	# _623, _598
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	addss	%xmm12, %xmm6	# scratch$0$r, tmp2596
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	addss	%xmm8, %xmm1	# _637, tmp2595
# kiss_fft.c:161:         scratch[0] = *Fout0;
	movss	4(%r11,%rax), %xmm11	# MEM[base: Fout_24(D), index: ivtmp.700_2574, offset: 4B], scratch$0$i
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	addss	%xmm7, %xmm6	# _598, tmp2597
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	subss	%xmm9, %xmm1	# _626, _595
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movaps	%xmm15, %xmm9	# ya$r, tmp2600
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	movss	%xmm6, (%r11,%rax)	# tmp2597, MEM[base: Fout_24(D), index: ivtmp.700_2574, offset: 0B]
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	movaps	%xmm5, %xmm6	# _602, tmp2598
	addss	%xmm11, %xmm6	# scratch$0$i, tmp2598
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movss	16(%rsp), %xmm14	# %sfp, yb$r
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	mulss	%xmm4, %xmm9	# _603, tmp2600
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	addss	%xmm10, %xmm6	# _597, tmp2599
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movaps	%xmm14, %xmm8	# yb$r, tmp2602
	mulss	%xmm7, %xmm8	# _598, tmp2602
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	movss	%xmm6, 4(%r11,%rax)	# tmp2599, MEM[base: Fout_24(D), index: ivtmp.700_2574, offset: 4B]
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	addss	%xmm12, %xmm9	# scratch$0$r, tmp2601
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movaps	%xmm15, %xmm6	# ya$r, tmp2603
	mulss	%xmm5, %xmm6	# _602, tmp2603
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	addss	%xmm8, %xmm9	# tmp2602, _584
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movaps	%xmm14, %xmm8	# yb$r, tmp2605
	mulss	%xmm10, %xmm8	# _597, tmp2605
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movss	(%rsp), %xmm14	# %sfp, ya$i
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	addss	%xmm11, %xmm6	# scratch$0$i, tmp2604
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movss	24(%rsp), %xmm13	# %sfp, tmp2606
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	mulss	%xmm15, %xmm7	# ya$r, tmp2616
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	addss	%xmm8, %xmm6	# tmp2605, _580
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movaps	%xmm14, %xmm8	# ya$i, tmp2607
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	mulss	%xmm2, %xmm13	# _594, tmp2606
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	mulss	%xmm0, %xmm8	# _599, tmp2607
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	mulss	%xmm3, %xmm14	# _600, _576
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	mulss	%xmm15, %xmm10	# ya$r, tmp2619
	addq	$24, %rdx	#, ivtmp.715
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	addss	%xmm13, %xmm8	# tmp2606, _577
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movss	24(%rsp), %xmm13	# %sfp, _575
	mulss	%xmm1, %xmm13	# _595, _575
	movss	%xmm13, 32(%rsp)	# _575, %sfp
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movaps	%xmm9, %xmm13	# _584, tmp2608
	subss	%xmm8, %xmm13	# _577, tmp2608
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	addss	%xmm9, %xmm8	# _584, tmp2611
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movss	%xmm13, (%rsi,%rax)	# tmp2608, MEM[base: Fout1_232, index: ivtmp.700_2574, offset: 0B]
	movss	32(%rsp), %xmm13	# %sfp, tmp2609
	addss	%xmm14, %xmm13	# _576, tmp2609
	addss	%xmm6, %xmm13	# _580, tmp2610
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	subss	32(%rsp), %xmm6	# %sfp, tmp2612
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movss	%xmm13, 4(%rsi,%rax)	# tmp2610, MEM[base: Fout1_232, index: ivtmp.700_2574, offset: 4B]
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	subss	%xmm14, %xmm6	# _576, tmp2613
	movss	%xmm8, (%rcx,%rax)	# tmp2611, MEM[base: Fout4_244, index: ivtmp.700_2574, offset: 0B]
	movss	%xmm6, 4(%rcx,%rax)	# tmp2613, MEM[base: Fout4_244, index: ivtmp.700_2574, offset: 4B]
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	movss	16(%rsp), %xmm6	# %sfp, yb$r
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	mulss	%xmm6, %xmm5	# yb$r, tmp2617
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	mulss	%xmm6, %xmm4	# yb$r, tmp2614
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movss	(%rsp), %xmm6	# %sfp, ya$i
	mulss	%xmm6, %xmm2	# ya$i, _556
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	addss	%xmm5, %xmm11	# tmp2617, tmp2618
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movss	24(%rsp), %xmm5	# %sfp, yb$i
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	addss	%xmm4, %xmm12	# tmp2614, tmp2615
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	mulss	%xmm5, %xmm0	# yb$i, _555
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movaps	%xmm2, %xmm4	# _556, tmp2620
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	addss	%xmm12, %xmm7	# tmp2615, _561
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	mulss	%xmm5, %xmm3	# yb$i, _553
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	mulss	%xmm6, %xmm1	# ya$i, _552
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	subss	%xmm0, %xmm4	# _555, tmp2620
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	addss	%xmm11, %xmm10	# tmp2618, _557
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	subss	%xmm2, %xmm0	# _556, tmp2624
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	addss	%xmm7, %xmm4	# _561, tmp2621
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	addss	%xmm0, %xmm7	# tmp2624, tmp2625
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	movss	%xmm4, (%rdi,%rax)	# tmp2621, MEM[base: Fout2_236, index: ivtmp.700_2574, offset: 0B]
	movaps	%xmm10, %xmm4	# _557, tmp2622
	subss	%xmm1, %xmm4	# _552, tmp2622
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	subss	%xmm3, %xmm1	# _553, tmp2626
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	addss	%xmm3, %xmm4	# _553, tmp2623
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	addss	%xmm1, %xmm10	# tmp2626, tmp2627
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	movss	%xmm4, 4(%rdi,%rax)	# tmp2623, MEM[base: Fout2_236, index: ivtmp.700_2574, offset: 4B]
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	movss	%xmm7, (%r8,%rax)	# tmp2625, MEM[base: Fout3_240, index: ivtmp.700_2574, offset: 0B]
	movss	%xmm10, 4(%r8,%rax)	# tmp2627, MEM[base: Fout3_240, index: ivtmp.700_2574, offset: 4B]
	addq	$8, %rax	#, ivtmp.700
# kiss_fft.c:159:     for ( u=0; u<m; ++u ) {
	cmpq	%r9, %rax	# _2584, ivtmp.700
# SUCC: 23 [89.0% (guessed)]  count:400240429 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 24 [11.0% (guessed)]  count:49467918 (estimated locally) (FALLTHRU)
	jne	.L82	#,
# BLOCK 24, count:49467918 (estimated locally) seq:22
# PRED: 23 [11.0% (guessed)]  count:49467918 (estimated locally) (FALLTHRU)
# SUCC: 18 [always]  count:49467918 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L33	#
# BLOCK 25, count:118111601 (estimated locally) seq:23
# PRED: 2 [34.0% (guessed)]  count:118111601 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L148:
# SUCC: 26 [always]  count:118111601 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%r11, %rdx	# Fout, Fout
# BLOCK 26, count:1073741824 (estimated locally) seq:24
# PRED: 25 [always]  count:118111601 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 26 [89.0% (guessed)]  count:955630224 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L35:
# kiss_fft.c:278:             *Fout = *f;
	movq	(%rbx), %rcx	# MEM[base: f_18, offset: 0B], MEM[base: f_18, offset: 0B]
# kiss_fft.c:280:         }while(++Fout != Fout_end );
	addq	$8, %rdx	#, Fout
# kiss_fft.c:278:             *Fout = *f;
	movq	%rcx, -8(%rdx)	# MEM[base: f_18, offset: 0B], MEM[base: Fout_16, offset: 0B]
# kiss_fft.c:279:             f += fstride*in_stride;
	addq	%r14, %rbx	# _754, f
# kiss_fft.c:280:         }while(++Fout != Fout_end );
	cmpq	%rdx, %rax	# Fout, Fout_end
# SUCC: 26 [89.0% (guessed)]  count:955630224 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 27 [11.0% (guessed)]  count:118111600 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L35	#,
# BLOCK 27, count:118111600 (estimated locally) seq:25
# PRED: 26 [11.0% (guessed)]  count:118111600 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
# kiss_fft.c:295:     switch (p) {
	cmpl	$4, %r13d	#, p
# SUCC: 6 [80.0% (adjusted)]  count:94489280 (estimated locally) (CAN_FALLTHRU) 28 [20.0% (adjusted)]  count:23622320 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L151	#,
# BLOCK 28, count:69477412 (estimated locally) seq:26
# PRED: 5 [20.0% (adjusted)]  count:45855092 (estimated locally) (CAN_FALLTHRU) 27 [20.0% (adjusted)]  count:23622320 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
.L36:
# kiss_fft.c:72:         tw1 += fstride;
	movq	40(%rsp), %rax	# %sfp, fstride
# kiss_fft.c:298:         case 4: kf_bfly4(Fout,fstride,st,m); break;
	movslq	32(%rsp), %r13	# %sfp, k
# kiss_fft.c:73:         tw2 += fstride*2;
	movq	%rax, %rbp	# fstride, _200
# kiss_fft.c:74:         tw3 += fstride*3;
	leaq	(%rax,%rax,2), %r10	#, tmp2477
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movq	%r13, %r8	# k, _160
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	leaq	0(%r13,%r13,2), %rdi	#, tmp2473
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	leaq	264(%r12), %rsi	#, tw1
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	salq	$4, %r8	#, _160
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	salq	$3, %rdi	#, tmp2474
# kiss_fft.c:73:         tw2 += fstride*2;
	salq	$4, %rbp	#, _200
# kiss_fft.c:74:         tw3 += fstride*3;
	salq	$3, %r10	#, tmp2478
	cmpq	$1, %rax	#, fstride
# kiss_fft.c:72:         tw1 += fstride;
	leaq	0(,%rax,8), %rbx	#, _198
# kiss_fft.c:77:         if(st->inverse) {
	movl	4(%r12), %ecx	# st_34(D)->inverse, _208
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	leaq	0(,%r13,8), %r9	#, _146
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	movq	%rsi, %rdx	# tw1, tw3
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	movq	%rsi, %rax	# tw1, tw2
# SUCC: 35 [80.0% (guessed)]  count:55581930 (estimated locally) (CAN_FALLTHRU) 29 [20.0% (guessed)]  count:13895482 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L74	#,
# BLOCK 29, count:126322566 (estimated locally) seq:27
# PRED: 28 [20.0% (guessed)]  count:13895482 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 31 [89.0% (guessed)]  count:112427084 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L73:
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movss	(%rsi), %xmm0	# MEM[base: tw1_182, offset: 0B], _822
	movss	4(%r11,%r9), %xmm4	# MEM[base: Fout_245, index: _146, offset: 4B], _824
	movss	(%r11,%r9), %xmm5	# MEM[base: Fout_245, index: _146, offset: 0B], _832
	movss	4(%rsi), %xmm3	# MEM[base: tw1_182, offset: 4B], _830
	movaps	%xmm0, %xmm2	# _822, tmp2479
	movaps	%xmm4, %xmm6	# _824, tmp2480
	mulss	%xmm3, %xmm6	# _830, tmp2480
	mulss	%xmm5, %xmm2	# _832, tmp2479
	mulss	%xmm4, %xmm0	# _824, tmp2482
	mulss	%xmm5, %xmm3	# _832, tmp2481
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	4(%rax), %xmm1	# MEM[base: tw2_169, offset: 4B], _821
	movss	4(%r11,%r8), %xmm7	# MEM[base: Fout_245, index: _160, offset: 4B], _820
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	subss	%xmm6, %xmm2	# tmp2480, _825
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	(%r11,%r8), %xmm6	# MEM[base: Fout_245, index: _160, offset: 0B], _813
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	addss	%xmm0, %xmm3	# tmp2482, tmp2481
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	(%rax), %xmm0	# MEM[base: tw2_169, offset: 0B], _814
	movaps	%xmm6, %xmm11	# _813, _815
	mulss	%xmm1, %xmm6	# _821, tmp2483
	mulss	%xmm0, %xmm11	# _814, _815
	mulss	%xmm7, %xmm0	# _820, tmp2484
	movaps	%xmm7, %xmm9	# _820, _816
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	4(%rdx), %xmm5	# MEM[base: tw3_104, offset: 4B], _6
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movaps	%xmm6, %xmm7	# tmp2483, tmp2483
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	4(%r11,%rdi), %xmm6	# MEM[base: Fout_245, index: _173, offset: 4B], _5
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	addss	%xmm0, %xmm7	# tmp2484, tmp2483
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	(%rdx), %xmm0	# MEM[base: tw3_104, offset: 0B], _11
	movaps	%xmm6, %xmm10	# _5, _421
	mulss	%xmm0, %xmm6	# _11, tmp2485
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movaps	%xmm3, %xmm4	# tmp2481, _828
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	(%r11,%rdi), %xmm3	# MEM[base: Fout_245, index: _173, offset: 0B], _10
	mulss	%xmm5, %xmm10	# _6, _421
	mulss	%xmm3, %xmm5	# _10, tmp2486
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	mulss	%xmm1, %xmm9	# _821, _816
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movaps	%xmm3, %xmm1	# _10, _4
	movaps	%xmm6, %xmm3	# tmp2485, tmp2485
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movss	4(%r11), %xmm6	# MEM[base: Fout_245, offset: 4B], _209
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	mulss	%xmm0, %xmm1	# _11, _4
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movss	(%r11), %xmm0	# MEM[base: Fout_245, offset: 0B], _411
	movaps	%xmm6, %xmm8	# _209, _210
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	addss	%xmm5, %xmm3	# tmp2486, tmp2485
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	subss	%xmm7, %xmm8	# _819, _210
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	addss	%xmm7, %xmm6	# _819, _884
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movaps	%xmm0, %xmm5	# _411, tmp2487
# kiss_fft.c:69:         C_ADD( scratch[3] , scratch[0] , scratch[2] );
	movaps	%xmm2, %xmm7	# _825, tmp2489
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	addss	%xmm11, %xmm0	# _815, tmp2488
# kiss_fft.c:69:         C_ADD( scratch[3] , scratch[0] , scratch[2] );
	subss	%xmm10, %xmm7	# _421, tmp2489
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	addss	%xmm9, %xmm5	# _816, tmp2487
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	subss	%xmm9, %xmm0	# _816, _211
# kiss_fft.c:69:         C_ADD( scratch[3] , scratch[0] , scratch[2] );
	movaps	%xmm3, %xmm9	# _214, _887
	addss	%xmm1, %xmm7	# _4, _886
	addss	%xmm4, %xmm9	# _828, _887
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	movss	%xmm0, (%r11)	# _211, MEM[base: Fout_245, offset: 0B]
	movss	%xmm6, 4(%r11)	# _884, MEM[base: Fout_245, offset: 4B]
# kiss_fft.c:71:         C_SUB( Fout[m2], *Fout, scratch[3] );
	subss	%xmm7, %xmm0	# _886, tmp2491
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	subss	%xmm11, %xmm5	# _815, _412
# kiss_fft.c:70:         C_SUB( scratch[4] , scratch[0] , scratch[2] );
	subss	%xmm1, %xmm2	# _4, _825
# kiss_fft.c:71:         C_SUB( Fout[m2], *Fout, scratch[3] );
	subss	%xmm9, %xmm6	# _887, tmp2492
	movss	%xmm0, (%r11,%r8)	# tmp2491, MEM[base: Fout_245, index: _160, offset: 0B]
# kiss_fft.c:70:         C_SUB( scratch[4] , scratch[0] , scratch[2] );
	movaps	%xmm2, %xmm1	# _825, tmp2490
# kiss_fft.c:71:         C_SUB( Fout[m2], *Fout, scratch[3] );
	movss	%xmm6, 4(%r11,%r8)	# tmp2492, MEM[base: Fout_245, index: _160, offset: 4B]
	movaps	%xmm5, %xmm0	# _412, tmp2497
# kiss_fft.c:70:         C_SUB( scratch[4] , scratch[0] , scratch[2] );
	addss	%xmm10, %xmm1	# _421, _889
# kiss_fft.c:75:         C_ADDTO( *Fout , scratch[3] );
	addss	(%r11), %xmm7	# MEM[base: Fout_245, offset: 0B], tmp2493
	addss	4(%r11), %xmm9	# MEM[base: Fout_245, offset: 4B], tmp2495
	subss	%xmm3, %xmm0	# _214, tmp2497
	subss	%xmm4, %xmm5	# _828, tmp2498
	movaps	%xmm8, %xmm2	# _210, _905
	subss	%xmm1, %xmm2	# _889, _905
	addss	%xmm4, %xmm0	# _828, _904
	addss	%xmm3, %xmm5	# _214, _907
	addss	%xmm8, %xmm1	# _210, _908
# kiss_fft.c:72:         tw1 += fstride;
	addq	%rbx, %rsi	# _198, tw1
# kiss_fft.c:73:         tw2 += fstride*2;
	addq	%rbp, %rax	# _200, tw2
# kiss_fft.c:74:         tw3 += fstride*3;
	addq	%r10, %rdx	# tmp2478, tw3
# kiss_fft.c:75:         C_ADDTO( *Fout , scratch[3] );
	movss	%xmm7, (%r11)	# tmp2493, MEM[base: Fout_245, offset: 0B]
	movss	%xmm9, 4(%r11)	# tmp2495, MEM[base: Fout_245, offset: 4B]
# kiss_fft.c:77:         if(st->inverse) {
	testl	%ecx, %ecx	# _208
# SUCC: 47 [50.0% (guessed)]  count:63161283 (estimated locally) (CAN_FALLTHRU) 30 [50.0% (guessed)]  count:63161283 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L152	#,
# BLOCK 30, count:63161283 (estimated locally) seq:28
# PRED: 29 [50.0% (guessed)]  count:63161283 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:83:             Fout[m].r = scratch[5].r + scratch[4].i;
	movss	%xmm0, (%r11,%r9)	# _904, MEM[base: Fout_245, index: _146, offset: 0B]
# kiss_fft.c:84:             Fout[m].i = scratch[5].i - scratch[4].r;
	movss	%xmm2, 4(%r11,%r9)	# _905, MEM[base: Fout_245, index: _146, offset: 4B]
# kiss_fft.c:85:             Fout[m3].r = scratch[5].r - scratch[4].i;
	movss	%xmm5, (%r11,%rdi)	# _907, MEM[base: Fout_245, index: _173, offset: 0B]
# SUCC: 31 [always]  count:63161283 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:86:             Fout[m3].i = scratch[5].i + scratch[4].r;
	movss	%xmm1, 4(%r11,%rdi)	# _908, MEM[base: Fout_245, index: _173, offset: 4B]
# BLOCK 31, count:126322566 (estimated locally) seq:29
# PRED: 30 [always]  count:63161283 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 47 [always]  count:63161283 (estimated locally) (CAN_FALLTHRU)
.L76:
# kiss_fft.c:88:         ++Fout;
	addq	$8, %r11	#, Fout
# kiss_fft.c:89:     }while(--k);
	decq	%r13	# k
# SUCC: 29 [89.0% (guessed)]  count:112427084 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 32 [11.0% (guessed)]  count:13895482 (estimated locally) (FALLTHRU)
	jne	.L73	#,
# BLOCK 32, count:13895482 (estimated locally) seq:30
# PRED: 31 [11.0% (guessed)]  count:13895482 (estimated locally) (FALLTHRU)
# SUCC: 18 [always]  count:13895482 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L33	#
# BLOCK 33, count:252645138 (estimated locally) seq:31
# PRED: 35 [50.0% (guessed)]  count:252645139 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L153:
# kiss_fft.c:83:             Fout[m].r = scratch[5].r + scratch[4].i;
	movss	%xmm2, (%r11,%r9)	# _467, MEM[base: Fout_645, index: _146, offset: 0B]
# kiss_fft.c:84:             Fout[m].i = scratch[5].i - scratch[4].r;
	movss	%xmm3, 4(%r11,%r9)	# _466, MEM[base: Fout_645, index: _146, offset: 4B]
# kiss_fft.c:85:             Fout[m3].r = scratch[5].r - scratch[4].i;
	movss	%xmm1, (%r11,%rdi)	# _464, MEM[base: Fout_645, index: _173, offset: 0B]
# SUCC: 34 [always]  count:252645138 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:86:             Fout[m3].i = scratch[5].i + scratch[4].r;
	movss	%xmm0, 4(%r11,%rdi)	# _463, MEM[base: Fout_645, index: _173, offset: 4B]
# BLOCK 34, count:505290277 (estimated locally) seq:32
# PRED: 33 [always]  count:252645138 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 36 [always]  count:252645138 (estimated locally) (CAN_FALLTHRU)
.L79:
# kiss_fft.c:88:         ++Fout;
	addq	$8, %r11	#, Fout
# kiss_fft.c:89:     }while(--k);
	decq	%r13	# k
# SUCC: 35 [89.0% (guessed)]  count:449708347 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:55581930 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	je	.L33	#,
# BLOCK 35, count:505290277 (estimated locally) seq:33
# PRED: 34 [89.0% (guessed)]  count:449708347 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 28 [80.0% (guessed)]  count:55581930 (estimated locally) (CAN_FALLTHRU)
.L74:
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movss	4(%rsi), %xmm2	# MEM[base: tw1_630, offset: 4B], _522
	movss	(%rsi), %xmm4	# MEM[base: tw1_630, offset: 0B], _525
	movss	(%r11,%r9), %xmm8	# MEM[base: Fout_645, index: _146, offset: 0B], _526
	movss	4(%r11,%r9), %xmm3	# MEM[base: Fout_645, index: _146, offset: 4B], _523
	movaps	%xmm2, %xmm5	# _522, tmp2500
	mulss	%xmm3, %xmm5	# _523, tmp2500
	mulss	%xmm8, %xmm2	# _526, tmp2502
	mulss	%xmm4, %xmm3	# _525, tmp2501
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	4(%rax), %xmm0	# MEM[base: tw2_615, offset: 4B], _511
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movaps	%xmm4, %xmm1	# _525, tmp2499
	mulss	%xmm8, %xmm1	# _526, tmp2499
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	(%r11,%r8), %xmm4	# MEM[base: Fout_645, index: _160, offset: 0B], _515
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	addss	%xmm2, %xmm3	# tmp2502, tmp2501
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	(%rax), %xmm2	# MEM[base: tw2_615, offset: 0B], _514
	movaps	%xmm0, %xmm9	# _511, _510
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movaps	%xmm3, %xmm8	# tmp2501, _517
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	4(%r11,%r8), %xmm3	# MEM[base: Fout_645, index: _160, offset: 4B], _512
	mulss	%xmm4, %xmm0	# _515, tmp2504
	mulss	%xmm3, %xmm9	# _512, _510
	mulss	%xmm2, %xmm3	# _514, tmp2503
	movaps	%xmm2, %xmm11	# _514, _513
	mulss	%xmm4, %xmm11	# _515, _513
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	(%rdx), %xmm2	# MEM[base: tw3_530, offset: 0B], _504
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	subss	%xmm5, %xmm1	# tmp2500, _520
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	addss	%xmm0, %xmm3	# tmp2504, tmp2503
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	4(%r11,%rdi), %xmm5	# MEM[base: Fout_645, index: _173, offset: 4B], _502
	movss	(%r11,%rdi), %xmm7	# MEM[base: Fout_645, index: _173, offset: 0B], _505
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movaps	%xmm3, %xmm4	# tmp2503, _507
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	4(%rdx), %xmm3	# MEM[base: tw3_530, offset: 4B], _501
	movaps	%xmm2, %xmm0	# _504, _503
	movaps	%xmm3, %xmm10	# _501, _500
	mulss	%xmm5, %xmm10	# _502, _500
	mulss	%xmm2, %xmm5	# _504, tmp2505
	mulss	%xmm7, %xmm3	# _505, tmp2506
	mulss	%xmm7, %xmm0	# _505, _503
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movss	(%r11), %xmm2	# MEM[base: Fout_645, offset: 0B], _495
# kiss_fft.c:72:         tw1 += fstride;
	addq	$8, %rsi	#, tw1
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movaps	%xmm5, %xmm7	# tmp2505, tmp2505
	addss	%xmm3, %xmm7	# tmp2506, tmp2505
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movss	4(%r11), %xmm3	# MEM[base: Fout_645, offset: 4B], _491
	movaps	%xmm2, %xmm5	# _495, tmp2507
	movaps	%xmm3, %xmm6	# _491, _490
	subss	%xmm4, %xmm6	# _507, _490
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	addss	%xmm4, %xmm3	# _507, _487
	addss	%xmm11, %xmm2	# _513, tmp2508
# kiss_fft.c:69:         C_ADD( scratch[3] , scratch[0] , scratch[2] );
	movaps	%xmm1, %xmm4	# _520, tmp2509
	subss	%xmm10, %xmm4	# _500, tmp2509
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	subss	%xmm9, %xmm2	# _510, _489
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	addss	%xmm9, %xmm5	# _510, tmp2507
# kiss_fft.c:69:         C_ADD( scratch[3] , scratch[0] , scratch[2] );
	movaps	%xmm7, %xmm9	# _496, _484
	addss	%xmm0, %xmm4	# _503, _485
	addss	%xmm8, %xmm9	# _517, _484
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	movss	%xmm2, (%r11)	# _489, MEM[base: Fout_645, offset: 0B]
	movss	%xmm3, 4(%r11)	# _487, MEM[base: Fout_645, offset: 4B]
# kiss_fft.c:71:         C_SUB( Fout[m2], *Fout, scratch[3] );
	subss	%xmm4, %xmm2	# _485, tmp2511
	subss	%xmm9, %xmm3	# _484, tmp2512
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	subss	%xmm11, %xmm5	# _513, _492
# kiss_fft.c:70:         C_SUB( scratch[4] , scratch[0] , scratch[2] );
	subss	%xmm0, %xmm1	# _503, _520
# kiss_fft.c:71:         C_SUB( Fout[m2], *Fout, scratch[3] );
	movss	%xmm2, (%r11,%r8)	# tmp2511, MEM[base: Fout_645, index: _160, offset: 0B]
	movss	%xmm3, 4(%r11,%r8)	# tmp2512, MEM[base: Fout_645, index: _160, offset: 4B]
# kiss_fft.c:70:         C_SUB( scratch[4] , scratch[0] , scratch[2] );
	movaps	%xmm1, %xmm0	# _520, tmp2510
	movaps	%xmm5, %xmm2	# _492, tmp2517
	subss	%xmm8, %xmm5	# _517, _492
	addss	%xmm10, %xmm0	# _500, _482
# kiss_fft.c:75:         C_ADDTO( *Fout , scratch[3] );
	addss	(%r11), %xmm4	# MEM[base: Fout_645, offset: 0B], tmp2513
	addss	4(%r11), %xmm9	# MEM[base: Fout_645, offset: 4B], tmp2515
	subss	%xmm7, %xmm2	# _496, tmp2517
	movaps	%xmm6, %xmm3	# _490, _466
	movaps	%xmm5, %xmm1	# _492, tmp2518
	subss	%xmm0, %xmm3	# _482, _466
	addss	%xmm8, %xmm2	# _517, _467
	addss	%xmm7, %xmm1	# _496, _464
	addss	%xmm6, %xmm0	# _490, _463
# kiss_fft.c:73:         tw2 += fstride*2;
	addq	$16, %rax	#, tw2
# kiss_fft.c:74:         tw3 += fstride*3;
	addq	$24, %rdx	#, tw3
# kiss_fft.c:75:         C_ADDTO( *Fout , scratch[3] );
	movss	%xmm4, (%r11)	# tmp2513, MEM[base: Fout_645, offset: 0B]
	movss	%xmm9, 4(%r11)	# tmp2515, MEM[base: Fout_645, offset: 4B]
# kiss_fft.c:77:         if(st->inverse) {
	testl	%ecx, %ecx	# _208
# SUCC: 36 [50.0% (guessed)]  count:252645139 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 33 [50.0% (guessed)]  count:252645139 (estimated locally) (CAN_FALLTHRU)
	je	.L153	#,
# BLOCK 36, count:252645138 (estimated locally) seq:34
# PRED: 35 [50.0% (guessed)]  count:252645139 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:78:             Fout[m].r = scratch[5].r - scratch[4].i;
	movss	%xmm1, (%r11,%r9)	# _464, MEM[base: Fout_645, index: _146, offset: 0B]
# kiss_fft.c:79:             Fout[m].i = scratch[5].i + scratch[4].r;
	movss	%xmm0, 4(%r11,%r9)	# _463, MEM[base: Fout_645, index: _146, offset: 4B]
# kiss_fft.c:80:             Fout[m3].r = scratch[5].r + scratch[4].i;
	movss	%xmm2, (%r11,%rdi)	# _467, MEM[base: Fout_645, index: _173, offset: 0B]
# kiss_fft.c:81:             Fout[m3].i = scratch[5].i - scratch[4].r;
	movss	%xmm3, 4(%r11,%rdi)	# _466, MEM[base: Fout_645, index: _173, offset: 4B]
# SUCC: 34 [always]  count:252645138 (estimated locally) (CAN_FALLTHRU)
	jmp	.L79	#
# BLOCK 37, count:69477412 (estimated locally) seq:35
# PRED: 8 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 19 [33.3% (adjusted)]  count:115795688 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L40:
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movl	32(%rsp), %ecx	# %sfp,
	movq	40(%rsp), %rsi	# %sfp,
# kiss_fft.c:302: }
	addq	$200, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movq	%r12, %rdx	# st,
# kiss_fft.c:302: }
	popq	%r12	#
	.cfi_def_cfa_offset 32
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movl	%r13d, %r8d	# p,
# kiss_fft.c:302: }
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movq	%r11, %rdi	# Fout,
# kiss_fft.c:302: }
	popq	%r15	#
	.cfi_def_cfa_offset 8
# SUCC: EXIT [always]  count:69477412 (estimated locally) (ABNORMAL,SIBCALL)
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	jmp	kf_bfly_generic	#
# BLOCK 38, count:69477412 (estimated locally) seq:36
# PRED: 7 [40.0% (adjusted)]  count:138954824 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L38:
	.cfi_restore_state
# kiss_fft.c:31:     Fout2 = Fout + m;
	movslq	32(%rsp), %rcx	# %sfp, _47
# kiss_fft.c:36:         tw1 += fstride;
	movq	40(%rsp), %rbx	# %sfp, fstride
# kiss_fft.c:31:     Fout2 = Fout + m;
	leaq	0(,%rcx,8), %rax	#, _48
# kiss_fft.c:29:     kiss_fft_cpx * tw1 = st->twiddles;
	leaq	264(%r12), %rdi	#, tw1
# kiss_fft.c:31:     Fout2 = Fout + m;
	leaq	(%r11,%rax), %rsi	#, Fout2
# kiss_fft.c:36:         tw1 += fstride;
	leaq	0(,%rbx,8), %r10	#, _62
	cmpq	$1, %rbx	#, fstride
# SUCC: 39 [80.0% (guessed)]  count:55581930 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 56 [20.0% (guessed)]  count:13895482 (estimated locally) (CAN_FALLTHRU)
	jne	.L154	#,
# BLOCK 39, count:55581930 (estimated locally) seq:37
# PRED: 38 [80.0% (guessed)]  count:55581930 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	32(%r11), %rdx	#, tmp1749
	cmpq	%rdx, %rsi	# tmp1749, Fout2
	movl	32(%rsp), %r10d	# %sfp,
	setnb	%dl	#, tmp1751
	addq	$32, %rax	#, tmp1752
	testq	%rax, %rax	# tmp1752
	setle	%al	#, tmp1754
	leal	-1(%r10), %ebx	#, tmp2630
	orl	%edx, %eax	# tmp1751, tmp1755
	cmpl	$2, %ebx	#, tmp2630
	seta	%dl	#, tmp1758
	andl	%edx, %eax	# tmp1758, tmp1759
	leaq	-1(%rcx,%r10), %rdx	#, tmp1761
	leaq	4(%r11,%rdx,8), %rdx	#, tmp1764
	leaq	-8(,%r10,8), %r9	#, _954
	cmpq	%rdx, %rdi	# tmp1764, tw1
	leaq	268(%r12,%r9), %r8	#, _966
	seta	%dl	#, tmp1766
	cmpq	%r8, %rsi	# _966, Fout2
	seta	%cl	#, tmp1768
	orl	%ecx, %edx	# tmp1768, tmp1769
	movq	%r10, %r15	#,
	testb	%dl, %al	# tmp1769, tmp1759
# SUCC: 67 [10.0% (guessed)]  count:5558193 (estimated locally) (CAN_FALLTHRU) 40 [90.0% (guessed)]  count:50023737 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L52	#,
# BLOCK 40, count:50023737 (estimated locally) seq:38
# PRED: 39 [90.0% (guessed)]  count:50023737 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	4(%r11,%r9), %rax	#, tmp1772
	cmpq	%rax, %rdi	# tmp1772, tw1
	seta	%dl	#, tmp1774
	cmpq	%r8, %r11	# _966, Fout
	seta	%al	#, tmp1776
	orb	%al, %dl	# tmp1776, tmp1774
# SUCC: 67 [11.1% (guessed)]  count:5558193 (estimated locally) (CAN_FALLTHRU) 41 [88.9% (guessed)]  count:44465544 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L52	#,
# BLOCK 41, count:44465544 (estimated locally) seq:39
# PRED: 40 [88.9% (guessed)]  count:44465544 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	shrl	$2, %r15d	#, bnd.141
	movl	%r15d, %r8d	# bnd.141,
	movq	%rdi, %rcx	# tw1, ivtmp.379
	movq	%r11, %rax	# Fout, ivtmp.382
	addq	$280, %r12	#, ivtmp.390
	salq	$5, %r8	#, _2419
# SUCC: 42 [always]  count:44465544 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	xorl	%edx, %edx	# ivtmp.377
# BLOCK 42, count:266793263 (estimated locally) seq:40
# PRED: 41 [always]  count:44465544 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 42 [83.3% (adjusted)]  count:222327720 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L53:
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movups	(%rsi,%rdx), %xmm3	# MEM[base: Fout2_49, index: ivtmp.377_865, offset: 0B], MEM[base: Fout2_49, index: ivtmp.377_865, offset: 0B]
	movups	16(%rsi,%rdx), %xmm0	# MEM[base: Fout2_49, index: ivtmp.377_865, offset: 16B], MEM[base: Fout2_49, index: ivtmp.377_865, offset: 16B]
	movaps	%xmm3, %xmm2	# MEM[base: Fout2_49, index: ivtmp.377_865, offset: 0B], vect_perm_even_1088
	movss	(%r12), %xmm7	# MEM[base: _2413, offset: 0B], tmp1783
	shufps	$136, %xmm0, %xmm2	#, MEM[base: Fout2_49, index: ivtmp.377_865, offset: 16B], vect_perm_even_1088
	shufps	$221, %xmm0, %xmm3	#, MEM[base: Fout2_49, index: ivtmp.377_865, offset: 16B], vect_perm_odd_1089
	movss	8(%r12), %xmm0	# MEM[base: _2413, offset: 8B], MEM[base: _2413, offset: 8B]
	movss	8(%rcx), %xmm4	# MEM[base: _759, offset: 8B], MEM[base: _759, offset: 8B]
	unpcklps	%xmm0, %xmm7	# MEM[base: _2413, offset: 8B], tmp1783
	movaps	%xmm7, %xmm0	# tmp1783, tmp1783
	movss	(%rcx), %xmm7	# MEM[base: _759, offset: 0B], tmp1786
	movss	12(%r12), %xmm5	# MEM[base: _2413, offset: 12B], MEM[base: _2413, offset: 12B]
	unpcklps	%xmm4, %xmm7	# MEM[base: _759, offset: 8B], tmp1786
	movaps	%xmm7, %xmm4	# tmp1786, tmp1786
	movss	4(%rcx), %xmm1	# MEM[base: _759, offset: 4B], tmp1793
	movss	4(%r12), %xmm7	# MEM[base: _2413, offset: 4B], tmp1790
	movlhps	%xmm0, %xmm4	# tmp1783, tmp1782
	movss	12(%rcx), %xmm0	# MEM[base: _759, offset: 12B], MEM[base: _759, offset: 12B]
	unpcklps	%xmm5, %xmm7	# MEM[base: _2413, offset: 12B], tmp1790
	unpcklps	%xmm0, %xmm1	# MEM[base: _759, offset: 12B], tmp1793
	movlhps	%xmm7, %xmm1	# tmp1790, tmp1789
	movaps	%xmm3, %xmm5	# vect_perm_odd_1089, vect__873.152
	mulps	%xmm1, %xmm5	# tmp1789, vect__873.152
	mulps	%xmm2, %xmm1	# vect_perm_even_1088, vect__872.153
	mulps	%xmm4, %xmm3	# tmp1782, vect__871.154
	movaps	%xmm2, %xmm6	# vect_perm_even_1088, vect__876.151
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movups	16(%rax), %xmm0	# MEM[base: _2415, offset: 16B], MEM[base: _2415, offset: 16B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	mulps	%xmm4, %xmm6	# tmp1782, vect__876.151
	movaps	%xmm1, %xmm2	# vect__872.153, vect__872.153
	addps	%xmm3, %xmm2	# vect__871.154, vect__872.153
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movups	(%rax), %xmm3	# MEM[base: _2415, offset: 0B], MEM[base: _2415, offset: 0B]
	addq	$32, %rcx	#, ivtmp.379
	movaps	%xmm3, %xmm1	# MEM[base: _2415, offset: 0B], tmp1800
	shufps	$136, %xmm0, %xmm1	#, MEM[base: _2415, offset: 16B], tmp1800
	addps	%xmm5, %xmm1	# vect__873.152, vect__867.160
	shufps	$221, %xmm0, %xmm3	#, MEM[base: _2415, offset: 16B], tmp1802
	subps	%xmm2, %xmm3	# vect__870.155, vect__863.162
	subps	%xmm6, %xmm1	# vect__876.151, vect__866.161
	addq	$32, %rax	#, ivtmp.382
	addq	$32, %r12	#, ivtmp.390
	movaps	%xmm1, %xmm0	# vect__866.161, tmp1803
	unpcklps	%xmm3, %xmm0	# vect__863.162, tmp1803
	unpckhps	%xmm3, %xmm1	# vect__863.162, tmp1804
	movups	%xmm0, (%rsi,%rdx)	# tmp1803, MEM[base: Fout2_49, index: ivtmp.377_865, offset: 0B]
	movups	%xmm1, 16(%rsi,%rdx)	# tmp1804, MEM[base: Fout2_49, index: ivtmp.377_865, offset: 16B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	movups	-32(%rax), %xmm1	# MEM[base: _2415, offset: 0B], MEM[base: _2415, offset: 0B]
	movups	-16(%rax), %xmm3	# MEM[base: _2415, offset: 16B], MEM[base: _2415, offset: 16B]
	movaps	%xmm1, %xmm0	# MEM[base: _2415, offset: 0B], tmp1807
	shufps	$136, %xmm3, %xmm0	#, MEM[base: _2415, offset: 16B], tmp1807
	addps	%xmm6, %xmm0	# vect__876.151, vect__860.169
	shufps	$221, %xmm3, %xmm1	#, MEM[base: _2415, offset: 16B], tmp1809
	addps	%xmm2, %xmm1	# vect__870.155, vect__856.171
	subps	%xmm5, %xmm0	# vect__873.152, vect__859.170
	addq	$32, %rdx	#, ivtmp.377
	movaps	%xmm0, %xmm2	# vect__859.170, tmp1810
	unpcklps	%xmm1, %xmm2	# vect__856.171, tmp1810
	unpckhps	%xmm1, %xmm0	# vect__856.171, tmp1811
	movups	%xmm2, -32(%rax)	# tmp1810, MEM[base: _2415, offset: 0B]
	movups	%xmm0, -16(%rax)	# tmp1811, MEM[base: _2415, offset: 16B]
	cmpq	%r8, %rdx	# _2419, ivtmp.377
# SUCC: 42 [83.3% (adjusted)]  count:222327720 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 43 [16.7% (adjusted)]  count:44465543 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L53	#,
# BLOCK 43, count:44465544 (estimated locally) seq:41
# PRED: 42 [16.7% (adjusted)]  count:44465543 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movl	32(%rsp), %ebx	# %sfp, m
	movl	%ebx, %edx	# m, niters_vector_mult_vf.142
	andl	$-4, %edx	#, niters_vector_mult_vf.142
	movl	%edx, %eax	# niters_vector_mult_vf.142, niters_vector_mult_vf.142
	salq	$3, %rax	#, _1070
	movl	%ebx, %ecx	# m, tmp.144
	addq	%rax, %r11	# _1070, tmp.143
	subl	%edx, %ecx	# niters_vector_mult_vf.142, tmp.144
	addq	%rax, %rsi	# _1070, tmp.145
	addq	%rax, %rdi	# _1070, tmp.146
	cmpl	%edx, %ebx	# niters_vector_mult_vf.142, m
# SUCC: 44 [75.0% (guessed)]  count:33349158 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [25.0% (guessed)]  count:11116386 (estimated locally) (CAN_FALLTHRU)
	je	.L33	#,
# BLOCK 44, count:33349158 (estimated locally) seq:42
# PRED: 43 [75.0% (guessed)]  count:33349158 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	4(%rdi), %xmm1	# tmp.146_1076->i, _839
	movss	(%rdi), %xmm3	# tmp.146_1076->r, _841
	movss	(%rsi), %xmm5	# tmp.145_1073->r, _846
	movss	4(%rsi), %xmm0	# tmp.145_1073->i, _1740
	movaps	%xmm1, %xmm4	# _839, _838
	mulss	%xmm0, %xmm4	# _1740, _838
	mulss	%xmm5, %xmm1	# _846, tmp1813
	mulss	%xmm3, %xmm0	# _841, tmp1814
	movaps	%xmm3, %xmm2	# _841, _840
	mulss	%xmm5, %xmm2	# _846, _840
	addss	%xmm1, %xmm0	# tmp1813, _836
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	(%r11), %xmm1	# tmp.143_1068->r, tmp1815
	addss	%xmm4, %xmm1	# _838, tmp1815
	subss	%xmm2, %xmm1	# _840, tmp1816
	movss	%xmm1, (%rsi)	# tmp1816, tmp.145_1073->r
	movss	4(%r11), %xmm1	# tmp.143_1068->i, tmp.143_1068->i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	(%r11), %xmm2	# tmp.143_1068->r, tmp1819
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm1	# _836, tmp1817
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm4, %xmm2	# _838, tmp1820
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm1, 4(%rsi)	# tmp1817, tmp.145_1073->i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	4(%r11), %xmm0	# tmp.143_1068->i, tmp1821
	movss	%xmm2, (%r11)	# tmp1820, tmp.143_1068->r
	movss	%xmm0, 4(%r11)	# tmp1821, tmp.143_1068->i
# kiss_fft.c:41:     }while (--m);
	cmpl	$1, %ecx	#, tmp.144
# SUCC: 45 [89.0% (guessed)]  count:29680751 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:3668407 (estimated locally) (CAN_FALLTHRU)
	je	.L33	#,
# BLOCK 45, count:29680752 (estimated locally) seq:43
# PRED: 44 [89.0% (guessed)]  count:29680751 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	8(%rdi), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.146_1076 + 8B].r, _793
	movss	12(%rdi), %xmm3	# MEM[(struct kiss_fft_cpx *)tmp.146_1076 + 8B].i, _790
	movss	8(%rsi), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.145_1073 + 8B].r, _794
	movss	12(%rsi), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.145_1073 + 8B].i, _791
	movaps	%xmm5, %xmm2	# _793, _792
	movaps	%xmm3, %xmm4	# _790, _789
	mulss	%xmm0, %xmm2	# _794, _792
	mulss	%xmm1, %xmm4	# _791, _789
	mulss	%xmm3, %xmm0	# _790, tmp1825
	mulss	%xmm5, %xmm1	# _793, tmp1824
	addss	%xmm1, %xmm0	# tmp1824, _785
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	8(%r11), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.143_1068 + 8B].r, tmp1826
	addss	%xmm4, %xmm1	# _789, tmp1826
	subss	%xmm2, %xmm1	# _792, tmp1827
	movss	%xmm1, 8(%rsi)	# tmp1827, MEM[(struct kiss_fft_cpx *)tmp.145_1073 + 8B].r
	movss	12(%r11), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.143_1068 + 8B].i, MEM[(struct kiss_fft_cpx *)tmp.143_1068 + 8B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	8(%r11), %xmm2	# MEM[(struct kiss_fft_cpx *)tmp.143_1068 + 8B].r, tmp1830
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm1	# _785, tmp1828
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm4, %xmm2	# _789, tmp1831
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm1, 12(%rsi)	# tmp1828, MEM[(struct kiss_fft_cpx *)tmp.145_1073 + 8B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	12(%r11), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.143_1068 + 8B].i, tmp1832
	movss	%xmm2, 8(%r11)	# tmp1831, MEM[(struct kiss_fft_cpx *)tmp.143_1068 + 8B].r
	movss	%xmm0, 12(%r11)	# tmp1832, MEM[(struct kiss_fft_cpx *)tmp.143_1068 + 8B].i
# kiss_fft.c:41:     }while (--m);
	cmpl	$2, %ecx	#, tmp.144
# SUCC: 46 [89.0% (guessed)]  count:26415869 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:3264883 (estimated locally) (CAN_FALLTHRU)
	je	.L33	#,
# BLOCK 46, count:26415869 (estimated locally) seq:44
# PRED: 45 [89.0% (guessed)]  count:26415869 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	16(%rdi), %xmm3	# MEM[(struct kiss_fft_cpx *)tmp.146_1076 + 16B].r, _1039
	movss	20(%rdi), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.146_1076 + 16B].i, _1042
	movss	16(%rsi), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.145_1073 + 16B].r, _1038
	movss	20(%rsi), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.145_1073 + 16B].i, _1041
	movaps	%xmm1, %xmm2	# _1038, _1040
	movaps	%xmm0, %xmm4	# _1041, _1043
	mulss	%xmm5, %xmm1	# _1042, tmp1834
	mulss	%xmm3, %xmm0	# _1039, tmp1835
	mulss	%xmm5, %xmm4	# _1042, _1043
	mulss	%xmm3, %xmm2	# _1039, _1040
	addss	%xmm1, %xmm0	# tmp1834, _1046
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	16(%r11), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.143_1068 + 16B].r, tmp1836
	addss	%xmm4, %xmm1	# _1043, tmp1836
	subss	%xmm2, %xmm1	# _1040, tmp1837
	movss	%xmm1, 16(%rsi)	# tmp1837, MEM[(struct kiss_fft_cpx *)tmp.145_1073 + 16B].r
	movss	20(%r11), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.143_1068 + 16B].i, MEM[(struct kiss_fft_cpx *)tmp.143_1068 + 16B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	16(%r11), %xmm2	# MEM[(struct kiss_fft_cpx *)tmp.143_1068 + 16B].r, tmp1840
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm1	# _1046, tmp1838
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm4, %xmm2	# _1043, tmp1841
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm1, 20(%rsi)	# tmp1838, MEM[(struct kiss_fft_cpx *)tmp.145_1073 + 16B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	20(%r11), %xmm0	#, tmp1842
	movss	%xmm2, 16(%r11)	# tmp1841, MEM[(struct kiss_fft_cpx *)tmp.143_1068 + 16B].r
	movss	%xmm0, 20(%r11)	# tmp1842,
# SUCC: 18 [always]  count:26415869 (estimated locally) (CAN_FALLTHRU)
	jmp	.L33	#
# BLOCK 47, count:63161283 (estimated locally) seq:45
# PRED: 29 [50.0% (guessed)]  count:63161283 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L152:
# kiss_fft.c:78:             Fout[m].r = scratch[5].r - scratch[4].i;
	movss	%xmm5, (%r11,%r9)	# _907, MEM[base: Fout_245, index: _146, offset: 0B]
# kiss_fft.c:79:             Fout[m].i = scratch[5].i + scratch[4].r;
	movss	%xmm1, 4(%r11,%r9)	# _908, MEM[base: Fout_245, index: _146, offset: 4B]
# kiss_fft.c:80:             Fout[m3].r = scratch[5].r + scratch[4].i;
	movss	%xmm0, (%r11,%rdi)	# _904, MEM[base: Fout_245, index: _173, offset: 0B]
# kiss_fft.c:81:             Fout[m3].i = scratch[5].i - scratch[4].r;
	movss	%xmm2, 4(%r11,%rdi)	# _905, MEM[base: Fout_245, index: _173, offset: 4B]
# SUCC: 31 [always]  count:63161283 (estimated locally) (CAN_FALLTHRU)
	jmp	.L76	#
# BLOCK 48, count:13895482 (estimated locally) seq:46
# PRED: 9 [20.0% (guessed)]  count:13895482 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L149:
	movq	16(%rsp), %rax	# %sfp, k
	leaq	32(%r11), %rdi	#, _1911
	leaq	-1(%rax), %rsi	#, k
	leaq	0(,%rsi,8), %r10	#, _1918
	leaq	4(%r13,%r10), %rdx	#, tmp1861
	leaq	(%r11,%rdx), %rbp	#, _1921
	movq	%r15, %rdx	# _112, _1925
	imulq	%rsi, %rdx	# k, _1925
	movq	%rdi, 48(%rsp)	# _1911, %sfp
	testq	%r15, %r15	# _112
	movl	$264, %r9d	#, tmp2883
	leaq	264(%rdx), %rdi	#, tmp1862
	cmovns	%r9, %rdi	# tmp1862,, tmp2883, tmp1862
	movq	%rbp, 56(%rsp)	# _1921, %sfp
	addq	%r12, %rdi	# st, _1928
	movq	%rdi, 24(%rsp)	# _1928, %sfp
	movl	$268, %ebp	#, tmp1865
	addq	$268, %rdx	#, tmp1864
	movq	%r8, %rdi	# _114, _1950
	testq	%r15, %r15	# _112
	cmovs	%rbp, %rdx	# tmp1864,, tmp1865, tmp1864
	imulq	%rsi, %rdi	# k, _1950
	movq	%rbx, %rcx	# _95, _95
	addq	%r12, %rdx	# st, _1936
	leaq	32(%rcx), %rax	#, _1903
	testq	%r8, %r8	# _114
	movq	%r9, %rcx	# tmp2883, tmp2883
	leaq	264(%rdi), %r9	#, tmp1866
	cmovns	%rcx, %r9	# tmp1866,, tmp2886, tmp1866
	addq	$268, %rdi	#, tmp1868
	addq	%r12, %r9	# st, _1953
	testq	%r8, %r8	# _114
	movq	%rax, 32(%rsp)	# _1903, %sfp
	cmovs	%rbp, %rdi	# tmp1868,, tmp1865, tmp1868
	movq	(%rsp), %rcx	# %sfp, _95
	leaq	32(%r13), %rbx	#, _1899
	addq	%r12, %rdi	# st, _1961
	leaq	4(%rcx,%r10), %rbp	#, tmp1871
	cmpq	(%rsp), %rbx	# %sfp, _1899
	leaq	(%r11,%rbp), %rcx	#, _1979
	leaq	4(%r11,%r10), %r10	#, _2028
	setle	%bpl	#, tmp1874
	cmpq	%r13, 32(%rsp)	# _81, %sfp
	movq	%r10, 64(%rsp)	# _2028, %sfp
	setle	%r10b	#, tmp1876
	leaq	(%r11,%r13), %rax	#, _1912
	orl	%r10d, %ebp	# tmp1876, tmp1877
	testq	%rbx, %rbx	# _1899
	setle	%r10b	#, tmp1879
	cmpq	%rax, 48(%rsp)	# _1912, %sfp
	setbe	%bl	#, tmp1881
	orl	%ebx, %r10d	# tmp1881, tmp1882
	andl	%r10d, %ebp	# tmp1882, tmp1883
	cmpq	$2, %rsi	#, k
	seta	%bl	#, tmp1885
	andl	%ebx, %ebp	# tmp1885, tmp1886
	leaq	(%rax,%r13), %r12	#, _1970
	cmpq	$0, 32(%rsp)	#, %sfp
	setle	%bl	#, tmp1888
	cmpq	%r12, 48(%rsp)	# _1970, %sfp
	setbe	%r10b	#, tmp1890
	orl	%r10d, %ebx	# tmp1890, tmp1891
	movq	24(%rsp), %r10	# %sfp, _1928
	andl	%ebp, %ebx	# tmp1886, tmp1892
	cmpq	%r10, 56(%rsp)	# _1928, %sfp
	setb	%r10b	#, tmp1894
	cmpq	%rdx, %rax	# _1936, _1912
	seta	%bpl	#, tmp1896
	orl	%r10d, %ebp	# tmp1894, tmp1897
	andl	%ebx, %ebp	# tmp1892, tmp1898
	cmpq	%r9, 56(%rsp)	# _1953, %sfp
	setb	%r10b	#, tmp1900
	cmpq	%rdi, %rax	# _1961, _1912
	seta	%bl	#, tmp1902
	orl	%r10d, %ebx	# tmp1900, tmp1903
	movq	24(%rsp), %r10	# %sfp, _1928
	andl	%ebp, %ebx	# tmp1898, tmp1904
	cmpq	%rcx, %r10	# _1979, _1928
	seta	%r10b	#, tmp1906
	cmpq	%r12, %rdx	# _1970, _1936
	setb	%bpl	#, tmp1908
	orl	%ebp, %r10d	# tmp1908, tmp1909
	andl	%r10d, %ebx	# tmp1909, tmp1910
	cmpq	%rcx, %r9	# _1979, _1953
	seta	%bpl	#, tmp1912
	cmpq	%r12, %rdi	# _1970, _1961
	setb	%r10b	#, tmp1914
	orl	%ebp, %r10d	# tmp1912, tmp1915
	andl	%r10d, %ebx	# tmp1915, tmp1916
	movq	64(%rsp), %rcx	# %sfp, _2028
	movq	24(%rsp), %r10	# %sfp, _1928
	cmpq	%rcx, %r10	# _2028, _1928
	seta	%r10b	#, tmp1918
	cmpq	%rdx, %r11	# _1936, Fout
	seta	%dl	#, tmp1920
	orl	%r10d, %edx	# tmp1918, tmp1921
	testb	%dl, %bl	# tmp1921, tmp1916
# SUCC: 74 [10.0% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU) 49 [90.0% (guessed)]  count:12505934 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L59	#,
# BLOCK 49, count:12505934 (estimated locally) seq:47
# PRED: 48 [90.0% (guessed)]  count:12505934 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpq	%rcx, %r9	# _2028, _1953
	seta	%r9b	#, tmp1924
	cmpq	%rdi, %r11	# _1961, Fout
	seta	%dl	#, tmp1926
	orb	%dl, %r9b	# tmp1926, tmp1924
# SUCC: 74 [11.1% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU) 50 [88.9% (guessed)]  count:11116386 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L59	#,
# BLOCK 50, count:11116386 (estimated locally) seq:48
# PRED: 49 [88.9% (guessed)]  count:11116386 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	40(%rsp), %rcx	# %sfp, fstride
	movq	16(%rsp), %rbx	# %sfp, k
	movq	%rcx, %rsi	# fstride, _2234
	salq	$5, %rsi	#, _2234
	movq	%rcx, %rdi	# fstride, _2271
	movq	%rsi, 24(%rsp)	# _2234, %sfp
	salq	$6, %rdi	#, _2271
	movq	%rdi, (%rsp)	# _2271, %sfp
	subq	$4, %rbx	#, tmp1928
	leaq	(%rcx,%rcx,2), %r9	#, tmp1933
	movq	%r11, 48(%rsp)	# Fout, %sfp
	shrq	$2, %rbx	#, tmp1929
	movaps	%xmm4, %xmm5	# epi3$i, vect_cst__2340
	movq	%r11, %rdi	# Fout, ivtmp.580
	movapd	.LC0(%rip), %xmm3	#, tmp2628
	movq	24(%rsp), %r11	# %sfp, _2234
	movaps	128(%rsp), %xmm8	# %sfp, tmp1986
	movaps	144(%rsp), %xmm9	# %sfp, tmp1988
	movaps	160(%rsp), %xmm10	# %sfp, tmp2000
	movaps	176(%rsp), %xmm11	# %sfp, tmp2002
	movq	%r13, 40(%rsp)	# _81, %sfp
	leaq	0(,%r9,8), %r10	#, tmp1934
	movq	(%rsp), %r13	# %sfp, _2271
	shufps	$0, %xmm5, %xmm5	# vect_cst__2340
	incq	%rbx	# bnd.283
	movq	%r14, %rsi	# tw1, ivtmp.572
	salq	$4, %r9	#, tmp1938
# kiss_fft.c:117:          tw2 += fstride*2;
	movq	%r14, %rcx	# tw1, ivtmp.577
	xorl	%edx, %edx	# ivtmp.570
	xorl	%ebp, %ebp	# ivtmp.568
	movss	%xmm4, 32(%rsp)	# epi3$i, %sfp
# SUCC: 51 [always]  count:11116386 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movaps	%xmm5, (%rsp)	# vect_cst__2340, %sfp
# BLOCK 51, count:66698316 (estimated locally) seq:49
# PRED: 50 [always]  count:11116386 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 51 [83.3% (adjusted)]  count:55581930 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L60:
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movups	(%rax,%rdx), %xmm2	# MEM[base: _1912, index: ivtmp.570_2535, offset: 0B], MEM[base: _1912, index: ivtmp.570_2535, offset: 0B]
	movups	16(%rax,%rdx), %xmm1	# MEM[base: _1912, index: ivtmp.570_2535, offset: 16B], MEM[base: _1912, index: ivtmp.570_2535, offset: 16B]
	movaps	%xmm2, %xmm5	# MEM[base: _1912, index: ivtmp.570_2535, offset: 0B], vect_perm_even_2231
	movss	(%rsi,%r15,2), %xmm7	# MEM[base: _2548, index: _112, step: 2, offset: 0B], tmp1942
	shufps	$136, %xmm1, %xmm5	#, MEM[base: _1912, index: ivtmp.570_2535, offset: 16B], vect_perm_even_2231
	shufps	$221, %xmm1, %xmm2	#, MEM[base: _1912, index: ivtmp.570_2535, offset: 16B], vect_perm_odd_2232
	movss	(%rsi,%r10), %xmm1	# MEM[base: _2548, index: _2552, offset: 0B], MEM[base: _2548, index: _2552, offset: 0B]
	movss	(%rsi,%r15), %xmm4	# MEM[base: _2548, index: _112, offset: 0B], MEM[base: _2548, index: _112, offset: 0B]
	unpcklps	%xmm1, %xmm7	# MEM[base: _2548, index: _2552, offset: 0B], tmp1942
	movaps	%xmm7, %xmm1	# tmp1942, tmp1942
	movss	(%rsi), %xmm7	# MEM[base: _2548, offset: 0B], tmp1945
	movss	4(%rsi,%r10), %xmm6	# MEM[base: _2548, index: _2552, offset: 4B], MEM[base: _2548, index: _2552, offset: 4B]
	unpcklps	%xmm4, %xmm7	# MEM[base: _2548, index: _112, offset: 0B], tmp1945
	movaps	%xmm7, %xmm4	# tmp1945, tmp1945
	movss	4(%rsi), %xmm0	# MEM[base: _2548, offset: 4B], tmp1952
	movss	4(%rsi,%r15,2), %xmm7	# MEM[base: _2548, index: _112, step: 2, offset: 4B], tmp1949
	movlhps	%xmm1, %xmm4	# tmp1942, tmp1941
	movss	4(%rsi,%r15), %xmm1	# MEM[base: _2548, index: _112, offset: 4B], MEM[base: _2548, index: _112, offset: 4B]
	unpcklps	%xmm6, %xmm7	# MEM[base: _2548, index: _2552, offset: 4B], tmp1949
	unpcklps	%xmm1, %xmm0	# MEM[base: _2548, index: _112, offset: 4B], tmp1952
	movlhps	%xmm7, %xmm0	# tmp1949, tmp1948
	movaps	%xmm2, %xmm6	# vect_perm_odd_2232, vect__90.294
	mulps	%xmm0, %xmm6	# tmp1948, vect__90.294
	mulps	%xmm4, %xmm2	# tmp1941, vect__93.297
	mulps	%xmm5, %xmm0	# vect_perm_even_2231, vect__92.296
	movaps	%xmm5, %xmm1	# vect_perm_even_2231, vect__87.293
	mulps	%xmm4, %xmm1	# tmp1941, vect__87.293
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	(%rcx,%r9), %xmm7	# MEM[base: _2553, index: _2557, offset: 0B], MEM[base: _2553, index: _2557, offset: 0B]
	movss	(%rcx,%r8,2), %xmm5	# MEM[base: _2553, index: _114, step: 2, offset: 0B], tmp1962
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addps	%xmm2, %xmm0	# vect__93.297, vect__94.298
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movups	(%r12,%rdx), %xmm2	# MEM[base: _1970, index: ivtmp.570_2535, offset: 0B], MEM[base: _1970, index: ivtmp.570_2535, offset: 0B]
	movups	16(%r12,%rdx), %xmm4	# MEM[base: _1970, index: ivtmp.570_2535, offset: 16B], MEM[base: _1970, index: ivtmp.570_2535, offset: 16B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subps	%xmm6, %xmm1	# vect__90.294, vect__91.295
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	unpcklps	%xmm7, %xmm5	# MEM[base: _2553, index: _2557, offset: 0B], tmp1962
	movaps	%xmm2, %xmm6	# MEM[base: _1970, index: ivtmp.570_2535, offset: 0B], vect_perm_even_2269
	shufps	$136, %xmm4, %xmm6	#, MEM[base: _1970, index: ivtmp.570_2535, offset: 16B], vect_perm_even_2269
	movaps	%xmm5, %xmm7	# tmp1962, tmp1962
	shufps	$221, %xmm4, %xmm2	#, MEM[base: _1970, index: ivtmp.570_2535, offset: 16B], vect_perm_odd_2270
	movss	(%rcx), %xmm5	# MEM[base: _2553, offset: 0B], tmp1965
	movss	(%rcx,%r8), %xmm4	# MEM[base: _2553, index: _114, offset: 0B], MEM[base: _2553, index: _114, offset: 0B]
	movss	4(%rcx), %xmm15	# MEM[base: _2553, offset: 4B], tmp1972
	unpcklps	%xmm4, %xmm5	# MEM[base: _2553, index: _114, offset: 0B], tmp1965
	movaps	%xmm5, %xmm4	# tmp1965, tmp1965
	movlhps	%xmm7, %xmm4	# tmp1962, tmp1961
	movss	4(%rcx,%r8,2), %xmm5	# MEM[base: _2553, index: _114, step: 2, offset: 4B], tmp1969
	movss	4(%rcx,%r9), %xmm7	# MEM[base: _2553, index: _2557, offset: 4B], MEM[base: _2553, index: _2557, offset: 4B]
	movaps	%xmm2, %xmm12	# vect_perm_odd_2270, vect__103.304
	unpcklps	%xmm7, %xmm5	# MEM[base: _2553, index: _2557, offset: 4B], tmp1969
	movaps	%xmm5, %xmm7	# tmp1969, tmp1969
	movss	4(%rcx,%r8), %xmm5	# MEM[base: _2553, index: _114, offset: 4B], MEM[base: _2553, index: _114, offset: 4B]
	movaps	%xmm6, %xmm13	# vect_perm_even_2269, vect__100.303
	unpcklps	%xmm5, %xmm15	# MEM[base: _2553, index: _114, offset: 4B], tmp1972
	movaps	%xmm15, %xmm5	# tmp1972, tmp1972
	movlhps	%xmm7, %xmm5	# tmp1969, tmp1968
	mulps	%xmm5, %xmm12	# tmp1968, vect__103.304
	mulps	%xmm4, %xmm13	# tmp1961, vect__100.303
	mulps	%xmm6, %xmm5	# vect_perm_even_2269, vect__105.306
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# vect__91.295, vect__455.305
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	mulps	%xmm4, %xmm2	# tmp1961, vect__106.307
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	subps	%xmm12, %xmm6	# vect__103.304, vect__455.305
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movups	(%rdi), %xmm14	# MEM[base: _2558, offset: 0B], MEM[base: _2558, offset: 0B]
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm0, %xmm7	# vect__94.298, vect__109.310
	addps	%xmm13, %xmm6	# vect__100.303, vect__108.309
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addps	%xmm2, %xmm5	# vect__106.307, vect__107.308
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movups	16(%rdi), %xmm2	# MEM[base: _2558, offset: 16B], MEM[base: _2558, offset: 16B]
	movaps	%xmm14, %xmm15	# MEM[base: _2558, offset: 0B], vect_perm_even_2310
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movhlps	%xmm6, %xmm9	# vect__108.309, tmp1988
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	shufps	$221, %xmm2, %xmm14	#, MEM[base: _2558, offset: 16B], vect_perm_odd_2311
	shufps	$136, %xmm2, %xmm15	#, MEM[base: _2558, offset: 16B], vect_perm_even_2310
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm6, %xmm4	# vect__108.309, vect__118.319
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movhlps	%xmm15, %xmm8	# vect_perm_even_2310, tmp1986
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	mulpd	%xmm3, %xmm4	# tmp2628, vect__119.320
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm15, %xmm2	# vect_perm_even_2310, vect__117.318
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm9, %xmm15	# tmp1988, vect__118.319
	mulpd	%xmm3, %xmm15	# tmp2628, vect__119.320
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addps	%xmm5, %xmm7	# vect__107.308, vect__109.310
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subpd	%xmm4, %xmm2	# vect__119.320, vect__120.321
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm8, %xmm4	# tmp1986, vect__117.318
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movhlps	%xmm7, %xmm11	# vect__109.310, tmp2002
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subpd	%xmm15, %xmm4	# vect__119.320, vect__120.321
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movhlps	%xmm14, %xmm10	# vect_perm_odd_2311, tmp2000
	cvtps2pd	%xmm14, %xmm15	# vect_perm_odd_2311, vect__123.323
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtpd2ps	%xmm4, %xmm4	# vect__120.321, tmp1993
	cvtpd2ps	%xmm2, %xmm2	# vect__120.321, tmp1992
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtps2pd	%xmm11, %xmm14	# tmp2002, vect__124.324
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movlhps	%xmm4, %xmm2	# tmp1993, vect__121.322
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	mulpd	%xmm3, %xmm14	# tmp2628, vect__125.325
	cvtps2pd	%xmm7, %xmm4	# vect__109.310, vect__124.324
	mulpd	%xmm3, %xmm4	# tmp2628, vect__125.325
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subps	%xmm13, %xmm1	# vect__100.303, vect__417.311
	subps	%xmm5, %xmm0	# vect__107.308, vect__111.313
	incq	%rbp	# ivtmp.568
	addps	%xmm1, %xmm12	# vect__417.311, vect__110.312
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subpd	%xmm4, %xmm15	# vect__125.325, vect__126.326
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtps2pd	%xmm10, %xmm4	# tmp2000, vect__123.323
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subpd	%xmm14, %xmm4	# vect__125.325, vect__126.326
	cvtpd2ps	%xmm15, %xmm15	# vect__126.326, tmp2006
	addq	%r11, %rsi	# _2234, ivtmp.572
	cvtpd2ps	%xmm4, %xmm4	# vect__126.326, tmp2007
	movlhps	%xmm4, %xmm15	# tmp2007, vect__127.327
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movaps	%xmm2, %xmm4	# vect__121.322, tmp2008
	unpcklps	%xmm15, %xmm4	# vect__127.327, tmp2008
	unpckhps	%xmm15, %xmm2	# vect__127.327, tmp2009
	movups	%xmm4, (%rax,%rdx)	# tmp2008, MEM[base: _1912, index: ivtmp.570_2535, offset: 0B]
	movups	%xmm2, 16(%rax,%rdx)	# tmp2009, MEM[base: _1912, index: ivtmp.570_2535, offset: 16B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movaps	(%rsp), %xmm4	# %sfp, vect_cst__2340
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movups	(%rdi), %xmm1	# MEM[base: _2558, offset: 0B], MEM[base: _2558, offset: 0B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulps	%xmm4, %xmm0	# vect_cst__2340, vect__129.331
	mulps	%xmm4, %xmm12	# vect_cst__2340, vect__128.330
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movups	16(%rdi), %xmm4	# MEM[base: _2558, offset: 16B], MEM[base: _2558, offset: 16B]
	movaps	%xmm1, %xmm2	# MEM[base: _2558, offset: 0B], tmp2015
	shufps	$136, %xmm4, %xmm2	#, MEM[base: _2558, offset: 16B], tmp2015
	addps	%xmm2, %xmm6	# tmp2015, vect__131.336
	shufps	$221, %xmm4, %xmm1	#, MEM[base: _2558, offset: 16B], tmp2016
	addps	%xmm1, %xmm7	# tmp2016, vect__133.337
	movaps	%xmm6, %xmm1	# vect__131.336, tmp2017
	addq	%r13, %rcx	# _2271, ivtmp.577
	unpcklps	%xmm7, %xmm1	# vect__133.337, tmp2017
	unpckhps	%xmm7, %xmm6	# vect__133.337, tmp2018
	movups	%xmm1, (%rdi)	# tmp2017, MEM[base: _2558, offset: 0B]
	movups	%xmm6, 16(%rdi)	# tmp2018, MEM[base: _2558, offset: 16B]
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movups	(%rax,%rdx), %xmm1	# MEM[base: _1912, index: ivtmp.570_2535, offset: 0B], MEM[base: _1912, index: ivtmp.570_2535, offset: 0B]
	movups	16(%rax,%rdx), %xmm4	# MEM[base: _1912, index: ivtmp.570_2535, offset: 16B], MEM[base: _1912, index: ivtmp.570_2535, offset: 16B]
	movaps	%xmm1, %xmm2	# MEM[base: _1912, index: ivtmp.570_2535, offset: 0B], tmp2021
	shufps	$136, %xmm4, %xmm2	#, MEM[base: _1912, index: ivtmp.570_2535, offset: 16B], tmp2021
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addps	%xmm0, %xmm2	# vect__129.331, vect__135.344
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	shufps	$221, %xmm4, %xmm1	#, MEM[base: _1912, index: ivtmp.570_2535, offset: 16B], tmp2022
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	subps	%xmm12, %xmm1	# vect__128.330, vect__137.345
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movaps	%xmm2, %xmm4	# vect__135.344, tmp2023
	addq	$32, %rdi	#, ivtmp.580
	unpcklps	%xmm1, %xmm4	# vect__137.345, tmp2023
	unpckhps	%xmm1, %xmm2	# vect__137.345, tmp2024
	movups	%xmm4, (%r12,%rdx)	# tmp2023, MEM[base: _1970, index: ivtmp.570_2535, offset: 0B]
	movups	%xmm2, 16(%r12,%rdx)	# tmp2024, MEM[base: _1970, index: ivtmp.570_2535, offset: 16B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movups	(%rax,%rdx), %xmm1	# MEM[base: _1912, index: ivtmp.570_2535, offset: 0B], MEM[base: _1912, index: ivtmp.570_2535, offset: 0B]
	movups	16(%rax,%rdx), %xmm4	# MEM[base: _1912, index: ivtmp.570_2535, offset: 16B], MEM[base: _1912, index: ivtmp.570_2535, offset: 16B]
	movaps	%xmm1, %xmm2	# MEM[base: _1912, index: ivtmp.570_2535, offset: 0B], tmp2027
	shufps	$136, %xmm4, %xmm2	#, MEM[base: _1912, index: ivtmp.570_2535, offset: 16B], tmp2027
	subps	%xmm0, %xmm2	# vect__129.331, tmp2027
	shufps	$221, %xmm4, %xmm1	#, MEM[base: _1912, index: ivtmp.570_2535, offset: 16B], tmp2028
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addps	%xmm1, %xmm12	# tmp2028, vect__141.353
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movaps	%xmm2, %xmm0	# tmp2027, vect__139.352
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movaps	%xmm2, %xmm1	# vect__139.352, tmp2029
	unpcklps	%xmm12, %xmm1	# vect__141.353, tmp2029
	unpckhps	%xmm12, %xmm0	# vect__141.353, tmp2030
	movups	%xmm1, (%rax,%rdx)	# tmp2029, MEM[base: _1912, index: ivtmp.570_2535, offset: 0B]
	movups	%xmm0, 16(%rax,%rdx)	# tmp2030, MEM[base: _1912, index: ivtmp.570_2535, offset: 16B]
	addq	$32, %rdx	#, ivtmp.570
	cmpq	%rbp, %rbx	# ivtmp.568, bnd.283
# SUCC: 51 [83.3% (adjusted)]  count:55581930 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 52 [16.7% (adjusted)]  count:11116386 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	ja	.L60	#,
# BLOCK 52, count:11116386 (estimated locally) seq:50
# PRED: 51 [16.7% (adjusted)]  count:11116386 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movq	48(%rsp), %r11	# %sfp, Fout
	leaq	0(,%rbx,4), %rcx	#, niters_vector_mult_vf.284
	movq	%r15, %rdx	# _112, tmp2032
	salq	$5, %rbx	#, tmp2031
	movq	%r8, %rax	# _114, tmp2033
	imulq	%rcx, %rdx	# niters_vector_mult_vf.284, tmp2032
	imulq	%rcx, %rax	# niters_vector_mult_vf.284, tmp2033
	addq	%rbx, %r11	# tmp2031, tmp.285
	movq	16(%rsp), %rbx	# %sfp, k
	movss	32(%rsp), %xmm4	# %sfp, epi3$i
	movq	%rbx, %rsi	# k, tmp.286
	movq	40(%rsp), %r13	# %sfp, _81
	subq	%rcx, %rsi	# niters_vector_mult_vf.284, tmp.286
	addq	%r14, %rdx	# tw1, tmp.287
	addq	%r14, %rax	# tw1, tmp.288
	cmpq	%rcx, %rbx	# niters_vector_mult_vf.284, k
# SUCC: 53 [75.0% (guessed)]  count:8337290 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [25.0% (guessed)]  count:2779097 (estimated locally) (CAN_FALLTHRU)
	je	.L33	#,
# BLOCK 53, count:8337290 (estimated locally) seq:51
# PRED: 52 [75.0% (guessed)]  count:8337290 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movss	(%rdx), %xmm2	# tmp.287_2220->r, _418
	movss	4(%rdx), %xmm0	# tmp.287_2220->i, _410
	leaq	(%r11,%r13), %rcx	#, _433
	movss	(%rcx), %xmm3	# _433->r, _677
	movss	4(%rcx), %xmm5	# _433->i, _676
	movaps	%xmm2, %xmm1	# _418, tmp2034
	movaps	%xmm0, %xmm6	# _410, tmp2035
	mulss	%xmm5, %xmm6	# _676, tmp2035
	mulss	%xmm3, %xmm1	# _677, tmp2034
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leaq	(%rcx,%r13), %rdi	#, _338
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	mulss	%xmm3, %xmm0	# _677, tmp2037
	mulss	%xmm5, %xmm2	# _676, tmp2036
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%rdi), %xmm5	# _338->i, _292
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm6, %xmm1	# tmp2035, _675
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%rax), %xmm6	# tmp.288_2222->i, _680
	movaps	%xmm5, %xmm9	# _292, _284
	movss	(%rdi), %xmm3	# _338->r, _325
	mulss	%xmm6, %xmm9	# _680, _284
	movss	(%rax), %xmm7	# tmp.288_2222->r, _681
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm0, %xmm2	# tmp2037, _682
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm3, %xmm0	# _325, _308
	mulss	%xmm7, %xmm0	# _681, _308
	mulss	%xmm6, %xmm3	# _680, tmp2039
	mulss	%xmm7, %xmm5	# _681, tmp2038
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# _675, tmp2040
	subss	%xmm9, %xmm6	# _284, tmp2040
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp2042
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp2041
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm0, %xmm6	# _308, _369
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm3, %xmm5	# tmp2039, _672
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movsd	.LC1(%rip), %xmm3	#, tmp2044
	cvtss2sd	%xmm6, %xmm10	# _369, tmp2042
	mulsd	%xmm3, %xmm10	# tmp2044, tmp2043
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm5, %xmm8	# _672, _218
	addss	%xmm2, %xmm8	# _682, _218
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	(%r11), %xmm7	# tmp.285_2217->r, tmp2041
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _308, _675
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm7	# tmp2043, tmp2045
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp2048
	cvtss2sd	%xmm8, %xmm10	# _218, tmp2048
	mulsd	%xmm3, %xmm10	# tmp2044, tmp2049
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm0	# _675, tmp2054
	movaps	%xmm2, %xmm1	# _682, _682
	subss	%xmm5, %xmm1	# _672, _682
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp2045, tmp2046
	movss	%xmm7, (%rcx)	# tmp2046, _433->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp2047
	cvtss2sd	4(%r11), %xmm7	# tmp.285_2217->i, tmp2047
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	(%r11), %xmm6	# tmp.285_2217->r, tmp2057
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm10, %xmm7	# tmp2049, tmp2051
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm1	# epi3$i, _167
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _284, tmp2055
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm7, %xmm7	# tmp2051, tmp2053
	movss	%xmm7, 4(%rcx)	# tmp2053, _433->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, (%r11)	# tmp2057, tmp.285_2217->r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rcx), %xmm2	# _433->r, tmp2061
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	4(%r11), %xmm8	# tmp.285_2217->i, tmp2059
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _166
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm2	# _167, tmp2061
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm8, 4(%r11)	# tmp2059, tmp.285_2217->i
# kiss_fft.c:116:          tw1 += fstride;
	addq	%r15, %rdx	# _112, tw1
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm2, (%rdi)	# tmp2061, _338->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rcx), %xmm2	# _433->i, _433->i
# kiss_fft.c:117:          tw2 += fstride*2;
	addq	%r8, %rax	# _114, tw2
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	subss	%xmm0, %xmm2	# _166, tmp2063
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm2, 4(%rdi)	# tmp2063, _338->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rcx), %xmm2	# _433->r, _433->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rcx), %xmm0	# _433->i, tmp2067
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm2	# _167, _433->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rcx)	# tmp2067, _433->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm2, (%rcx)	# tmp2065, _433->r
# kiss_fft.c:133:      }while(--k);
	cmpq	$1, %rsi	#, tmp.286
# SUCC: 54 [89.0% (guessed)]  count:7420188 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:917102 (estimated locally) (CAN_FALLTHRU)
	je	.L33	#,
# BLOCK 54, count:7420188 (estimated locally) seq:52
# PRED: 53 [89.0% (guessed)]  count:7420188 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leaq	8(%r11,%r13), %rcx	#, _192
	movss	(%rcx), %xmm0	# _192->r, _193
	movss	4(%rcx), %xmm2	# _192->i, _195
	movss	(%rdx), %xmm6	# tw1_147->r, _422
	movss	4(%rdx), %xmm5	# tw1_147->i, _196
	movaps	%xmm0, %xmm1	# _193, tmp2071
	movaps	%xmm2, %xmm7	# _195, tmp2072
	mulss	%xmm5, %xmm7	# _196, tmp2072
	mulss	%xmm6, %xmm1	# _422, tmp2071
	mulss	%xmm5, %xmm0	# _196, tmp2074
	mulss	%xmm6, %xmm2	# _422, tmp2073
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leaq	(%rcx,%r13), %rdi	#, _203
	movss	(%rdi), %xmm5	# _203->r, _204
	movss	4(%rax), %xmm8	# tw2_148->i, _207
	movss	(%rax), %xmm6	# tw2_148->r, _205
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm7, %xmm1	# tmp2072, _197
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%rdi), %xmm7	# _203->i, _206
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm0, %xmm2	# tmp2074, _201
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm5, %xmm0	# _204, _386
	mulss	%xmm6, %xmm0	# _205, _386
	mulss	%xmm8, %xmm5	# _207, tmp2075
	mulss	%xmm7, %xmm6	# _206, tmp2076
	movaps	%xmm7, %xmm9	# _206, _387
	mulss	%xmm8, %xmm9	# _207, _387
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp2079
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm2, %xmm8	# _201, _920
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm6, %xmm5	# tmp2076, _854
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# _197, tmp2077
	subss	%xmm9, %xmm6	# _387, tmp2077
	addss	%xmm5, %xmm8	# _854, _920
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp2078
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm0, %xmm6	# _386, _855
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	8(%r11), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.285_2217 + 8B].r, tmp2078
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _386, _197
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm10	# _855, tmp2079
	mulsd	%xmm3, %xmm10	# tmp2044, tmp2080
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm0	# _197, tmp2091
	movaps	%xmm2, %xmm1	# _201, _201
	subss	%xmm5, %xmm1	# _854, _201
	addss	%xmm9, %xmm0	# _387, tmp2092
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm7	# tmp2080, tmp2082
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp2085
	cvtss2sd	%xmm8, %xmm10	# _920, tmp2085
	mulsd	%xmm3, %xmm10	# tmp2044, tmp2086
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp2082, tmp2083
	movss	%xmm7, (%rcx)	# tmp2083, _192->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp2084
	cvtss2sd	12(%r11), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.285_2217 + 8B].i, tmp2084
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	8(%r11), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.285_2217 + 8B].r, tmp2094
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm10, %xmm7	# tmp2086, tmp2088
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm1	# epi3$i, _941
	mulss	%xmm4, %xmm0	# epi3$i, _390
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm7, %xmm7	# tmp2088, tmp2090
	movss	%xmm7, 4(%rcx)	# tmp2090, _192->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, 8(%r11)	# tmp2094, MEM[(struct kiss_fft_cpx *)tmp.285_2217 + 8B].r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rcx), %xmm2	# _192->r, tmp2098
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	12(%r11), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.285_2217 + 8B].i, tmp2096
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm2	# _941, tmp2098
# kiss_fft.c:116:          tw1 += fstride;
	addq	%r15, %rdx	# _112, tw1
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm8, 12(%r11)	# tmp2096, MEM[(struct kiss_fft_cpx *)tmp.285_2217 + 8B].i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm2, (%rdi)	# tmp2098, _203->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rcx), %xmm2	# _192->i, _192->i
# kiss_fft.c:117:          tw2 += fstride*2;
	addq	%r8, %rax	# _114, tw2
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	subss	%xmm0, %xmm2	# _390, tmp2100
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm2, 4(%rdi)	# tmp2100, _203->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rcx), %xmm2	# _192->r, _192->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rcx), %xmm0	# _192->i, tmp2104
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm2	# _941, _192->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rcx)	# tmp2104, _192->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm2, (%rcx)	# tmp2102, _192->r
# kiss_fft.c:132:          ++Fout;
	leaq	16(%r11), %rcx	#, Fout
# kiss_fft.c:133:      }while(--k);
	cmpq	$2, %rsi	#, tmp.286
# SUCC: 55 [89.0% (guessed)]  count:6603967 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:816221 (estimated locally) (CAN_FALLTHRU)
	je	.L33	#,
# BLOCK 55, count:6603967 (estimated locally) seq:53
# PRED: 54 [89.0% (guessed)]  count:6603967 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addq	%r13, %rcx	# _81, _2147
	movss	4(%rcx), %xmm5	# _2147->i, _2151
	movss	(%rcx), %xmm2	# _2147->r, _2148
	movss	4(%rdx), %xmm6	# tw1_925->i, _2152
	movss	(%rdx), %xmm0	# tw1_925->r, _2149
	movaps	%xmm2, %xmm1	# _2148, tmp2106
	movaps	%xmm5, %xmm7	# _2151, tmp2107
	mulss	%xmm6, %xmm7	# _2152, tmp2107
	mulss	%xmm0, %xmm1	# _2149, tmp2106
	mulss	%xmm6, %xmm2	# _2152, tmp2108
	mulss	%xmm5, %xmm0	# _2151, tmp2109
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leaq	(%rcx,%r13), %rdx	#, _2158
	movss	(%rdx), %xmm5	# _2158->r, _2159
	movss	4(%rax), %xmm8	# tw2_393->i, _2163
	movss	(%rax), %xmm6	# tw2_393->r, _2160
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm7, %xmm1	# tmp2107, _2154
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%rdx), %xmm7	# _2158->i, _2162
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm0, %xmm2	# tmp2109, _2157
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm5, %xmm0	# _2159, _2161
	mulss	%xmm6, %xmm0	# _2160, _2161
	mulss	%xmm8, %xmm5	# _2163, tmp2110
	mulss	%xmm7, %xmm6	# _2162, tmp2111
	movaps	%xmm7, %xmm9	# _2162, _2164
	mulss	%xmm8, %xmm9	# _2163, _2164
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp2114
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm2, %xmm8	# _2157, _2170
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm6, %xmm5	# tmp2111, _2168
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# _2154, tmp2112
	subss	%xmm9, %xmm6	# _2164, tmp2112
	addss	%xmm5, %xmm8	# _2168, _2170
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp2113
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm0, %xmm6	# _2161, _2169
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	16(%r11), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.285_2217 + 16B].r, tmp2113
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _2161, _2154
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm10	# _2169, tmp2114
	mulsd	%xmm3, %xmm10	# tmp2044, tmp2115
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm0	# _2154, tmp2126
	addss	%xmm9, %xmm0	# _2164, tmp2127
	subss	%xmm5, %xmm2	# _2168, tmp2128
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm7	# tmp2115, tmp2117
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp2120
	cvtss2sd	%xmm8, %xmm10	# _2170, tmp2120
	mulsd	%xmm10, %xmm3	# tmp2120, tmp2121
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp2117, tmp2118
	movss	%xmm7, (%rcx)	# tmp2118, _2147->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp2119
	cvtss2sd	20(%r11), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.285_2217 + 16B].i, tmp2119
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	16(%r11), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.285_2217 + 16B].r, tmp2129
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm3, %xmm7	# tmp2121, tmp2119
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _2190
	mulss	%xmm2, %xmm4	# tmp2128, _2191
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm3, %xmm3	# tmp2125
	cvtsd2ss	%xmm7, %xmm3	# tmp2123, tmp2125
	movss	%xmm3, 4(%rcx)	# tmp2125, _2147->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, 16(%r11)	# tmp2129, MEM[(struct kiss_fft_cpx *)tmp.285_2217 + 16B].r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rcx), %xmm1	# _2147->r, tmp2133
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	20(%r11), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.285_2217 + 16B].i, tmp2131
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm4, %xmm1	# _2191, tmp2133
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm8, 20(%r11)	# tmp2131, MEM[(struct kiss_fft_cpx *)tmp.285_2217 + 16B].i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm1, (%rdx)	# tmp2133, _2158->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rcx), %xmm1	# _2147->i, _2147->i
	subss	%xmm0, %xmm1	# _2190, tmp2135
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm1, 4(%rdx)	# tmp2135, _2158->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rcx), %xmm1	# _2147->r, _2147->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rcx), %xmm0	# _2147->i, tmp2139
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm4, %xmm1	# _2191, tmp2137
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rcx)	# tmp2139, _2147->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm1, (%rcx)	# tmp2137, _2147->r
# SUCC: 18 [always]  count:6603967 (estimated locally) (CAN_FALLTHRU)
	jmp	.L33	#
# BLOCK 56, count:13895482 (estimated locally) seq:54
# PRED: 38 [20.0% (guessed)]  count:13895482 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L154:
	movl	32(%rsp), %r9d	# %sfp,
	movq	%r10, %rdx	# _62, _1186
	leaq	-1(%r9), %rbp	#, _1185
	imulq	%rbp, %rdx	# _1185, _1186
	movl	$264, %ebx	#, tmp1632
	testq	%r10, %r10	# _62
	leaq	264(%rdx), %r8	#, tmp1631
	cmovns	%rbx, %r8	# tmp1631,, tmp1632, tmp1631
	addq	$268, %rdx	#, tmp1633
	addq	%r12, %r8	# st, _1189
	movl	$268, %ebx	#, tmp1634
	testq	%r10, %r10	# _62
	cmovs	%rbx, %rdx	# tmp1633,, tmp1634, tmp1633
	addq	$32, %rax	#, tmp1635
	addq	%r12, %rdx	# st, _1198
	leaq	32(%r11), %rbx	#, tmp1638
	testq	%rax, %rax	# tmp1635
	setle	%al	#, tmp1637
	cmpq	%rbx, %rsi	# tmp1638, Fout2
	setnb	%bl	#, tmp1640
	orl	%ebx, %eax	# tmp1640, tmp1641
	leal	-1(%r9), %ebx	#, tmp2630
	cmpl	$2, %ebx	#, tmp2630
	leaq	-1(%rcx,%r9), %rcx	#, tmp1647
	seta	%r14b	#, tmp1644
	leaq	4(%r11,%rcx,8), %rcx	#, tmp1650
	andl	%r14d, %eax	# tmp1644, tmp1645
	cmpq	%rcx, %r8	# tmp1650, _1189
	seta	%cl	#, tmp1652
	cmpq	%rdx, %rsi	# _1198, Fout2
	movq	%r9, %r15	#,
	seta	%r9b	#, tmp1654
	orl	%r9d, %ecx	# tmp1654, tmp1655
	testb	%cl, %al	# tmp1655, tmp1645
# SUCC: 78 [10.0% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU) 57 [90.0% (guessed)]  count:12505934 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L45	#,
# BLOCK 57, count:12505934 (estimated locally) seq:55
# PRED: 56 [90.0% (guessed)]  count:12505934 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	4(%r11,%rbp,8), %rax	#, tmp1659
	cmpq	%rax, %r8	# tmp1659, _1189
	seta	%cl	#, tmp1661
	cmpq	%rdx, %r11	# _1198, Fout
	seta	%al	#, tmp1663
	orb	%al, %cl	# tmp1663, tmp1661
# SUCC: 78 [11.1% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU) 58 [88.9% (guessed)]  count:11116386 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L45	#,
# BLOCK 58, count:11116386 (estimated locally) seq:56
# PRED: 57 [88.9% (guessed)]  count:11116386 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	40(%rsp), %rdx	# %sfp, fstride
	movl	%r15d, %ebx	# m, bnd.175
	shrl	$2, %ebx	#,
	salq	$5, %rdx	#, fstride
	movq	%rdi, %r9	# tw1, ivtmp.428
	movq	%r11, %rax	# Fout, ivtmp.431
	leaq	264(%r12,%r10,2), %r8	#, ivtmp.439
	salq	$5, %rbx	#, _2456
# SUCC: 59 [always]  count:11116386 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:36:         tw1 += fstride;
	xorl	%ecx, %ecx	# ivtmp.426
# BLOCK 59, count:66698316 (estimated locally) seq:57
# PRED: 58 [always]  count:11116386 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 59 [83.3% (adjusted)]  count:55581930 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L46:
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movups	(%rsi,%rcx), %xmm3	# MEM[base: Fout2_49, index: ivtmp.426_2433, offset: 0B], MEM[base: Fout2_49, index: ivtmp.426_2433, offset: 0B]
	movups	16(%rsi,%rcx), %xmm0	# MEM[base: Fout2_49, index: ivtmp.426_2433, offset: 16B], MEM[base: Fout2_49, index: ivtmp.426_2433, offset: 16B]
	movaps	%xmm3, %xmm2	# MEM[base: Fout2_49, index: ivtmp.426_2433, offset: 0B], vect_perm_even_1320
	movss	(%r8), %xmm7	# MEM[base: _2450, offset: 0B], tmp1672
	shufps	$136, %xmm0, %xmm2	#, MEM[base: Fout2_49, index: ivtmp.426_2433, offset: 16B], vect_perm_even_1320
	shufps	$221, %xmm0, %xmm3	#, MEM[base: Fout2_49, index: ivtmp.426_2433, offset: 16B], vect_perm_odd_1321
	movss	(%r8,%r10), %xmm0	# MEM[base: _2450, index: _62, offset: 0B], MEM[base: _2450, index: _62, offset: 0B]
	movss	(%r9,%r10), %xmm4	# MEM[base: _2448, index: _62, offset: 0B], MEM[base: _2448, index: _62, offset: 0B]
	unpcklps	%xmm0, %xmm7	# MEM[base: _2450, index: _62, offset: 0B], tmp1672
	movaps	%xmm7, %xmm0	# tmp1672, tmp1672
	movss	(%r9), %xmm7	# MEM[base: _2448, offset: 0B], tmp1675
	movss	4(%r8,%r10), %xmm5	# MEM[base: _2450, index: _62, offset: 4B], MEM[base: _2450, index: _62, offset: 4B]
	unpcklps	%xmm4, %xmm7	# MEM[base: _2448, index: _62, offset: 0B], tmp1675
	movaps	%xmm7, %xmm4	# tmp1675, tmp1675
	movss	4(%r9), %xmm1	# MEM[base: _2448, offset: 4B], tmp1682
	movss	4(%r8), %xmm7	# MEM[base: _2450, offset: 4B], tmp1679
	movlhps	%xmm0, %xmm4	# tmp1672, tmp1671
	movss	4(%r9,%r10), %xmm0	# MEM[base: _2448, index: _62, offset: 4B], MEM[base: _2448, index: _62, offset: 4B]
	unpcklps	%xmm5, %xmm7	# MEM[base: _2450, index: _62, offset: 4B], tmp1679
	unpcklps	%xmm0, %xmm1	# MEM[base: _2448, index: _62, offset: 4B], tmp1682
	movlhps	%xmm7, %xmm1	# tmp1679, tmp1678
	movaps	%xmm3, %xmm5	# vect_perm_odd_1321, vect__57.186
	mulps	%xmm1, %xmm5	# tmp1678, vect__57.186
	mulps	%xmm4, %xmm3	# tmp1671, vect__60.188
	mulps	%xmm2, %xmm1	# vect_perm_even_1320, vect__59.187
	movaps	%xmm2, %xmm6	# vect_perm_even_1320, vect__54.185
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movups	16(%rax), %xmm0	# MEM[base: _2452, offset: 16B], MEM[base: _2452, offset: 16B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	mulps	%xmm4, %xmm6	# tmp1671, vect__54.185
	addq	%rdx, %r9	# _1323, ivtmp.428
	addps	%xmm3, %xmm1	# vect__60.188, vect__59.187
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movups	(%rax), %xmm3	# MEM[base: _2452, offset: 0B], MEM[base: _2452, offset: 0B]
	addq	%rdx, %r8	# _1323, ivtmp.439
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movaps	%xmm1, %xmm2	# vect__59.187, vect__61.189
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movaps	%xmm3, %xmm1	# MEM[base: _2452, offset: 0B], tmp1689
	shufps	$136, %xmm0, %xmm1	#, MEM[base: _2452, offset: 16B], tmp1689
	addps	%xmm5, %xmm1	# vect__57.186, vect__457.194
	shufps	$221, %xmm0, %xmm3	#, MEM[base: _2452, offset: 16B], tmp1691
	subps	%xmm2, %xmm3	# vect__61.189, vect__68.196
	subps	%xmm6, %xmm1	# vect__54.185, vect__66.195
	addq	$32, %rax	#, ivtmp.431
	movaps	%xmm1, %xmm0	# vect__66.195, tmp1692
	unpcklps	%xmm3, %xmm0	# vect__68.196, tmp1692
	unpckhps	%xmm3, %xmm1	# vect__68.196, tmp1693
	movups	%xmm0, (%rsi,%rcx)	# tmp1692, MEM[base: Fout2_49, index: ivtmp.426_2433, offset: 0B]
	movups	%xmm1, 16(%rsi,%rcx)	# tmp1693, MEM[base: Fout2_49, index: ivtmp.426_2433, offset: 16B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	movups	-32(%rax), %xmm1	# MEM[base: _2452, offset: 0B], MEM[base: _2452, offset: 0B]
	movups	-16(%rax), %xmm3	# MEM[base: _2452, offset: 16B], MEM[base: _2452, offset: 16B]
	movaps	%xmm1, %xmm0	# MEM[base: _2452, offset: 0B], tmp1696
	shufps	$136, %xmm3, %xmm0	#, MEM[base: _2452, offset: 16B], tmp1696
	addps	%xmm6, %xmm0	# vect__54.185, vect__456.203
	shufps	$221, %xmm3, %xmm1	#, MEM[base: _2452, offset: 16B], tmp1698
	addps	%xmm2, %xmm1	# vect__61.189, vect__72.205
	subps	%xmm5, %xmm0	# vect__57.186, vect__70.204
	addq	$32, %rcx	#, ivtmp.426
	movaps	%xmm0, %xmm2	# vect__70.204, tmp1699
	unpcklps	%xmm1, %xmm2	# vect__72.205, tmp1699
	unpckhps	%xmm1, %xmm0	# vect__72.205, tmp1700
	movups	%xmm2, -32(%rax)	# tmp1699, MEM[base: _2452, offset: 0B]
	movups	%xmm0, -16(%rax)	# tmp1700, MEM[base: _2452, offset: 16B]
	cmpq	%rbx, %rcx	# _2456, ivtmp.426
# SUCC: 59 [83.3% (adjusted)]  count:55581930 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 60 [16.7% (adjusted)]  count:11116386 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L46	#,
# BLOCK 60, count:11116386 (estimated locally) seq:58
# PRED: 59 [16.7% (adjusted)]  count:11116386 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movl	32(%rsp), %ebx	# %sfp, m
	movl	%ebx, %ecx	# m, niters_vector_mult_vf.176
	andl	$-4, %ecx	#, niters_vector_mult_vf.176
	movl	%ecx, %eax	# niters_vector_mult_vf.176, _1301
	leaq	0(,%rax,8), %rdx	#, _1302
	imulq	%r10, %rax	# _62, tmp1701
	movl	%ebx, %r8d	# m, tmp.178
	addq	%rdx, %r11	# _1302, tmp.177
	subl	%ecx, %r8d	# niters_vector_mult_vf.176, tmp.178
	addq	%rdx, %rsi	# _1302, tmp.179
	addq	%rax, %rdi	# tmp1701, tmp.180
	cmpl	%ecx, %ebx	# niters_vector_mult_vf.176, m
# SUCC: 61 [75.0% (guessed)]  count:8337290 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [25.0% (guessed)]  count:2779097 (estimated locally) (CAN_FALLTHRU)
	je	.L33	#,
# BLOCK 61, count:8337290 (estimated locally) seq:59
# PRED: 60 [75.0% (guessed)]  count:8337290 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	(%rdi), %xmm2	# tmp.180_1308->r, _82
	movss	4(%rdi), %xmm5	# tmp.180_1308->i, _2244
	movss	(%rsi), %xmm0	# tmp.179_1305->r, _143
	movss	4(%rsi), %xmm4	# tmp.179_1305->i, _84
	movaps	%xmm2, %xmm1	# _82, _83
	mulss	%xmm0, %xmm1	# _143, _83
	mulss	%xmm4, %xmm2	# _84, tmp1703
	mulss	%xmm5, %xmm0	# _2244, tmp1702
	movaps	%xmm4, %xmm3	# _84, _86
	mulss	%xmm5, %xmm3	# _2244, _86
# kiss_fft.c:36:         tw1 += fstride;
	addq	%r10, %rdi	# _62, tw1
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	addss	%xmm2, %xmm0	# tmp1703, _2256
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	(%r11), %xmm2	# tmp.177_1300->r, tmp1704
	addss	%xmm3, %xmm2	# _86, tmp1704
	subss	%xmm1, %xmm2	# _83, tmp1705
	movss	%xmm2, (%rsi)	# tmp1705, tmp.179_1305->r
	movss	4(%r11), %xmm2	# tmp.177_1300->i, tmp.177_1300->i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	(%r11), %xmm1	# tmp.177_1300->r, tmp1708
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm2	# _2256, tmp1706
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm3, %xmm1	# _86, tmp1709
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm2, 4(%rsi)	# tmp1706, tmp.179_1305->i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	4(%r11), %xmm0	# tmp.177_1300->i, tmp1710
	movss	%xmm1, (%r11)	# tmp1709, tmp.177_1300->r
	movss	%xmm0, 4(%r11)	# tmp1710, tmp.177_1300->i
# kiss_fft.c:41:     }while (--m);
	cmpl	$1, %r8d	#, tmp.178
# SUCC: 62 [89.0% (guessed)]  count:7420188 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:917102 (estimated locally) (CAN_FALLTHRU)
	je	.L33	#,
# BLOCK 62, count:7420188 (estimated locally) seq:60
# PRED: 61 [89.0% (guessed)]  count:7420188 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	8(%rsi), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.179_1305 + 8B].r, _111
	movss	(%rdi), %xmm2	# tw1_89->r, _113
	movss	4(%rdi), %xmm5	# tw1_89->i, _117
	movss	12(%rsi), %xmm4	# MEM[(struct kiss_fft_cpx *)tmp.179_1305 + 8B].i, _116
	movaps	%xmm0, %xmm1	# _111, _115
	mulss	%xmm2, %xmm1	# _113, _115
	mulss	%xmm5, %xmm0	# _117, tmp1713
	mulss	%xmm4, %xmm2	# _116, tmp1714
	movaps	%xmm4, %xmm3	# _116, _118
	mulss	%xmm5, %xmm3	# _117, _118
# kiss_fft.c:36:         tw1 += fstride;
	addq	%r10, %rdi	# _62, tw1
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	addss	%xmm2, %xmm0	# tmp1714, _121
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	8(%r11), %xmm2	# MEM[(struct kiss_fft_cpx *)tmp.177_1300 + 8B].r, tmp1715
	addss	%xmm3, %xmm2	# _118, tmp1715
	subss	%xmm1, %xmm2	# _115, tmp1716
	movss	%xmm2, 8(%rsi)	# tmp1716, MEM[(struct kiss_fft_cpx *)tmp.179_1305 + 8B].r
	movss	12(%r11), %xmm2	# MEM[(struct kiss_fft_cpx *)tmp.177_1300 + 8B].i, MEM[(struct kiss_fft_cpx *)tmp.177_1300 + 8B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	8(%r11), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.177_1300 + 8B].r, tmp1719
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm2	# _121, tmp1717
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm3, %xmm1	# _118, tmp1720
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm2, 12(%rsi)	# tmp1717, MEM[(struct kiss_fft_cpx *)tmp.179_1305 + 8B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	12(%r11), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.177_1300 + 8B].i, tmp1721
	movss	%xmm1, 8(%r11)	# tmp1720, MEM[(struct kiss_fft_cpx *)tmp.177_1300 + 8B].r
	movss	%xmm0, 12(%r11)	# tmp1721, MEM[(struct kiss_fft_cpx *)tmp.177_1300 + 8B].i
# kiss_fft.c:41:     }while (--m);
	cmpl	$2, %r8d	#, tmp.178
# SUCC: 63 [89.0% (guessed)]  count:6603967 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:816221 (estimated locally) (CAN_FALLTHRU)
	je	.L33	#,
# BLOCK 63, count:6603967 (estimated locally) seq:61
# PRED: 62 [89.0% (guessed)]  count:6603967 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	16(%rsi), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.179_1305 + 16B].r, _1270
	movss	(%rdi), %xmm2	# tw1_122->r, _1271
	movss	4(%rdi), %xmm5	# tw1_122->i, _1274
	movss	20(%rsi), %xmm4	# MEM[(struct kiss_fft_cpx *)tmp.179_1305 + 16B].i, _1273
	movaps	%xmm0, %xmm1	# _1270, _1272
	mulss	%xmm2, %xmm1	# _1271, _1272
	mulss	%xmm5, %xmm0	# _1274, tmp1723
	mulss	%xmm4, %xmm2	# _1273, tmp1724
	movaps	%xmm4, %xmm3	# _1273, _1275
	mulss	%xmm5, %xmm3	# _1274, _1275
	addss	%xmm2, %xmm0	# tmp1724, _1278
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	16(%r11), %xmm2	# MEM[(struct kiss_fft_cpx *)tmp.177_1300 + 16B].r, tmp1725
	addss	%xmm3, %xmm2	# _1275, tmp1725
	subss	%xmm1, %xmm2	# _1272, tmp1726
	movss	%xmm2, 16(%rsi)	# tmp1726, MEM[(struct kiss_fft_cpx *)tmp.179_1305 + 16B].r
	movss	20(%r11), %xmm2	# MEM[(struct kiss_fft_cpx *)tmp.177_1300 + 16B].i, MEM[(struct kiss_fft_cpx *)tmp.177_1300 + 16B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	16(%r11), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.177_1300 + 16B].r, tmp1729
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm2	# _1278, tmp1727
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm3, %xmm1	# _1275, tmp1730
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm2, 20(%rsi)	# tmp1727, MEM[(struct kiss_fft_cpx *)tmp.179_1305 + 16B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	20(%r11), %xmm0	#, tmp1731
	movss	%xmm1, 16(%r11)	# tmp1730, MEM[(struct kiss_fft_cpx *)tmp.177_1300 + 16B].r
	movss	%xmm0, 20(%r11)	# tmp1731,
# SUCC: 18 [always]  count:6603967 (estimated locally) (CAN_FALLTHRU)
	jmp	.L33	#
# BLOCK 64, count:12366979 (estimated locally) seq:62
# PRED: 21 [20.0% (guessed)]  count:12366979 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L150:
	movq	%rbx, %rax	# fstride, fstride
	salq	$5, %rax	#, fstride
	movq	%rax, %rdx	# fstride, _2600
	movl	%r10d, %eax	# m, m
	movq	%rbx, %r15	# fstride, _2592
	decl	%eax	# tmp2526
	leaq	0(,%rbx,8), %r14	#, _2588
	leaq	(%rbx,%rbx,2), %rbx	#, tmp2523
	leaq	8(%rcx,%rax,8), %rbp	#, _2611
	salq	$4, %r15	#, _2592
	salq	$3, %rbx	#, tmp2524
# kiss_fft.c:159:     for ( u=0; u<m; ++u ) {
	movq	%r12, %r10	# ivtmp.747, ivtmp.753
	movq	%r12, %r9	# ivtmp.747, ivtmp.751
# SUCC: 65 [always]  count:12366979 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%r12, %rax	# ivtmp.747, ivtmp.749
# BLOCK 65, count:112427084 (estimated locally) seq:63
# PRED: 64 [always]  count:12366979 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 65 [89.0% (guessed)]  count:100060105 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L81:
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	movss	(%rsi), %xmm2	# MEM[base: Fout1_446, offset: 0B], _249
	movss	4(%rsi), %xmm3	# MEM[base: Fout1_446, offset: 4B], _257
	movss	264(%r12), %xmm1	# MEM[base: _2602, offset: 264B], _255
	movss	268(%r12), %xmm0	# MEM[base: _2602, offset: 268B], _258
	movaps	%xmm2, %xmm4	# _249, tmp2529
	movaps	%xmm3, %xmm5	# _257, tmp2530
	mulss	%xmm0, %xmm5	# _258, tmp2530
	mulss	%xmm1, %xmm4	# _255, tmp2529
	mulss	%xmm2, %xmm0	# _249, tmp2531
	mulss	%xmm3, %xmm1	# _257, tmp2532
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movss	4(%rdi), %xmm6	# MEM[base: Fout2_447, offset: 4B], _273
	movss	268(%rax), %xmm2	# MEM[base: _2603, offset: 268B], _274
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	subss	%xmm5, %xmm4	# tmp2530, _260
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movss	(%rdi), %xmm5	# MEM[base: Fout2_447, offset: 0B], _265
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	addss	%xmm1, %xmm0	# tmp2532, _263
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movss	264(%rax), %xmm1	# MEM[base: _2603, offset: 264B], _271
	movaps	%xmm5, %xmm3	# _265, tmp2533
	movaps	%xmm6, %xmm7	# _273, tmp2534
	mulss	%xmm2, %xmm7	# _274, tmp2534
	mulss	%xmm1, %xmm3	# _271, tmp2533
	mulss	%xmm5, %xmm2	# _265, tmp2535
	mulss	%xmm6, %xmm1	# _273, tmp2536
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	(%r8), %xmm5	# MEM[base: Fout3_444, offset: 0B], _281
	movss	4(%r8), %xmm6	# MEM[base: Fout3_444, offset: 4B], _289
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	subss	%xmm7, %xmm3	# tmp2534, _276
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	268(%r9), %xmm7	# MEM[base: _2604, offset: 268B], _290
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	addss	%xmm1, %xmm2	# tmp2536, _279
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	264(%r9), %xmm1	# MEM[base: _2604, offset: 264B], _287
	movaps	%xmm5, %xmm13	# _281, _288
	mulss	%xmm7, %xmm5	# _290, tmp2537
	mulss	%xmm1, %xmm13	# _287, _288
	mulss	%xmm6, %xmm1	# _289, tmp2538
	movaps	%xmm6, %xmm10	# _289, _291
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	4(%rcx), %xmm14	# MEM[base: Fout4_443, offset: 4B], _305
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movaps	%xmm5, %xmm6	# tmp2537, tmp2537
	mulss	%xmm7, %xmm10	# _290, _291
	addss	%xmm1, %xmm6	# tmp2538, tmp2537
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	(%rcx), %xmm1	# MEM[base: Fout4_443, offset: 0B], _297
	movss	264(%r10), %xmm5	# MEM[base: _2605, offset: 264B], _303
	movss	268(%r10), %xmm7	# MEM[base: _2605, offset: 268B], _306
	movaps	%xmm1, %xmm9	# _297, _304
	movaps	%xmm14, %xmm8	# _305, _307
	mulss	%xmm5, %xmm9	# _303, _304
	mulss	%xmm7, %xmm8	# _306, _307
	mulss	%xmm14, %xmm5	# _305, tmp2540
	mulss	%xmm1, %xmm7	# _297, tmp2539
# kiss_fft.c:161:         scratch[0] = *Fout0;
	movss	(%r11), %xmm12	# MEM[base: Fout0_448, offset: 0B], scratch$0$r
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	movaps	%xmm0, %xmm1	# _263, _313
# kiss_fft.c:161:         scratch[0] = *Fout0;
	movss	4(%r11), %xmm11	# MEM[base: Fout0_448, offset: 4B], scratch$0$i
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movss	16(%rsp), %xmm14	# %sfp, yb$r
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	addss	%xmm5, %xmm7	# tmp2540, _311
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	movaps	%xmm4, %xmm5	# _260, tmp2541
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	subss	%xmm9, %xmm4	# _304, tmp2542
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	subss	%xmm8, %xmm5	# _307, tmp2541
	addss	%xmm7, %xmm1	# _311, _313
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	addss	%xmm8, %xmm4	# _307, _314
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	movaps	%xmm3, %xmm8	# _276, tmp2543
	subss	%xmm10, %xmm8	# _291, tmp2543
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	addss	%xmm9, %xmm5	# _304, _312
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	movaps	%xmm2, %xmm9	# _279, _317
	addss	%xmm13, %xmm8	# _288, _316
	addss	%xmm6, %xmm9	# _295, _317
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	subss	%xmm6, %xmm2	# _295, _319
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	movaps	%xmm5, %xmm6	# _312, tmp2545
	addss	%xmm8, %xmm6	# _316, tmp2545
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	subss	%xmm7, %xmm0	# _311, _315
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movaps	%xmm15, %xmm7	# ya$r, tmp2549
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	addss	%xmm12, %xmm6	# scratch$0$r, tmp2546
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	mulss	%xmm5, %xmm7	# _312, tmp2549
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	subss	%xmm13, %xmm3	# _288, tmp2544
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	movss	%xmm6, (%r11)	# tmp2546, MEM[base: Fout0_448, offset: 0B]
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	movaps	%xmm1, %xmm6	# _313, tmp2547
	addss	%xmm9, %xmm6	# _317, tmp2547
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	addss	%xmm10, %xmm3	# _291, _318
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movaps	%xmm14, %xmm10	# yb$r, tmp2553
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	addss	%xmm11, %xmm6	# scratch$0$i, tmp2548
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	mulss	%xmm9, %xmm10	# _317, tmp2553
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	mulss	%xmm15, %xmm9	# ya$r, tmp2567
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	movss	%xmm6, 4(%r11)	# tmp2548, MEM[base: Fout0_448, offset: 4B]
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movaps	%xmm14, %xmm6	# yb$r, tmp2550
	mulss	%xmm8, %xmm6	# _316, tmp2550
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movss	(%rsp), %xmm14	# %sfp, ya$i
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	mulss	%xmm15, %xmm8	# ya$r, tmp2564
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movaps	%xmm14, %xmm13	# ya$i, tmp2555
	mulss	%xmm0, %xmm13	# _315, tmp2555
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	addss	%xmm6, %xmm7	# tmp2550, tmp2551
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movaps	%xmm15, %xmm6	# ya$r, tmp2552
	mulss	%xmm1, %xmm6	# _313, tmp2552
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	addss	%xmm12, %xmm7	# scratch$0$r, _327
# kiss_fft.c:193:         ++Fout0;++Fout1;++Fout2;++Fout3;++Fout4;
	addq	$8, %rcx	#, Fout4
# kiss_fft.c:193:         ++Fout0;++Fout1;++Fout2;++Fout3;++Fout4;
	addq	$8, %r11	#, Fout
# kiss_fft.c:193:         ++Fout0;++Fout1;++Fout2;++Fout3;++Fout4;
	addq	$8, %rsi	#, Fout1
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	addss	%xmm10, %xmm6	# tmp2553, tmp2554
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movss	24(%rsp), %xmm10	# %sfp, tmp2556
# kiss_fft.c:193:         ++Fout0;++Fout1;++Fout2;++Fout3;++Fout4;
	addq	$8, %rdi	#, Fout2
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	mulss	%xmm2, %xmm10	# _319, tmp2556
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	addss	%xmm11, %xmm6	# scratch$0$i, _331
# kiss_fft.c:193:         ++Fout0;++Fout1;++Fout2;++Fout3;++Fout4;
	addq	$8, %r8	#, Fout3
	addq	%r14, %r12	# _2588, ivtmp.747
	addq	%r15, %rax	# _2592, ivtmp.749
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	addss	%xmm13, %xmm10	# tmp2555, _334
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movaps	%xmm14, %xmm13	# ya$i, _335
	mulss	%xmm4, %xmm13	# _314, _335
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movss	24(%rsp), %xmm14	# %sfp, _337
	addq	%rbx, %r9	# tmp2524, ivtmp.751
	mulss	%xmm3, %xmm14	# _318, _337
	addq	%rdx, %r10	# _2600, ivtmp.753
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movss	%xmm13, 32(%rsp)	# _335, %sfp
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movaps	%xmm7, %xmm13	# _327, tmp2557
	subss	%xmm10, %xmm13	# _334, tmp2557
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	addss	%xmm10, %xmm7	# _334, tmp2560
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movss	%xmm13, -8(%rsi)	# tmp2557, MEM[base: Fout1_446, offset: 0B]
	movss	32(%rsp), %xmm13	# %sfp, tmp2558
	addss	%xmm14, %xmm13	# _337, tmp2558
	addss	%xmm6, %xmm13	# _331, tmp2559
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	subss	32(%rsp), %xmm6	# %sfp, tmp2561
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movss	%xmm13, -4(%rsi)	# tmp2559, MEM[base: Fout1_446, offset: 4B]
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	subss	%xmm14, %xmm6	# _337, tmp2562
	movss	%xmm7, -8(%rcx)	# tmp2560, MEM[base: Fout4_443, offset: 0B]
	movss	%xmm6, -4(%rcx)	# tmp2562, MEM[base: Fout4_443, offset: 4B]
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	movss	16(%rsp), %xmm6	# %sfp, yb$r
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movss	(%rsp), %xmm7	# %sfp, ya$i
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	mulss	%xmm6, %xmm5	# yb$r, tmp2563
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	mulss	%xmm6, %xmm1	# yb$r, tmp2566
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	mulss	%xmm7, %xmm2	# ya$i, _351
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	mulss	%xmm7, %xmm3	# ya$i, _355
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	addss	%xmm5, %xmm8	# tmp2563, tmp2565
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movss	24(%rsp), %xmm5	# %sfp, yb$i
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	addss	%xmm1, %xmm9	# tmp2566, tmp2568
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	mulss	%xmm5, %xmm0	# yb$i, _352
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movaps	%xmm2, %xmm1	# _351, tmp2569
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	addss	%xmm8, %xmm12	# tmp2565, _346
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	mulss	%xmm5, %xmm4	# yb$i, _354
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	addss	%xmm9, %xmm11	# tmp2568, _350
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	subss	%xmm0, %xmm1	# _352, tmp2569
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	subss	%xmm2, %xmm0	# _351, tmp2573
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	addss	%xmm12, %xmm1	# _346, tmp2570
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	addss	%xmm12, %xmm0	# _346, tmp2574
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	movss	%xmm1, -8(%rdi)	# tmp2570, MEM[base: Fout2_447, offset: 0B]
	movaps	%xmm11, %xmm1	# _350, tmp2571
	subss	%xmm3, %xmm1	# _355, tmp2571
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	subss	%xmm4, %xmm11	# _354, tmp2575
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	addss	%xmm4, %xmm1	# _354, tmp2572
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	addss	%xmm3, %xmm11	# _355, tmp2576
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	movss	%xmm1, -4(%rdi)	# tmp2572, MEM[base: Fout2_447, offset: 4B]
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	movss	%xmm0, -8(%r8)	# tmp2574, MEM[base: Fout3_444, offset: 0B]
	movss	%xmm11, -4(%r8)	# tmp2576, MEM[base: Fout3_444, offset: 4B]
# kiss_fft.c:159:     for ( u=0; u<m; ++u ) {
	cmpq	%rbp, %rcx	# _2611, Fout4
# SUCC: 65 [89.0% (guessed)]  count:100060105 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 66 [11.0% (guessed)]  count:12366979 (estimated locally) (FALLTHRU)
	jne	.L81	#,
# BLOCK 66, count:12366979 (estimated locally) seq:64
# PRED: 65 [11.0% (guessed)]  count:12366979 (estimated locally) (FALLTHRU)
# SUCC: 18 [always]  count:12366979 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L33	#
# BLOCK 67, count:11116386 (estimated locally) seq:65
# PRED: 40 [11.1% (guessed)]  count:5558193 (estimated locally) (CAN_FALLTHRU) 39 [10.0% (guessed)]  count:5558193 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L52:
	movl	%ebx, %eax	# tmp2630, tmp1845
# SUCC: 68 [always]  count:11116386 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	8(%r11,%rax,8), %rax	#, _2406
# BLOCK 68, count:101058053 (estimated locally) seq:66
# PRED: 67 [always]  count:11116386 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 68 [89.0% (guessed)]  count:89941667 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L55:
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	(%rdi), %xmm3	# MEM[base: tw1_1002, offset: 0B], _1005
	movss	4(%rdi), %xmm5	# MEM[base: tw1_1002, offset: 4B], _1008
	movss	(%rsi), %xmm1	# MEM[base: Fout2_1001, offset: 0B], _1004
	movss	4(%rsi), %xmm0	# MEM[base: Fout2_1001, offset: 4B], _1007
	movaps	%xmm1, %xmm2	# _1004, _1006
	movaps	%xmm0, %xmm4	# _1007, _1009
	mulss	%xmm5, %xmm1	# _1008, tmp1848
	mulss	%xmm3, %xmm0	# _1005, tmp1849
	mulss	%xmm5, %xmm4	# _1008, _1009
	mulss	%xmm3, %xmm2	# _1005, _1006
# kiss_fft.c:40:         ++Fout;
	addq	$8, %r11	#, Fout
# kiss_fft.c:36:         tw1 += fstride;
	addq	$8, %rdi	#, tw1
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	addss	%xmm1, %xmm0	# tmp1848, _1012
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	-8(%r11), %xmm1	# MEM[base: Fout_999, offset: 0B], tmp1850
# kiss_fft.c:39:         ++Fout2;
	addq	$8, %rsi	#, Fout2
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	addss	%xmm4, %xmm1	# _1009, tmp1850
	subss	%xmm2, %xmm1	# _1006, tmp1851
	movss	%xmm1, -8(%rsi)	# tmp1851, MEM[base: Fout2_1001, offset: 0B]
	movss	-4(%r11), %xmm1	# MEM[base: Fout_999, offset: 4B], MEM[base: Fout_999, offset: 4B]
	subss	%xmm0, %xmm1	# _1012, tmp1852
	movss	%xmm1, -4(%rsi)	# tmp1852, MEM[base: Fout2_1001, offset: 4B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	-8(%r11), %xmm2	# MEM[base: Fout_999, offset: 0B], tmp1854
	addss	-4(%r11), %xmm0	# MEM[base: Fout_999, offset: 4B], tmp1856
	subss	%xmm4, %xmm2	# _1009, tmp1855
	movss	%xmm0, -4(%r11)	# tmp1856, MEM[base: Fout_999, offset: 4B]
	movss	%xmm2, -8(%r11)	# tmp1855, MEM[base: Fout_999, offset: 0B]
# kiss_fft.c:41:     }while (--m);
	cmpq	%rax, %r11	# _2406, Fout
# SUCC: 68 [89.0% (guessed)]  count:89941667 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 69 [11.0% (guessed)]  count:11116386 (estimated locally) (FALLTHRU)
	jne	.L55	#,
# BLOCK 69, count:11116386 (estimated locally) seq:67
# PRED: 68 [11.0% (guessed)]  count:11116386 (estimated locally) (FALLTHRU)
# SUCC: 18 [always]  count:11116386 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L33	#
# BLOCK 70, count:11116386 (estimated locally) seq:68
# PRED: 11 [11.1% (guessed)]  count:5558193 (estimated locally) (CAN_FALLTHRU) 10 [10.0% (guessed)]  count:5558193 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L66:
	movsd	.LC1(%rip), %xmm5	#, tmp2629
	movq	(%rsp), %rcx	# %sfp, _95
# kiss_fft.c:106:      tw1=tw2=st->twiddles;
	movq	%r14, %rdx	# tw1, tw2
# SUCC: 72 [always]  count:11116386 (estimated locally) (CAN_FALLTHRU)
	jmp	.L71	#
# BLOCK 71, count:89941667 (estimated locally) seq:69
# PRED: 72 [89.0% (guessed)]  count:89941667 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L155:
# SUCC: 72 [always]  count:89941667 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
	decq	%rsi	# k
# BLOCK 72, count:101058053 (estimated locally) seq:70
# PRED: 71 [always]  count:89941667 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 70 [always]  count:11116386 (estimated locally) (CAN_FALLTHRU)
.L71:
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movss	(%rax), %xmm6	# MEM[base: _2468, offset: 0B], _1572
	movss	4(%r14), %xmm1	# MEM[base: tw1_1568, offset: 4B], _1576
	movss	(%r14), %xmm3	# MEM[base: tw1_1568, offset: 0B], _1573
	movss	4(%rax), %xmm2	# MEM[base: _2468, offset: 4B], _1575
	movaps	%xmm6, %xmm0	# _1572, tmp2436
	mulss	%xmm3, %xmm0	# _1573, tmp2436
	mulss	%xmm1, %xmm6	# _1576, tmp2438
	mulss	%xmm2, %xmm3	# _1575, tmp2439
	movaps	%xmm2, %xmm7	# _1575, tmp2437
	mulss	%xmm1, %xmm7	# _1576, tmp2437
# kiss_fft.c:116:          tw1 += fstride;
	addq	$8, %r14	#, tw1
# kiss_fft.c:117:          tw2 += fstride*2;
	addq	$16, %rdx	#, tw2
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm3, %xmm6	# tmp2439, tmp2438
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%r11,%rcx), %xmm3	# MEM[base: Fout_1566, index: _95, offset: 4B], _1586
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm7, %xmm0	# tmp2437, tmp2436
	movaps	%xmm6, %xmm2	# tmp2438, _1581
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	(%r11,%rcx), %xmm6	# MEM[base: Fout_1566, index: _95, offset: 0B], _1583
	movss	-12(%rdx), %xmm7	# MEM[base: tw2_1569, offset: 4B], _1587
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movaps	%xmm0, %xmm9	# tmp2436, _1578
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	-16(%rdx), %xmm0	# MEM[base: tw2_1569, offset: 0B], _1584
	movaps	%xmm6, %xmm10	# _1583, _1585
	mulss	%xmm0, %xmm10	# _1584, _1585
	mulss	%xmm7, %xmm6	# _1587, tmp2440
	movaps	%xmm3, %xmm1	# _1586, _1588
	mulss	%xmm7, %xmm1	# _1587, _1588
	mulss	%xmm3, %xmm0	# _1586, tmp2441
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm2, %xmm8	# _1581, _1594
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm6, %xmm3	# tmp2440, tmp2440
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm10, %xmm6	# _1585, tmp2442
	subss	%xmm1, %xmm6	# _1588, tmp2442
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm0, %xmm3	# tmp2441, tmp2440
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm0, %xmm0	# tmp2444
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm9, %xmm6	# _1578, _1593
	addss	%xmm3, %xmm8	# _1592, _1594
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp2443
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm0	# _1593, tmp2444
	mulsd	%xmm5, %xmm0	# tmp2629, tmp2445
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	(%r11), %xmm7	# MEM[base: Fout_1566, offset: 0B], tmp2443
	addq	$8, %rax	#, ivtmp.468
# kiss_fft.c:132:          ++Fout;
	addq	$8, %r11	#, Fout
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm0, %xmm7	# tmp2445, tmp2447
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm0, %xmm0	# tmp2450
	cvtss2sd	%xmm8, %xmm0	# _1594, tmp2450
	mulsd	%xmm5, %xmm0	# tmp2629, tmp2451
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp2447, tmp2448
	movss	%xmm7, -8(%rax)	# tmp2448, MEM[base: _2468, offset: 0B]
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp2449
	cvtss2sd	-4(%r11), %xmm7	# MEM[base: Fout_1566, offset: 4B], tmp2449
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm0, %xmm7	# tmp2451, tmp2453
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm0	# _1588, _1588
	movaps	%xmm2, %xmm1	# _1581, _1581
	subss	%xmm3, %xmm1	# _1592, _1581
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm7, %xmm7	# tmp2453, tmp2455
	movss	%xmm7, -4(%rax)	# tmp2455, MEM[base: _2468, offset: 4B]
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	-8(%r11), %xmm6	# MEM[base: Fout_1566, offset: 0B], tmp2459
	addss	-4(%r11), %xmm8	# MEM[base: Fout_1566, offset: 4B], tmp2461
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm1	# epi3$i, _1615
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm10, %xmm0	# _1585, _1588
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, -8(%r11)	# tmp2459, MEM[base: Fout_1566, offset: 0B]
	movss	%xmm8, -4(%r11)	# tmp2461, MEM[base: Fout_1566, offset: 4B]
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	-8(%rax), %xmm2	# MEM[base: _2468, offset: 0B], tmp2463
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _1578, tmp2457
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm2	# _1615, tmp2463
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _1614
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm2, -8(%r11,%rcx)	# tmp2463, MEM[base: Fout_1566, index: _95, offset: 0B]
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	-4(%rax), %xmm2	# MEM[base: _2468, offset: 4B], MEM[base: _2468, offset: 4B]
	subss	%xmm0, %xmm2	# _1614, tmp2465
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm2, -4(%r11,%rcx)	# tmp2465, MEM[base: Fout_1566, index: _95, offset: 4B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	-8(%rax), %xmm2	# MEM[base: _2468, offset: 0B], MEM[base: _2468, offset: 0B]
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	-4(%rax), %xmm0	# MEM[base: _2468, offset: 4B], tmp2469
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm2	# _1615, MEM[base: _2468, offset: 0B]
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, -4(%rax)	# tmp2469, MEM[base: _2468, offset: 4B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm2, -8(%rax)	# tmp2467, MEM[base: _2468, offset: 0B]
# kiss_fft.c:133:      }while(--k);
	testq	%rsi, %rsi	# k
# SUCC: 71 [89.0% (guessed)]  count:89941667 (estimated locally) (CAN_FALLTHRU) 73 [11.0% (guessed)]  count:11116386 (estimated locally) (FALLTHRU)
	jne	.L155	#,
# BLOCK 73, count:11116386 (estimated locally) seq:71
# PRED: 72 [11.0% (guessed)]  count:11116386 (estimated locally) (FALLTHRU)
# SUCC: 18 [always]  count:11116386 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L33	#
# BLOCK 74, count:2779096 (estimated locally) seq:72
# PRED: 49 [11.1% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU) 48 [10.0% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU)
.L59:
	movsd	.LC1(%rip), %xmm5	#, tmp2629
	movq	(%rsp), %rcx	# %sfp, _95
# kiss_fft.c:106:      tw1=tw2=st->twiddles;
	movq	%r14, %rdx	# tw1, tw2
# SUCC: 76 [always]  count:2779096 (estimated locally) (CAN_FALLTHRU)
	jmp	.L64	#
# BLOCK 75, count:22485417 (estimated locally) seq:73
# PRED: 76 [89.0% (guessed)]  count:22485417 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L156:
# SUCC: 76 [always]  count:22485417 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
	decq	%rsi	# k
# BLOCK 76, count:25264513 (estimated locally) seq:74
# PRED: 75 [always]  count:22485417 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 74 [always]  count:2779096 (estimated locally) (CAN_FALLTHRU)
.L64:
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movss	(%rax), %xmm6	# MEM[base: _2523, offset: 0B], _2076
	movss	4(%r14), %xmm1	# MEM[base: tw1_2072, offset: 4B], _2080
	movss	(%r14), %xmm3	# MEM[base: tw1_2072, offset: 0B], _2077
	movss	4(%rax), %xmm2	# MEM[base: _2523, offset: 4B], _2079
	movaps	%xmm6, %xmm0	# _2076, tmp2141
	mulss	%xmm3, %xmm0	# _2077, tmp2141
	mulss	%xmm1, %xmm6	# _2080, tmp2143
	mulss	%xmm2, %xmm3	# _2079, tmp2144
	movaps	%xmm2, %xmm7	# _2079, tmp2142
	mulss	%xmm1, %xmm7	# _2080, tmp2142
# kiss_fft.c:116:          tw1 += fstride;
	addq	%r15, %r14	# _112, tw1
# kiss_fft.c:132:          ++Fout;
	addq	$8, %r11	#, Fout
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm3, %xmm6	# tmp2144, tmp2143
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	-4(%r11,%rcx), %xmm3	# MEM[base: Fout_2070, index: _95, offset: 4B], _2090
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm7, %xmm0	# tmp2142, tmp2141
	movaps	%xmm6, %xmm2	# tmp2143, _2085
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	-8(%r11,%rcx), %xmm6	# MEM[base: Fout_2070, index: _95, offset: 0B], _2087
	movss	4(%rdx), %xmm7	# MEM[base: tw2_2073, offset: 4B], _2091
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movaps	%xmm0, %xmm9	# tmp2141, _2082
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	(%rdx), %xmm0	# MEM[base: tw2_2073, offset: 0B], _2088
	movaps	%xmm6, %xmm10	# _2087, _2089
	mulss	%xmm0, %xmm10	# _2088, _2089
	mulss	%xmm7, %xmm6	# _2091, tmp2145
	movaps	%xmm3, %xmm1	# _2090, _2092
	mulss	%xmm7, %xmm1	# _2091, _2092
	mulss	%xmm3, %xmm0	# _2090, tmp2146
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm2, %xmm8	# _2085, _2098
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm6, %xmm3	# tmp2145, tmp2145
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm10, %xmm6	# _2089, tmp2147
	subss	%xmm1, %xmm6	# _2092, tmp2147
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm0, %xmm3	# tmp2146, tmp2145
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm0, %xmm0	# tmp2149
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm9, %xmm6	# _2082, _2097
	addss	%xmm3, %xmm8	# _2096, _2098
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp2148
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm0	# _2097, tmp2149
	mulsd	%xmm5, %xmm0	# tmp2629, tmp2150
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	-8(%r11), %xmm7	# MEM[base: Fout_2070, offset: 0B], tmp2148
# kiss_fft.c:117:          tw2 += fstride*2;
	addq	%r8, %rdx	# _114, tw2
	addq	$8, %rax	#, ivtmp.556
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm0, %xmm7	# tmp2150, tmp2152
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm0, %xmm0	# tmp2155
	cvtss2sd	%xmm8, %xmm0	# _2098, tmp2155
	mulsd	%xmm5, %xmm0	# tmp2629, tmp2156
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp2152, tmp2153
	movss	%xmm7, -8(%rax)	# tmp2153, MEM[base: _2523, offset: 0B]
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp2154
	cvtss2sd	-4(%r11), %xmm7	# MEM[base: Fout_2070, offset: 4B], tmp2154
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm0, %xmm7	# tmp2156, tmp2158
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm0	# _2092, _2092
	movaps	%xmm2, %xmm1	# _2085, _2085
	subss	%xmm3, %xmm1	# _2096, _2085
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm7, %xmm7	# tmp2158, tmp2160
	movss	%xmm7, -4(%rax)	# tmp2160, MEM[base: _2523, offset: 4B]
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	-8(%r11), %xmm6	# MEM[base: Fout_2070, offset: 0B], tmp2164
	addss	-4(%r11), %xmm8	# MEM[base: Fout_2070, offset: 4B], tmp2166
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm1	# epi3$i, _2119
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm10, %xmm0	# _2089, _2092
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, -8(%r11)	# tmp2164, MEM[base: Fout_2070, offset: 0B]
	movss	%xmm8, -4(%r11)	# tmp2166, MEM[base: Fout_2070, offset: 4B]
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	-8(%rax), %xmm2	# MEM[base: _2523, offset: 0B], tmp2168
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _2082, tmp2162
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm2	# _2119, tmp2168
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _2118
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm2, -8(%r11,%rcx)	# tmp2168, MEM[base: Fout_2070, index: _95, offset: 0B]
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	-4(%rax), %xmm2	# MEM[base: _2523, offset: 4B], MEM[base: _2523, offset: 4B]
	subss	%xmm0, %xmm2	# _2118, tmp2170
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm2, -4(%r11,%rcx)	# tmp2170, MEM[base: Fout_2070, index: _95, offset: 4B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	-8(%rax), %xmm2	# MEM[base: _2523, offset: 0B], MEM[base: _2523, offset: 0B]
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	-4(%rax), %xmm0	# MEM[base: _2523, offset: 4B], tmp2174
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm2	# _2119, MEM[base: _2523, offset: 0B]
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, -4(%rax)	# tmp2174, MEM[base: _2523, offset: 4B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm2, -8(%rax)	# tmp2172, MEM[base: _2523, offset: 0B]
# kiss_fft.c:133:      }while(--k);
	testq	%rsi, %rsi	# k
# SUCC: 75 [89.0% (guessed)]  count:22485417 (estimated locally) (CAN_FALLTHRU) 77 [11.0% (guessed)]  count:2779096 (estimated locally) (FALLTHRU)
	jne	.L156	#,
# BLOCK 77, count:2779096 (estimated locally) seq:75
# PRED: 76 [11.0% (guessed)]  count:2779096 (estimated locally) (FALLTHRU)
# SUCC: 18 [always]  count:2779096 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L33	#
# BLOCK 78, count:2779096 (estimated locally) seq:76
# PRED: 57 [11.1% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU) 56 [10.0% (guessed)]  count:1389548 (estimated locally) (CAN_FALLTHRU)
.L45:
	movl	%ebx, %eax	# tmp2630, tmp1734
# SUCC: 79 [always]  count:2779096 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	8(%r11,%rax,8), %rax	#, _2432
# BLOCK 79, count:25264513 (estimated locally) seq:77
# PRED: 78 [always]  count:2779096 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 79 [89.0% (guessed)]  count:22485417 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L50:
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	(%rdi), %xmm3	# MEM[base: tw1_1234, offset: 0B], _1237
	movss	4(%rdi), %xmm5	# MEM[base: tw1_1234, offset: 4B], _1240
	movss	(%rsi), %xmm1	# MEM[base: Fout2_1233, offset: 0B], _1236
	movss	4(%rsi), %xmm0	# MEM[base: Fout2_1233, offset: 4B], _1239
	movaps	%xmm1, %xmm2	# _1236, _1238
	movaps	%xmm0, %xmm4	# _1239, _1241
	mulss	%xmm5, %xmm1	# _1240, tmp1737
	mulss	%xmm3, %xmm0	# _1237, tmp1738
	mulss	%xmm5, %xmm4	# _1240, _1241
	mulss	%xmm3, %xmm2	# _1237, _1238
# kiss_fft.c:40:         ++Fout;
	addq	$8, %r11	#, Fout
# kiss_fft.c:36:         tw1 += fstride;
	addq	%r10, %rdi	# _62, tw1
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	addss	%xmm1, %xmm0	# tmp1737, _1244
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	-8(%r11), %xmm1	# MEM[base: Fout_1231, offset: 0B], tmp1739
# kiss_fft.c:39:         ++Fout2;
	addq	$8, %rsi	#, Fout2
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	addss	%xmm4, %xmm1	# _1241, tmp1739
	subss	%xmm2, %xmm1	# _1238, tmp1740
	movss	%xmm1, -8(%rsi)	# tmp1740, MEM[base: Fout2_1233, offset: 0B]
	movss	-4(%r11), %xmm1	# MEM[base: Fout_1231, offset: 4B], MEM[base: Fout_1231, offset: 4B]
	subss	%xmm0, %xmm1	# _1244, tmp1741
	movss	%xmm1, -4(%rsi)	# tmp1741, MEM[base: Fout2_1233, offset: 4B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	-8(%r11), %xmm2	# MEM[base: Fout_1231, offset: 0B], tmp1743
	addss	-4(%r11), %xmm0	# MEM[base: Fout_1231, offset: 4B], tmp1745
	subss	%xmm4, %xmm2	# _1241, tmp1744
	movss	%xmm0, -4(%r11)	# tmp1745, MEM[base: Fout_1231, offset: 4B]
	movss	%xmm2, -8(%r11)	# tmp1744, MEM[base: Fout_1231, offset: 0B]
# kiss_fft.c:41:     }while (--m);
	cmpq	%rax, %r11	# _2432, Fout
# SUCC: 79 [89.0% (guessed)]  count:22485417 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 80 [11.0% (guessed)]  count:2779096 (estimated locally) (FALLTHRU)
	jne	.L50	#,
# BLOCK 80, count:2779096 (estimated locally) seq:78
# PRED: 79 [11.0% (guessed)]  count:2779096 (estimated locally) (FALLTHRU)
# SUCC: 18 [always]  count:2779096 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L33	#
	.cfi_endproc
.LFE55:
	.size	kf_work, .-kf_work
	.p2align 4
	.type	kf_work.constprop.0, @function
kf_work.constprop.0:
.LFB63:
	.cfi_startproc
# BLOCK 2, count:347387059 (estimated locally) seq:0
# PRED: ENTRY [always]  count:347387059 (estimated locally) (FALLTHRU)
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%r8, %r12	# tmp1376, st
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# tmp1372, Fout
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movslq	%edx, %rbx	# tmp1374,
	movq	%rbx, %rax	#,
	subq	$120, %rsp	#,
	.cfi_def_cfa_offset 176
# kiss_fft.c:249:     const int m=*factors++; /* stage's fft length/p */
	movl	4(%rcx), %edi	# MEM[(int *)factors_1(D) + 4B], m
# kiss_fft.c:248:     const int p=*factors++; /* the radix  */
	movl	(%rcx), %r14d	# *factors_1(D), p
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	movl	%edi, %edx	# m, tmp875
	imull	%r14d, %edx	# p, tmp875
# kiss_fft.c:249:     const int m=*factors++; /* stage's fft length/p */
	movl	%edi, 32(%rsp)	# m, %sfp
	salq	$3, %rbx	#, _722
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	movslq	%edx, %rdx	# tmp875, tmp876
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	leaq	0(%rbp,%rdx,8), %r15	#, Fout_end
# kiss_fft.c:276:     if (m==1) {
	cmpl	$1, %edi	#, m
# SUCC: 24 [34.0% (guessed)]  count:118111601 (estimated locally) (CAN_FALLTHRU) 3 [66.0% (guessed)]  count:229275458 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L227	#,
# BLOCK 3, count:229275458 (estimated locally) seq:1
# PRED: 2 [66.0% (guessed)]  count:229275458 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	movslq	32(%rsp), %rdx	# %sfp, m
# kiss_fft.c:249:     const int m=*factors++; /* stage's fft length/p */
	leaq	8(%rcx), %r8	#, factors
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	leaq	0(,%rdx,8), %rcx	#, _28
	movq	%rcx, (%rsp)	# _28, %sfp
	movslq	%r14d, %rcx	# p, _723
	movl	%r14d, 36(%rsp)	# p, %sfp
	movq	%r15, 16(%rsp)	# Fout_end, %sfp
	movq	%rbx, 24(%rsp)	# _722, %sfp
	movq	%rbp, 40(%rsp)	# Fout, %sfp
	movq	%rbp, %r13	# Fout, Fout
	movq	%r12, %r15	# st, st
	movq	%rcx, %rbp	# _723, _723
	movq	%rsi, %r14	# f, f
	movl	%eax, %ebx	# in_stride, in_stride
# SUCC: 4 [always]  count:229275458 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%r8, %r12	# factors, factors
# BLOCK 4, count:1042161184 (estimated locally) seq:2
# PRED: 3 [always]  count:229275458 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 4 [78.0% (guessed)]  count:812885725 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
.L168:
# kiss_fft.c:287:             kf_work( Fout , f, fstride*p, in_stride, factors,st);
	movq	%r14, %rsi	# f,
	movq	%r13, %rdi	# Fout,
	movq	%r15, %r9	# st,
	movq	%r12, %r8	# factors,
	movl	%ebx, %ecx	# in_stride,
	movq	%rbp, %rdx	# _723,
	call	kf_work	#
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	addq	(%rsp), %r13	# %sfp, Fout
# kiss_fft.c:288:             f += fstride*in_stride;
	addq	24(%rsp), %r14	# %sfp, f
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	cmpq	%r13, 16(%rsp)	# Fout, %sfp
# SUCC: 4 [78.0% (guessed)]  count:812885725 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 5 [22.0% (guessed)]  count:229275459 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L168	#,
# BLOCK 5, count:229275459 (estimated locally) seq:3
# PRED: 4 [22.0% (guessed)]  count:229275459 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movl	36(%rsp), %r14d	# %sfp, p
	movq	40(%rsp), %rbp	# %sfp, Fout
# SUCC: 6 [always]  count:229275459 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%r15, %r12	# st, st
# BLOCK 6, count:252897780 (estimated locally) seq:4
# PRED: 5 [always]  count:229275459 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 43 [always]  count:23622319 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
.L169:
# kiss_fft.c:295:     switch (p) {
	cmpl	$4, %r14d	#, p
# SUCC: 7 [80.0% (adjusted)]  count:202318223 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 27 [20.0% (adjusted)]  count:50579557 (estimated locally) (CAN_FALLTHRU)
	je	.L162	#,
# BLOCK 7, count:347387061 (estimated locally) seq:5
# PRED: 6 [80.0% (adjusted)]  count:202318223 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 26 [80.0% (adjusted)]  count:75591425 (estimated locally) (CAN_FALLTHRU)
.L229:
# SUCC: 8 [62.5% (adjusted)]  count:217116913 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 19 [37.5% (adjusted)]  count:130270148 (estimated locally) (CAN_FALLTHRU)
	jg	.L163	#,
# BLOCK 8, count:347387061 (estimated locally) seq:6
# PRED: 7 [62.5% (adjusted)]  count:217116913 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$2, %r14d	#, p
# SUCC: 9 [60.0% (adjusted)]  count:208432237 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 33 [40.0% (adjusted)]  count:138954824 (estimated locally) (CAN_FALLTHRU)
	je	.L164	#,
# BLOCK 9, count:347387061 (estimated locally) seq:7
# PRED: 8 [60.0% (adjusted)]  count:208432237 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$3, %r14d	#, p
# SUCC: 32 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 10 [always (guessed)]  count:347387061 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L166	#,
# BLOCK 10, count:69477412 (estimated locally) seq:8
# PRED: 9 [always (guessed)]  count:347387061 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:297:         case 3: kf_bfly3(Fout,fstride,st,m); break; 
	movslq	32(%rsp), %rax	# %sfp, k
	leaq	296(%r12), %r15	#, _484
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movq	%rax, %rdi	# k, _94
	salq	$4, %rdi	#, _94
# kiss_fft.c:106:      tw1=tw2=st->twiddles;
	leaq	264(%r12), %rsi	#, tw1
	leaq	32(%rbp), %r11	#, _493
	cmpq	%r15, %rbp	# _484, Fout
	movq	%r15, (%rsp)	# _484, %sfp
	setnb	%r15b	#, tmp977
	cmpq	%r11, %rsi	# _493, tw1
	setnb	%r13b	#, tmp979
	leaq	-1(%rax), %r9	#, k
	orl	%r15d, %r13d	# tmp977, tmp980
	leaq	264(,%rax,8), %r14	#, _249
	cmpq	$3, %r9	#, k
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leaq	-264(%r14), %r8	#, _80
	leaq	32(%rdi), %r10	#, _502
	seta	%r15b	#, tmp982
	andl	%r13d, %r15d	# tmp980, tmp983
	leaq	-232(%r14), %rbx	#, _506
	cmpq	%r10, %r8	# _502, _80
	movq	%r11, 16(%rsp)	# _493, %sfp
	setge	%r11b	#, tmp985
	cmpq	%rbx, %rdi	# _506, _94
	setge	%r13b	#, tmp987
	leaq	0(%rbp,%r8), %rdx	#, _492
	orl	%r11d, %r13d	# tmp985, tmp988
	andl	%r15d, %r13d	# tmp983, tmp989
	cmpq	16(%rsp), %rdx	# %sfp, _492
	setnb	%r11b	#, tmp991
	testq	%rbx, %rbx	# _506
	setle	%r15b	#, tmp993
	orl	%r15d, %r11d	# tmp993, tmp994
	addq	%rbp, %rbx	# Fout, tmp996
	andl	%r11d, %r13d	# tmp994, tmp995
	cmpq	%rbx, %rsi	# tmp996, tw1
	leaq	256(%r12,%rdi), %rcx	#, _470
	setnb	%bl	#, tmp998
	cmpq	%rdx, (%rsp)	# _492, %sfp
	setbe	%r11b	#, tmp1000
	movq	%rcx, 24(%rsp)	# _470, %sfp
	orl	%r11d, %ebx	# tmp1000, tmp1001
	leaq	0(%rbp,%r8,2), %r11	#, tmp1004
	andl	%ebx, %r13d	# tmp1001, tmp1002
	cmpq	%r11, %rsi	# tmp1004, tw1
	setnb	%bl	#, tmp1006
	cmpq	%rdx, 24(%rsp)	# _492, %sfp
	setbe	%r11b	#, tmp1008
	orl	%r11d, %ebx	# tmp1008, tmp1009
	leaq	(%rdx,%r8), %rcx	#, _461
	andl	%ebx, %r13d	# tmp1009, tmp1010
	cmpq	16(%rsp), %rcx	# %sfp, _461
	setnb	%r15b	#, tmp1012
	testq	%r10, %r10	# _502
	setle	%r11b	#, tmp1014
	orl	%r11d, %r15d	# tmp1014, tmp1015
	addq	%rbp, %r10	# Fout, tmp1017
	andl	%r15d, %r13d	# tmp1015, tmp1016
	cmpq	%r10, %rsi	# tmp1017, tw1
	setnb	%r11b	#, tmp1019
	cmpq	(%rsp), %rcx	# %sfp, _461
	setnb	%r15b	#, tmp1021
	leaq	(%rdi,%r8), %r10	#, tmp1024
	orl	%r15d, %r11d	# tmp1021, tmp1022
	addq	%rbp, %r10	# Fout, tmp1025
	andl	%r11d, %r13d	# tmp1022, tmp1023
	leaq	256(%r12,%rdi), %rbx	#, _470
	cmpq	%r10, %rsi	# tmp1025, tw1
	setnb	%r10b	#, tmp1027
	cmpq	%rbx, %rcx	# _470, _461
	setnb	%r11b	#, tmp1029
	orl	%r11d, %r10d	# tmp1029, tmp1030
# kiss_fft.c:104:      epi3 = st->twiddles[fstride*m];
	movss	4(%r12,%r14), %xmm4	# MEM[(struct  *)_77 + 4B], epi3$i
	testb	%r10b, %r13b	# tmp1030, tmp1023
# SUCC: 47 [10.0% (guessed)]  count:6947741 (estimated locally) (CAN_FALLTHRU) 11 [90.0% (guessed)]  count:62529671 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L176	#,
# BLOCK 11, count:62529671 (estimated locally) seq:9
# PRED: 10 [90.0% (guessed)]  count:62529671 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpq	%rbx, %rbp	# _470, Fout
	setnb	%r11b	#, tmp1033
	cmpq	%rsi, %rdx	# tw1, _492
	setbe	%r10b	#, tmp1035
	orb	%r10b, %r11b	# tmp1035, tmp1033
# SUCC: 47 [11.1% (guessed)]  count:6947741 (estimated locally) (CAN_FALLTHRU) 12 [88.9% (guessed)]  count:55581930 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L176	#,
# BLOCK 12, count:55581930 (estimated locally) seq:10
# PRED: 11 [88.9% (guessed)]  count:55581930 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	subq	$5, %rax	#, tmp1037
	shrq	$2, %rax	#, tmp1038
	movaps	%xmm4, %xmm5	# epi3$i, vect_cst__1022
	movapd	.LC0(%rip), %xmm3	#, tmp1370
	movaps	48(%rsp), %xmm8	# %sfp, tmp1069
	movaps	64(%rsp), %xmm9	# %sfp, tmp1071
	movaps	80(%rsp), %xmm10	# %sfp, tmp1083
	movaps	96(%rsp), %xmm11	# %sfp, tmp1085
	leaq	1(%rax), %r10	#, bnd.829
	shufps	$0, %xmm5, %xmm5	# vect_cst__1022
	movq	%rbp, %rdi	# Fout, ivtmp.983
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	xorl	%eax, %eax	# ivtmp.974
	xorl	%r11d, %r11d	# ivtmp.972
	movss	%xmm4, 16(%rsp)	# epi3$i, %sfp
# SUCC: 13 [always]  count:55581930 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movaps	%xmm5, (%rsp)	# vect_cst__1022, %sfp
# BLOCK 13, count:333491581 (estimated locally) seq:11
# PRED: 12 [always]  count:55581930 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 13 [83.3% (adjusted)]  count:277909652 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L177:
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movups	(%rdx,%rax), %xmm2	# MEM[base: _355, index: ivtmp.974_1179, offset: 0B], MEM[base: _355, index: ivtmp.974_1179, offset: 0B]
	movups	16(%rdx,%rax), %xmm1	# MEM[base: _355, index: ivtmp.974_1179, offset: 16B], MEM[base: _355, index: ivtmp.974_1179, offset: 16B]
	movaps	%xmm2, %xmm5	# MEM[base: _355, index: ivtmp.974_1179, offset: 0B], vect_perm_even_934
	movups	264(%r12,%rax), %xmm4	# MEM[base: st_22(D), index: ivtmp.974_1179, offset: 264B], MEM[base: st_22(D), index: ivtmp.974_1179, offset: 264B]
	shufps	$136, %xmm1, %xmm5	#, MEM[base: _355, index: ivtmp.974_1179, offset: 16B], vect_perm_even_934
	shufps	$221, %xmm1, %xmm2	#, MEM[base: _355, index: ivtmp.974_1179, offset: 16B], vect_perm_odd_935
	movups	280(%r12,%rax), %xmm1	# MEM[base: st_22(D), index: ivtmp.974_1179, offset: 280B], MEM[base: st_22(D), index: ivtmp.974_1179, offset: 280B]
	movaps	%xmm2, %xmm6	# vect_perm_odd_935, vect__89.844
	movaps	%xmm4, %xmm0	# MEM[base: st_22(D), index: ivtmp.974_1179, offset: 264B], vect_perm_even_942
	shufps	$221, %xmm1, %xmm4	#, MEM[base: st_22(D), index: ivtmp.974_1179, offset: 280B], vect_perm_odd_943
	mulps	%xmm4, %xmm6	# vect_perm_odd_943, vect__89.844
	mulps	%xmm5, %xmm4	# vect_perm_even_934, vect__91.846
	shufps	$136, %xmm1, %xmm0	#, MEM[base: st_22(D), index: ivtmp.974_1179, offset: 280B], vect_perm_even_942
	mulps	%xmm0, %xmm2	# vect_perm_even_942, vect__92.847
	movaps	%xmm5, %xmm1	# vect_perm_even_934, vect__86.843
	mulps	%xmm0, %xmm1	# vect_perm_even_942, vect__86.843
	movaps	%xmm4, %xmm0	# vect__91.846, vect__91.846
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movups	16(%rcx,%rax), %xmm4	# MEM[base: vectp.850_950, index: ivtmp.974_1179, offset: 16B], MEM[base: vectp.850_950, index: ivtmp.974_1179, offset: 16B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addps	%xmm2, %xmm0	# vect__92.847, vect__91.846
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movups	(%rcx,%rax), %xmm2	# MEM[base: vectp.850_950, index: ivtmp.974_1179, offset: 0B], MEM[base: vectp.850_950, index: ivtmp.974_1179, offset: 0B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subps	%xmm6, %xmm1	# vect__89.844, vect__90.845
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm2, %xmm6	# MEM[base: vectp.850_950, index: ivtmp.974_1179, offset: 0B], vect_perm_even_956
	shufps	$136, %xmm4, %xmm6	#, MEM[base: vectp.850_950, index: ivtmp.974_1179, offset: 16B], vect_perm_even_956
	shufps	$221, %xmm4, %xmm2	#, MEM[base: vectp.850_950, index: ivtmp.974_1179, offset: 16B], vect_perm_odd_957
	movups	264(%r12,%rax,2), %xmm4	# MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 264B], MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 264B]
	movups	280(%r12,%rax,2), %xmm14	# MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 280B], MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 280B]
	movups	312(%r12,%rax,2), %xmm13	# MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 312B], MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 312B]
	movups	296(%r12,%rax,2), %xmm12	# MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 296B], MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 296B]
	movaps	%xmm4, %xmm5	# MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 264B], MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 264B]
	movaps	%xmm4, %xmm7	# MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 264B], tmp1054
	movaps	%xmm12, %xmm15	# MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 296B], tmp1055
	shufps	$221, %xmm14, %xmm5	#, MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 280B], MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 264B]
	shufps	$221, %xmm13, %xmm12	#, MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 312B], tmp1057
	shufps	$136, %xmm12, %xmm5	#, tmp1057, vect_perm_even_974
	movaps	%xmm6, %xmm12	# vect_perm_even_956, vect__99.859
	shufps	$136, %xmm13, %xmm15	#, MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 312B], tmp1055
	shufps	$136, %xmm14, %xmm7	#, MEM[base: st_22(D), index: ivtmp.974_1179, step: 2, offset: 280B], tmp1054
	shufps	$136, %xmm15, %xmm7	#, tmp1055, vect_perm_even_972
	mulps	%xmm7, %xmm12	# vect_perm_even_972, vect__99.859
	movaps	%xmm2, %xmm13	# vect_perm_odd_957, vect__102.860
	mulps	%xmm5, %xmm13	# vect_perm_even_974, vect__102.860
	mulps	%xmm6, %xmm5	# vect_perm_even_956, vect__104.862
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# vect__90.845, tmp1060
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	mulps	%xmm7, %xmm2	# vect_perm_even_972, vect__105.863
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addps	%xmm12, %xmm6	# vect__99.859, tmp1060
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movups	(%rdi), %xmm14	# MEM[base: _1184, offset: 0B], MEM[base: _1184, offset: 0B]
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm0, %xmm7	# vect__93.848, vect__108.866
	subps	%xmm13, %xmm6	# vect__102.860, vect__107.865
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addps	%xmm2, %xmm5	# vect__105.863, vect__106.864
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movups	16(%rdi), %xmm2	# MEM[base: _1184, offset: 16B], MEM[base: _1184, offset: 16B]
	movaps	%xmm14, %xmm15	# MEM[base: _1184, offset: 0B], vect_perm_even_992
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movhlps	%xmm6, %xmm9	# vect__107.865, tmp1071
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	shufps	$221, %xmm2, %xmm14	#, MEM[base: _1184, offset: 16B], vect_perm_odd_993
	shufps	$136, %xmm2, %xmm15	#, MEM[base: _1184, offset: 16B], vect_perm_even_992
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm6, %xmm4	# vect__107.865, vect__117.875
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movhlps	%xmm15, %xmm8	# vect_perm_even_992, tmp1069
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	mulpd	%xmm3, %xmm4	# tmp1370, vect__118.876
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm15, %xmm2	# vect_perm_even_992, vect__116.874
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm9, %xmm15	# tmp1071, vect__117.875
	mulpd	%xmm3, %xmm15	# tmp1370, vect__118.876
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addps	%xmm5, %xmm7	# vect__106.864, vect__108.866
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subpd	%xmm4, %xmm2	# vect__118.876, vect__119.877
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm8, %xmm4	# tmp1069, vect__116.874
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movhlps	%xmm7, %xmm11	# vect__108.866, tmp1085
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subpd	%xmm15, %xmm4	# vect__118.876, vect__119.877
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movhlps	%xmm14, %xmm10	# vect_perm_odd_993, tmp1083
	cvtps2pd	%xmm14, %xmm15	# vect_perm_odd_993, vect__122.879
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtpd2ps	%xmm4, %xmm4	# vect__119.877, tmp1076
	cvtpd2ps	%xmm2, %xmm2	# vect__119.877, tmp1075
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtps2pd	%xmm11, %xmm14	# tmp1085, vect__123.880
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movlhps	%xmm4, %xmm2	# tmp1076, vect__120.878
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	mulpd	%xmm3, %xmm14	# tmp1370, vect__124.881
	cvtps2pd	%xmm7, %xmm4	# vect__108.866, vect__123.880
	mulpd	%xmm3, %xmm4	# tmp1370, vect__124.881
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addps	%xmm13, %xmm1	# vect__102.860, tmp1093
	subps	%xmm5, %xmm0	# vect__106.864, vect__110.869
	incq	%r11	# ivtmp.972
	subps	%xmm12, %xmm1	# vect__99.859, vect__109.868
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subpd	%xmm4, %xmm15	# vect__124.881, vect__125.882
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtps2pd	%xmm10, %xmm4	# tmp1083, vect__122.879
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subpd	%xmm14, %xmm4	# vect__124.881, vect__125.882
	cvtpd2ps	%xmm15, %xmm15	# vect__125.882, tmp1089
	addq	$32, %rdi	#, ivtmp.983
	cvtpd2ps	%xmm4, %xmm4	# vect__125.882, tmp1090
	movlhps	%xmm4, %xmm15	# tmp1090, vect__126.883
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movaps	%xmm2, %xmm4	# vect__120.878, tmp1091
	unpckhps	%xmm15, %xmm2	# vect__126.883, tmp1092
	movups	%xmm2, 16(%rdx,%rax)	# tmp1092, MEM[base: _492, index: ivtmp.974_1179, offset: 16B]
	unpcklps	%xmm15, %xmm4	# vect__126.883, tmp1091
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movaps	(%rsp), %xmm2	# %sfp, vect_cst__1022
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movups	%xmm4, (%rdx,%rax)	# tmp1091, MEM[base: _492, index: ivtmp.974_1179, offset: 0B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulps	%xmm2, %xmm0	# vect_cst__1022, vect__128.887
	mulps	%xmm2, %xmm1	# vect_cst__1022, vect__127.886
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movups	-32(%rdi), %xmm2	# MEM[base: _1184, offset: 0B], MEM[base: _1184, offset: 0B]
	movups	-16(%rdi), %xmm5	# MEM[base: _1184, offset: 16B], MEM[base: _1184, offset: 16B]
	movaps	%xmm2, %xmm4	# MEM[base: _1184, offset: 0B], tmp1098
	shufps	$136, %xmm5, %xmm4	#, MEM[base: _1184, offset: 16B], tmp1098
	addps	%xmm4, %xmm6	# tmp1098, vect__130.892
	shufps	$221, %xmm5, %xmm2	#, MEM[base: _1184, offset: 16B], tmp1099
	addps	%xmm2, %xmm7	# tmp1099, vect__132.893
	movaps	%xmm6, %xmm2	# vect__130.892, tmp1100
	unpcklps	%xmm7, %xmm2	# vect__132.893, tmp1100
	unpckhps	%xmm7, %xmm6	# vect__132.893, tmp1101
	movups	%xmm2, -32(%rdi)	# tmp1100, MEM[base: _1184, offset: 0B]
	movups	%xmm6, -16(%rdi)	# tmp1101, MEM[base: _1184, offset: 16B]
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movups	(%rdx,%rax), %xmm2	# MEM[base: _492, index: ivtmp.974_1179, offset: 0B], MEM[base: _492, index: ivtmp.974_1179, offset: 0B]
	movups	16(%rdx,%rax), %xmm5	# MEM[base: _492, index: ivtmp.974_1179, offset: 16B], MEM[base: _492, index: ivtmp.974_1179, offset: 16B]
	movaps	%xmm2, %xmm4	# MEM[base: _492, index: ivtmp.974_1179, offset: 0B], tmp1104
	shufps	$136, %xmm5, %xmm4	#, MEM[base: _492, index: ivtmp.974_1179, offset: 16B], tmp1104
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addps	%xmm0, %xmm4	# vect__128.887, vect__134.900
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	shufps	$221, %xmm5, %xmm2	#, MEM[base: _492, index: ivtmp.974_1179, offset: 16B], tmp1105
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	subps	%xmm1, %xmm2	# vect__127.886, vect__136.901
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movaps	%xmm4, %xmm5	# vect__134.900, tmp1106
	unpcklps	%xmm2, %xmm5	# vect__136.901, tmp1106
	unpckhps	%xmm2, %xmm4	# vect__136.901, tmp1107
	movups	%xmm5, (%rcx,%rax)	# tmp1106, MEM[base: _461, index: ivtmp.974_1179, offset: 0B]
	movups	%xmm4, 16(%rcx,%rax)	# tmp1107, MEM[base: _461, index: ivtmp.974_1179, offset: 16B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movups	(%rdx,%rax), %xmm13	# MEM[base: _492, index: ivtmp.974_1179, offset: 0B], MEM[base: _492, index: ivtmp.974_1179, offset: 0B]
	movups	16(%rdx,%rax), %xmm4	# MEM[base: _492, index: ivtmp.974_1179, offset: 16B], MEM[base: _492, index: ivtmp.974_1179, offset: 16B]
	movaps	%xmm13, %xmm2	# MEM[base: _492, index: ivtmp.974_1179, offset: 0B], tmp1110
	shufps	$136, %xmm4, %xmm2	#, MEM[base: _492, index: ivtmp.974_1179, offset: 16B], tmp1110
	subps	%xmm0, %xmm2	# vect__128.887, tmp1110
	shufps	$221, %xmm4, %xmm13	#, MEM[base: _492, index: ivtmp.974_1179, offset: 16B], tmp1111
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addps	%xmm13, %xmm1	# tmp1111, vect__140.909
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movaps	%xmm2, %xmm0	# tmp1110, vect__138.908
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	unpckhps	%xmm1, %xmm0	# vect__140.909, tmp1113
	unpcklps	%xmm1, %xmm2	# vect__140.909, tmp1112
	movups	%xmm2, (%rdx,%rax)	# tmp1112, MEM[base: _492, index: ivtmp.974_1179, offset: 0B]
	movups	%xmm0, 16(%rdx,%rax)	# tmp1113, MEM[base: _492, index: ivtmp.974_1179, offset: 16B]
	addq	$32, %rax	#, ivtmp.974
	cmpq	%r11, %r10	# ivtmp.972, bnd.829
# SUCC: 13 [83.3% (adjusted)]  count:277909652 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 14 [16.7% (adjusted)]  count:55581929 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	ja	.L177	#,
# BLOCK 14, count:55581929 (estimated locally) seq:12
# PRED: 13 [16.7% (adjusted)]  count:55581929 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	leaq	0(,%r10,4), %rcx	#, niters_vector_mult_vf.830
	salq	$5, %r10	#, _922
	addq	%r10, %rbp	# _922, tmp.831
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leaq	0(%rbp,%r8), %rax	#, _52
	addq	%r10, %rsi	# _922, tmp.833
	movss	4(%rsi), %xmm6	# tmp.833_924->i, _58
	movss	(%rax), %xmm5	# _52->r, _53
	movss	(%rsi), %xmm2	# tmp.833_924->r, _54
	movss	4(%rax), %xmm3	# _52->i, _56
	movaps	%xmm5, %xmm1	# _53, tmp1114
	mulss	%xmm6, %xmm5	# _58, tmp1116
	mulss	%xmm2, %xmm1	# _54, tmp1114
	mulss	%xmm3, %xmm2	# _56, tmp1117
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leaq	(%rax,%r8), %rdx	#, _65
	addq	%rsi, %r10	# tmp.833, tmp.834
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movaps	%xmm3, %xmm7	# _56, tmp1115
	movaps	%xmm5, %xmm3	# tmp1116, tmp1116
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	(%r10), %xmm8	# tmp.834_926->r, _67
	movss	(%rdx), %xmm5	# _65->r, _66
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	mulss	%xmm6, %xmm7	# _58, tmp1115
	addss	%xmm2, %xmm3	# tmp1117, tmp1116
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%r10), %xmm6	# tmp.834_926->i, _69
	movss	4(%rdx), %xmm2	# _65->i, _40
	movaps	%xmm5, %xmm0	# _66, _68
	movaps	%xmm2, %xmm9	# _40, _70
	mulss	%xmm6, %xmm5	# _69, tmp1118
	mulss	%xmm8, %xmm2	# _67, tmp1119
	mulss	%xmm6, %xmm9	# _69, _70
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm7, %xmm1	# tmp1115, _60
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	mulss	%xmm8, %xmm0	# _67, _68
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp1122
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm2, %xmm5	# tmp1119, tmp1118
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movsd	.LC1(%rip), %xmm2	#, tmp1124
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm6, %xmm6	# tmp1121
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm5, %xmm8	# tmp1118, _75
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm5	# _60, tmp1120
	subss	%xmm9, %xmm5	# _70, tmp1120
	movaps	%xmm8, %xmm7	# _75, _915
	addss	%xmm3, %xmm7	# _267, _915
	addss	%xmm0, %xmm5	# _68, _705
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	0(%rbp), %xmm6	# tmp.831_921->r, tmp1121
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _68, _60
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm5, %xmm10	# _705, tmp1122
	mulsd	%xmm2, %xmm10	# tmp1124, tmp1123
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm8, %xmm3	# _75, _267
	movss	16(%rsp), %xmm4	# %sfp, epi3$i
	movaps	%xmm1, %xmm0	# _60, tmp1134
	movaps	%xmm3, %xmm1	# _267, tmp1136
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm6	# tmp1123, tmp1125
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp1128
	cvtss2sd	%xmm7, %xmm10	# _915, tmp1128
	mulsd	%xmm2, %xmm10	# tmp1124, tmp1129
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm6, %xmm6	# tmp1125, tmp1126
	movss	%xmm6, (%rax)	# tmp1126, _52->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm6, %xmm6	# tmp1127
	cvtss2sd	4(%rbp), %xmm6	# tmp.831_921->i, tmp1127
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	0(%rbp), %xmm5	# tmp.831_921->r, tmp1137
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm10, %xmm6	# tmp1129, tmp1131
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm1	# epi3$i, _160
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _70, tmp1135
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm6, %xmm6	# tmp1131, tmp1133
	movss	%xmm6, 4(%rax)	# tmp1133, _52->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm5, 0(%rbp)	# tmp1137, tmp.831_921->r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rax), %xmm3	# _52->r, tmp1141
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	4(%rbp), %xmm7	# tmp.831_921->i, tmp1139
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _158
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm3	# _160, tmp1141
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm7, 4(%rbp)	# tmp1139, tmp.831_921->i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm3, (%rdx)	# tmp1141, _65->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rax), %xmm3	# _52->i, _52->i
	subss	%xmm0, %xmm3	# _158, tmp1143
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm3, 4(%rdx)	# tmp1143, _65->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rax), %xmm3	# _52->r, _52->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rax), %xmm0	# _52->i, tmp1147
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm3	# _160, _52->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rax)	# tmp1147, _52->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm3, (%rax)	# tmp1145, _52->r
# kiss_fft.c:133:      }while(--k);
	subq	%rcx, %r9	# niters_vector_mult_vf.830, k
# SUCC: 15 [89.0% (guessed)]  count:49467917 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:6114012 (estimated locally) (CAN_FALLTHRU)
	je	.L157	#,
# BLOCK 15, count:49467920 (estimated locally) seq:13
# PRED: 14 [89.0% (guessed)]  count:49467917 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leaq	-256(%rbp,%r14), %rax	#, _188
	movss	12(%rsi), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.833_924 + 8B].i, _191
	movss	(%rax), %xmm6	# _188->r, _189
	movss	8(%rsi), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.833_924 + 8B].r, _381
	movss	4(%rax), %xmm3	# _188->i, _382
	movaps	%xmm6, %xmm1	# _189, tmp1150
	movaps	%xmm7, %xmm8	# _191, tmp1151
	mulss	%xmm7, %xmm6	# _191, tmp1152
	mulss	%xmm3, %xmm8	# _382, tmp1151
	mulss	%xmm5, %xmm1	# _381, tmp1150
	mulss	%xmm3, %xmm5	# _382, tmp1153
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leaq	(%rax,%r8), %rdx	#, _383
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movaps	%xmm6, %xmm3	# tmp1152, tmp1152
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%rdx), %xmm7	# _383->i, _200
	movss	(%rdx), %xmm6	# _383->r, _196
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm8, %xmm1	# tmp1151, _407
	addss	%xmm5, %xmm3	# tmp1153, tmp1152
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	16(%r10), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.834_926 + 16B].r, _384
	movss	20(%r10), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.834_926 + 16B].i, _202
	movaps	%xmm6, %xmm0	# _196, _198
	movaps	%xmm7, %xmm9	# _200, _203
	mulss	%xmm5, %xmm6	# _202, tmp1155
	mulss	%xmm8, %xmm7	# _384, tmp1154
	mulss	%xmm5, %xmm9	# _202, _203
	mulss	%xmm8, %xmm0	# _384, _198
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp1158
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm3, %xmm8	# _195, _812
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm6, %xmm7	# tmp1155, tmp1154
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# _407, tmp1156
	subss	%xmm9, %xmm6	# _203, tmp1156
	addss	%xmm7, %xmm8	# _206, _812
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm7, %xmm5	# tmp1154, _206
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm0, %xmm6	# _198, _386
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp1157
	cvtss2sd	8(%rbp), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.831_921 + 8B].r, tmp1157
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm10	# _386, tmp1158
	mulsd	%xmm2, %xmm10	# tmp1124, tmp1159
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _198, _407
	subss	%xmm5, %xmm3	# _206, _195
	movaps	%xmm1, %xmm0	# _407, tmp1170
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm7	# tmp1159, tmp1161
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp1164
	cvtss2sd	%xmm8, %xmm10	# _812, tmp1164
	mulsd	%xmm2, %xmm10	# tmp1124, tmp1165
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp1161, tmp1162
	movss	%xmm7, (%rax)	# tmp1162, _188->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp1163
	cvtss2sd	12(%rbp), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.831_921 + 8B].i, tmp1163
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	8(%rbp), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.831_921 + 8B].r, tmp1173
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm3, %xmm1	# _195, tmp1172
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm10, %xmm7	# tmp1165, tmp1167
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm1	# epi3$i, _687
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _203, tmp1171
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm7, %xmm7	# tmp1167, tmp1169
	movss	%xmm7, 4(%rax)	# tmp1169, _188->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, 8(%rbp)	# tmp1173, MEM[(struct kiss_fft_cpx *)tmp.831_921 + 8B].r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rax), %xmm3	# _188->r, tmp1177
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	12(%rbp), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.831_921 + 8B].i, tmp1175
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _689
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm3	# _687, tmp1177
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm8, 12(%rbp)	# tmp1175, MEM[(struct kiss_fft_cpx *)tmp.831_921 + 8B].i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm3, (%rdx)	# tmp1177, _383->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rax), %xmm3	# _188->i, _188->i
	subss	%xmm0, %xmm3	# _689, tmp1179
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm3, 4(%rdx)	# tmp1179, _383->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rax), %xmm3	# _188->r, _188->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rax), %xmm0	# _188->i, tmp1183
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm3	# _687, _188->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rax)	# tmp1183, _188->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm3, (%rax)	# tmp1181, _188->r
# kiss_fft.c:132:          ++Fout;
	leaq	16(%rbp), %rax	#, Fout
# kiss_fft.c:133:      }while(--k);
	cmpq	$1, %r9	#, k
# SUCC: 16 [89.0% (guessed)]  count:44026449 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:5441471 (estimated locally) (CAN_FALLTHRU)
	je	.L157	#,
# BLOCK 16, count:44026448 (estimated locally) seq:14
# PRED: 15 [89.0% (guessed)]  count:44026449 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addq	%r8, %rax	# _80, _406
	movss	16(%rsi), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.833_924 + 16B].r, _404
	movss	20(%rsi), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.833_924 + 16B].i, _1089
	movss	4(%rax), %xmm3	# _406->i, _1088
	movss	(%rax), %xmm6	# _406->r, _405
	movaps	%xmm5, %xmm1	# _404, tmp1186
	mulss	%xmm6, %xmm1	# _405, tmp1186
	movaps	%xmm3, %xmm8	# _1088, tmp1187
	mulss	%xmm7, %xmm6	# _1089, tmp1188
	mulss	%xmm7, %xmm8	# _1089, tmp1187
	mulss	%xmm3, %xmm5	# _1088, tmp1189
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leaq	(%rax,%r8), %rdx	#, _1095
	movss	(%rdx), %xmm7	# _1095->r, _1096
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movaps	%xmm6, %xmm3	# tmp1188, tmp1188
	subss	%xmm8, %xmm1	# tmp1187, _1091
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	32(%r10), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.834_926 + 32B].r, _1097
	movss	36(%r10), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.834_926 + 32B].i, _1100
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm5, %xmm3	# tmp1189, tmp1188
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%rdx), %xmm5	# _1095->i, _1099
	movaps	%xmm7, %xmm0	# _1096, _1098
	mulss	%xmm6, %xmm0	# _1097, _1098
	mulss	%xmm8, %xmm7	# _1100, tmp1190
	mulss	%xmm5, %xmm6	# _1099, tmp1191
	movaps	%xmm5, %xmm9	# _1099, _1101
	mulss	%xmm8, %xmm9	# _1100, _1101
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp1194
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm3, %xmm8	# _1094, _1107
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm6, %xmm7	# tmp1191, tmp1190
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# _1091, tmp1192
	subss	%xmm9, %xmm6	# _1101, tmp1192
	addss	%xmm7, %xmm8	# _1105, _1107
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm7, %xmm5	# tmp1190, _1105
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm0, %xmm6	# _1098, _1106
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp1193
	cvtss2sd	16(%rbp), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.831_921 + 16B].r, tmp1193
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm10	# _1106, tmp1194
	mulsd	%xmm2, %xmm10	# tmp1124, tmp1195
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _1098, _1091
	subss	%xmm5, %xmm3	# _1105, _1094
	movaps	%xmm1, %xmm0	# _1091, tmp1206
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm7	# tmp1195, tmp1197
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp1200
	cvtss2sd	%xmm8, %xmm10	# _1107, tmp1200
	mulsd	%xmm2, %xmm10	# tmp1124, tmp1201
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp1197, tmp1198
	movss	%xmm7, (%rax)	# tmp1198, _406->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp1199
	cvtss2sd	20(%rbp), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.831_921 + 16B].i, tmp1199
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	16(%rbp), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.831_921 + 16B].r, tmp1209
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm3, %xmm1	# _1094, tmp1208
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm10, %xmm7	# tmp1201, tmp1203
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm1	# epi3$i, _1128
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _1101, tmp1207
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm7, %xmm7	# tmp1203, tmp1205
	movss	%xmm7, 4(%rax)	# tmp1205, _406->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, 16(%rbp)	# tmp1209, MEM[(struct kiss_fft_cpx *)tmp.831_921 + 16B].r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rax), %xmm3	# _406->r, tmp1213
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	20(%rbp), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.831_921 + 16B].i, tmp1211
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _1127
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm3	# _1128, tmp1213
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm8, 20(%rbp)	# tmp1211, MEM[(struct kiss_fft_cpx *)tmp.831_921 + 16B].i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm3, (%rdx)	# tmp1213, _1095->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rax), %xmm3	# _406->i, _406->i
	subss	%xmm0, %xmm3	# _1127, tmp1215
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm3, 4(%rdx)	# tmp1215, _1095->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rax), %xmm3	# _406->r, _406->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rax), %xmm0	# _406->i, tmp1219
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm3	# _1128, _406->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rax)	# tmp1219, _406->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm3, (%rax)	# tmp1217, _406->r
# kiss_fft.c:132:          ++Fout;
	leaq	24(%rbp), %rax	#, Fout
# kiss_fft.c:133:      }while(--k);
	cmpq	$2, %r9	#, k
# SUCC: 17 [89.0% (guessed)]  count:39183539 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:4842909 (estimated locally) (CAN_FALLTHRU)
	je	.L157	#,
# BLOCK 17, count:39183537 (estimated locally) seq:15
# PRED: 16 [89.0% (guessed)]  count:39183539 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addq	%r8, %rax	# _80, _850
	movss	28(%rsi), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.833_924 + 24B].i, _855
	movss	4(%rax), %xmm3	# _850->i, _854
	movss	(%rax), %xmm6	# _850->r, _851
	movss	24(%rsi), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.833_924 + 24B].r, _852
	movaps	%xmm6, %xmm1	# _851, tmp1221
	movaps	%xmm3, %xmm8	# _854, tmp1222
	mulss	%xmm7, %xmm6	# _855, tmp1223
	mulss	%xmm7, %xmm8	# _855, tmp1222
	mulss	%xmm5, %xmm1	# _852, tmp1221
	mulss	%xmm3, %xmm5	# _854, tmp1224
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addq	%rax, %r8	# _850, _861
	movss	(%r8), %xmm7	# _861->r, _862
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movaps	%xmm6, %xmm3	# tmp1223, tmp1223
	subss	%xmm8, %xmm1	# tmp1222, _857
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	48(%r10), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.834_926 + 48B].r, _863
	movss	52(%r10), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.834_926 + 48B].i, _866
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm5, %xmm3	# tmp1224, tmp1223
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%r8), %xmm5	# _861->i, _865
	movaps	%xmm7, %xmm0	# _862, _864
	mulss	%xmm6, %xmm0	# _863, _864
	mulss	%xmm8, %xmm7	# _866, tmp1225
	mulss	%xmm5, %xmm6	# _865, tmp1226
	movaps	%xmm5, %xmm9	# _865, _867
	mulss	%xmm8, %xmm9	# _866, _867
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp1229
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm3, %xmm8	# _860, _873
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm6, %xmm7	# tmp1226, tmp1225
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# _857, tmp1227
	subss	%xmm9, %xmm6	# _867, tmp1227
	addss	%xmm7, %xmm8	# _871, _873
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm7, %xmm5	# tmp1225, _871
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm0, %xmm6	# _864, _872
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp1228
	cvtss2sd	24(%rbp), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.831_921 + 24B].r, tmp1228
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm10	# _872, tmp1229
	mulsd	%xmm2, %xmm10	# tmp1124, tmp1230
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _864, _857
	subss	%xmm5, %xmm3	# _871, tmp1243
	movaps	%xmm1, %xmm0	# _857, tmp1241
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm7	# tmp1230, tmp1232
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp1235
	cvtss2sd	%xmm8, %xmm10	# _873, tmp1235
	mulsd	%xmm10, %xmm2	# tmp1235, tmp1236
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _867, tmp1242
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp1232, tmp1233
	movss	%xmm7, (%rax)	# tmp1233, _850->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp1234
	cvtss2sd	28(%rbp), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.831_921 + 24B].i, tmp1234
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	24(%rbp), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.831_921 + 24B].r, tmp1244
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm2, %xmm7	# tmp1236, tmp1234
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _893
	mulss	%xmm3, %xmm4	# tmp1243, _894
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm2, %xmm2	# tmp1240
	cvtsd2ss	%xmm7, %xmm2	# tmp1238, tmp1240
	movss	%xmm2, 4(%rax)	# tmp1240, _850->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, 24(%rbp)	# tmp1244, MEM[(struct kiss_fft_cpx *)tmp.831_921 + 24B].r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rax), %xmm1	# _850->r, tmp1248
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	28(%rbp), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.831_921 + 24B].i, tmp1246
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm4, %xmm1	# _894, tmp1248
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm8, 28(%rbp)	# tmp1246, MEM[(struct kiss_fft_cpx *)tmp.831_921 + 24B].i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm1, (%r8)	# tmp1248, _861->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rax), %xmm1	# _850->i, _850->i
	subss	%xmm0, %xmm1	# _893, tmp1250
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm1, 4(%r8)	# tmp1250, _861->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rax), %xmm1	# _850->r, _850->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rax), %xmm0	# _850->i, tmp1254
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm4, %xmm1	# _894, tmp1252
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rax)	# tmp1254, _850->i
# SUCC: 18 [always]  count:39183537 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm1, (%rax)	# tmp1252, _850->r
# BLOCK 18, count:216074754 (estimated locally) seq:16
# PRED: 29 [11.0% (guessed)]  count:69477412 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 37 [25.0% (guessed)]  count:13895483 (estimated locally) (CAN_FALLTHRU) 38 [11.0% (guessed)]  count:4585509 (estimated locally) (CAN_FALLTHRU) 39 [11.0% (guessed)]  count:4081103 (estimated locally) (CAN_FALLTHRU) 46 [always]  count:13895482 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 40 [always]  count:33019836 (estimated locally) (CAN_FALLTHRU) 20 [11.0% (guessed)]  count:7642515 (estimated locally) (CAN_FALLTHRU) 17 [always]  count:39183537 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 14 [11.0% (guessed)]  count:6114012 (estimated locally) (CAN_FALLTHRU) 15 [11.0% (guessed)]  count:5441471 (estimated locally) (CAN_FALLTHRU) 16 [11.0% (guessed)]  count:4842909 (estimated locally) (CAN_FALLTHRU) 50 [always]  count:13895482 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
.L157:
# kiss_fft.c:302: }
	addq	$120, %rsp	#,
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
# SUCC: EXIT [always]  count:216074754 (estimated locally)
	ret	
# BLOCK 19, count:347387061 (estimated locally) seq:17
# PRED: 7 [37.5% (adjusted)]  count:130270148 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L163:
	.cfi_restore_state
# kiss_fft.c:295:     switch (p) {
	cmpl	$5, %r14d	#, p
# SUCC: 32 [33.3% (adjusted)]  count:115795688 (estimated locally) (CAN_FALLTHRU) 20 [66.7% (adjusted)]  count:231591373 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L166	#,
# BLOCK 20, count:69477412 (estimated locally) seq:18
# PRED: 19 [66.7% (adjusted)]  count:231591373 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movslq	32(%rsp), %rdx	# %sfp,
	movq	%rdx, %rbx	#,
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	salq	$3, %rdx	#, _222
	leaq	264(%r12,%rdx), %rax	#, _223
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movss	4(%rax), %xmm7	# MEM[(struct kiss_fft_cpx *)_223 + 4B], ya$i
	movss	(%rax), %xmm15	# MEM[(struct kiss_fft_cpx *)_223], ya$r
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	addq	%rdx, %rax	# _222, _227
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movss	%xmm7, (%rsp)	# ya$i, %sfp
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	movss	(%rax), %xmm7	# MEM[(struct kiss_fft_cpx *)_227], yb$r
# kiss_fft.c:153:     Fout1=Fout0+m;
	leaq	0(%rbp,%rdx), %rcx	#, Fout1
# kiss_fft.c:154:     Fout2=Fout0+2*m;
	leaq	(%rcx,%rdx), %rsi	#, Fout2
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	movss	%xmm7, 16(%rsp)	# yb$r, %sfp
	movss	4(%rax), %xmm7	# MEM[(struct kiss_fft_cpx *)_227 + 4B], yb$i
# kiss_fft.c:155:     Fout3=Fout0+3*m;
	leaq	(%rsi,%rdx), %rdi	#, Fout3
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	movss	%xmm7, 24(%rsp)	# yb$i, %sfp
# kiss_fft.c:156:     Fout4=Fout0+4*m;
	addq	%rdi, %rdx	# Fout3, Fout4
# kiss_fft.c:159:     for ( u=0; u<m; ++u ) {
	testl	%ebx, %ebx	# m
# SUCC: 21 [89.0% (guessed)]  count:61834897 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:7642515 (estimated locally) (CAN_FALLTHRU)
	jle	.L157	#,
# BLOCK 21, count:61834897 (estimated locally) seq:19
# PRED: 20 [89.0% (guessed)]  count:61834897 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leal	-1(%rbx), %eax	#, tmp1318
	leaq	8(,%rax,8), %r9	#, _1200
	movq	%r12, %r8	# st, ivtmp.1049
# SUCC: 22 [always]  count:61834897 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	xorl	%eax, %eax	# ivtmp.1033
# BLOCK 22, count:562135431 (estimated locally) seq:20
# PRED: 21 [always]  count:61834897 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 22 [89.0% (guessed)]  count:500300534 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L185:
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	movss	(%rcx,%rax), %xmm2	# MEM[base: Fout1_231, index: ivtmp.1033_1190, offset: 0B], _248
	movss	4(%rcx,%rax), %xmm4	# MEM[base: Fout1_231, index: ivtmp.1033_1190, offset: 4B], _256
	movss	264(%r12,%rax), %xmm1	# MEM[base: st_22(D), index: ivtmp.1033_1190, offset: 264B], _254
	movss	268(%r12,%rax), %xmm0	# MEM[base: st_22(D), index: ivtmp.1033_1190, offset: 268B], _257
	movaps	%xmm2, %xmm3	# _248, tmp1320
	movaps	%xmm4, %xmm5	# _256, tmp1321
	mulss	%xmm0, %xmm5	# _257, tmp1321
	mulss	%xmm1, %xmm3	# _254, tmp1320
	mulss	%xmm2, %xmm0	# _248, tmp1322
	mulss	%xmm4, %xmm1	# _256, tmp1323
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movss	4(%rsi,%rax), %xmm6	# MEM[base: Fout2_235, index: ivtmp.1033_1190, offset: 4B], _272
	movss	264(%r12,%rax,2), %xmm4	# MEM[base: st_22(D), index: ivtmp.1033_1190, step: 2, offset: 264B], _270
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	subss	%xmm5, %xmm3	# tmp1321, _259
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movss	(%rsi,%rax), %xmm5	# MEM[base: Fout2_235, index: ivtmp.1033_1190, offset: 0B], _264
	movss	268(%r12,%rax,2), %xmm2	# MEM[base: st_22(D), index: ivtmp.1033_1190, step: 2, offset: 268B], _273
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	addss	%xmm1, %xmm0	# tmp1323, _262
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movaps	%xmm6, %xmm7	# _272, tmp1325
	movaps	%xmm5, %xmm1	# _264, tmp1324
	mulss	%xmm2, %xmm7	# _273, tmp1325
	mulss	%xmm4, %xmm1	# _270, tmp1324
	mulss	%xmm5, %xmm2	# _264, tmp1326
	mulss	%xmm6, %xmm4	# _272, tmp1327
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	(%rdi,%rax), %xmm5	# MEM[base: Fout3_239, index: ivtmp.1033_1190, offset: 0B], _280
	movss	4(%rdi,%rax), %xmm6	# MEM[base: Fout3_239, index: ivtmp.1033_1190, offset: 4B], _288
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	subss	%xmm7, %xmm1	# tmp1325, _275
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	268(%r8), %xmm7	# MEM[base: _1195, offset: 268B], _289
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	addss	%xmm4, %xmm2	# tmp1327, _278
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	264(%r8), %xmm4	# MEM[base: _1195, offset: 264B], _286
	movaps	%xmm5, %xmm10	# _280, _287
	mulss	%xmm7, %xmm5	# _289, tmp1328
	mulss	%xmm4, %xmm10	# _286, _287
	mulss	%xmm6, %xmm4	# _288, tmp1329
	movaps	%xmm6, %xmm13	# _288, _290
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	4(%rdx,%rax), %xmm14	# MEM[base: Fout4_243, index: ivtmp.1033_1190, offset: 4B], _304
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movaps	%xmm5, %xmm6	# tmp1328, tmp1328
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	264(%r12,%rax,4), %xmm5	# MEM[base: st_22(D), index: ivtmp.1033_1190, step: 4, offset: 264B], _302
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	addss	%xmm4, %xmm6	# tmp1329, tmp1328
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	(%rdx,%rax), %xmm4	# MEM[base: Fout4_243, index: ivtmp.1033_1190, offset: 0B], _296
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	mulss	%xmm7, %xmm13	# _289, _290
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movaps	%xmm4, %xmm9	# _296, _303
	movss	268(%r12,%rax,4), %xmm7	# MEM[base: st_22(D), index: ivtmp.1033_1190, step: 4, offset: 268B], _305
	mulss	%xmm5, %xmm9	# _302, _303
	movaps	%xmm14, %xmm8	# _304, _306
	mulss	%xmm7, %xmm8	# _305, _306
	mulss	%xmm4, %xmm7	# _296, tmp1330
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	movaps	%xmm3, %xmm4	# _259, tmp1332
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	subss	%xmm9, %xmm3	# _303, tmp1333
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	mulss	%xmm14, %xmm5	# _304, tmp1331
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	subss	%xmm8, %xmm4	# _306, tmp1332
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	addss	%xmm8, %xmm3	# _306, _313
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	movaps	%xmm1, %xmm8	# _275, tmp1334
# kiss_fft.c:161:         scratch[0] = *Fout0;
	movss	0(%rbp,%rax), %xmm12	# MEM[base: Fout_8(D), index: ivtmp.1033_1190, offset: 0B], scratch$0$r
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	addss	%xmm9, %xmm4	# _303, _311
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	addss	%xmm10, %xmm8	# _287, tmp1334
	movaps	%xmm2, %xmm9	# _278, _316
	addss	%xmm6, %xmm9	# _294, _316
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	subss	%xmm6, %xmm2	# _294, _318
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	movaps	%xmm12, %xmm6	# scratch$0$r, tmp1336
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	subss	%xmm13, %xmm8	# _290, _315
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	addss	%xmm4, %xmm6	# _311, tmp1336
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	addss	%xmm5, %xmm7	# tmp1331, _310
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	movaps	%xmm0, %xmm5	# _262, _312
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	addss	%xmm8, %xmm6	# _315, tmp1337
# kiss_fft.c:161:         scratch[0] = *Fout0;
	movss	4(%rbp,%rax), %xmm11	# MEM[base: Fout_8(D), index: ivtmp.1033_1190, offset: 4B], scratch$0$i
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	addss	%xmm7, %xmm5	# _310, _312
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	movss	%xmm6, 0(%rbp,%rax)	# tmp1337, MEM[base: Fout_8(D), index: ivtmp.1033_1190, offset: 0B]
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	movaps	%xmm11, %xmm6	# scratch$0$i, tmp1338
	addss	%xmm5, %xmm6	# _312, tmp1338
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	subss	%xmm7, %xmm0	# _310, _314
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movaps	%xmm15, %xmm7	# ya$r, tmp1340
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	addss	%xmm9, %xmm6	# _316, tmp1339
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movss	16(%rsp), %xmm14	# %sfp, yb$r
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	mulss	%xmm4, %xmm7	# _311, tmp1340
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	movss	%xmm6, 4(%rbp,%rax)	# tmp1339, MEM[base: Fout_8(D), index: ivtmp.1033_1190, offset: 4B]
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movaps	%xmm14, %xmm6	# yb$r, tmp1342
	mulss	%xmm8, %xmm6	# _315, tmp1342
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	addss	%xmm13, %xmm1	# _290, tmp1335
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	addss	%xmm12, %xmm7	# scratch$0$r, tmp1341
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	mulss	%xmm15, %xmm8	# ya$r, tmp1356
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	subss	%xmm10, %xmm1	# _287, _317
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	addss	%xmm6, %xmm7	# tmp1342, _326
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movaps	%xmm15, %xmm6	# ya$r, tmp1343
	mulss	%xmm5, %xmm6	# _312, tmp1343
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movaps	%xmm14, %xmm10	# yb$r, tmp1345
	mulss	%xmm9, %xmm10	# _316, tmp1345
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movss	(%rsp), %xmm14	# %sfp, ya$i
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	mulss	%xmm15, %xmm9	# ya$r, tmp1359
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	addss	%xmm11, %xmm6	# scratch$0$i, tmp1344
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movaps	%xmm14, %xmm13	# ya$i, tmp1346
	mulss	%xmm0, %xmm13	# _314, tmp1346
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	addss	%xmm10, %xmm6	# tmp1345, _330
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movss	24(%rsp), %xmm10	# %sfp, tmp1347
	addq	$24, %r8	#, ivtmp.1049
	mulss	%xmm2, %xmm10	# _318, tmp1347
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	addss	%xmm13, %xmm10	# tmp1346, _333
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movaps	%xmm14, %xmm13	# ya$i, _334
	mulss	%xmm3, %xmm13	# _313, _334
	movaps	%xmm13, %xmm14	# _334, _334
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movss	24(%rsp), %xmm13	# %sfp, _336
	mulss	%xmm1, %xmm13	# _317, _336
	movss	%xmm13, 32(%rsp)	# _336, %sfp
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movaps	%xmm7, %xmm13	# _326, tmp1348
	subss	%xmm10, %xmm13	# _333, tmp1348
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	addss	%xmm10, %xmm7	# _333, tmp1351
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movss	%xmm13, (%rcx,%rax)	# tmp1348, MEM[base: Fout1_231, index: ivtmp.1033_1190, offset: 0B]
	movss	32(%rsp), %xmm13	# %sfp, tmp1349
	addss	%xmm14, %xmm13	# _334, tmp1349
	addss	%xmm6, %xmm13	# _330, tmp1350
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	subss	32(%rsp), %xmm6	# %sfp, tmp1352
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movss	%xmm13, 4(%rcx,%rax)	# tmp1350, MEM[base: Fout1_231, index: ivtmp.1033_1190, offset: 4B]
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	subss	%xmm14, %xmm6	# _334, tmp1353
	movss	%xmm7, (%rdx,%rax)	# tmp1351, MEM[base: Fout4_243, index: ivtmp.1033_1190, offset: 0B]
	movss	%xmm6, 4(%rdx,%rax)	# tmp1353, MEM[base: Fout4_243, index: ivtmp.1033_1190, offset: 4B]
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	movss	16(%rsp), %xmm6	# %sfp, yb$r
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	mulss	%xmm6, %xmm5	# yb$r, tmp1357
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	mulss	%xmm6, %xmm4	# yb$r, tmp1354
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	addss	%xmm5, %xmm11	# tmp1357, tmp1358
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movss	(%rsp), %xmm5	# %sfp, ya$i
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movss	24(%rsp), %xmm7	# %sfp, yb$i
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	mulss	%xmm5, %xmm2	# ya$i, _350
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	mulss	%xmm7, %xmm0	# yb$i, _351
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	addss	%xmm4, %xmm12	# tmp1354, tmp1355
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	mulss	%xmm7, %xmm3	# yb$i, _353
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	mulss	%xmm5, %xmm1	# ya$i, _354
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movaps	%xmm2, %xmm4	# _350, tmp1360
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	addss	%xmm12, %xmm8	# tmp1355, _345
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	subss	%xmm0, %xmm4	# _351, tmp1360
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	addss	%xmm11, %xmm9	# tmp1358, _349
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	subss	%xmm2, %xmm0	# _350, tmp1364
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	addss	%xmm8, %xmm4	# _345, tmp1361
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	addss	%xmm0, %xmm8	# tmp1364, tmp1365
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	movss	%xmm4, (%rsi,%rax)	# tmp1361, MEM[base: Fout2_235, index: ivtmp.1033_1190, offset: 0B]
	movaps	%xmm9, %xmm4	# _349, tmp1362
	subss	%xmm1, %xmm4	# _354, tmp1362
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	subss	%xmm3, %xmm1	# _353, tmp1366
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	addss	%xmm3, %xmm4	# _353, tmp1363
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	addss	%xmm1, %xmm9	# tmp1366, tmp1367
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	movss	%xmm4, 4(%rsi,%rax)	# tmp1363, MEM[base: Fout2_235, index: ivtmp.1033_1190, offset: 4B]
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	movss	%xmm8, (%rdi,%rax)	# tmp1365, MEM[base: Fout3_239, index: ivtmp.1033_1190, offset: 0B]
	movss	%xmm9, 4(%rdi,%rax)	# tmp1367, MEM[base: Fout3_239, index: ivtmp.1033_1190, offset: 4B]
	addq	$8, %rax	#, ivtmp.1033
# kiss_fft.c:159:     for ( u=0; u<m; ++u ) {
	cmpq	%r9, %rax	# _1200, ivtmp.1033
# SUCC: 22 [89.0% (guessed)]  count:500300534 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 23 [11.0% (guessed)]  count:61834897 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L185	#,
# BLOCK 23, count:61834897 (estimated locally) seq:21
# PRED: 22 [11.0% (guessed)]  count:61834897 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
# kiss_fft.c:302: }
	addq	$120, %rsp	#,
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
# SUCC: EXIT [always]  count:61834897 (estimated locally)
	ret	
# BLOCK 24, count:118111601 (estimated locally) seq:22
# PRED: 2 [34.0% (guessed)]  count:118111601 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L227:
	.cfi_restore_state
# kiss_fft.c:276:     if (m==1) {
	movq	%rbp, %rdx	# Fout, Fout
	cmpl	$1, %eax	#, in_stride
# SUCC: 25 [80.0% (guessed)]  count:94489281 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 41 [20.0% (guessed)]  count:23622320 (estimated locally) (CAN_FALLTHRU)
	jne	.L228	#,
# BLOCK 25, count:858993464 (estimated locally) seq:23
# PRED: 24 [80.0% (guessed)]  count:94489281 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 25 [89.0% (guessed)]  count:764504183 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L159:
# kiss_fft.c:278:             *Fout = *f;
	movq	(%rsi), %rax	# MEM[base: f_818, offset: 0B], MEM[base: f_818, offset: 0B]
# kiss_fft.c:280:         }while(++Fout != Fout_end );
	addq	$8, %rdx	#, Fout
# kiss_fft.c:278:             *Fout = *f;
	movq	%rax, -8(%rdx)	# MEM[base: f_818, offset: 0B], MEM[base: Fout_35, offset: 0B]
# kiss_fft.c:279:             f += fstride*in_stride;
	addq	%rbx, %rsi	# _722, f
# kiss_fft.c:280:         }while(++Fout != Fout_end );
	cmpq	%rdx, %r15	# Fout, Fout_end
# SUCC: 25 [89.0% (guessed)]  count:764504183 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 26 [11.0% (guessed)]  count:94489281 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L159	#,
# BLOCK 26, count:94489281 (estimated locally) seq:24
# PRED: 25 [11.0% (guessed)]  count:94489281 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
# kiss_fft.c:295:     switch (p) {
	cmpl	$4, %r14d	#, p
# SUCC: 7 [80.0% (adjusted)]  count:75591425 (estimated locally) (CAN_FALLTHRU) 27 [20.0% (adjusted)]  count:18897856 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L229	#,
# BLOCK 27, count:69477412 (estimated locally) seq:25
# PRED: 6 [20.0% (adjusted)]  count:50579557 (estimated locally) (CAN_FALLTHRU) 26 [20.0% (adjusted)]  count:18897856 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
.L162:
# kiss_fft.c:298:         case 4: kf_bfly4(Fout,fstride,st,m); break;
	movslq	32(%rsp), %rax	# %sfp, k
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	leaq	264(%r12), %rdx	#, tw1
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movq	%rax, %r8	# k, _159
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	leaq	(%rax,%rax,2), %rcx	#, tmp1293
# kiss_fft.c:77:         if(st->inverse) {
	movl	4(%r12), %r10d	# st_22(D)->inverse, _207
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	leaq	0(,%rax,8), %r9	#, _145
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	salq	$4, %r8	#, _159
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	salq	$3, %rcx	#, tmp1294
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	movq	%rdx, %rdi	# tw1, tw3
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	movq	%rdx, %rsi	# tw1, tw2
# SUCC: 30 [always]  count:69477412 (estimated locally) (CAN_FALLTHRU)
	jmp	.L184	#
# BLOCK 28, count:315806421 (estimated locally) seq:26
# PRED: 30 [50.0% (guessed)]  count:315806422 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L230:
# kiss_fft.c:78:             Fout[m].r = scratch[5].r - scratch[4].i;
	movss	%xmm1, 0(%rbp,%r9)	# _718, MEM[base: Fout_806, index: _145, offset: 0B]
# kiss_fft.c:79:             Fout[m].i = scratch[5].i + scratch[4].r;
	movss	%xmm0, 4(%rbp,%r9)	# _717, MEM[base: Fout_806, index: _145, offset: 4B]
# kiss_fft.c:80:             Fout[m3].r = scratch[5].r + scratch[4].i;
	movss	%xmm2, 0(%rbp,%rcx)	# _720, MEM[base: Fout_806, index: _172, offset: 0B]
# SUCC: 29 [always]  count:315806421 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:81:             Fout[m3].i = scratch[5].i - scratch[4].r;
	movss	%xmm3, 4(%rbp,%rcx)	# _719, MEM[base: Fout_806, index: _172, offset: 4B]
# BLOCK 29, count:631612843 (estimated locally) seq:27
# PRED: 28 [always]  count:315806421 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 31 [always]  count:315806421 (estimated locally) (CAN_FALLTHRU)
.L183:
# kiss_fft.c:88:         ++Fout;
	addq	$8, %rbp	#, Fout
# kiss_fft.c:89:     }while(--k);
	decq	%rax	# k
# SUCC: 30 [89.0% (guessed)]  count:562135431 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:69477412 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	je	.L157	#,
# BLOCK 30, count:631612843 (estimated locally) seq:28
# PRED: 29 [89.0% (guessed)]  count:562135431 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 27 [always]  count:69477412 (estimated locally) (CAN_FALLTHRU)
.L184:
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movss	4(%rdx), %xmm2	# MEM[base: tw1_805, offset: 4B], _779
	movss	(%rdx), %xmm4	# MEM[base: tw1_805, offset: 0B], _798
	movss	0(%rbp,%r9), %xmm8	# MEM[base: Fout_806, index: _145, offset: 0B], _799
	movss	4(%rbp,%r9), %xmm3	# MEM[base: Fout_806, index: _145, offset: 4B], _780
	movaps	%xmm2, %xmm5	# _779, tmp1296
	mulss	%xmm3, %xmm5	# _780, tmp1296
	mulss	%xmm8, %xmm2	# _799, tmp1298
	mulss	%xmm4, %xmm3	# _798, tmp1297
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	4(%rsi), %xmm0	# MEM[base: tw2_804, offset: 4B], _768
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movaps	%xmm4, %xmm1	# _798, tmp1295
	mulss	%xmm8, %xmm1	# _799, tmp1295
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	0(%rbp,%r8), %xmm4	# MEM[base: Fout_806, index: _159, offset: 0B], _772
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	addss	%xmm2, %xmm3	# tmp1298, tmp1297
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	(%rsi), %xmm2	# MEM[base: tw2_804, offset: 0B], _771
	movaps	%xmm0, %xmm9	# _768, _767
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movaps	%xmm3, %xmm8	# tmp1297, _774
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	4(%rbp,%r8), %xmm3	# MEM[base: Fout_806, index: _159, offset: 4B], _769
	mulss	%xmm4, %xmm0	# _772, tmp1300
	mulss	%xmm3, %xmm9	# _769, _767
	mulss	%xmm2, %xmm3	# _771, tmp1299
	movaps	%xmm2, %xmm11	# _771, _770
	mulss	%xmm4, %xmm11	# _772, _770
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	(%rdi), %xmm2	# MEM[base: tw3_803, offset: 0B], _761
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	subss	%xmm5, %xmm1	# tmp1296, _777
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	addss	%xmm0, %xmm3	# tmp1300, tmp1299
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	4(%rbp,%rcx), %xmm5	# MEM[base: Fout_806, index: _172, offset: 4B], _759
	movss	0(%rbp,%rcx), %xmm7	# MEM[base: Fout_806, index: _172, offset: 0B], _762
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movaps	%xmm3, %xmm4	# tmp1299, _764
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	4(%rdi), %xmm3	# MEM[base: tw3_803, offset: 4B], _758
	movaps	%xmm2, %xmm0	# _761, _760
	movaps	%xmm3, %xmm10	# _758, _757
	mulss	%xmm5, %xmm10	# _759, _757
	mulss	%xmm2, %xmm5	# _761, tmp1301
	mulss	%xmm7, %xmm3	# _762, tmp1302
	mulss	%xmm7, %xmm0	# _762, _760
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movss	0(%rbp), %xmm2	# MEM[base: Fout_806, offset: 0B], _752
# kiss_fft.c:72:         tw1 += fstride;
	addq	$8, %rdx	#, tw1
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movaps	%xmm5, %xmm7	# tmp1301, tmp1301
	addss	%xmm3, %xmm7	# tmp1302, tmp1301
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movss	4(%rbp), %xmm3	# MEM[base: Fout_806, offset: 4B], _748
	movaps	%xmm2, %xmm5	# _752, tmp1303
	movaps	%xmm3, %xmm6	# _748, _747
	subss	%xmm4, %xmm6	# _764, _747
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	addss	%xmm4, %xmm3	# _764, _744
	addss	%xmm11, %xmm2	# _770, tmp1304
# kiss_fft.c:69:         C_ADD( scratch[3] , scratch[0] , scratch[2] );
	movaps	%xmm1, %xmm4	# _777, tmp1305
	subss	%xmm10, %xmm4	# _757, tmp1305
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	subss	%xmm9, %xmm2	# _767, _746
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	addss	%xmm9, %xmm5	# _767, tmp1303
# kiss_fft.c:69:         C_ADD( scratch[3] , scratch[0] , scratch[2] );
	movaps	%xmm7, %xmm9	# _753, _741
	addss	%xmm0, %xmm4	# _760, _742
	addss	%xmm8, %xmm9	# _774, _741
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	movss	%xmm2, 0(%rbp)	# _746, MEM[base: Fout_806, offset: 0B]
	movss	%xmm3, 4(%rbp)	# _744, MEM[base: Fout_806, offset: 4B]
# kiss_fft.c:71:         C_SUB( Fout[m2], *Fout, scratch[3] );
	subss	%xmm4, %xmm2	# _742, tmp1307
	subss	%xmm9, %xmm3	# _741, tmp1308
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	subss	%xmm11, %xmm5	# _770, _749
# kiss_fft.c:70:         C_SUB( scratch[4] , scratch[0] , scratch[2] );
	subss	%xmm0, %xmm1	# _760, _777
# kiss_fft.c:71:         C_SUB( Fout[m2], *Fout, scratch[3] );
	movss	%xmm2, 0(%rbp,%r8)	# tmp1307, MEM[base: Fout_806, index: _159, offset: 0B]
	movss	%xmm3, 4(%rbp,%r8)	# tmp1308, MEM[base: Fout_806, index: _159, offset: 4B]
# kiss_fft.c:70:         C_SUB( scratch[4] , scratch[0] , scratch[2] );
	movaps	%xmm1, %xmm0	# _777, tmp1306
	movaps	%xmm5, %xmm2	# _749, tmp1313
	subss	%xmm8, %xmm5	# _774, _749
	addss	%xmm10, %xmm0	# _757, _739
# kiss_fft.c:75:         C_ADDTO( *Fout , scratch[3] );
	addss	0(%rbp), %xmm4	# MEM[base: Fout_806, offset: 0B], tmp1309
	addss	4(%rbp), %xmm9	# MEM[base: Fout_806, offset: 4B], tmp1311
	subss	%xmm7, %xmm2	# _753, tmp1313
	movaps	%xmm6, %xmm3	# _747, _719
	movaps	%xmm5, %xmm1	# _749, tmp1314
	subss	%xmm0, %xmm3	# _739, _719
	addss	%xmm8, %xmm2	# _774, _720
	addss	%xmm7, %xmm1	# _753, _718
	addss	%xmm6, %xmm0	# _747, _717
# kiss_fft.c:73:         tw2 += fstride*2;
	addq	$16, %rsi	#, tw2
# kiss_fft.c:74:         tw3 += fstride*3;
	addq	$24, %rdi	#, tw3
# kiss_fft.c:75:         C_ADDTO( *Fout , scratch[3] );
	movss	%xmm4, 0(%rbp)	# tmp1309, MEM[base: Fout_806, offset: 0B]
	movss	%xmm9, 4(%rbp)	# tmp1311, MEM[base: Fout_806, offset: 4B]
# kiss_fft.c:77:         if(st->inverse) {
	testl	%r10d, %r10d	# _207
# SUCC: 28 [50.0% (guessed)]  count:315806422 (estimated locally) (CAN_FALLTHRU) 31 [50.0% (guessed)]  count:315806422 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L230	#,
# BLOCK 31, count:315806421 (estimated locally) seq:29
# PRED: 30 [50.0% (guessed)]  count:315806422 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:83:             Fout[m].r = scratch[5].r + scratch[4].i;
	movss	%xmm2, 0(%rbp,%r9)	# _720, MEM[base: Fout_806, index: _145, offset: 0B]
# kiss_fft.c:84:             Fout[m].i = scratch[5].i - scratch[4].r;
	movss	%xmm3, 4(%rbp,%r9)	# _719, MEM[base: Fout_806, index: _145, offset: 4B]
# kiss_fft.c:85:             Fout[m3].r = scratch[5].r - scratch[4].i;
	movss	%xmm1, 0(%rbp,%rcx)	# _718, MEM[base: Fout_806, index: _172, offset: 0B]
# kiss_fft.c:86:             Fout[m3].i = scratch[5].i + scratch[4].r;
	movss	%xmm0, 4(%rbp,%rcx)	# _717, MEM[base: Fout_806, index: _172, offset: 4B]
# SUCC: 29 [always]  count:315806421 (estimated locally) (CAN_FALLTHRU)
	jmp	.L183	#
# BLOCK 32, count:69477412 (estimated locally) seq:30
# PRED: 9 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 19 [33.3% (adjusted)]  count:115795688 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L166:
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movl	32(%rsp), %ecx	# %sfp,
# kiss_fft.c:302: }
	addq	$120, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movq	%rbp, %rdi	# Fout,
# kiss_fft.c:302: }
	popq	%rbp	#
	.cfi_def_cfa_offset 40
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movq	%r12, %rdx	# st,
# kiss_fft.c:302: }
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movl	%r14d, %r8d	# p,
# kiss_fft.c:302: }
	popq	%r14	#
	.cfi_def_cfa_offset 16
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movl	$1, %esi	#,
# kiss_fft.c:302: }
	popq	%r15	#
	.cfi_def_cfa_offset 8
# SUCC: EXIT [always]  count:69477412 (estimated locally) (ABNORMAL,SIBCALL)
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	jmp	kf_bfly_generic	#
# BLOCK 33, count:69477412 (estimated locally) seq:31
# PRED: 8 [40.0% (adjusted)]  count:138954824 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L164:
	.cfi_restore_state
# kiss_fft.c:31:     Fout2 = Fout + m;
	movslq	32(%rsp), %rax	# %sfp,
	leaq	296(%r12), %r9	#, _667
	leaq	32(%rbp), %r8	#, _680
	movq	%rax, %rbx	#,
# kiss_fft.c:29:     kiss_fft_cpx * tw1 = st->twiddles;
	leaq	264(%r12), %rsi	#, tw1
# kiss_fft.c:31:     Fout2 = Fout + m;
	salq	$3, %rax	#, _47
	cmpq	%r9, %rbp	# _667, Fout
	setnb	%dl	#, tmp884
	cmpq	%r8, %rsi	# _680, tw1
	setnb	%dil	#, tmp886
	leal	-1(%rbx), %r10d	#,
	orl	%edi, %edx	# tmp886, tmp887
	cmpl	$2, %r10d	#, tmp1369
	seta	%dil	#, tmp890
# kiss_fft.c:31:     Fout2 = Fout + m;
	leaq	0(%rbp,%rax), %rcx	#, Fout2
	addq	$32, %rax	#, tmp892
	andl	%edi, %edx	# tmp890, tmp891
	testq	%rax, %rax	# tmp892
	setle	%dil	#, tmp894
	cmpq	%r8, %rcx	# _680, Fout2
	setnb	%r8b	#, tmp896
	orl	%r8d, %edi	# tmp896, tmp897
	testb	%dil, %dl	# tmp897, tmp891
# SUCC: 44 [10.0% (guessed)]  count:6947741 (estimated locally) (CAN_FALLTHRU) 34 [90.0% (guessed)]  count:62529671 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L170	#,
# BLOCK 34, count:62529671 (estimated locally) seq:32
# PRED: 33 [90.0% (guessed)]  count:62529671 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	addq	%rbp, %rax	# Fout, tmp900
	cmpq	%rax, %rsi	# tmp900, tw1
	setnb	%dl	#, tmp902
	cmpq	%r9, %rcx	# _667, Fout2
	setnb	%al	#, tmp904
	orb	%al, %dl	# tmp904, tmp902
# SUCC: 44 [11.1% (guessed)]  count:6947741 (estimated locally) (CAN_FALLTHRU) 35 [88.9% (guessed)]  count:55581930 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L170	#,
# BLOCK 35, count:55581930 (estimated locally) seq:33
# PRED: 34 [88.9% (guessed)]  count:55581930 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	shrl	$2, %ebx	#, bnd.790
	movl	%ebx, %edi	# bnd.790,
	movq	%rbp, %rdx	# Fout, ivtmp.934
	salq	$5, %rdi	#, _1159
# SUCC: 36 [always]  count:55581930 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	xorl	%eax, %eax	# ivtmp.933
# BLOCK 36, count:333491581 (estimated locally) seq:34
# PRED: 35 [always]  count:55581930 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 36 [83.3% (adjusted)]  count:277909652 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L171:
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movups	(%rcx,%rax), %xmm4	# MEM[base: Fout2_48, index: ivtmp.933_1152, offset: 0B], MEM[base: Fout2_48, index: ivtmp.933_1152, offset: 0B]
	movups	16(%rcx,%rax), %xmm0	# MEM[base: Fout2_48, index: ivtmp.933_1152, offset: 16B], MEM[base: Fout2_48, index: ivtmp.933_1152, offset: 16B]
	movups	264(%r12,%rax), %xmm3	# MEM[base: st_22(D), index: ivtmp.933_1152, offset: 264B], MEM[base: st_22(D), index: ivtmp.933_1152, offset: 264B]
	movaps	%xmm4, %xmm2	# MEM[base: Fout2_48, index: ivtmp.933_1152, offset: 0B], vect_perm_even_564
	shufps	$136, %xmm0, %xmm2	#, MEM[base: Fout2_48, index: ivtmp.933_1152, offset: 16B], vect_perm_even_564
	shufps	$221, %xmm0, %xmm4	#, MEM[base: Fout2_48, index: ivtmp.933_1152, offset: 16B], vect_perm_odd_563
	movups	280(%r12,%rax), %xmm0	# MEM[base: st_22(D), index: ivtmp.933_1152, offset: 280B], MEM[base: st_22(D), index: ivtmp.933_1152, offset: 280B]
	movaps	%xmm3, %xmm1	# MEM[base: st_22(D), index: ivtmp.933_1152, offset: 264B], vect_perm_even_556
	shufps	$136, %xmm0, %xmm1	#, MEM[base: st_22(D), index: ivtmp.933_1152, offset: 280B], vect_perm_even_556
	shufps	$221, %xmm0, %xmm3	#, MEM[base: st_22(D), index: ivtmp.933_1152, offset: 280B], vect_perm_odd_555
	movaps	%xmm1, %xmm6	# vect_perm_even_556, vect__53.804
	movaps	%xmm3, %xmm5	# vect_perm_odd_555, vect__56.805
	mulps	%xmm4, %xmm1	# vect_perm_odd_563, vect__59.807
	mulps	%xmm2, %xmm3	# vect_perm_even_564, vect__58.806
	mulps	%xmm4, %xmm5	# vect_perm_odd_563, vect__56.805
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movups	16(%rdx), %xmm0	# MEM[base: _49, offset: 16B], MEM[base: _49, offset: 16B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	mulps	%xmm2, %xmm6	# vect_perm_even_564, vect__53.804
	addq	$32, %rdx	#, ivtmp.934
	addps	%xmm3, %xmm1	# vect__58.806, vect__59.807
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movups	-32(%rdx), %xmm3	# MEM[base: _49, offset: 0B], MEM[base: _49, offset: 0B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movaps	%xmm1, %xmm2	# vect__59.807, vect__60.808
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movaps	%xmm3, %xmm1	# MEM[base: _49, offset: 0B], tmp916
	shufps	$136, %xmm0, %xmm1	#, MEM[base: _49, offset: 16B], tmp916
	addps	%xmm5, %xmm1	# vect__56.805, vect__267.813
	shufps	$221, %xmm0, %xmm3	#, MEM[base: _49, offset: 16B], tmp918
	subps	%xmm2, %xmm3	# vect__60.808, vect__67.815
	subps	%xmm6, %xmm1	# vect__53.804, vect__65.814
	movaps	%xmm1, %xmm0	# vect__65.814, tmp919
	unpcklps	%xmm3, %xmm0	# vect__67.815, tmp919
	unpckhps	%xmm3, %xmm1	# vect__67.815, tmp920
	movups	%xmm0, (%rcx,%rax)	# tmp919, MEM[base: Fout2_48, index: ivtmp.933_1152, offset: 0B]
	movups	%xmm1, 16(%rcx,%rax)	# tmp920, MEM[base: Fout2_48, index: ivtmp.933_1152, offset: 16B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	movups	-32(%rdx), %xmm1	# MEM[base: _49, offset: 0B], MEM[base: _49, offset: 0B]
	movups	-16(%rdx), %xmm3	# MEM[base: _49, offset: 16B], MEM[base: _49, offset: 16B]
	movaps	%xmm1, %xmm0	# MEM[base: _49, offset: 0B], tmp923
	shufps	$136, %xmm3, %xmm0	#, MEM[base: _49, offset: 16B], tmp923
	addps	%xmm6, %xmm0	# vect__53.804, vect__40.822
	shufps	$221, %xmm3, %xmm1	#, MEM[base: _49, offset: 16B], tmp925
	addps	%xmm2, %xmm1	# vect__60.808, vect__71.824
	subps	%xmm5, %xmm0	# vect__56.805, vect__69.823
	addq	$32, %rax	#, ivtmp.933
	movaps	%xmm0, %xmm2	# vect__69.823, tmp926
	unpcklps	%xmm1, %xmm2	# vect__71.824, tmp926
	unpckhps	%xmm1, %xmm0	# vect__71.824, tmp927
	movups	%xmm2, -32(%rdx)	# tmp926, MEM[base: _49, offset: 0B]
	movups	%xmm0, -16(%rdx)	# tmp927, MEM[base: _49, offset: 16B]
	cmpq	%rdi, %rax	# _1159, ivtmp.933
# SUCC: 36 [83.3% (adjusted)]  count:277909652 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 37 [16.7% (adjusted)]  count:55581929 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L171	#,
# BLOCK 37, count:55581930 (estimated locally) seq:35
# PRED: 36 [16.7% (adjusted)]  count:55581929 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movl	32(%rsp), %ebx	# %sfp, m
	movl	%ebx, %edx	# m, niters_vector_mult_vf.791
	andl	$-4, %edx	#, niters_vector_mult_vf.791
	movl	%edx, %eax	# niters_vector_mult_vf.791, niters_vector_mult_vf.791
	salq	$3, %rax	#, _582
	movl	%ebx, %edi	# m, tmp.793
	addq	%rax, %rbp	# _582, tmp.792
	subl	%edx, %edi	# niters_vector_mult_vf.791, tmp.793
	addq	%rax, %rcx	# _582, tmp.794
	addq	%rax, %rsi	# _582, tmp.795
	cmpl	%ebx, %edx	# m, niters_vector_mult_vf.791
# SUCC: 38 [75.0% (guessed)]  count:41686448 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [25.0% (guessed)]  count:13895483 (estimated locally) (CAN_FALLTHRU)
	je	.L157	#,
# BLOCK 38, count:41686448 (estimated locally) seq:36
# PRED: 37 [75.0% (guessed)]  count:41686448 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	(%rsi), %xmm3	# tmp.795_576->r, _83
	movss	4(%rsi), %xmm5	# tmp.795_576->i, _87
	movss	(%rcx), %xmm1	# tmp.794_579->r, _82
	movss	4(%rcx), %xmm0	# tmp.794_579->i, _86
	movaps	%xmm1, %xmm2	# _82, _85
	movaps	%xmm0, %xmm4	# _86, _88
	mulss	%xmm5, %xmm1	# _87, tmp929
	mulss	%xmm3, %xmm0	# _83, tmp930
	mulss	%xmm5, %xmm4	# _87, _88
	mulss	%xmm3, %xmm2	# _83, _85
	addss	%xmm1, %xmm0	# tmp929, _91
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	0(%rbp), %xmm1	# tmp.792_584->r, tmp931
	addss	%xmm4, %xmm1	# _88, tmp931
	subss	%xmm2, %xmm1	# _85, tmp932
	movss	%xmm1, (%rcx)	# tmp932, tmp.794_579->r
	movss	4(%rbp), %xmm1	# tmp.792_584->i, tmp.792_584->i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	0(%rbp), %xmm2	# tmp.792_584->r, tmp935
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm1	# _91, tmp933
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm4, %xmm2	# _88, tmp936
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm1, 4(%rcx)	# tmp933, tmp.794_579->i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	4(%rbp), %xmm0	# tmp.792_584->i, tmp937
	movss	%xmm2, 0(%rbp)	# tmp936, tmp.792_584->r
	movss	%xmm0, 4(%rbp)	# tmp937, tmp.792_584->i
# kiss_fft.c:41:     }while (--m);
	cmpl	$1, %edi	#, tmp.793
# SUCC: 39 [89.0% (guessed)]  count:37100939 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:4585509 (estimated locally) (CAN_FALLTHRU)
	je	.L157	#,
# BLOCK 39, count:37100940 (estimated locally) seq:37
# PRED: 38 [89.0% (guessed)]  count:37100939 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	8(%rsi), %xmm3	# MEM[(struct kiss_fft_cpx *)tmp.795_576 + 8B].r, _117
	movss	12(%rsi), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.795_576 + 8B].i, _120
	movss	8(%rcx), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.794_579 + 8B].r, _116
	movss	12(%rcx), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.794_579 + 8B].i, _119
	movaps	%xmm1, %xmm2	# _116, _118
	movaps	%xmm0, %xmm4	# _119, _121
	mulss	%xmm5, %xmm1	# _120, tmp940
	mulss	%xmm3, %xmm0	# _117, tmp941
	mulss	%xmm5, %xmm4	# _120, _121
	mulss	%xmm3, %xmm2	# _117, _118
	addss	%xmm1, %xmm0	# tmp940, _124
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	8(%rbp), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.792_584 + 8B].r, tmp942
	addss	%xmm4, %xmm1	# _121, tmp942
	subss	%xmm2, %xmm1	# _118, tmp943
	movss	%xmm1, 8(%rcx)	# tmp943, MEM[(struct kiss_fft_cpx *)tmp.794_579 + 8B].r
	movss	12(%rbp), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.792_584 + 8B].i, MEM[(struct kiss_fft_cpx *)tmp.792_584 + 8B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	8(%rbp), %xmm2	# MEM[(struct kiss_fft_cpx *)tmp.792_584 + 8B].r, tmp946
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm1	# _124, tmp944
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm4, %xmm2	# _121, tmp947
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm1, 12(%rcx)	# tmp944, MEM[(struct kiss_fft_cpx *)tmp.794_579 + 8B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	12(%rbp), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.792_584 + 8B].i, tmp948
	movss	%xmm2, 8(%rbp)	# tmp947, MEM[(struct kiss_fft_cpx *)tmp.792_584 + 8B].r
	movss	%xmm0, 12(%rbp)	# tmp948, MEM[(struct kiss_fft_cpx *)tmp.792_584 + 8B].i
# kiss_fft.c:41:     }while (--m);
	cmpl	$2, %edi	#, tmp.793
# SUCC: 40 [89.0% (guessed)]  count:33019837 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:4081103 (estimated locally) (CAN_FALLTHRU)
	je	.L157	#,
# BLOCK 40, count:33019836 (estimated locally) seq:38
# PRED: 39 [89.0% (guessed)]  count:33019837 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	16(%rsi), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.795_576 + 16B].r, _613
	movss	20(%rsi), %xmm3	# MEM[(struct kiss_fft_cpx *)tmp.795_576 + 16B].i, _610
	movss	16(%rcx), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.794_579 + 16B].r, _614
	movss	20(%rcx), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.794_579 + 16B].i, _611
	movaps	%xmm5, %xmm2	# _613, _612
	movaps	%xmm3, %xmm4	# _610, _609
	mulss	%xmm0, %xmm2	# _614, _612
	mulss	%xmm1, %xmm4	# _611, _609
	mulss	%xmm3, %xmm0	# _610, tmp951
	mulss	%xmm5, %xmm1	# _613, tmp950
	addss	%xmm1, %xmm0	# tmp950, _606
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	16(%rbp), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.792_584 + 16B].r, tmp952
	addss	%xmm4, %xmm1	# _609, tmp952
	subss	%xmm2, %xmm1	# _612, tmp953
	movss	%xmm1, 16(%rcx)	# tmp953, MEM[(struct kiss_fft_cpx *)tmp.794_579 + 16B].r
	movss	20(%rbp), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.792_584 + 16B].i, MEM[(struct kiss_fft_cpx *)tmp.792_584 + 16B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	16(%rbp), %xmm2	# MEM[(struct kiss_fft_cpx *)tmp.792_584 + 16B].r, tmp956
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm1	# _606, tmp954
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm4, %xmm2	# _609, tmp957
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm1, 20(%rcx)	# tmp954, MEM[(struct kiss_fft_cpx *)tmp.794_579 + 16B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	20(%rbp), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.792_584 + 16B].i, tmp958
	movss	%xmm2, 16(%rbp)	# tmp957, MEM[(struct kiss_fft_cpx *)tmp.792_584 + 16B].r
	movss	%xmm0, 20(%rbp)	# tmp958, MEM[(struct kiss_fft_cpx *)tmp.792_584 + 16B].i
# SUCC: 18 [always]  count:33019836 (estimated locally) (CAN_FALLTHRU)
	jmp	.L157	#
# BLOCK 41, count:23622320 (estimated locally) seq:39
# PRED: 24 [20.0% (guessed)]  count:23622320 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L228:
# SUCC: 42 [always]  count:23622320 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:276:     if (m==1) {
	movq	%rbp, %rax	# Fout, Fout
# BLOCK 42, count:214748360 (estimated locally) seq:40
# PRED: 41 [always]  count:23622320 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 42 [89.0% (guessed)]  count:191126041 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L160:
# kiss_fft.c:278:             *Fout = *f;
	movq	(%rsi), %rdx	# MEM[base: f_10, offset: 0B], MEM[base: f_10, offset: 0B]
# kiss_fft.c:280:         }while(++Fout != Fout_end );
	addq	$8, %rax	#, Fout
# kiss_fft.c:278:             *Fout = *f;
	movq	%rdx, -8(%rax)	# MEM[base: f_10, offset: 0B], MEM[base: Fout_11, offset: 0B]
# kiss_fft.c:279:             f += fstride*in_stride;
	addq	%rbx, %rsi	# _722, f
# kiss_fft.c:280:         }while(++Fout != Fout_end );
	cmpq	%rax, %r15	# Fout, Fout_end
# SUCC: 42 [89.0% (guessed)]  count:191126041 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 43 [11.0% (guessed)]  count:23622319 (estimated locally) (FALLTHRU)
	jne	.L160	#,
# BLOCK 43, count:23622319 (estimated locally) seq:41
# PRED: 42 [11.0% (guessed)]  count:23622319 (estimated locally) (FALLTHRU)
# SUCC: 6 [always]  count:23622319 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L169	#
# BLOCK 44, count:13895482 (estimated locally) seq:42
# PRED: 34 [11.1% (guessed)]  count:6947741 (estimated locally) (CAN_FALLTHRU) 33 [10.0% (guessed)]  count:6947741 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L170:
# SUCC: 45 [always]  count:13895482 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	272(%r12,%r10,8), %rax	#, _1153
# BLOCK 45, count:126322566 (estimated locally) seq:43
# PRED: 44 [always]  count:13895482 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 45 [89.0% (guessed)]  count:112427084 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L173:
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	(%rsi), %xmm5	# MEM[base: tw1_650, offset: 0B], _647
	movss	4(%rsi), %xmm3	# MEM[base: tw1_650, offset: 4B], _644
	movss	(%rcx), %xmm0	# MEM[base: Fout2_651, offset: 0B], _648
	movss	4(%rcx), %xmm1	# MEM[base: Fout2_651, offset: 4B], _645
	movaps	%xmm5, %xmm2	# _647, _646
	movaps	%xmm3, %xmm4	# _644, _643
	mulss	%xmm0, %xmm2	# _648, _646
	mulss	%xmm1, %xmm4	# _645, _643
	mulss	%xmm3, %xmm0	# _644, tmp965
	mulss	%xmm5, %xmm1	# _647, tmp964
# kiss_fft.c:36:         tw1 += fstride;
	addq	$8, %rsi	#, tw1
# kiss_fft.c:39:         ++Fout2;
	addq	$8, %rcx	#, Fout2
# kiss_fft.c:40:         ++Fout;
	addq	$8, %rbp	#, Fout
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	addss	%xmm1, %xmm0	# tmp964, _640
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	-8(%rbp), %xmm1	# MEM[base: Fout_653, offset: 0B], tmp966
	addss	%xmm4, %xmm1	# _643, tmp966
	subss	%xmm2, %xmm1	# _646, tmp967
	movss	%xmm1, -8(%rcx)	# tmp967, MEM[base: Fout2_651, offset: 0B]
	movss	-4(%rbp), %xmm1	# MEM[base: Fout_653, offset: 4B], MEM[base: Fout_653, offset: 4B]
	subss	%xmm0, %xmm1	# _640, tmp968
	movss	%xmm1, -4(%rcx)	# tmp968, MEM[base: Fout2_651, offset: 4B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	-8(%rbp), %xmm2	# MEM[base: Fout_653, offset: 0B], tmp970
	addss	-4(%rbp), %xmm0	# MEM[base: Fout_653, offset: 4B], tmp972
	subss	%xmm4, %xmm2	# _643, tmp971
	movss	%xmm0, -4(%rbp)	# tmp972, MEM[base: Fout_653, offset: 4B]
	movss	%xmm2, -8(%rbp)	# tmp971, MEM[base: Fout_653, offset: 0B]
# kiss_fft.c:41:     }while (--m);
	cmpq	%rax, %rsi	# _1153, tw1
# SUCC: 45 [89.0% (guessed)]  count:112427084 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 46 [11.0% (guessed)]  count:13895482 (estimated locally) (FALLTHRU)
	jne	.L173	#,
# BLOCK 46, count:13895482 (estimated locally) seq:44
# PRED: 45 [11.0% (guessed)]  count:13895482 (estimated locally) (FALLTHRU)
# SUCC: 18 [always]  count:13895482 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L157	#
# BLOCK 47, count:13895482 (estimated locally) seq:45
# PRED: 11 [11.1% (guessed)]  count:6947741 (estimated locally) (CAN_FALLTHRU) 10 [10.0% (guessed)]  count:6947741 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L176:
	movsd	.LC1(%rip), %xmm6	#, tmp1371
# kiss_fft.c:106:      tw1=tw2=st->twiddles;
	movq	%rsi, %rax	# tw1, tw2
# SUCC: 49 [always]  count:13895482 (estimated locally) (CAN_FALLTHRU)
	jmp	.L181	#
# BLOCK 48, count:112427084 (estimated locally) seq:46
# PRED: 49 [89.0% (guessed)]  count:112427084 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L231:
# SUCC: 49 [always]  count:112427084 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
	decq	%r9	# k
# BLOCK 49, count:126322566 (estimated locally) seq:47
# PRED: 48 [always]  count:112427084 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 47 [always]  count:13895482 (estimated locally) (CAN_FALLTHRU)
.L181:
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movss	(%rsi), %xmm1	# MEM[base: tw1_251, offset: 0B], _199
	movss	4(%rsi), %xmm3	# MEM[base: tw1_251, offset: 4B], _168
	movss	(%rdx), %xmm2	# MEM[base: _1167, offset: 0B], _201
	movss	4(%rdx), %xmm5	# MEM[base: _1167, offset: 4B], _181
	movaps	%xmm1, %xmm0	# _199, tmp1256
	movaps	%xmm3, %xmm7	# _168, tmp1257
	mulss	%xmm5, %xmm7	# _181, tmp1257
	mulss	%xmm2, %xmm0	# _201, tmp1256
	mulss	%xmm2, %xmm3	# _201, tmp1259
	mulss	%xmm1, %xmm5	# _199, tmp1258
# kiss_fft.c:116:          tw1 += fstride;
	addq	$8, %rsi	#, tw1
# kiss_fft.c:117:          tw2 += fstride*2;
	addq	$16, %rax	#, tw2
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm7, %xmm0	# tmp1257, tmp1256
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	0(%rbp,%rdi), %xmm7	# MEM[base: Fout_279, index: _94, offset: 0B], _797
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm3, %xmm5	# tmp1259, tmp1258
	movaps	%xmm0, %xmm9	# tmp1256, _103
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%rbp,%rdi), %xmm3	# MEM[base: Fout_279, index: _94, offset: 4B], _795
	movss	-16(%rax), %xmm0	# MEM[base: tw2_247, offset: 0B], _793
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movaps	%xmm5, %xmm2	# tmp1258, _24
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	-12(%rax), %xmm5	# MEM[base: tw2_247, offset: 4B], _796
	movaps	%xmm0, %xmm10	# _793, _794
	movaps	%xmm3, %xmm1	# _795, _789
	mulss	%xmm5, %xmm1	# _796, _789
	mulss	%xmm7, %xmm10	# _797, _794
	mulss	%xmm7, %xmm5	# _797, tmp1260
	mulss	%xmm3, %xmm0	# _795, tmp1261
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm2, %xmm8	# _24, _787
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp1263
	cvtss2sd	0(%rbp), %xmm7	# MEM[base: Fout_279, offset: 0B], tmp1263
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm5, %xmm3	# tmp1260, tmp1260
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm10, %xmm5	# _794, tmp1262
	subss	%xmm1, %xmm5	# _789, tmp1262
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm0, %xmm3	# tmp1261, tmp1260
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm0, %xmm0	# tmp1264
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm9, %xmm5	# _103, _786
	addss	%xmm3, %xmm8	# _785, _787
# kiss_fft.c:132:          ++Fout;
	addq	$8, %rbp	#, Fout
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm5, %xmm0	# _786, tmp1264
	mulsd	%xmm6, %xmm0	# tmp1371, tmp1265
	addq	$8, %rdx	#, ivtmp.960
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm0, %xmm7	# tmp1265, tmp1267
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm0, %xmm0	# tmp1270
	cvtss2sd	%xmm8, %xmm0	# _787, tmp1270
	mulsd	%xmm6, %xmm0	# tmp1371, tmp1271
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp1267, tmp1268
	movss	%xmm7, -8(%rdx)	# tmp1268, MEM[base: _1167, offset: 0B]
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp1269
	cvtss2sd	-4(%rbp), %xmm7	# MEM[base: Fout_279, offset: 4B], tmp1269
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm0, %xmm7	# tmp1271, tmp1273
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm0	# _789, _789
	movaps	%xmm2, %xmm1	# _24, _24
	subss	%xmm3, %xmm1	# _785, _24
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm7, %xmm7	# tmp1273, tmp1275
	movss	%xmm7, -4(%rdx)	# tmp1275, MEM[base: _1167, offset: 4B]
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	-8(%rbp), %xmm5	# MEM[base: Fout_279, offset: 0B], tmp1279
	addss	-4(%rbp), %xmm8	# MEM[base: Fout_279, offset: 4B], tmp1281
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm1	# epi3$i, _822
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm10, %xmm0	# _794, _789
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm5, -8(%rbp)	# tmp1279, MEM[base: Fout_279, offset: 0B]
	movss	%xmm8, -4(%rbp)	# tmp1281, MEM[base: Fout_279, offset: 4B]
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	-8(%rdx), %xmm2	# MEM[base: _1167, offset: 0B], tmp1283
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _103, tmp1277
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm2	# _822, tmp1283
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _821
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm2, -8(%rbp,%rdi)	# tmp1283, MEM[base: Fout_279, index: _94, offset: 0B]
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	-4(%rdx), %xmm2	# MEM[base: _1167, offset: 4B], MEM[base: _1167, offset: 4B]
	subss	%xmm0, %xmm2	# _821, tmp1285
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm2, -4(%rbp,%rdi)	# tmp1285, MEM[base: Fout_279, index: _94, offset: 4B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	-8(%rdx), %xmm2	# MEM[base: _1167, offset: 0B], MEM[base: _1167, offset: 0B]
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	-4(%rdx), %xmm0	# MEM[base: _1167, offset: 4B], tmp1289
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm2	# _822, MEM[base: _1167, offset: 0B]
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, -4(%rdx)	# tmp1289, MEM[base: _1167, offset: 4B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm2, -8(%rdx)	# tmp1287, MEM[base: _1167, offset: 0B]
# kiss_fft.c:133:      }while(--k);
	testq	%r9, %r9	# k
# SUCC: 48 [89.0% (guessed)]  count:112427084 (estimated locally) (CAN_FALLTHRU) 50 [11.0% (guessed)]  count:13895482 (estimated locally) (FALLTHRU)
	jne	.L231	#,
# BLOCK 50, count:13895482 (estimated locally) seq:48
# PRED: 49 [11.0% (guessed)]  count:13895482 (estimated locally) (FALLTHRU)
# SUCC: 18 [always]  count:13895482 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L157	#
	.cfi_endproc
.LFE63:
	.size	kf_work.constprop.0, .-kf_work.constprop.0
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
	leal	-1(%rdi), %r15d	#, tmp307
	movslq	%r15d, %rax	# tmp307, tmp175
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
	movl	%edi, %ebx	# tmp332, nfft
# kiss_fft.c:342:     size_t memneeded = sizeof(struct kiss_fft_state)
	leaq	272(,%rax,8), %rdi	#, memneeded
# kiss_fft.c:340: {
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# kiss_fft.c:345:     if ( lenmem==NULL ) {
	testq	%rcx, %rcx	# lenmem
# SUCC: 63 [17.4% (guessed)]  count:43686801 (estimated locally) (CAN_FALLTHRU) 3 [82.6% (guessed)]  count:206954629 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L301	#,
# BLOCK 3, count:206954630 (estimated locally) seq:1
# PRED: 2 [82.6% (guessed)]  count:206954629 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%rdx, %r12	# tmp334, mem
# kiss_fft.c:348:         if (mem != NULL && *lenmem >= memneeded)
	testq	%rdx, %rdx	# mem
# SUCC: 4 [85.1% (guessed)]  count:176118391 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 67 [14.9% (guessed)]  count:30836239 (estimated locally) (CAN_FALLTHRU)
	je	.L302	#,
# BLOCK 4, count:176118389 (estimated locally) seq:2
# PRED: 3 [85.1% (guessed)]  count:176118391 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:348:         if (mem != NULL && *lenmem >= memneeded)
	cmpq	%rdi, (%rcx)	# memneeded, *lenmem_25(D)
# kiss_fft.c:350:         *lenmem = memneeded;
	movq	%rdi, (%rcx)	# memneeded, *lenmem_25(D)
# SUCC: 5 [71.0% (guessed)]  count:125044056 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 30 [29.0% (guessed)]  count:51074333 (estimated locally) (CAN_FALLTHRU)
# kiss_fft.c:348:         if (mem != NULL && *lenmem >= memneeded)
	jb	.L303	#,
# BLOCK 5, count:118111601 (estimated locally) seq:3
# PRED: 4 [71.0% (guessed)]  count:125044056 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 64 [always]  count:0 (estimated locally) (CAN_FALLTHRU)
.L234:
	pxor	%xmm5, %xmm5	# _107
	cvtsi2sdl	%ebx, %xmm5	# nfft, _107
# kiss_fft.c:354:         st->nfft=nfft;
	movl	%ebx, (%r12)	# nfft, st_105->nfft
# kiss_fft.c:355:         st->inverse = inverse_fft;
	movl	%esi, 4(%r12)	# inverse_fft, st_105->inverse
	movsd	%xmm5, 8(%rsp)	# _107, %sfp
# kiss_fft.c:357:         for (i=0;i<nfft;++i) {
	testl	%ebx, %ebx	# nfft
# SUCC: 6 [89.0% (guessed)]  count:105119325 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 8 [11.0% (guessed)]  count:12992276 (estimated locally) (CAN_FALLTHRU)
	jle	.L271	#,
# BLOCK 6, count:105119325 (estimated locally) seq:4
# PRED: 5 [89.0% (guessed)]  count:105119325 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movsd	.LC7(%rip), %xmm0	#, tmp265
	movsd	.LC8(%rip), %xmm1	#, tmp304
	divsd	8(%rsp), %xmm0	# %sfp, reciptmp_104
# kiss_fft.c:359:             double phase = -2*pi*i / nfft;
	mulsd	%xmm1, %xmm0	# tmp304, reciptmp_104
	movl	%r15d, %r15d	# tmp307, _65
# kiss_fft.c:357:         for (i=0;i<nfft;++i) {
	xorl	%ebp, %ebp	# ivtmp.1094
	leaq	24(%rsp), %r14	#, tmp306
	leaq	16(%rsp), %r13	#, tmp303
# kiss_fft.c:359:             double phase = -2*pi*i / nfft;
	movsd	%xmm0, (%rsp)	# reciptmp_104, %sfp
	testl	%esi, %esi	# inverse_fft
# SUCC: 7 [50.0% (guessed)]  count:52559663 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 21 [50.0% (guessed)]  count:52559663 (estimated locally) (CAN_FALLTHRU)
	jne	.L272	#,
# BLOCK 7, count:477815114 (estimated locally) seq:5
# PRED: 6 [50.0% (guessed)]  count:52559663 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 7 [89.0% (guessed)]  count:425255452 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L270:
# kiss_fft.c:359:             double phase = -2*pi*i / nfft;
	pxor	%xmm0, %xmm0	# tmp269
	cvtsi2sdl	%ebp, %xmm0	# ivtmp.1094, tmp269
	movq	%r13, %rsi	# tmp303,
	movq	%r14, %rdi	# tmp306,
# kiss_fft.c:359:             double phase = -2*pi*i / nfft;
	mulsd	(%rsp), %xmm0	# %sfp, phase
	call	sincos@PLT	#
	movsd	24(%rsp), %xmm0	#, sincostmp_263
# kiss_fft.c:362:             kf_cexp(st->twiddles+i, phase );
	pxor	%xmm1, %xmm1	# tmp276
	movq	%rbp, %rax	# ivtmp.1094, ivtmp.1094
	cvtsd2ss	16(%rsp), %xmm1	#, tmp276
	cvtsd2ss	%xmm0, %xmm0	# sincostmp_263, tmp280
	movss	%xmm1, 264(%r12,%rbp,8)	# tmp276, MEM[base: st_105, index: ivtmp.1094_189, step: 8, offset: 264B]
	movss	%xmm0, 268(%r12,%rbp,8)	# tmp280, MEM[base: st_105, index: ivtmp.1094_189, step: 8, offset: 268B]
	incq	%rbp	# ivtmp.1094
# kiss_fft.c:357:         for (i=0;i<nfft;++i) {
	cmpq	%rax, %r15	# ivtmp.1094, _65
# SUCC: 7 [89.0% (guessed)]  count:425255452 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 8 [11.0% (guessed)]  count:52559662 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L270	#,
# BLOCK 8, count:118111601 (estimated locally) seq:6
# PRED: 7 [11.0% (guessed)]  count:52559662 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT) 5 [11.0% (guessed)]  count:12992276 (estimated locally) (CAN_FALLTHRU) 22 [always]  count:52559662 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
.L271:
# kiss_fft.c:313:     floor_sqrt = floor( sqrt((double)n) );
	movsd	8(%rsp), %xmm0	# %sfp, _107
	movsd	.LC4(%rip), %xmm1	#, tmp182
	sqrtsd	%xmm0, %xmm0	# _107, _107
	movsd	.LC3(%rip), %xmm2	#, tmp178
# kiss_fft.c:365:         kf_factor(nfft,st->factors);
	leaq	8(%r12), %rcx	#, facbuf
# kiss_fft.c:313:     floor_sqrt = floor( sqrt((double)n) );
	andpd	%xmm0, %xmm1	# _44, tmp180
	comisd	%xmm1, %xmm2	# tmp180, tmp178
# SUCC: 10 [50.0% (guessed)]  count:59055801 (estimated locally) (CAN_FALLTHRU) 9 [50.0% (guessed)]  count:59055801 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jbe	.L239	#,
# BLOCK 9, count:59055801 (estimated locally) seq:7
# PRED: 8 [50.0% (guessed)]  count:59055801 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cvttsd2siq	%xmm0, %rax	# _44, tmp183
	pxor	%xmm0, %xmm0	# _44
# SUCC: 10 [always]  count:59055801 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cvtsi2sdq	%rax, %xmm0	# tmp183, _44
# BLOCK 10, count:118111602 (estimated locally) seq:8
# PRED: 8 [50.0% (guessed)]  count:59055801 (estimated locally) (CAN_FALLTHRU) 9 [always]  count:59055801 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
.L239:
	movsd	.LC5(%rip), %xmm1	#, tmp184
	leaq	16(%r12), %rdi	#, prephitmp_208
	comisd	%xmm0, %xmm1	# _44, tmp184
# kiss_fft.c:311:     int p=4;
	movl	$4, %esi	#, p
	movsd	.LC6(%rip), %xmm1	#, tmp185
# SUCC: 11 [50.0% (guessed)]  count:59055801 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 34 [50.0% (guessed)]  count:59055801 (estimated locally) (CAN_FALLTHRU)
	jbe	.L294	#,
# BLOCK 11, count:59055801 (estimated locally) seq:9
# PRED: 10 [50.0% (guessed)]  count:59055801 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	comisd	%xmm0, %xmm1	# _44, tmp185
# SUCC: 12 [50.0% (guessed)]  count:29527901 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 25 [50.0% (guessed)]  count:29527901 (estimated locally) (CAN_FALLTHRU)
	ja	.L242	#,
# BLOCK 12, count:208299979 (estimated locally) seq:10
# PRED: 20 [always]  count:89388275 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 11 [50.0% (guessed)]  count:29527901 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 32 [50.0% (guessed)]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 33 [always]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L251:
# kiss_fft.c:317:         while (n % p) {
	movl	%ebx, %eax	# nfft, tmp188
	cltd
	idivl	%esi	# p
# kiss_fft.c:317:         while (n % p) {
	testl	%edx, %edx	# tmp187
# SUCC: 15 [50.0% (guessed)]  count:104149990 (estimated locally) (CAN_FALLTHRU) 13 [50.0% (guessed)]  count:104149990 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L243	#,
# BLOCK 13, count:223495271 (estimated locally) seq:11
# PRED: 12 [50.0% (guessed)]  count:104149990 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 14 [50.0% (guessed)]  count:99455396 (estimated locally) (CAN_FALLTHRU) 68 [always]  count:9945441 (estimated locally) (CAN_FALLTHRU)
.L250:
# kiss_fft.c:326:         n /= p;
	movl	%ebx, %eax	# nfft, nfft
	cltd
	idivl	%esi	# p
# kiss_fft.c:327:         *facbuf++ = p;
	movl	%esi, (%rcx)	# p, *facbuf_212
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# nfft, MEM[(int *)facbuf_212 + 4B]
# kiss_fft.c:326:         n /= p;
	movl	%eax, %ebx	# nfft, nfft
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$1, %eax	#, nfft
# SUCC: 14 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 31 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L232	#,
# BLOCK 14, count:198910791 (estimated locally) seq:12
# PRED: 13 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	16(%rcx), %rax	#, pretmp_218
	movq	%rdi, %rcx	# prephitmp_208, facbuf
	movq	%rax, %rdi	# pretmp_218, prephitmp_208
# kiss_fft.c:317:         while (n % p) {
	movl	%ebx, %eax	# nfft, tmp188
	cltd
	idivl	%esi	# p
# kiss_fft.c:317:         while (n % p) {
	testl	%edx, %edx	# tmp187
# SUCC: 15 [50.0% (guessed)]  count:99455396 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 13 [50.0% (guessed)]  count:99455396 (estimated locally) (CAN_FALLTHRU)
	je	.L250	#,
# BLOCK 15, count:203605385 (estimated locally) seq:13
# PRED: 12 [50.0% (guessed)]  count:104149990 (estimated locally) (CAN_FALLTHRU) 14 [50.0% (guessed)]  count:99455396 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
.L243:
# kiss_fft.c:318:             switch (p) {
	cmpl	$2, %esi	#, p
# SUCC: 16 [72.5% (guessed)]  count:147538931 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 20 [27.5% (guessed)]  count:56066454 (estimated locally) (CAN_FALLTHRU)
	je	.L248	#,
# BLOCK 16, count:203605385 (estimated locally) seq:14
# PRED: 15 [72.5% (guessed)]  count:147538931 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$4, %esi	#, p
# SUCC: 32 [38.0% (guessed)]  count:77377641 (estimated locally) (CAN_FALLTHRU) 17 [62.0% (guessed)]  count:126227744 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L304	#,
# BLOCK 17, count:44698608 (estimated locally) seq:15
# PRED: 16 [62.0% (guessed)]  count:126227744 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:317:         while (n % p) {
	testb	$1, %bl	#, nfft
# SUCC: 20 [50.0% (guessed)]  count:22349304 (estimated locally) (CAN_FALLTHRU) 18 [50.0% (guessed)]  count:22349304 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L248	#,
# BLOCK 18, count:22349304 (estimated locally) seq:16
# PRED: 17 [50.0% (guessed)]  count:22349304 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:326:         n /= p;
	movl	%ebx, %eax	# nfft, tmp192
	shrl	$31, %eax	#, tmp192
	addl	%ebx, %eax	# nfft, tmp193
	sarl	%eax	# tmp194
# kiss_fft.c:327:         *facbuf++ = p;
	movl	$2, (%rcx)	#, *facbuf_205
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# tmp194, MEM[(int *)facbuf_205 + 4B]
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$3, %ebx	#, nfft
# SUCC: 19 [89.0% (guessed)]  count:19890881 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 31 [11.0% (guessed)]  count:2458423 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L232	#,
# BLOCK 19, count:19890881 (estimated locally) seq:17
# PRED: 18 [89.0% (guessed)]  count:19890881 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	16(%rcx), %rdx	#, pretmp_247
# kiss_fft.c:317:         while (n % p) {
	movl	%eax, %ebx	# tmp194, nfft
	movq	%rdi, %rcx	# prephitmp_208, facbuf
	movq	%rdx, %rdi	# pretmp_247, prephitmp_208
	testb	$1, %al	#, tmp194
# SUCC: 20 [50.0% (guessed)]  count:9945441 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 68 [50.0% (guessed)]  count:9945441 (estimated locally) (CAN_FALLTHRU)
	je	.L249	#,
# BLOCK 20, count:89388275 (estimated locally) seq:18
# PRED: 17 [50.0% (guessed)]  count:22349304 (estimated locally) (CAN_FALLTHRU) 19 [50.0% (guessed)]  count:9945441 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 15 [27.5% (guessed)]  count:56066454 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L248:
# kiss_fft.c:329:     } while (n > 1);
	movl	%ebx, %esi	# nfft, p
# SUCC: 12 [always]  count:89388275 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jmp	.L251	#
# BLOCK 21, count:477815114 (estimated locally) seq:19
# PRED: 6 [50.0% (guessed)]  count:52559663 (estimated locally) (CAN_FALLTHRU) 21 [89.0% (guessed)]  count:425255452 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L272:
# kiss_fft.c:359:             double phase = -2*pi*i / nfft;
	pxor	%xmm0, %xmm0	# tmp282
	cvtsi2sdl	%ebp, %xmm0	# ivtmp.1102, tmp282
	movq	%r13, %rsi	# tmp303,
	movq	%r14, %rdi	# tmp306,
# kiss_fft.c:359:             double phase = -2*pi*i / nfft;
	mulsd	(%rsp), %xmm0	# %sfp, phase
# kiss_fft.c:361:                 phase *= -1;
	xorpd	.LC9(%rip), %xmm0	#, phase
	call	sincos@PLT	#
	movsd	24(%rsp), %xmm0	#, sincostmp_95
# kiss_fft.c:362:             kf_cexp(st->twiddles+i, phase );
	pxor	%xmm1, %xmm1	# tmp292
	movq	%rbp, %rax	# ivtmp.1102, ivtmp.1102
	cvtsd2ss	16(%rsp), %xmm1	#, tmp292
	cvtsd2ss	%xmm0, %xmm0	# sincostmp_95, tmp296
	movss	%xmm1, 264(%r12,%rbp,8)	# tmp292, MEM[base: st_105, index: ivtmp.1102_79, step: 8, offset: 264B]
	movss	%xmm0, 268(%r12,%rbp,8)	# tmp296, MEM[base: st_105, index: ivtmp.1102_79, step: 8, offset: 268B]
	incq	%rbp	# ivtmp.1102
# kiss_fft.c:357:         for (i=0;i<nfft;++i) {
	cmpq	%r15, %rax	# _84, ivtmp.1102
# SUCC: 21 [89.0% (guessed)]  count:425255452 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 22 [11.0% (guessed)]  count:52559662 (estimated locally) (FALLTHRU)
	jne	.L272	#,
# BLOCK 22, count:52559662 (estimated locally) seq:20
# PRED: 21 [11.0% (guessed)]  count:52559662 (estimated locally) (FALLTHRU)
# SUCC: 8 [always]  count:52559662 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L271	#
# BLOCK 23, count:104149989 (estimated locally) seq:21
# PRED: 25 [50.0% (guessed)]  count:104149990 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L274:
# kiss_fft.c:318:             switch (p) {
	leal	-2(%rsi), %eax	#, tmp297
	andl	$-3, %eax	#, tmp297
# SUCC: 24 [63.8% (guessed)]  count:66415777 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 29 [36.2% (guessed)]  count:37734212 (estimated locally) (CAN_FALLTHRU)
	je	.L280	#,
# BLOCK 24, count:89388275 (estimated locally) seq:22
# PRED: 23 [63.8% (guessed)]  count:66415777 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 28 [63.8% (guessed)]  count:63422065 (estimated locally) (CAN_FALLTHRU)
.L306:
	addl	$2, %esi	#, p
# kiss_fft.c:323:             if (p > floor_sqrt)
	pxor	%xmm1, %xmm1	# tmp299
	cvtsi2sdl	%esi, %xmm1	# p, tmp299
	comisd	%xmm0, %xmm1	# _44, tmp299
# SUCC: 25 [always]  count:89388275 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
	cmova	%ebx, %esi	# p,, nfft, p
# BLOCK 25, count:208299979 (estimated locally) seq:23
# PRED: 11 [50.0% (guessed)]  count:29527901 (estimated locally) (CAN_FALLTHRU) 24 [always]  count:89388275 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 29 [always]  count:73767543 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
.L242:
	movl	%ebx, %eax	# nfft, tmp300
	cltd
	idivl	%esi	# p
# kiss_fft.c:317:         while (n % p) {
	testl	%edx, %edx	# tmp301
# SUCC: 23 [50.0% (guessed)]  count:104149990 (estimated locally) (CAN_FALLTHRU) 26 [50.0% (guessed)]  count:104149990 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L274	#,
# BLOCK 26, count:223495271 (estimated locally) seq:24
# PRED: 25 [50.0% (guessed)]  count:104149990 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 27 [50.0% (guessed)]  count:99455396 (estimated locally) (CAN_FALLTHRU)
.L305:
# kiss_fft.c:327:         *facbuf++ = p;
	movl	%esi, (%rcx)	# p, *facbuf_53
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# nfft, MEM[(int *)facbuf_53 + 4B]
# kiss_fft.c:326:         n /= p;
	movl	%eax, %ebx	# tmp300, nfft
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$1, %eax	#, nfft
# SUCC: 27 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 31 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L232	#,
# BLOCK 27, count:198910791 (estimated locally) seq:25
# PRED: 26 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	16(%rcx), %rax	#, pretmp_145
	movq	%rdi, %rcx	# prephitmp_208, facbuf
	movq	%rax, %rdi	# pretmp_145, prephitmp_208
	movl	%ebx, %eax	# nfft, tmp300
	cltd
	idivl	%esi	# p
# kiss_fft.c:317:         while (n % p) {
	testl	%edx, %edx	# tmp301
# SUCC: 28 [50.0% (guessed)]  count:99455396 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 26 [50.0% (guessed)]  count:99455396 (estimated locally) (CAN_FALLTHRU)
	je	.L305	#,
# BLOCK 28, count:99455396 (estimated locally) seq:26
# PRED: 27 [50.0% (guessed)]  count:99455396 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:318:             switch (p) {
	leal	-2(%rsi), %eax	#, tmp297
	andl	$-3, %eax	#, tmp297
# SUCC: 24 [63.8% (guessed)]  count:63422065 (estimated locally) (CAN_FALLTHRU) 29 [36.2% (guessed)]  count:36033331 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L306	#,
# BLOCK 29, count:73767543 (estimated locally) seq:27
# PRED: 23 [36.2% (guessed)]  count:37734212 (estimated locally) (CAN_FALLTHRU) 28 [36.2% (guessed)]  count:36033331 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
.L280:
	movl	%ebx, %esi	# nfft, p
# SUCC: 25 [always]  count:73767543 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jmp	.L242	#
# BLOCK 30, count:51074332 (estimated locally) seq:28
# PRED: 4 [29.0% (guessed)]  count:51074333 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L303:
# SUCC: 31 [always]  count:51074332 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:341:     kiss_fft_cfg st=NULL;
	xorl	%r12d, %r12d	# <retval>
# BLOCK 31, count:250534154 (estimated locally) seq:29
# PRED: 26 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 63 [always (guessed)]  count:50619257 (estimated locally) (CAN_FALLTHRU) 51 [11.0% (guessed)]  count:2458178 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 30 [always]  count:51074332 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 13 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 18 [11.0% (guessed)]  count:2458423 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 39 [11.0% (guessed)]  count:2458423 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 58 [11.0% (guessed)]  count:2458178 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 41 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 47 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 67 [always]  count:30836239 (estimated locally) (CAN_FALLTHRU)
.L232:
# kiss_fft.c:368: }
	addq	$40, %rsp	#,
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
# BLOCK 32, count:89388275 (estimated locally) seq:30
# PRED: 16 [38.0% (guessed)]  count:77377641 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L304:
	.cfi_restore_state
	addl	$2, %esi	#, p
# kiss_fft.c:323:             if (p > floor_sqrt)
	pxor	%xmm1, %xmm1	# tmp196
	cvtsi2sdl	%esi, %xmm1	# p, tmp196
	comisd	%xmm0, %xmm1	# _44, tmp196
# SUCC: 33 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 12 [50.0% (guessed)]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jbe	.L251	#,
# BLOCK 33, count:44694138 (estimated locally) seq:31
# PRED: 32 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:329:     } while (n > 1);
	movl	%ebx, %esi	# nfft, p
# SUCC: 12 [always]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jmp	.L251	#
# BLOCK 34, count:59055801 (estimated locally) seq:32
# PRED: 10 [50.0% (guessed)]  count:59055801 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L294:
	comisd	%xmm0, %xmm1	# _44, tmp197
# kiss_fft.c:317:         while (n % p) {
	movq	.LC2(%rip), %rax	#, tmp352
	movq	%rax, %xmm2	# tmp352, _159
# SUCC: 35 [50.0% (guessed)]  count:29527901 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 46 [50.0% (guessed)]  count:29527901 (estimated locally) (CAN_FALLTHRU)
	ja	.L252	#,
# BLOCK 35, count:407210770 (estimated locally) seq:33
# PRED: 42 [always]  count:198910791 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 34 [50.0% (guessed)]  count:29527901 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 62 [always]  count:89388275 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L260:
# kiss_fft.c:317:         while (n % p) {
	movl	%ebx, %eax	# nfft, tmp200
	cltd
	idivl	%esi	# p
# kiss_fft.c:317:         while (n % p) {
	testl	%edx, %edx	# tmp199
# SUCC: 36 [50.0% (guessed)]  count:203605385 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 41 [50.0% (guessed)]  count:203605385 (estimated locally) (CAN_FALLTHRU)
	je	.L253	#,
# BLOCK 36, count:203605385 (estimated locally) seq:34
# PRED: 35 [50.0% (guessed)]  count:203605385 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:318:             switch (p) {
	cmpl	$2, %esi	#, p
# SUCC: 37 [72.5% (guessed)]  count:147538931 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 57 [27.5% (guessed)]  count:56066454 (estimated locally) (CAN_FALLTHRU)
	je	.L254	#,
# BLOCK 37, count:203605385 (estimated locally) seq:35
# PRED: 36 [72.5% (guessed)]  count:147538931 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$4, %esi	#, p
# SUCC: 61 [38.0% (guessed)]  count:77377641 (estimated locally) (CAN_FALLTHRU) 38 [62.0% (guessed)]  count:126227744 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L307	#,
# BLOCK 38, count:44698608 (estimated locally) seq:36
# PRED: 37 [62.0% (guessed)]  count:126227744 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:317:         while (n % p) {
	testb	$1, %bl	#, nfft
# SUCC: 57 [50.0% (guessed)]  count:22349304 (estimated locally) (CAN_FALLTHRU) 39 [50.0% (guessed)]  count:22349304 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L254	#,
# BLOCK 39, count:22349304 (estimated locally) seq:37
# PRED: 38 [50.0% (guessed)]  count:22349304 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:326:         n /= p;
	movl	%ebx, %eax	# nfft, tmp202
	shrl	$31, %eax	#, tmp202
	addl	%ebx, %eax	# nfft, tmp203
	sarl	%eax	# tmp204
# kiss_fft.c:327:         *facbuf++ = p;
	movl	$2, (%rcx)	#, *facbuf_144
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# tmp204, MEM[(int *)facbuf_144 + 4B]
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$3, %ebx	#, nfft
# SUCC: 40 [89.0% (guessed)]  count:19890881 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 31 [11.0% (guessed)]  count:2458423 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L232	#,
# BLOCK 40, count:19890881 (estimated locally) seq:38
# PRED: 39 [89.0% (guessed)]  count:19890881 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	16(%rcx), %rdx	#, pretmp_168
# kiss_fft.c:317:         while (n % p) {
	movl	%eax, %ebx	# tmp204, nfft
	movq	%rdi, %rcx	# prephitmp_208, facbuf
# kiss_fft.c:319:                 case 4: p = 2; break;
	movl	$2, %esi	#, p
# kiss_fft.c:317:         while (n % p) {
	movq	%rdx, %rdi	# pretmp_168, prephitmp_208
	testb	$1, %al	#, tmp204
# SUCC: 41 [50.0% (guessed)]  count:9945441 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 57 [50.0% (guessed)]  count:9945441 (estimated locally) (CAN_FALLTHRU)
	jne	.L254	#,
# BLOCK 41, count:223495271 (estimated locally) seq:39
# PRED: 40 [50.0% (guessed)]  count:9945441 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 35 [50.0% (guessed)]  count:203605385 (estimated locally) (CAN_FALLTHRU) 59 [50.0% (guessed)]  count:9944446 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L253:
# kiss_fft.c:326:         n /= p;
	movl	%ebx, %eax	# nfft, nfft
	cltd
	idivl	%esi	# p
# kiss_fft.c:327:         *facbuf++ = p;
	movl	%esi, (%rcx)	# p, *facbuf_192
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# nfft, MEM[(int *)facbuf_192 + 4B]
# kiss_fft.c:326:         n /= p;
	movl	%eax, %ebx	# nfft, nfft
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$1, %eax	#, nfft
# SUCC: 42 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 31 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L232	#,
# BLOCK 42, count:198910791 (estimated locally) seq:40
# PRED: 41 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	16(%rcx), %rax	#, pretmp_198
	movq	%rdi, %rcx	# prephitmp_208, facbuf
	movq	%rax, %rdi	# pretmp_198, prephitmp_208
# SUCC: 35 [always]  count:198910791 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jmp	.L260	#
# BLOCK 43, count:104149989 (estimated locally) seq:41
# PRED: 46 [50.0% (guessed)]  count:104149990 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L261:
# kiss_fft.c:318:             switch (p) {
	cmpl	$2, %esi	#, p
# SUCC: 44 [72.5% (guessed)]  count:75470391 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 50 [27.5% (guessed)]  count:28679598 (estimated locally) (CAN_FALLTHRU)
	je	.L263	#,
# BLOCK 44, count:203605385 (estimated locally) seq:42
# PRED: 43 [72.5% (guessed)]  count:75470391 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 49 [72.5% (guessed)]  count:72068540 (estimated locally) (CAN_FALLTHRU)
.L308:
	cmpl	$4, %esi	#, p
# SUCC: 54 [38.0% (guessed)]  count:77377641 (estimated locally) (CAN_FALLTHRU) 45 [62.0% (guessed)]  count:126227744 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L264	#,
# BLOCK 45, count:89388275 (estimated locally) seq:43
# PRED: 44 [62.0% (guessed)]  count:126227744 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# SUCC: 46 [always]  count:89388275 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
# kiss_fft.c:329:     } while (n > 1);
	movl	%ebx, %esi	# nfft, p
# BLOCK 46, count:208299979 (estimated locally) seq:44
# PRED: 45 [always]  count:89388275 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 34 [50.0% (guessed)]  count:29527901 (estimated locally) (CAN_FALLTHRU) 55 [50.0% (guessed)]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 56 [always]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
.L252:
# kiss_fft.c:317:         while (n % p) {
	movl	%ebx, %eax	# nfft, tmp236
	cltd
	idivl	%esi	# p
# kiss_fft.c:317:         while (n % p) {
	testl	%edx, %edx	# tmp235
# SUCC: 43 [50.0% (guessed)]  count:104149990 (estimated locally) (CAN_FALLTHRU) 47 [50.0% (guessed)]  count:104149990 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L261	#,
# BLOCK 47, count:223495271 (estimated locally) seq:45
# PRED: 46 [50.0% (guessed)]  count:104149990 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 48 [50.0% (guessed)]  count:99455396 (estimated locally) (CAN_FALLTHRU) 69 [always]  count:9944446 (estimated locally) (CAN_FALLTHRU)
.L268:
# kiss_fft.c:326:         n /= p;
	movl	%ebx, %eax	# nfft, nfft
	cltd
	idivl	%esi	# p
# kiss_fft.c:327:         *facbuf++ = p;
	movl	%esi, (%rcx)	# p, *facbuf_122
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# nfft, MEM[(int *)facbuf_122 + 4B]
# kiss_fft.c:326:         n /= p;
	movl	%eax, %ebx	# nfft, nfft
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$1, %eax	#, nfft
# SUCC: 48 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 31 [11.0% (guessed)]  count:24584480 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L232	#,
# BLOCK 48, count:198910791 (estimated locally) seq:46
# PRED: 47 [89.0% (guessed)]  count:198910791 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	16(%rcx), %rax	#, pretmp_103
	movq	%rdi, %rcx	# prephitmp_208, facbuf
	movq	%rax, %rdi	# pretmp_103, prephitmp_208
# kiss_fft.c:317:         while (n % p) {
	movl	%ebx, %eax	# nfft, tmp236
	cltd
	idivl	%esi	# p
# kiss_fft.c:317:         while (n % p) {
	testl	%edx, %edx	# tmp235
# SUCC: 49 [50.0% (guessed)]  count:99455396 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 47 [50.0% (guessed)]  count:99455396 (estimated locally) (CAN_FALLTHRU)
	je	.L268	#,
# BLOCK 49, count:99455396 (estimated locally) seq:47
# PRED: 48 [50.0% (guessed)]  count:99455396 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:318:             switch (p) {
	cmpl	$2, %esi	#, p
# SUCC: 44 [72.5% (guessed)]  count:72068540 (estimated locally) (CAN_FALLTHRU) 50 [27.5% (guessed)]  count:27386856 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L308	#,
# BLOCK 50, count:89388275 (estimated locally) seq:48
# PRED: 43 [27.5% (guessed)]  count:28679598 (estimated locally) (CAN_FALLTHRU) 49 [27.5% (guessed)]  count:27386856 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
.L263:
# kiss_fft.c:323:             if (p > floor_sqrt)
	imull	$-1431655765, %ebx, %eax	#, nfft, tmp248
	addl	$715827882, %eax	#, tmp249
# kiss_fft.c:317:         while (n % p) {
	cmpl	$1431655764, %eax	#, tmp249
# SUCC: 65 [50.0% (guessed)]  count:44694138 (estimated locally) (CAN_FALLTHRU) 51 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	ja	.L279	#,
# BLOCK 51, count:22347069 (estimated locally) seq:49
# PRED: 50 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:326:         n /= p;
	movslq	%ebx, %rax	# nfft, nfft
	imulq	$1431655766, %rax, %rax	#, nfft, tmp251
	movl	%ebx, %edx	# nfft, tmp253
	sarl	$31, %edx	#, tmp253
	shrq	$32, %rax	#, tmp252
	subl	%edx, %eax	# tmp253, n
# kiss_fft.c:327:         *facbuf++ = p;
	movl	$3, (%rcx)	#, *facbuf_71
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# n, MEM[(int *)facbuf_71 + 4B]
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$5, %ebx	#, nfft
# SUCC: 52 [89.0% (guessed)]  count:19888891 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 31 [11.0% (guessed)]  count:2458178 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L232	#,
# BLOCK 52, count:19888892 (estimated locally) seq:50
# PRED: 51 [89.0% (guessed)]  count:19888891 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	imull	$-1431655765, %eax, %edx	#, n, tmp263
# kiss_fft.c:326:         n /= p;
	movl	%eax, %ebx	# n, nfft
# kiss_fft.c:329:     } while (n > 1);
	addl	$715827882, %edx	#, tmp264
# kiss_fft.c:317:         while (n % p) {
	cmpl	$1431655764, %edx	#, tmp264
	leaq	16(%rcx), %rdx	#, pretmp_109
	movq	%rdi, %rcx	# prephitmp_208, facbuf
	movq	%rdx, %rdi	# pretmp_109, prephitmp_208
# SUCC: 53 [50.0% (guessed)]  count:9944446 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 69 [50.0% (guessed)]  count:9944446 (estimated locally) (CAN_FALLTHRU)
	jbe	.L267	#,
# BLOCK 53, count:9944446 (estimated locally) seq:51
# PRED: 52 [50.0% (guessed)]  count:9944446 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	.LC2(%rip), %rax	#, tmp362
	movl	$5, %esi	#, p
	movq	%rax, %xmm1	# tmp362, _62
# SUCC: 55 [always]  count:9944446 (estimated locally) (CAN_FALLTHRU)
	jmp	.L266	#
# BLOCK 54, count:56070297 (estimated locally) seq:52
# PRED: 44 [38.0% (guessed)]  count:77377641 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L264:
	addl	$2, %esi	#, p
	pxor	%xmm1, %xmm1	# _62
# SUCC: 55 [always]  count:56070297 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cvtsi2sdl	%esi, %xmm1	# p, _62
# BLOCK 55, count:89388275 (estimated locally) seq:53
# PRED: 54 [always]  count:56070297 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 53 [always]  count:9944446 (estimated locally) (CAN_FALLTHRU) 65 [always]  count:44694138 (estimated locally) (CAN_FALLTHRU)
.L266:
# kiss_fft.c:323:             if (p > floor_sqrt)
	comisd	%xmm0, %xmm1	# _44, _62
# SUCC: 56 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 46 [50.0% (guessed)]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jbe	.L252	#,
# BLOCK 56, count:44694138 (estimated locally) seq:54
# PRED: 55 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:329:     } while (n > 1);
	movl	%ebx, %esi	# nfft, p
# SUCC: 46 [always]  count:44694138 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jmp	.L252	#
# BLOCK 57, count:89388275 (estimated locally) seq:55
# PRED: 38 [50.0% (guessed)]  count:22349304 (estimated locally) (CAN_FALLTHRU) 36 [27.5% (guessed)]  count:56066454 (estimated locally) (CAN_FALLTHRU) 40 [50.0% (guessed)]  count:9945441 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L254:
	imull	$-1431655765, %ebx, %eax	#, nfft, tmp215
	addl	$715827882, %eax	#, tmp216
# kiss_fft.c:317:         while (n % p) {
	cmpl	$1431655764, %eax	#, tmp216
# SUCC: 66 [50.0% (guessed)]  count:44694138 (estimated locally) (CAN_FALLTHRU) 58 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	ja	.L277	#,
# BLOCK 58, count:22347069 (estimated locally) seq:56
# PRED: 57 [50.0% (guessed)]  count:44694138 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:326:         n /= p;
	movslq	%ebx, %rax	# nfft, nfft
	imulq	$1431655766, %rax, %rax	#, nfft, tmp218
	movl	%ebx, %edx	# nfft, tmp220
	sarl	$31, %edx	#, tmp220
	shrq	$32, %rax	#, tmp219
	subl	%edx, %eax	# tmp220, n
# kiss_fft.c:327:         *facbuf++ = p;
	movl	$3, (%rcx)	#, *facbuf_170
# kiss_fft.c:328:         *facbuf++ = n;
	movl	%eax, 4(%rcx)	# n, MEM[(int *)facbuf_170 + 4B]
# kiss_fft.c:329:     } while (n > 1);
	cmpl	$5, %ebx	#, nfft
# SUCC: 59 [89.0% (guessed)]  count:19888891 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 31 [11.0% (guessed)]  count:2458178 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jle	.L232	#,
# BLOCK 59, count:19888892 (estimated locally) seq:57
# PRED: 58 [89.0% (guessed)]  count:19888891 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	imull	$-1431655765, %eax, %edx	#, n, tmp230
# kiss_fft.c:326:         n /= p;
	movl	%eax, %ebx	# n, nfft
# kiss_fft.c:320:                 case 2: p = 3; break;
	movl	$3, %esi	#, p
# kiss_fft.c:329:     } while (n > 1);
	addl	$715827882, %edx	#, tmp231
# kiss_fft.c:317:         while (n % p) {
	cmpl	$1431655764, %edx	#, tmp231
	leaq	16(%rcx), %rdx	#, pretmp_179
	movq	%rdi, %rcx	# prephitmp_208, facbuf
	movq	%rdx, %rdi	# pretmp_179, prephitmp_208
# SUCC: 41 [50.0% (guessed)]  count:9944446 (estimated locally) (CAN_FALLTHRU) 60 [50.0% (guessed)]  count:9944446 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jbe	.L253	#,
# BLOCK 60, count:9944446 (estimated locally) seq:58
# PRED: 59 [50.0% (guessed)]  count:9944446 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movapd	%xmm2, %xmm1	# _159, _159
	movl	$5, %esi	#, p
# SUCC: 62 [always]  count:9944446 (estimated locally) (CAN_FALLTHRU)
	jmp	.L256	#
# BLOCK 61, count:56070297 (estimated locally) seq:59
# PRED: 37 [38.0% (guessed)]  count:77377641 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L307:
	addl	$2, %esi	#, p
	pxor	%xmm1, %xmm1	# _159
# SUCC: 62 [always]  count:56070297 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cvtsi2sdl	%esi, %xmm1	# p, _159
# BLOCK 62, count:89388275 (estimated locally) seq:60
# PRED: 61 [always]  count:56070297 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 60 [always]  count:9944446 (estimated locally) (CAN_FALLTHRU) 66 [always]  count:44694138 (estimated locally) (CAN_FALLTHRU)
.L256:
# kiss_fft.c:323:             if (p > floor_sqrt)
	comisd	%xmm0, %xmm1	# _44, _159
	cmova	%ebx, %esi	# p,, nfft, p
# SUCC: 35 [always]  count:89388275 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	jmp	.L260	#
# BLOCK 63, count:50619257 (estimated locally) seq:61
# PRED: 2 [17.4% (guessed)]  count:43686801 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L301:
	movl	%esi, (%rsp)	# inverse_fft, %sfp
# kiss_fft.c:346:         st = ( kiss_fft_cfg)KISS_FFT_MALLOC( memneeded );
	call	malloc@PLT	#
# kiss_fft.c:352:     if (st) {
	testq	%rax, %rax	# <retval>
	movl	(%rsp), %esi	# %sfp, inverse_fft
# kiss_fft.c:346:         st = ( kiss_fft_cfg)KISS_FFT_MALLOC( memneeded );
	movq	%rax, %r12	# tmp336, <retval>
# SUCC: 64 [never (guessed)]  count:0 (estimated locally) (FALLTHRU) 31 [always (guessed)]  count:50619257 (estimated locally) (CAN_FALLTHRU)
# kiss_fft.c:352:     if (st) {
	je	.L232	#,
# BLOCK 64, count:0 (estimated locally) seq:62
# PRED: 63 [never (guessed)]  count:0 (estimated locally) (FALLTHRU)
# SUCC: 5 [always]  count:0 (estimated locally) (CAN_FALLTHRU)
	jmp	.L234	#
# BLOCK 65, count:44694138 (estimated locally) seq:63
# PRED: 50 [50.0% (guessed)]  count:44694138 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L279:
# kiss_fft.c:317:         while (n % p) {
	movapd	%xmm2, %xmm1	# _62, _62
	movl	$5, %esi	#, p
# SUCC: 55 [always]  count:44694138 (estimated locally) (CAN_FALLTHRU)
	jmp	.L266	#
# BLOCK 66, count:44694138 (estimated locally) seq:64
# PRED: 57 [50.0% (guessed)]  count:44694138 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L277:
	movq	.LC2(%rip), %rax	#, tmp356
	movl	$5, %esi	#, p
	movq	%rax, %xmm1	# tmp356, _159
# SUCC: 62 [always]  count:44694138 (estimated locally) (CAN_FALLTHRU)
	jmp	.L256	#
# BLOCK 67, count:30836239 (estimated locally) seq:65
# PRED: 3 [14.9% (guessed)]  count:30836239 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L302:
# kiss_fft.c:350:         *lenmem = memneeded;
	movq	%rdi, (%rcx)	# memneeded, *lenmem_25(D)
# SUCC: 31 [always]  count:30836239 (estimated locally) (CAN_FALLTHRU)
	jmp	.L232	#
# BLOCK 68, count:9945441 (estimated locally) seq:66
# PRED: 19 [50.0% (guessed)]  count:9945441 (estimated locally) (CAN_FALLTHRU)
.L249:
# kiss_fft.c:319:                 case 4: p = 2; break;
	movl	$2, %esi	#, p
# SUCC: 13 [always]  count:9945441 (estimated locally) (CAN_FALLTHRU)
	jmp	.L250	#
# BLOCK 69, count:9944446 (estimated locally) seq:67
# PRED: 52 [50.0% (guessed)]  count:9944446 (estimated locally) (CAN_FALLTHRU)
.L267:
# kiss_fft.c:320:                 case 2: p = 3; break;
	movl	$3, %esi	#, p
# SUCC: 47 [always]  count:9944446 (estimated locally) (CAN_FALLTHRU)
	jmp	.L268	#
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp	# tmp107, fin
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# tmp106, st
	movq	%rdx, %rdi	# tmp108, fout
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
# kiss_fft.c:372: {
	movl	%ecx, %edx	# tmp109, in_stride
	leaq	8(%rbx), %rcx	#, pretmp_18
# kiss_fft.c:373:     if (fin == fout) {
	cmpq	%rdi, %rsi	# fout, fin
# SUCC: 4 [30.0% (guessed)]  count:322122544 (estimated locally) (CAN_FALLTHRU) 3 [70.0% (guessed)]  count:751619280 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L312	#,
# BLOCK 3, count:751619278 (estimated locally) seq:1
# PRED: 2 [70.0% (guessed)]  count:751619280 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:383: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
# kiss_fft.c:381:         kf_work( fout, fin, 1,in_stride, st->factors,st );
	movq	%rbx, %r8	# st,
# kiss_fft.c:383: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
# SUCC: EXIT [always]  count:751619278 (estimated locally) (ABNORMAL,SIBCALL)
# kiss_fft.c:381:         kf_work( fout, fin, 1,in_stride, st->factors,st );
	jmp	kf_work.constprop.0	#
# BLOCK 4, count:322122547 (estimated locally) seq:2
# PRED: 2 [30.0% (guessed)]  count:322122544 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L312:
	.cfi_restore_state
# kiss_fft.c:376:         kiss_fft_cpx * tmpbuf = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC( sizeof(kiss_fft_cpx)*st->nfft);
	movslq	(%rbx), %rdi	# st_4(D)->nfft, st_4(D)->nfft
	movl	%edx, 12(%rsp)	# in_stride, %sfp
	salq	$3, %rdi	#, tmp96
	movq	%rcx, (%rsp)	# pretmp_18, %sfp
	call	malloc@PLT	#
# kiss_fft.c:377:         kf_work(tmpbuf,fin,1,in_stride, st->factors,st);
	movq	(%rsp), %rcx	# %sfp, pretmp_18
	movl	12(%rsp), %edx	# %sfp, in_stride
	movq	%rbx, %r8	# st,
	movq	%rbp, %rsi	# fin,
	movq	%rax, %rdi	# tmp97,
# kiss_fft.c:376:         kiss_fft_cpx * tmpbuf = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC( sizeof(kiss_fft_cpx)*st->nfft);
	movq	%rax, %r12	# tmp110, tmp97
# kiss_fft.c:377:         kf_work(tmpbuf,fin,1,in_stride, st->factors,st);
	call	kf_work.constprop.0	#
# kiss_fft.c:378:         memcpy(fout,tmpbuf,sizeof(kiss_fft_cpx)*st->nfft);
	movslq	(%rbx), %rdx	# st_4(D)->nfft, st_4(D)->nfft
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:34:   return __builtin___memcpy_chk (__dest, __src, __len, __bos0 (__dest));
	movq	%rbp, %rdi	# fin,
	movq	%r12, %rsi	# tmp97,
# kiss_fft.c:378:         memcpy(fout,tmpbuf,sizeof(kiss_fft_cpx)*st->nfft);
	salq	$3, %rdx	#, tmp100
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
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r9	# tmp2563, cfg
	leaq	16(%rdi), %r8	#, pretmp_1439
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
	movq	%rdx, %rbp	# tmp2565, fout
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$184, %rsp	#,
	.cfi_def_cfa_offset 240
# kiss_fft.c:373:     if (fin == fout) {
	cmpq	%rdx, %rsi	# fout, fin
# SUCC: 32 [30.0% (guessed)]  count:322122544 (estimated locally) (CAN_FALLTHRU) 3 [70.0% (guessed)]  count:751619280 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L437	#,
# BLOCK 3, count:751619277 (estimated locally) seq:1
# PRED: 2 [70.0% (guessed)]  count:751619280 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:248:     const int p=*factors++; /* the radix  */
	movl	8(%rdi), %r13d	# MEM[(int *)cfg_2(D) + 8B], p
# kiss_fft.c:249:     const int m=*factors++; /* stage's fft length/p */
	movl	12(%rdi), %r12d	# MEM[(int *)cfg_2(D) + 12B], m
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	movl	%r13d, %eax	# p, tmp2066
	imull	%r12d, %eax	# m, tmp2066
	cltq
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	leaq	(%rdx,%rax,8), %r15	#, Fout_end
# kiss_fft.c:276:     if (m==1) {
	cmpl	$1, %r12d	#, m
# SUCC: 19 [34.0% (guessed)]  count:255550557 (estimated locally) (CAN_FALLTHRU) 4 [66.0% (guessed)]  count:496068720 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L438	#,
# BLOCK 4, count:496068720 (estimated locally) seq:2
# PRED: 3 [66.0% (guessed)]  count:496068720 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	movslq	%r12d, %rbx	# m, m
	leaq	0(,%rbx,8), %rax	#, _387
	movq	%rax, (%rsp)	# _387, %sfp
	movq	%rdx, 40(%rsp)	# fout, %sfp
	movslq	%r13d, %rbx	# p, _1440
	movl	%r13d, 24(%rsp)	# p, %sfp
	movl	%r12d, 32(%rsp)	# m, %sfp
	movq	%rbx, %rbp	# _1440, _1440
	movq	%rdx, %r14	# fout, Fout
	movq	%rdi, %r12	# cfg, cfg
	movq	%rsi, %r13	# fin, fin
# SUCC: 5 [always]  count:496068720 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%r8, %rbx	# pretmp_1439, pretmp_1439
# BLOCK 5, count:2254857842 (estimated locally) seq:3
# PRED: 4 [always]  count:496068720 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 5 [78.0% (guessed)]  count:1758789119 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
.L348:
# kiss_fft.c:287:             kf_work( Fout , f, fstride*p, in_stride, factors,st);
	movq	%r13, %rsi	# fin,
	movq	%r14, %rdi	# Fout,
	movq	%r12, %r9	# cfg,
	movq	%rbx, %r8	# pretmp_1439,
	movl	$1, %ecx	#,
	movq	%rbp, %rdx	# _1440,
	call	kf_work	#
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	addq	(%rsp), %r14	# %sfp, Fout
# kiss_fft.c:288:             f += fstride*in_stride;
	addq	$8, %r13	#, fin
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	cmpq	%r14, %r15	# Fout, Fout_end
# SUCC: 5 [78.0% (guessed)]  count:1758789119 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 6 [22.0% (guessed)]  count:496068723 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L348	#,
# BLOCK 6, count:496068723 (estimated locally) seq:4
# PRED: 5 [22.0% (guessed)]  count:496068723 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movl	24(%rsp), %r13d	# %sfp, p
	movq	%r12, %r9	# cfg, cfg
	movq	40(%rsp), %rbp	# %sfp, fout
	movl	32(%rsp), %r12d	# %sfp, m
# kiss_fft.c:295:     switch (p) {
	cmpl	$4, %r13d	#, p
# SUCC: 7 [80.0% (adjusted)]  count:396854977 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 22 [20.0% (adjusted)]  count:99213746 (estimated locally) (CAN_FALLTHRU)
	je	.L342	#,
# BLOCK 7, count:751619281 (estimated locally) seq:5
# PRED: 6 [80.0% (adjusted)]  count:396854977 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 21 [80.0% (adjusted)]  count:204440442 (estimated locally) (CAN_FALLTHRU)
.L439:
# SUCC: 8 [62.5% (adjusted)]  count:469762051 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 27 [37.5% (adjusted)]  count:281857230 (estimated locally) (CAN_FALLTHRU)
	jg	.L343	#,
# BLOCK 8, count:751619281 (estimated locally) seq:6
# PRED: 7 [62.5% (adjusted)]  count:469762051 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$2, %r13d	#, p
# SUCC: 9 [60.0% (adjusted)]  count:450971570 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 55 [40.0% (adjusted)]  count:300647711 (estimated locally) (CAN_FALLTHRU)
	je	.L344	#,
# BLOCK 9, count:751619281 (estimated locally) seq:7
# PRED: 8 [60.0% (adjusted)]  count:450971570 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$3, %r13d	#, p
# SUCC: 63 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 10 [always (guessed)]  count:751619281 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L346	#,
# BLOCK 10, count:150323856 (estimated locally) seq:8
# PRED: 9 [always (guessed)]  count:751619281 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:297:         case 3: kf_bfly3(Fout,fstride,st,m); break; 
	movslq	%r12d, %rax	# m, k
	leaq	296(%r9), %rbx	#, _558
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movq	%rax, %r8	# k, _440
	salq	$4, %r8	#, _440
# kiss_fft.c:106:      tw1=tw2=st->twiddles;
	leaq	264(%r9), %rsi	#, tw1
	leaq	32(%rbp), %r12	#, _1704
	cmpq	%rbx, %rbp	# _558, fout
	setnb	%r11b	#, tmp2166
	cmpq	%r12, %rsi	# _1704, tw1
	movq	%rbx, (%rsp)	# _558, %sfp
	leaq	-1(%rax), %r10	#, k
	setnb	%bl	#, tmp2168
	leaq	264(,%rax,8), %r13	#, _625
	orl	%r11d, %ebx	# tmp2166, tmp2169
	cmpq	$3, %r10	#, k
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leaq	-264(%r13), %rdi	#, _426
	leaq	32(%r8), %r14	#, _1509
	seta	%r11b	#, tmp2171
	leaq	-232(%r13), %r15	#, _1513
	andl	%r11d, %ebx	# tmp2171, tmp2172
	cmpq	%rdi, %r14	# _426, _1509
	movq	%r12, 24(%rsp)	# _1704, %sfp
	setle	%r12b	#, tmp2174
	cmpq	%r8, %r15	# _440, _1513
	setle	%r11b	#, tmp2176
	orl	%r12d, %r11d	# tmp2174, tmp2177
	andl	%ebx, %r11d	# tmp2172, tmp2178
	leaq	0(%rbp,%r15), %rbx	#, tmp2179
	leaq	0(%rbp,%rdi), %rdx	#, _559
	cmpq	%rbx, %rsi	# tmp2179, tw1
	setnb	%r12b	#, tmp2181
	cmpq	%rdx, (%rsp)	# _559, %sfp
	setbe	%bl	#, tmp2183
	leaq	256(%r9,%r8), %rcx	#, _36
	orl	%r12d, %ebx	# tmp2181, tmp2184
	movq	%rcx, 32(%rsp)	# _36, %sfp
	andl	%r11d, %ebx	# tmp2178, tmp2185
	leaq	0(%rbp,%rdi,2), %r11	#, tmp2187
	cmpq	%r11, %rsi	# tmp2187, tw1
	setnb	%r11b	#, tmp2189
	cmpq	%rdx, 32(%rsp)	# _559, %sfp
	setbe	%r12b	#, tmp2191
	orl	%r12d, %r11d	# tmp2191, tmp2192
	andl	%r11d, %ebx	# tmp2192, tmp2193
	testq	%r15, %r15	# _1513
	setle	%r15b	#, tmp2195
	cmpq	24(%rsp), %rdx	# %sfp, _559
	setnb	%r11b	#, tmp2197
	orl	%r11d, %r15d	# tmp2197, tmp2198
	leaq	0(%rbp,%r14), %r11	#, tmp2200
	leaq	(%rdx,%rdi), %rcx	#, _1714
	andl	%r15d, %ebx	# tmp2198, tmp2199
	cmpq	%r11, %rsi	# tmp2200, tw1
	setnb	%r12b	#, tmp2202
	cmpq	%rcx, (%rsp)	# _1714, %sfp
	setbe	%r11b	#, tmp2204
	orl	%r11d, %r12d	# tmp2204, tmp2205
	leaq	(%r8,%rdi), %r11	#, tmp2207
	addq	%rbp, %r11	# fout, tmp2208
	andl	%r12d, %ebx	# tmp2205, tmp2206
	leaq	256(%r9,%r8), %r15	#, _36
	cmpq	%r11, %rsi	# tmp2208, tw1
	setnb	%r12b	#, tmp2210
	cmpq	%rcx, %r15	# _1714, _36
	setbe	%r11b	#, tmp2212
	orl	%r11d, %r12d	# tmp2212, tmp2213
	andl	%r12d, %ebx	# tmp2213, tmp2214
	testq	%r14, %r14	# _1509
	setle	%r11b	#, tmp2216
	cmpq	%rcx, 24(%rsp)	# _1714, %sfp
	setbe	%r12b	#, tmp2218
	orl	%r12d, %r11d	# tmp2218, tmp2219
# kiss_fft.c:104:      epi3 = st->twiddles[fstride*m];
	movss	4(%r9,%r13), %xmm4	# MEM[(struct  *)_423 + 4B], epi3$i
	testb	%r11b, %bl	# tmp2219, tmp2214
# SUCC: 78 [10.0% (guessed)]  count:15032386 (estimated locally) (CAN_FALLTHRU) 11 [90.0% (guessed)]  count:135291470 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L356	#,
# BLOCK 11, count:135291470 (estimated locally) seq:9
# PRED: 10 [90.0% (guessed)]  count:135291470 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpq	%r15, %rbp	# _36, fout
	setnb	%bl	#, tmp2222
	cmpq	%rdx, %rsi	# _559, tw1
	setnb	%r11b	#, tmp2224
	orb	%r11b, %bl	# tmp2224, tmp2222
# SUCC: 78 [11.1% (guessed)]  count:15032385 (estimated locally) (CAN_FALLTHRU) 12 [88.9% (guessed)]  count:120259085 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L356	#,
# BLOCK 12, count:120259085 (estimated locally) seq:10
# PRED: 11 [88.9% (guessed)]  count:120259085 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	subq	$5, %rax	#, tmp2226
	shrq	$2, %rax	#, tmp2227
	movaps	%xmm4, %xmm5	# epi3$i, vect_cst__2008
	movapd	.LC0(%rip), %xmm3	#, tmp2561
	movaps	48(%rsp), %xmm8	# %sfp, tmp2258
	movaps	64(%rsp), %xmm9	# %sfp, tmp2260
	movaps	80(%rsp), %xmm10	# %sfp, tmp2272
	movaps	96(%rsp), %xmm11	# %sfp, tmp2274
	shufps	$0, %xmm5, %xmm5	# vect_cst__2008
	incq	%rax	# bnd.1280
	movq	%rbp, %r11	# fout, ivtmp.1596
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	xorl	%r8d, %r8d	# ivtmp.1587
	xorl	%ebx, %ebx	# ivtmp.1585
	movss	%xmm4, 24(%rsp)	# epi3$i, %sfp
# SUCC: 13 [always]  count:120259085 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movaps	%xmm5, (%rsp)	# vect_cst__2008, %sfp
# BLOCK 13, count:721554506 (estimated locally) seq:11
# PRED: 12 [always]  count:120259085 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 13 [83.3% (adjusted)]  count:601295423 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L357:
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movups	(%rdx,%r8), %xmm2	# MEM[base: _1754, index: ivtmp.1587_2301, offset: 0B], MEM[base: _1754, index: ivtmp.1587_2301, offset: 0B]
	movups	16(%rdx,%r8), %xmm1	# MEM[base: _1754, index: ivtmp.1587_2301, offset: 16B], MEM[base: _1754, index: ivtmp.1587_2301, offset: 16B]
	movaps	%xmm2, %xmm5	# MEM[base: _1754, index: ivtmp.1587_2301, offset: 0B], vect_perm_even_1920
	movups	264(%r9,%r8), %xmm4	# MEM[base: cfg_2(D), index: ivtmp.1587_2301, offset: 264B], MEM[base: cfg_2(D), index: ivtmp.1587_2301, offset: 264B]
	shufps	$136, %xmm1, %xmm5	#, MEM[base: _1754, index: ivtmp.1587_2301, offset: 16B], vect_perm_even_1920
	shufps	$221, %xmm1, %xmm2	#, MEM[base: _1754, index: ivtmp.1587_2301, offset: 16B], vect_perm_odd_1921
	movups	280(%r9,%r8), %xmm1	# MEM[base: cfg_2(D), index: ivtmp.1587_2301, offset: 280B], MEM[base: cfg_2(D), index: ivtmp.1587_2301, offset: 280B]
	movaps	%xmm2, %xmm6	# vect_perm_odd_1921, vect__435.1295
	movaps	%xmm4, %xmm0	# MEM[base: cfg_2(D), index: ivtmp.1587_2301, offset: 264B], vect_perm_even_1928
	shufps	$221, %xmm1, %xmm4	#, MEM[base: cfg_2(D), index: ivtmp.1587_2301, offset: 280B], vect_perm_odd_1929
	mulps	%xmm4, %xmm6	# vect_perm_odd_1929, vect__435.1295
	mulps	%xmm5, %xmm4	# vect_perm_even_1920, vect__437.1297
	shufps	$136, %xmm1, %xmm0	#, MEM[base: cfg_2(D), index: ivtmp.1587_2301, offset: 280B], vect_perm_even_1928
	mulps	%xmm0, %xmm2	# vect_perm_even_1928, vect__438.1298
	movaps	%xmm5, %xmm1	# vect_perm_even_1920, vect__432.1294
	mulps	%xmm0, %xmm1	# vect_perm_even_1928, vect__432.1294
	movaps	%xmm4, %xmm0	# vect__437.1297, vect__437.1297
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movups	16(%rcx,%r8), %xmm4	# MEM[base: vectp.1301_1936, index: ivtmp.1587_2301, offset: 16B], MEM[base: vectp.1301_1936, index: ivtmp.1587_2301, offset: 16B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addps	%xmm2, %xmm0	# vect__438.1298, vect__437.1297
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movups	(%rcx,%r8), %xmm2	# MEM[base: vectp.1301_1936, index: ivtmp.1587_2301, offset: 0B], MEM[base: vectp.1301_1936, index: ivtmp.1587_2301, offset: 0B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subps	%xmm6, %xmm1	# vect__435.1295, vect__436.1296
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm2, %xmm6	# MEM[base: vectp.1301_1936, index: ivtmp.1587_2301, offset: 0B], vect_perm_even_1942
	shufps	$136, %xmm4, %xmm6	#, MEM[base: vectp.1301_1936, index: ivtmp.1587_2301, offset: 16B], vect_perm_even_1942
	shufps	$221, %xmm4, %xmm2	#, MEM[base: vectp.1301_1936, index: ivtmp.1587_2301, offset: 16B], vect_perm_odd_1943
	movups	264(%r9,%r8,2), %xmm4	# MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 264B], MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 264B]
	movups	280(%r9,%r8,2), %xmm14	# MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 280B], MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 280B]
	movups	312(%r9,%r8,2), %xmm13	# MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 312B], MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 312B]
	movups	296(%r9,%r8,2), %xmm12	# MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 296B], MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 296B]
	movaps	%xmm4, %xmm5	# MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 264B], MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 264B]
	movaps	%xmm4, %xmm7	# MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 264B], tmp2243
	movaps	%xmm12, %xmm15	# MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 296B], tmp2244
	shufps	$221, %xmm14, %xmm5	#, MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 280B], MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 264B]
	shufps	$221, %xmm13, %xmm12	#, MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 312B], tmp2246
	shufps	$136, %xmm12, %xmm5	#, tmp2246, vect_perm_even_1960
	movaps	%xmm6, %xmm12	# vect_perm_even_1942, vect__445.1310
	shufps	$136, %xmm13, %xmm15	#, MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 312B], tmp2244
	shufps	$136, %xmm14, %xmm7	#, MEM[base: cfg_2(D), index: ivtmp.1587_2301, step: 2, offset: 280B], tmp2243
	shufps	$136, %xmm15, %xmm7	#, tmp2244, vect_perm_even_1958
	mulps	%xmm7, %xmm12	# vect_perm_even_1958, vect__445.1310
	movaps	%xmm2, %xmm13	# vect_perm_odd_1943, vect__448.1311
	mulps	%xmm5, %xmm13	# vect_perm_even_1960, vect__448.1311
	mulps	%xmm6, %xmm5	# vect_perm_even_1942, vect__450.1313
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# vect__436.1296, tmp2249
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	mulps	%xmm7, %xmm2	# vect_perm_even_1958, vect__451.1314
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addps	%xmm12, %xmm6	# vect__445.1310, tmp2249
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movups	(%r11), %xmm14	# MEM[base: _2306, offset: 0B], MEM[base: _2306, offset: 0B]
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm0, %xmm7	# vect__439.1299, vect__454.1317
	subps	%xmm13, %xmm6	# vect__448.1311, vect__453.1316
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addps	%xmm2, %xmm5	# vect__451.1314, vect__452.1315
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movups	16(%r11), %xmm2	# MEM[base: _2306, offset: 16B], MEM[base: _2306, offset: 16B]
	movaps	%xmm14, %xmm15	# MEM[base: _2306, offset: 0B], vect_perm_even_1978
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movhlps	%xmm6, %xmm9	# vect__453.1316, tmp2260
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	shufps	$221, %xmm2, %xmm14	#, MEM[base: _2306, offset: 16B], vect_perm_odd_1979
	shufps	$136, %xmm2, %xmm15	#, MEM[base: _2306, offset: 16B], vect_perm_even_1978
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm6, %xmm4	# vect__453.1316, vect__463.1326
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movhlps	%xmm15, %xmm8	# vect_perm_even_1978, tmp2258
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	mulpd	%xmm3, %xmm4	# tmp2561, vect__464.1327
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm15, %xmm2	# vect_perm_even_1978, vect__462.1325
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm9, %xmm15	# tmp2260, vect__463.1326
	mulpd	%xmm3, %xmm15	# tmp2561, vect__464.1327
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addps	%xmm5, %xmm7	# vect__452.1315, vect__454.1317
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subpd	%xmm4, %xmm2	# vect__464.1327, vect__465.1328
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm8, %xmm4	# tmp2258, vect__462.1325
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movhlps	%xmm7, %xmm11	# vect__454.1317, tmp2274
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subpd	%xmm15, %xmm4	# vect__464.1327, vect__465.1328
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movhlps	%xmm14, %xmm10	# vect_perm_odd_1979, tmp2272
	cvtps2pd	%xmm14, %xmm15	# vect_perm_odd_1979, vect__468.1330
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtpd2ps	%xmm4, %xmm4	# vect__465.1328, tmp2265
	cvtpd2ps	%xmm2, %xmm2	# vect__465.1328, tmp2264
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtps2pd	%xmm11, %xmm14	# tmp2274, vect__469.1331
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movlhps	%xmm4, %xmm2	# tmp2265, vect__466.1329
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	mulpd	%xmm3, %xmm14	# tmp2561, vect__470.1332
	cvtps2pd	%xmm7, %xmm4	# vect__454.1317, vect__469.1331
	mulpd	%xmm3, %xmm4	# tmp2561, vect__470.1332
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addps	%xmm13, %xmm1	# vect__448.1311, tmp2282
	subps	%xmm5, %xmm0	# vect__452.1315, vect__456.1320
	incq	%rbx	# ivtmp.1585
	subps	%xmm12, %xmm1	# vect__445.1310, vect__455.1319
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subpd	%xmm4, %xmm15	# vect__470.1332, vect__471.1333
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtps2pd	%xmm10, %xmm4	# tmp2272, vect__468.1330
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subpd	%xmm14, %xmm4	# vect__470.1332, vect__471.1333
	cvtpd2ps	%xmm15, %xmm15	# vect__471.1333, tmp2278
	addq	$32, %r11	#, ivtmp.1596
	cvtpd2ps	%xmm4, %xmm4	# vect__471.1333, tmp2279
	movlhps	%xmm4, %xmm15	# tmp2279, vect__472.1334
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movaps	%xmm2, %xmm4	# vect__466.1329, tmp2280
	unpckhps	%xmm15, %xmm2	# vect__472.1334, tmp2281
	movups	%xmm2, 16(%rdx,%r8)	# tmp2281, MEM[base: _559, index: ivtmp.1587_2301, offset: 16B]
	unpcklps	%xmm15, %xmm4	# vect__472.1334, tmp2280
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movaps	(%rsp), %xmm2	# %sfp, vect_cst__2008
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movups	%xmm4, (%rdx,%r8)	# tmp2280, MEM[base: _559, index: ivtmp.1587_2301, offset: 0B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulps	%xmm2, %xmm0	# vect_cst__2008, vect__474.1338
	mulps	%xmm2, %xmm1	# vect_cst__2008, vect__473.1337
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movups	-32(%r11), %xmm2	# MEM[base: _2306, offset: 0B], MEM[base: _2306, offset: 0B]
	movups	-16(%r11), %xmm5	# MEM[base: _2306, offset: 16B], MEM[base: _2306, offset: 16B]
	movaps	%xmm2, %xmm4	# MEM[base: _2306, offset: 0B], tmp2287
	shufps	$136, %xmm5, %xmm4	#, MEM[base: _2306, offset: 16B], tmp2287
	addps	%xmm4, %xmm6	# tmp2287, vect__476.1343
	shufps	$221, %xmm5, %xmm2	#, MEM[base: _2306, offset: 16B], tmp2288
	addps	%xmm2, %xmm7	# tmp2288, vect__478.1344
	movaps	%xmm6, %xmm2	# vect__476.1343, tmp2289
	unpcklps	%xmm7, %xmm2	# vect__478.1344, tmp2289
	unpckhps	%xmm7, %xmm6	# vect__478.1344, tmp2290
	movups	%xmm2, -32(%r11)	# tmp2289, MEM[base: _2306, offset: 0B]
	movups	%xmm6, -16(%r11)	# tmp2290, MEM[base: _2306, offset: 16B]
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movups	(%rdx,%r8), %xmm2	# MEM[base: _559, index: ivtmp.1587_2301, offset: 0B], MEM[base: _559, index: ivtmp.1587_2301, offset: 0B]
	movups	16(%rdx,%r8), %xmm5	# MEM[base: _559, index: ivtmp.1587_2301, offset: 16B], MEM[base: _559, index: ivtmp.1587_2301, offset: 16B]
	movaps	%xmm2, %xmm4	# MEM[base: _559, index: ivtmp.1587_2301, offset: 0B], tmp2293
	shufps	$136, %xmm5, %xmm4	#, MEM[base: _559, index: ivtmp.1587_2301, offset: 16B], tmp2293
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addps	%xmm0, %xmm4	# vect__474.1338, vect__480.1351
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	shufps	$221, %xmm5, %xmm2	#, MEM[base: _559, index: ivtmp.1587_2301, offset: 16B], tmp2294
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	subps	%xmm1, %xmm2	# vect__473.1337, vect__482.1352
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movaps	%xmm4, %xmm5	# vect__480.1351, tmp2295
	unpcklps	%xmm2, %xmm5	# vect__482.1352, tmp2295
	unpckhps	%xmm2, %xmm4	# vect__482.1352, tmp2296
	movups	%xmm5, (%rcx,%r8)	# tmp2295, MEM[base: _1714, index: ivtmp.1587_2301, offset: 0B]
	movups	%xmm4, 16(%rcx,%r8)	# tmp2296, MEM[base: _1714, index: ivtmp.1587_2301, offset: 16B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movups	(%rdx,%r8), %xmm13	# MEM[base: _559, index: ivtmp.1587_2301, offset: 0B], MEM[base: _559, index: ivtmp.1587_2301, offset: 0B]
	movups	16(%rdx,%r8), %xmm4	# MEM[base: _559, index: ivtmp.1587_2301, offset: 16B], MEM[base: _559, index: ivtmp.1587_2301, offset: 16B]
	movaps	%xmm13, %xmm2	# MEM[base: _559, index: ivtmp.1587_2301, offset: 0B], tmp2299
	shufps	$136, %xmm4, %xmm2	#, MEM[base: _559, index: ivtmp.1587_2301, offset: 16B], tmp2299
	subps	%xmm0, %xmm2	# vect__474.1338, tmp2299
	shufps	$221, %xmm4, %xmm13	#, MEM[base: _559, index: ivtmp.1587_2301, offset: 16B], tmp2300
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addps	%xmm13, %xmm1	# tmp2300, vect__486.1360
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movaps	%xmm2, %xmm0	# tmp2299, vect__484.1359
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	unpckhps	%xmm1, %xmm0	# vect__486.1360, tmp2302
	unpcklps	%xmm1, %xmm2	# vect__486.1360, tmp2301
	movups	%xmm2, (%rdx,%r8)	# tmp2301, MEM[base: _559, index: ivtmp.1587_2301, offset: 0B]
	movups	%xmm0, 16(%rdx,%r8)	# tmp2302, MEM[base: _559, index: ivtmp.1587_2301, offset: 16B]
	addq	$32, %r8	#, ivtmp.1587
	cmpq	%rbx, %rax	# ivtmp.1585, bnd.1280
# SUCC: 13 [83.3% (adjusted)]  count:601295423 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 14 [16.7% (adjusted)]  count:120259083 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	ja	.L357	#,
# BLOCK 14, count:120259083 (estimated locally) seq:12
# PRED: 13 [16.7% (adjusted)]  count:120259083 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	leaq	0(,%rax,4), %r8	#, niters_vector_mult_vf.1281
	salq	$5, %rax	#, _1908
	addq	%rax, %rbp	# _1908, tmp.1282
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leaq	0(%rbp,%rdi), %rdx	#, _786
	addq	%rax, %rsi	# _1908, tmp.1284
	movss	4(%rsi), %xmm6	# tmp.1284_1910->i, _202
	movss	(%rdx), %xmm5	# _786->r, _196
	movss	(%rsi), %xmm2	# tmp.1284_1910->r, _198
	movss	4(%rdx), %xmm3	# _786->i, _201
	movaps	%xmm5, %xmm1	# _196, tmp2303
	mulss	%xmm6, %xmm5	# _202, tmp2305
	mulss	%xmm2, %xmm1	# _198, tmp2303
	mulss	%xmm3, %xmm2	# _201, tmp2306
	addq	%rsi, %rax	# tmp.1284, tmp.1285
	movaps	%xmm3, %xmm7	# _201, tmp2304
	movaps	%xmm5, %xmm3	# tmp2305, tmp2305
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leaq	(%rdx,%rdi), %rcx	#, _1696
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm2, %xmm3	# tmp2306, tmp2305
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%rax), %xmm2	# tmp.1285_1912->i, _1592
	movss	(%rcx), %xmm8	# _1696->r, _1697
	movss	4(%rcx), %xmm5	# _1696->i, _1594
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	mulss	%xmm6, %xmm7	# _202, tmp2304
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	(%rax), %xmm6	# tmp.1285_1912->r, _1698
	movaps	%xmm2, %xmm9	# _1592, _793
	mulss	%xmm5, %xmm9	# _1594, _793
	mulss	%xmm8, %xmm2	# _1697, tmp2308
	mulss	%xmm6, %xmm5	# _1698, tmp2307
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm7, %xmm1	# tmp2304, _203
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm8, %xmm0	# _1697, _1699
	mulss	%xmm6, %xmm0	# _1698, _1699
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp2311
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm2, %xmm5	# tmp2308, tmp2307
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movsd	.LC1(%rip), %xmm2	#, tmp2313
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm6, %xmm6	# tmp2310
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm5, %xmm8	# tmp2307, _1588
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm5	# _203, tmp2309
	subss	%xmm9, %xmm5	# _793, tmp2309
	movaps	%xmm8, %xmm7	# _1588, _795
	addss	%xmm3, %xmm7	# _1695, _795
	addss	%xmm0, %xmm5	# _1699, _1586
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	0(%rbp), %xmm6	# tmp.1282_1907->r, tmp2310
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _1699, _203
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm5, %xmm10	# _1586, tmp2311
	mulsd	%xmm2, %xmm10	# tmp2313, tmp2312
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm8, %xmm3	# _1588, _1695
	movss	24(%rsp), %xmm4	# %sfp, epi3$i
	movaps	%xmm1, %xmm0	# _203, tmp2323
	movaps	%xmm3, %xmm1	# _1695, tmp2325
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm6	# tmp2312, tmp2314
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp2317
	cvtss2sd	%xmm7, %xmm10	# _795, tmp2317
	mulsd	%xmm2, %xmm10	# tmp2313, tmp2318
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm6, %xmm6	# tmp2314, tmp2315
	movss	%xmm6, (%rdx)	# tmp2315, _786->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm6, %xmm6	# tmp2316
	cvtss2sd	4(%rbp), %xmm6	# tmp.1282_1907->i, tmp2316
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	0(%rbp), %xmm5	# tmp.1282_1907->r, tmp2326
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm10, %xmm6	# tmp2318, tmp2320
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm1	# epi3$i, _2070
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _793, tmp2324
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm6, %xmm6	# tmp2320, tmp2322
	movss	%xmm6, 4(%rdx)	# tmp2322, _786->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm5, 0(%rbp)	# tmp2326, tmp.1282_1907->r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rdx), %xmm3	# _786->r, tmp2330
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	4(%rbp), %xmm7	# tmp.1282_1907->i, tmp2328
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _2071
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm3	# _2070, tmp2330
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm7, 4(%rbp)	# tmp2328, tmp.1282_1907->i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm3, (%rcx)	# tmp2330, _1696->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rdx), %xmm3	# _786->i, _786->i
	subss	%xmm0, %xmm3	# _2071, tmp2332
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm3, 4(%rcx)	# tmp2332, _1696->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rdx), %xmm3	# _786->r, _786->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rdx), %xmm0	# _786->i, tmp2336
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm3	# _2070, _786->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rdx)	# tmp2336, _786->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm3, (%rdx)	# tmp2334, _786->r
# kiss_fft.c:133:      }while(--k);
	subq	%r8, %r10	# niters_vector_mult_vf.1281, k
# SUCC: 15 [89.0% (guessed)]  count:107030584 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:13228499 (estimated locally) (CAN_FALLTHRU)
	je	.L313	#,
# BLOCK 15, count:107030590 (estimated locally) seq:13
# PRED: 14 [89.0% (guessed)]  count:107030584 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leaq	-256(%rbp,%r13), %rdx	#, _803
	movss	8(%rsi), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.1284_1910 + 8B].r, _801
	movss	12(%rsi), %xmm3	# MEM[(struct kiss_fft_cpx *)tmp.1284_1910 + 8B].i, _798
	movss	(%rdx), %xmm6	# _803->r, _802
	movss	4(%rdx), %xmm5	# _803->i, _799
	movaps	%xmm1, %xmm0	# _801, tmp2339
	movaps	%xmm3, %xmm7	# _798, tmp2340
	mulss	%xmm5, %xmm7	# _799, tmp2340
	mulss	%xmm6, %xmm0	# _802, tmp2339
	mulss	%xmm6, %xmm3	# _802, tmp2342
	mulss	%xmm5, %xmm1	# _799, tmp2341
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leaq	(%rdx,%rdi), %rcx	#, _2074
	movss	(%rcx), %xmm6	# _2074->r, _2075
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm7, %xmm0	# tmp2340, _808
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	20(%rax), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1285_1912 + 16B].i, _2079
	movss	16(%rax), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.1285_1912 + 16B].r, _2076
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm3, %xmm1	# tmp2342, _805
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%rcx), %xmm3	# _2074->i, _2078
	movaps	%xmm6, %xmm9	# _2075, _2077
	mulss	%xmm7, %xmm6	# _2079, tmp2343
	mulss	%xmm5, %xmm9	# _2076, _2077
	movaps	%xmm3, %xmm8	# _2078, _2080
	mulss	%xmm3, %xmm5	# _2078, tmp2344
	mulss	%xmm7, %xmm8	# _2079, _2080
	movaps	%xmm6, %xmm3	# tmp2343, tmp2343
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp2347
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm7	# _805, _2086
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm5, %xmm3	# tmp2344, tmp2343
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm0, %xmm5	# _808, tmp2345
	subss	%xmm8, %xmm5	# _2080, tmp2345
	addss	%xmm3, %xmm7	# _2084, _2086
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm6, %xmm6	# tmp2346
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm9, %xmm5	# _2077, _2085
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	8(%rbp), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 8B].r, tmp2346
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm3, %xmm1	# _2084, tmp2361
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm5, %xmm10	# _2085, tmp2347
	mulsd	%xmm2, %xmm10	# tmp2313, tmp2348
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm9, %xmm0	# _2077, tmp2359
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm1	# epi3$i, _2107
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm8, %xmm0	# _2080, tmp2360
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm6	# tmp2348, tmp2350
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp2353
	cvtss2sd	%xmm7, %xmm10	# _2086, tmp2353
	mulsd	%xmm2, %xmm10	# tmp2313, tmp2354
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm6, %xmm6	# tmp2350, tmp2351
	movss	%xmm6, (%rdx)	# tmp2351, _803->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm6, %xmm6	# tmp2352
	cvtss2sd	12(%rbp), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 8B].i, tmp2352
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	8(%rbp), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 8B].r, tmp2362
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm10, %xmm6	# tmp2354, tmp2356
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _2106
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm6, %xmm6	# tmp2356, tmp2358
	movss	%xmm6, 4(%rdx)	# tmp2358, _803->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm5, 8(%rbp)	# tmp2362, MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 8B].r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rdx), %xmm3	# _803->r, tmp2366
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	12(%rbp), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 8B].i, tmp2364
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm3	# _2107, tmp2366
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm7, 12(%rbp)	# tmp2364, MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 8B].i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm3, (%rcx)	# tmp2366, _2074->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rdx), %xmm3	# _803->i, _803->i
	subss	%xmm0, %xmm3	# _2106, tmp2368
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm3, 4(%rcx)	# tmp2368, _2074->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rdx), %xmm3	# _803->r, _803->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rdx), %xmm0	# _803->i, tmp2372
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm3	# _2107, _803->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rdx)	# tmp2372, _803->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm3, (%rdx)	# tmp2370, _803->r
# kiss_fft.c:132:          ++Fout;
	leaq	16(%rbp), %rdx	#, Fout
# kiss_fft.c:133:      }while(--k);
	cmpq	$1, %r10	#, k
# SUCC: 16 [89.0% (guessed)]  count:95257225 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:11773365 (estimated locally) (CAN_FALLTHRU)
	je	.L313	#,
# BLOCK 16, count:95257224 (estimated locally) seq:14
# PRED: 15 [89.0% (guessed)]  count:95257225 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addq	%rdi, %rdx	# _426, _2133
	movss	20(%rsi), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1284_1910 + 16B].i, _2138
	movss	4(%rdx), %xmm3	# _2133->i, _2137
	movss	(%rdx), %xmm6	# _2133->r, _2134
	movss	16(%rsi), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.1284_1910 + 16B].r, _2135
	movaps	%xmm6, %xmm1	# _2134, tmp2375
	movaps	%xmm3, %xmm8	# _2137, tmp2376
	mulss	%xmm7, %xmm6	# _2138, tmp2377
	mulss	%xmm7, %xmm8	# _2138, tmp2376
	mulss	%xmm5, %xmm1	# _2135, tmp2375
	mulss	%xmm3, %xmm5	# _2137, tmp2378
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leaq	(%rdx,%rdi), %rcx	#, _2144
	movss	(%rcx), %xmm7	# _2144->r, _2145
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movaps	%xmm6, %xmm3	# tmp2377, tmp2377
	subss	%xmm8, %xmm1	# tmp2376, _2140
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	32(%rax), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.1285_1912 + 32B].r, _2146
	movss	36(%rax), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.1285_1912 + 32B].i, _2149
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm5, %xmm3	# tmp2378, tmp2377
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%rcx), %xmm5	# _2144->i, _2148
	movaps	%xmm7, %xmm0	# _2145, _2147
	mulss	%xmm6, %xmm0	# _2146, _2147
	mulss	%xmm8, %xmm7	# _2149, tmp2379
	mulss	%xmm5, %xmm6	# _2148, tmp2380
	movaps	%xmm5, %xmm9	# _2148, _2150
	mulss	%xmm8, %xmm9	# _2149, _2150
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp2383
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm3, %xmm8	# _2143, _2156
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm6, %xmm7	# tmp2380, tmp2379
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# _2140, tmp2381
	subss	%xmm9, %xmm6	# _2150, tmp2381
	addss	%xmm7, %xmm8	# _2154, _2156
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm7, %xmm5	# tmp2379, _2154
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm0, %xmm6	# _2147, _2155
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp2382
	cvtss2sd	16(%rbp), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 16B].r, tmp2382
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm10	# _2155, tmp2383
	mulsd	%xmm2, %xmm10	# tmp2313, tmp2384
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _2147, _2140
	subss	%xmm5, %xmm3	# _2154, _2143
	movaps	%xmm1, %xmm0	# _2140, tmp2395
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm7	# tmp2384, tmp2386
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp2389
	cvtss2sd	%xmm8, %xmm10	# _2156, tmp2389
	mulsd	%xmm2, %xmm10	# tmp2313, tmp2390
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp2386, tmp2387
	movss	%xmm7, (%rdx)	# tmp2387, _2133->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp2388
	cvtss2sd	20(%rbp), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 16B].i, tmp2388
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	16(%rbp), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 16B].r, tmp2398
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm3, %xmm1	# _2143, tmp2397
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm10, %xmm7	# tmp2390, tmp2392
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm1	# epi3$i, _2177
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _2150, tmp2396
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm7, %xmm7	# tmp2392, tmp2394
	movss	%xmm7, 4(%rdx)	# tmp2394, _2133->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, 16(%rbp)	# tmp2398, MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 16B].r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rdx), %xmm3	# _2133->r, tmp2402
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	20(%rbp), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 16B].i, tmp2400
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _2176
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm3	# _2177, tmp2402
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm8, 20(%rbp)	# tmp2400, MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 16B].i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm3, (%rcx)	# tmp2402, _2144->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rdx), %xmm3	# _2133->i, _2133->i
	subss	%xmm0, %xmm3	# _2176, tmp2404
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm3, 4(%rcx)	# tmp2404, _2144->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rdx), %xmm3	# _2133->r, _2133->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rdx), %xmm0	# _2133->i, tmp2408
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm3	# _2177, _2133->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rdx)	# tmp2408, _2133->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm3, (%rdx)	# tmp2406, _2133->r
# kiss_fft.c:132:          ++Fout;
	leaq	24(%rbp), %rdx	#, Fout
# kiss_fft.c:133:      }while(--k);
	cmpq	$2, %r10	#, k
# SUCC: 17 [89.0% (guessed)]  count:84778929 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:10478295 (estimated locally) (CAN_FALLTHRU)
	je	.L313	#,
# BLOCK 17, count:84778927 (estimated locally) seq:15
# PRED: 16 [89.0% (guessed)]  count:84778929 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addq	%rdi, %rdx	# _426, _1836
	movss	28(%rsi), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1284_1910 + 24B].i, _1841
	movss	4(%rdx), %xmm3	# _1836->i, _1840
	movss	(%rdx), %xmm6	# _1836->r, _1837
	movss	24(%rsi), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.1284_1910 + 24B].r, _1838
	movaps	%xmm6, %xmm1	# _1837, tmp2410
	movaps	%xmm3, %xmm8	# _1840, tmp2411
	mulss	%xmm7, %xmm6	# _1841, tmp2412
	mulss	%xmm7, %xmm8	# _1841, tmp2411
	mulss	%xmm5, %xmm1	# _1838, tmp2410
	mulss	%xmm3, %xmm5	# _1840, tmp2413
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addq	%rdx, %rdi	# _1836, _1847
	movss	(%rdi), %xmm7	# _1847->r, _1848
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movaps	%xmm6, %xmm3	# tmp2412, tmp2412
	subss	%xmm8, %xmm1	# tmp2411, _1843
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	48(%rax), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.1285_1912 + 48B].r, _1849
	movss	52(%rax), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.1285_1912 + 48B].i, _1852
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm5, %xmm3	# tmp2413, tmp2412
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%rdi), %xmm5	# _1847->i, _1851
	movaps	%xmm7, %xmm0	# _1848, _1850
	mulss	%xmm6, %xmm0	# _1849, _1850
	mulss	%xmm8, %xmm7	# _1852, tmp2414
	mulss	%xmm5, %xmm6	# _1851, tmp2415
	movaps	%xmm5, %xmm9	# _1851, _1853
	mulss	%xmm8, %xmm9	# _1852, _1853
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp2418
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm3, %xmm8	# _1846, _1859
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm6, %xmm7	# tmp2415, tmp2414
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# _1843, tmp2416
	subss	%xmm9, %xmm6	# _1853, tmp2416
	addss	%xmm7, %xmm8	# _1857, _1859
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm7, %xmm5	# tmp2414, _1857
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm0, %xmm6	# _1850, _1858
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp2417
	cvtss2sd	24(%rbp), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 24B].r, tmp2417
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm10	# _1858, tmp2418
	mulsd	%xmm2, %xmm10	# tmp2313, tmp2419
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _1850, _1843
	subss	%xmm5, %xmm3	# _1857, tmp2432
	movaps	%xmm1, %xmm0	# _1843, tmp2430
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm7	# tmp2419, tmp2421
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp2424
	cvtss2sd	%xmm8, %xmm10	# _1859, tmp2424
	mulsd	%xmm10, %xmm2	# tmp2424, tmp2425
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _1853, tmp2431
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp2421, tmp2422
	movss	%xmm7, (%rdx)	# tmp2422, _1836->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp2423
	cvtss2sd	28(%rbp), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 24B].i, tmp2423
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	24(%rbp), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 24B].r, tmp2433
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm2, %xmm7	# tmp2425, tmp2423
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _1879
	mulss	%xmm3, %xmm4	# tmp2432, _1880
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm2, %xmm2	# tmp2429
	cvtsd2ss	%xmm7, %xmm2	# tmp2427, tmp2429
	movss	%xmm2, 4(%rdx)	# tmp2429, _1836->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, 24(%rbp)	# tmp2433, MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 24B].r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rdx), %xmm1	# _1836->r, tmp2437
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	28(%rbp), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 24B].i, tmp2435
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm4, %xmm1	# _1880, tmp2437
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm8, 28(%rbp)	# tmp2435, MEM[(struct kiss_fft_cpx *)tmp.1282_1907 + 24B].i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm1, (%rdi)	# tmp2437, _1847->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rdx), %xmm1	# _1836->i, _1836->i
	subss	%xmm0, %xmm1	# _1879, tmp2439
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm1, 4(%rdi)	# tmp2439, _1847->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rdx), %xmm1	# _1836->r, _1836->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rdx), %xmm0	# _1836->i, tmp2443
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm4, %xmm1	# _1880, tmp2441
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rdx)	# tmp2443, _1836->i
# SUCC: 18 [always]  count:84778927 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm1, (%rdx)	# tmp2441, _1836->r
# BLOCK 18, count:601295430 (estimated locally) seq:16
# PRED: 24 [11.0% (guessed)]  count:150323856 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 59 [25.0% (guessed)]  count:30064771 (estimated locally) (CAN_FALLTHRU) 60 [11.0% (guessed)]  count:9921374 (estimated locally) (CAN_FALLTHRU) 61 [11.0% (guessed)]  count:8830024 (estimated locally) (CAN_FALLTHRU) 62 [always]  count:71442918 (estimated locally) (CAN_FALLTHRU) 31 [always]  count:133788232 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 28 [11.0% (guessed)]  count:16535624 (estimated locally) (CAN_FALLTHRU) 17 [always]  count:84778927 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 14 [11.0% (guessed)]  count:13228499 (estimated locally) (CAN_FALLTHRU) 15 [11.0% (guessed)]  count:11773365 (estimated locally) (CAN_FALLTHRU) 16 [11.0% (guessed)]  count:10478295 (estimated locally) (CAN_FALLTHRU) 81 [always]  count:30064771 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 91 [always]  count:30064771 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
.L313:
# kiss_fft.c:388: }
	addq	$184, %rsp	#,
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
# SUCC: EXIT [always]  count:601295430 (estimated locally)
	ret	
# BLOCK 19, count:255550557 (estimated locally) seq:17
# PRED: 3 [34.0% (guessed)]  count:255550557 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L438:
	.cfi_restore_state
# SUCC: 20 [always]  count:255550557 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%rdx, %rax	# fout, Fout
# BLOCK 20, count:2323186868 (estimated locally) seq:18
# PRED: 19 [always]  count:255550557 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 20 [89.0% (guessed)]  count:2067636314 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L341:
# kiss_fft.c:278:             *Fout = *f;
	movq	(%rsi), %rdx	# MEM[base: f_371, offset: 0B], MEM[base: f_371, offset: 0B]
# kiss_fft.c:280:         }while(++Fout != Fout_end );
	addq	$8, %rax	#, Fout
# kiss_fft.c:278:             *Fout = *f;
	movq	%rdx, -8(%rax)	# MEM[base: f_371, offset: 0B], MEM[base: Fout_372, offset: 0B]
# kiss_fft.c:279:             f += fstride*in_stride;
	addq	$8, %rsi	#, fin
# kiss_fft.c:280:         }while(++Fout != Fout_end );
	cmpq	%rax, %r15	# Fout, Fout_end
# SUCC: 20 [89.0% (guessed)]  count:2067636314 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 21 [11.0% (guessed)]  count:255550554 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L341	#,
# BLOCK 21, count:255550554 (estimated locally) seq:19
# PRED: 20 [11.0% (guessed)]  count:255550554 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
# kiss_fft.c:295:     switch (p) {
	cmpl	$4, %r13d	#, p
# SUCC: 7 [80.0% (adjusted)]  count:204440442 (estimated locally) (CAN_FALLTHRU) 22 [20.0% (adjusted)]  count:51110112 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L439	#,
# BLOCK 22, count:150323856 (estimated locally) seq:20
# PRED: 6 [20.0% (adjusted)]  count:99213746 (estimated locally) (CAN_FALLTHRU) 21 [20.0% (adjusted)]  count:51110112 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
.L342:
# kiss_fft.c:298:         case 4: kf_bfly4(Fout,fstride,st,m); break;
	movslq	%r12d, %rax	# m, k
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	leaq	264(%r9), %rsi	#, tw1
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movq	%rax, %r10	# k, _505
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	leaq	(%rax,%rax,2), %rdx	#, tmp2482
# kiss_fft.c:77:         if(st->inverse) {
	movl	4(%r9), %r9d	# cfg_2(D)->inverse, _553
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	leaq	0(,%rax,8), %rcx	#, _491
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	salq	$4, %r10	#, _505
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	salq	$3, %rdx	#, tmp2483
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	movq	%rsi, %r8	# tw1, tw3
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	movq	%rsi, %rdi	# tw1, tw2
# SUCC: 25 [always]  count:150323856 (estimated locally) (CAN_FALLTHRU)
	jmp	.L364	#
# BLOCK 23, count:683290258 (estimated locally) seq:21
# PRED: 25 [50.0% (guessed)]  count:683290260 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L440:
# kiss_fft.c:78:             Fout[m].r = scratch[5].r - scratch[4].i;
	movss	%xmm1, 0(%rbp,%rcx)	# _1478, MEM[base: Fout_1569, index: _491, offset: 0B]
# kiss_fft.c:79:             Fout[m].i = scratch[5].i + scratch[4].r;
	movss	%xmm0, 4(%rbp,%rcx)	# _1477, MEM[base: Fout_1569, index: _491, offset: 4B]
# kiss_fft.c:80:             Fout[m3].r = scratch[5].r + scratch[4].i;
	movss	%xmm2, 0(%rbp,%rdx)	# _1481, MEM[base: Fout_1569, index: _518, offset: 0B]
# SUCC: 24 [always]  count:683290258 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:81:             Fout[m3].i = scratch[5].i - scratch[4].r;
	movss	%xmm3, 4(%rbp,%rdx)	# _1480, MEM[base: Fout_1569, index: _518, offset: 4B]
# BLOCK 24, count:1366580518 (estimated locally) seq:22
# PRED: 23 [always]  count:683290258 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 26 [always]  count:683290258 (estimated locally) (CAN_FALLTHRU)
.L363:
# kiss_fft.c:88:         ++Fout;
	addq	$8, %rbp	#, fout
# kiss_fft.c:89:     }while(--k);
	decq	%rax	# k
# SUCC: 25 [89.0% (guessed)]  count:1216256662 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:150323856 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	je	.L313	#,
# BLOCK 25, count:1366580520 (estimated locally) seq:23
# PRED: 24 [89.0% (guessed)]  count:1216256662 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 22 [always]  count:150323856 (estimated locally) (CAN_FALLTHRU)
.L364:
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movss	4(%rsi), %xmm2	# MEM[base: tw1_1568, offset: 4B], _1558
	movss	(%rsi), %xmm4	# MEM[base: tw1_1568, offset: 0B], _1561
	movss	0(%rbp,%rcx), %xmm8	# MEM[base: Fout_1569, index: _491, offset: 0B], _1562
	movss	4(%rbp,%rcx), %xmm3	# MEM[base: Fout_1569, index: _491, offset: 4B], _1559
	movaps	%xmm2, %xmm5	# _1558, tmp2485
	mulss	%xmm3, %xmm5	# _1559, tmp2485
	mulss	%xmm8, %xmm2	# _1562, tmp2487
	mulss	%xmm4, %xmm3	# _1561, tmp2486
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	4(%rdi), %xmm0	# MEM[base: tw2_1567, offset: 4B], _1547
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movaps	%xmm4, %xmm1	# _1561, tmp2484
	mulss	%xmm8, %xmm1	# _1562, tmp2484
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	0(%rbp,%r10), %xmm4	# MEM[base: Fout_1569, index: _505, offset: 0B], _1551
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	addss	%xmm2, %xmm3	# tmp2487, tmp2486
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	(%rdi), %xmm2	# MEM[base: tw2_1567, offset: 0B], _1550
	movaps	%xmm0, %xmm9	# _1547, _1546
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movaps	%xmm3, %xmm8	# tmp2486, _1553
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	4(%rbp,%r10), %xmm3	# MEM[base: Fout_1569, index: _505, offset: 4B], _1548
	mulss	%xmm4, %xmm0	# _1551, tmp2489
	mulss	%xmm3, %xmm9	# _1548, _1546
	mulss	%xmm2, %xmm3	# _1550, tmp2488
	movaps	%xmm2, %xmm11	# _1550, _1549
	mulss	%xmm4, %xmm11	# _1551, _1549
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	(%r8), %xmm2	# MEM[base: tw3_1566, offset: 0B], _1540
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	subss	%xmm5, %xmm1	# tmp2485, _1556
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	addss	%xmm0, %xmm3	# tmp2489, tmp2488
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	4(%rbp,%rdx), %xmm5	# MEM[base: Fout_1569, index: _518, offset: 4B], _1538
	movss	0(%rbp,%rdx), %xmm7	# MEM[base: Fout_1569, index: _518, offset: 0B], _1541
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movaps	%xmm3, %xmm4	# tmp2488, _1543
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	4(%r8), %xmm3	# MEM[base: tw3_1566, offset: 4B], _1537
	movaps	%xmm2, %xmm0	# _1540, _1539
	movaps	%xmm3, %xmm10	# _1537, _1535
	mulss	%xmm5, %xmm10	# _1538, _1535
	mulss	%xmm2, %xmm5	# _1540, tmp2490
	mulss	%xmm7, %xmm3	# _1541, tmp2491
	mulss	%xmm7, %xmm0	# _1541, _1539
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movss	0(%rbp), %xmm2	# MEM[base: Fout_1569, offset: 0B], _1525
# kiss_fft.c:72:         tw1 += fstride;
	addq	$8, %rsi	#, tw1
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movaps	%xmm5, %xmm7	# tmp2490, tmp2490
	addss	%xmm3, %xmm7	# tmp2491, tmp2490
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movss	4(%rbp), %xmm3	# MEM[base: Fout_1569, offset: 4B], _1521
	movaps	%xmm2, %xmm5	# _1525, tmp2492
	movaps	%xmm3, %xmm6	# _1521, _1520
	subss	%xmm4, %xmm6	# _1543, _1520
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	addss	%xmm4, %xmm3	# _1543, _1517
	addss	%xmm11, %xmm2	# _1549, tmp2493
# kiss_fft.c:69:         C_ADD( scratch[3] , scratch[0] , scratch[2] );
	movaps	%xmm1, %xmm4	# _1556, tmp2494
	subss	%xmm10, %xmm4	# _1535, tmp2494
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	subss	%xmm9, %xmm2	# _1546, _1519
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	addss	%xmm9, %xmm5	# _1546, tmp2492
# kiss_fft.c:69:         C_ADD( scratch[3] , scratch[0] , scratch[2] );
	movaps	%xmm7, %xmm9	# _1526, _1498
	addss	%xmm0, %xmm4	# _1539, _1515
	addss	%xmm8, %xmm9	# _1553, _1498
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	movss	%xmm2, 0(%rbp)	# _1519, MEM[base: Fout_1569, offset: 0B]
	movss	%xmm3, 4(%rbp)	# _1517, MEM[base: Fout_1569, offset: 4B]
# kiss_fft.c:71:         C_SUB( Fout[m2], *Fout, scratch[3] );
	subss	%xmm4, %xmm2	# _1515, tmp2496
	subss	%xmm9, %xmm3	# _1498, tmp2497
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	subss	%xmm11, %xmm5	# _1549, _1522
# kiss_fft.c:70:         C_SUB( scratch[4] , scratch[0] , scratch[2] );
	subss	%xmm0, %xmm1	# _1539, _1556
# kiss_fft.c:71:         C_SUB( Fout[m2], *Fout, scratch[3] );
	movss	%xmm2, 0(%rbp,%r10)	# tmp2496, MEM[base: Fout_1569, index: _505, offset: 0B]
	movss	%xmm3, 4(%rbp,%r10)	# tmp2497, MEM[base: Fout_1569, index: _505, offset: 4B]
# kiss_fft.c:70:         C_SUB( scratch[4] , scratch[0] , scratch[2] );
	movaps	%xmm1, %xmm0	# _1556, tmp2495
	movaps	%xmm5, %xmm2	# _1522, tmp2502
	subss	%xmm8, %xmm5	# _1553, _1522
	addss	%xmm10, %xmm0	# _1535, _1496
# kiss_fft.c:75:         C_ADDTO( *Fout , scratch[3] );
	addss	0(%rbp), %xmm4	# MEM[base: Fout_1569, offset: 0B], tmp2498
	addss	4(%rbp), %xmm9	# MEM[base: Fout_1569, offset: 4B], tmp2500
	subss	%xmm7, %xmm2	# _1526, tmp2502
	movaps	%xmm6, %xmm3	# _1520, _1480
	movaps	%xmm5, %xmm1	# _1522, tmp2503
	subss	%xmm0, %xmm3	# _1496, _1480
	addss	%xmm8, %xmm2	# _1553, _1481
	addss	%xmm7, %xmm1	# _1526, _1478
	addss	%xmm6, %xmm0	# _1520, _1477
# kiss_fft.c:73:         tw2 += fstride*2;
	addq	$16, %rdi	#, tw2
# kiss_fft.c:74:         tw3 += fstride*3;
	addq	$24, %r8	#, tw3
# kiss_fft.c:75:         C_ADDTO( *Fout , scratch[3] );
	movss	%xmm4, 0(%rbp)	# tmp2498, MEM[base: Fout_1569, offset: 0B]
	movss	%xmm9, 4(%rbp)	# tmp2500, MEM[base: Fout_1569, offset: 4B]
# kiss_fft.c:77:         if(st->inverse) {
	testl	%r9d, %r9d	# _553
# SUCC: 23 [50.0% (guessed)]  count:683290260 (estimated locally) (CAN_FALLTHRU) 26 [50.0% (guessed)]  count:683290260 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L440	#,
# BLOCK 26, count:683290258 (estimated locally) seq:24
# PRED: 25 [50.0% (guessed)]  count:683290260 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:83:             Fout[m].r = scratch[5].r + scratch[4].i;
	movss	%xmm2, 0(%rbp,%rcx)	# _1481, MEM[base: Fout_1569, index: _491, offset: 0B]
# kiss_fft.c:84:             Fout[m].i = scratch[5].i - scratch[4].r;
	movss	%xmm3, 4(%rbp,%rcx)	# _1480, MEM[base: Fout_1569, index: _491, offset: 4B]
# kiss_fft.c:85:             Fout[m3].r = scratch[5].r - scratch[4].i;
	movss	%xmm1, 0(%rbp,%rdx)	# _1478, MEM[base: Fout_1569, index: _518, offset: 0B]
# kiss_fft.c:86:             Fout[m3].i = scratch[5].i + scratch[4].r;
	movss	%xmm0, 4(%rbp,%rdx)	# _1477, MEM[base: Fout_1569, index: _518, offset: 4B]
# SUCC: 24 [always]  count:683290258 (estimated locally) (CAN_FALLTHRU)
	jmp	.L363	#
# BLOCK 27, count:751619281 (estimated locally) seq:25
# PRED: 7 [37.5% (adjusted)]  count:281857230 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L343:
# kiss_fft.c:295:     switch (p) {
	cmpl	$5, %r13d	#, p
# SUCC: 63 [33.3% (adjusted)]  count:250539762 (estimated locally) (CAN_FALLTHRU) 28 [66.7% (adjusted)]  count:501079519 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L346	#,
# BLOCK 28, count:150323856 (estimated locally) seq:26
# PRED: 27 [66.7% (adjusted)]  count:501079519 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movslq	%r12d, %rdx	# m, m
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	salq	$3, %rdx	#, _568
	leaq	264(%r9,%rdx), %rax	#, _569
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movss	4(%rax), %xmm3	# MEM[(struct kiss_fft_cpx *)_569 + 4B], ya$i
	movss	(%rax), %xmm15	# MEM[(struct kiss_fft_cpx *)_569], ya$r
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	addq	%rdx, %rax	# _568, _573
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movss	%xmm3, (%rsp)	# ya$i, %sfp
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	movss	(%rax), %xmm3	# MEM[(struct kiss_fft_cpx *)_573], yb$r
# kiss_fft.c:153:     Fout1=Fout0+m;
	leaq	0(%rbp,%rdx), %rcx	#, Fout1
# kiss_fft.c:154:     Fout2=Fout0+2*m;
	leaq	(%rcx,%rdx), %rsi	#, Fout2
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	movss	%xmm3, 24(%rsp)	# yb$r, %sfp
	movss	4(%rax), %xmm3	# MEM[(struct kiss_fft_cpx *)_573 + 4B], yb$i
# kiss_fft.c:155:     Fout3=Fout0+3*m;
	leaq	(%rsi,%rdx), %rdi	#, Fout3
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	movss	%xmm3, 32(%rsp)	# yb$i, %sfp
# kiss_fft.c:156:     Fout4=Fout0+4*m;
	addq	%rdi, %rdx	# Fout3, Fout4
# kiss_fft.c:159:     for ( u=0; u<m; ++u ) {
	testl	%r12d, %r12d	# m
# SUCC: 29 [89.0% (guessed)]  count:133788232 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:16535624 (estimated locally) (CAN_FALLTHRU)
	jle	.L313	#,
# BLOCK 29, count:133788232 (estimated locally) seq:27
# PRED: 28 [89.0% (guessed)]  count:133788232 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leal	-1(%r12), %eax	#, tmp2507
	leaq	8(,%rax,8), %r10	#, _2322
	movq	%r9, %r8	# cfg, ivtmp.1662
# SUCC: 30 [always]  count:133788232 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	xorl	%eax, %eax	# ivtmp.1646
# BLOCK 30, count:1216256664 (estimated locally) seq:28
# PRED: 29 [always]  count:133788232 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 30 [89.0% (guessed)]  count:1082468432 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L365:
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	movss	(%rcx,%rax), %xmm2	# MEM[base: Fout1_577, index: ivtmp.1646_2312, offset: 0B], _594
	movss	4(%rcx,%rax), %xmm4	# MEM[base: Fout1_577, index: ivtmp.1646_2312, offset: 4B], _602
	movss	264(%r9,%rax), %xmm1	# MEM[base: cfg_2(D), index: ivtmp.1646_2312, offset: 264B], _600
	movss	268(%r9,%rax), %xmm0	# MEM[base: cfg_2(D), index: ivtmp.1646_2312, offset: 268B], _603
	movaps	%xmm2, %xmm3	# _594, tmp2509
	movaps	%xmm4, %xmm5	# _602, tmp2510
	mulss	%xmm0, %xmm5	# _603, tmp2510
	mulss	%xmm1, %xmm3	# _600, tmp2509
	mulss	%xmm2, %xmm0	# _594, tmp2511
	mulss	%xmm4, %xmm1	# _602, tmp2512
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movss	4(%rsi,%rax), %xmm6	# MEM[base: Fout2_581, index: ivtmp.1646_2312, offset: 4B], _618
	movss	264(%r9,%rax,2), %xmm4	# MEM[base: cfg_2(D), index: ivtmp.1646_2312, step: 2, offset: 264B], _616
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	subss	%xmm5, %xmm3	# tmp2510, _605
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movss	(%rsi,%rax), %xmm5	# MEM[base: Fout2_581, index: ivtmp.1646_2312, offset: 0B], _610
	movss	268(%r9,%rax,2), %xmm2	# MEM[base: cfg_2(D), index: ivtmp.1646_2312, step: 2, offset: 268B], _619
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	addss	%xmm1, %xmm0	# tmp2512, _608
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movaps	%xmm6, %xmm7	# _618, tmp2514
	movaps	%xmm5, %xmm1	# _610, tmp2513
	mulss	%xmm2, %xmm7	# _619, tmp2514
	mulss	%xmm4, %xmm1	# _616, tmp2513
	mulss	%xmm5, %xmm2	# _610, tmp2515
	mulss	%xmm6, %xmm4	# _618, tmp2516
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	(%rdi,%rax), %xmm5	# MEM[base: Fout3_585, index: ivtmp.1646_2312, offset: 0B], _626
	movss	4(%rdi,%rax), %xmm6	# MEM[base: Fout3_585, index: ivtmp.1646_2312, offset: 4B], _634
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	subss	%xmm7, %xmm1	# tmp2514, _621
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	268(%r8), %xmm7	# MEM[base: _2317, offset: 268B], _635
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	addss	%xmm4, %xmm2	# tmp2516, _624
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	264(%r8), %xmm4	# MEM[base: _2317, offset: 264B], _632
	movaps	%xmm5, %xmm10	# _626, _633
	mulss	%xmm4, %xmm10	# _632, _633
	mulss	%xmm7, %xmm5	# _635, tmp2517
	mulss	%xmm6, %xmm4	# _634, tmp2518
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	4(%rdx,%rax), %xmm14	# MEM[base: Fout4_589, index: ivtmp.1646_2312, offset: 4B], _650
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movaps	%xmm6, %xmm13	# _634, _636
	mulss	%xmm7, %xmm13	# _635, _636
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	268(%r9,%rax,4), %xmm7	# MEM[base: cfg_2(D), index: ivtmp.1646_2312, step: 4, offset: 268B], _651
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	addss	%xmm4, %xmm5	# tmp2518, tmp2517
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	(%rdx,%rax), %xmm4	# MEM[base: Fout4_589, index: ivtmp.1646_2312, offset: 0B], _642
	movaps	%xmm14, %xmm8	# _650, _652
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movaps	%xmm5, %xmm6	# tmp2517, _640
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	264(%r9,%rax,4), %xmm5	# MEM[base: cfg_2(D), index: ivtmp.1646_2312, step: 4, offset: 264B], _648
	movaps	%xmm4, %xmm9	# _642, _649
	mulss	%xmm5, %xmm9	# _648, _649
	mulss	%xmm7, %xmm8	# _651, _652
	mulss	%xmm4, %xmm7	# _642, tmp2519
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	movaps	%xmm3, %xmm4	# _605, tmp2521
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	mulss	%xmm14, %xmm5	# _650, tmp2520
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	subss	%xmm9, %xmm3	# _649, tmp2522
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	subss	%xmm8, %xmm4	# _652, tmp2521
# kiss_fft.c:161:         scratch[0] = *Fout0;
	movss	0(%rbp,%rax), %xmm12	# MEM[base: fout_4(D), index: ivtmp.1646_2312, offset: 0B], scratch$0$r
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	addss	%xmm8, %xmm3	# _652, _659
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	movaps	%xmm1, %xmm8	# _621, tmp2523
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	addss	%xmm9, %xmm4	# _649, _657
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	addss	%xmm10, %xmm8	# _633, tmp2523
	movaps	%xmm2, %xmm9	# _624, _662
	addss	%xmm6, %xmm9	# _640, _662
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	subss	%xmm6, %xmm2	# _640, _664
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	movaps	%xmm12, %xmm6	# scratch$0$r, tmp2525
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	subss	%xmm13, %xmm8	# _636, _661
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	addss	%xmm4, %xmm6	# _657, tmp2525
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	addss	%xmm5, %xmm7	# tmp2520, _656
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	movaps	%xmm0, %xmm5	# _608, _658
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	addss	%xmm8, %xmm6	# _661, tmp2526
# kiss_fft.c:161:         scratch[0] = *Fout0;
	movss	4(%rbp,%rax), %xmm11	# MEM[base: fout_4(D), index: ivtmp.1646_2312, offset: 4B], scratch$0$i
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	addss	%xmm7, %xmm5	# _656, _658
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	movss	%xmm6, 0(%rbp,%rax)	# tmp2526, MEM[base: fout_4(D), index: ivtmp.1646_2312, offset: 0B]
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	movaps	%xmm11, %xmm6	# scratch$0$i, tmp2527
	addss	%xmm5, %xmm6	# _658, tmp2527
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	subss	%xmm7, %xmm0	# _656, _660
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movaps	%xmm15, %xmm7	# ya$r, tmp2529
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	addss	%xmm9, %xmm6	# _662, tmp2528
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movss	24(%rsp), %xmm14	# %sfp, yb$r
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	mulss	%xmm4, %xmm7	# _657, tmp2529
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	movss	%xmm6, 4(%rbp,%rax)	# tmp2528, MEM[base: fout_4(D), index: ivtmp.1646_2312, offset: 4B]
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movaps	%xmm14, %xmm6	# yb$r, tmp2531
	mulss	%xmm8, %xmm6	# _661, tmp2531
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	addss	%xmm13, %xmm1	# _636, tmp2524
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	addss	%xmm12, %xmm7	# scratch$0$r, tmp2530
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	mulss	%xmm15, %xmm8	# ya$r, tmp2545
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	subss	%xmm10, %xmm1	# _633, _663
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	addss	%xmm6, %xmm7	# tmp2531, _672
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movaps	%xmm15, %xmm6	# ya$r, tmp2532
	mulss	%xmm5, %xmm6	# _658, tmp2532
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movaps	%xmm14, %xmm10	# yb$r, tmp2534
	mulss	%xmm9, %xmm10	# _662, tmp2534
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movss	(%rsp), %xmm14	# %sfp, ya$i
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	mulss	%xmm15, %xmm9	# ya$r, tmp2548
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	addss	%xmm11, %xmm6	# scratch$0$i, tmp2533
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movaps	%xmm14, %xmm13	# ya$i, tmp2535
	mulss	%xmm0, %xmm13	# _660, tmp2535
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	addss	%xmm10, %xmm6	# tmp2534, _676
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movss	32(%rsp), %xmm10	# %sfp, tmp2536
	addq	$24, %r8	#, ivtmp.1662
	mulss	%xmm2, %xmm10	# _664, tmp2536
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	addss	%xmm13, %xmm10	# tmp2535, _679
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movaps	%xmm14, %xmm13	# ya$i, _680
	mulss	%xmm3, %xmm13	# _659, _680
	movaps	%xmm13, %xmm14	# _680, _680
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movss	32(%rsp), %xmm13	# %sfp, _682
	mulss	%xmm1, %xmm13	# _663, _682
	movss	%xmm13, 40(%rsp)	# _682, %sfp
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movaps	%xmm7, %xmm13	# _672, tmp2537
	subss	%xmm10, %xmm13	# _679, tmp2537
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	addss	%xmm10, %xmm7	# _679, tmp2540
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movss	%xmm13, (%rcx,%rax)	# tmp2537, MEM[base: Fout1_577, index: ivtmp.1646_2312, offset: 0B]
	movss	40(%rsp), %xmm13	# %sfp, tmp2538
	addss	%xmm14, %xmm13	# _680, tmp2538
	addss	%xmm6, %xmm13	# _676, tmp2539
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	subss	40(%rsp), %xmm6	# %sfp, tmp2541
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movss	%xmm13, 4(%rcx,%rax)	# tmp2539, MEM[base: Fout1_577, index: ivtmp.1646_2312, offset: 4B]
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	subss	%xmm14, %xmm6	# _680, tmp2542
	movss	%xmm7, (%rdx,%rax)	# tmp2540, MEM[base: Fout4_589, index: ivtmp.1646_2312, offset: 0B]
	movss	%xmm6, 4(%rdx,%rax)	# tmp2542, MEM[base: Fout4_589, index: ivtmp.1646_2312, offset: 4B]
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	movss	24(%rsp), %xmm6	# %sfp, yb$r
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	mulss	%xmm6, %xmm5	# yb$r, tmp2546
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	mulss	%xmm6, %xmm4	# yb$r, tmp2543
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	addss	%xmm5, %xmm11	# tmp2546, tmp2547
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movss	(%rsp), %xmm5	# %sfp, ya$i
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movss	32(%rsp), %xmm7	# %sfp, yb$i
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	mulss	%xmm5, %xmm2	# ya$i, _696
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	mulss	%xmm7, %xmm0	# yb$i, _697
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	addss	%xmm4, %xmm12	# tmp2543, tmp2544
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	mulss	%xmm7, %xmm3	# yb$i, _699
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	mulss	%xmm5, %xmm1	# ya$i, _700
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movaps	%xmm2, %xmm4	# _696, tmp2549
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	addss	%xmm12, %xmm8	# tmp2544, _691
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	subss	%xmm0, %xmm4	# _697, tmp2549
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	addss	%xmm11, %xmm9	# tmp2547, _695
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	subss	%xmm2, %xmm0	# _696, tmp2553
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	addss	%xmm8, %xmm4	# _691, tmp2550
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	addss	%xmm0, %xmm8	# tmp2553, tmp2554
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	movss	%xmm4, (%rsi,%rax)	# tmp2550, MEM[base: Fout2_581, index: ivtmp.1646_2312, offset: 0B]
	movaps	%xmm9, %xmm4	# _695, tmp2551
	subss	%xmm1, %xmm4	# _700, tmp2551
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	subss	%xmm3, %xmm1	# _699, tmp2555
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	addss	%xmm3, %xmm4	# _699, tmp2552
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	addss	%xmm1, %xmm9	# tmp2555, tmp2556
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	movss	%xmm4, 4(%rsi,%rax)	# tmp2552, MEM[base: Fout2_581, index: ivtmp.1646_2312, offset: 4B]
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	movss	%xmm8, (%rdi,%rax)	# tmp2554, MEM[base: Fout3_585, index: ivtmp.1646_2312, offset: 0B]
	movss	%xmm9, 4(%rdi,%rax)	# tmp2556, MEM[base: Fout3_585, index: ivtmp.1646_2312, offset: 4B]
	addq	$8, %rax	#, ivtmp.1646
# kiss_fft.c:159:     for ( u=0; u<m; ++u ) {
	cmpq	%r10, %rax	# _2322, ivtmp.1646
# SUCC: 30 [89.0% (guessed)]  count:1082468432 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 31 [11.0% (guessed)]  count:133788232 (estimated locally) (FALLTHRU)
	jne	.L365	#,
# BLOCK 31, count:133788232 (estimated locally) seq:29
# PRED: 30 [11.0% (guessed)]  count:133788232 (estimated locally) (FALLTHRU)
# SUCC: 18 [always]  count:133788232 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L313	#
# BLOCK 32, count:322122547 (estimated locally) seq:30
# PRED: 2 [30.0% (guessed)]  count:322122544 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L437:
# kiss_fft.c:376:         kiss_fft_cpx * tmpbuf = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC( sizeof(kiss_fft_cpx)*st->nfft);
	movslq	(%rdi), %rdi	# cfg_2(D)->nfft, cfg_2(D)->nfft
	movq	%rsi, 32(%rsp)	# fin, %sfp
	salq	$3, %rdi	#, tmp1621
	movq	%r8, 24(%rsp)	# pretmp_1439, %sfp
	movq	%r9, (%rsp)	# cfg, %sfp
	call	malloc@PLT	#
# kiss_fft.c:248:     const int p=*factors++; /* the radix  */
	movq	(%rsp), %r9	# %sfp, cfg
# kiss_fft.c:376:         kiss_fft_cpx * tmpbuf = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC( sizeof(kiss_fft_cpx)*st->nfft);
	movq	%rax, %r14	# tmp2566, tmpbuf
# kiss_fft.c:248:     const int p=*factors++; /* the radix  */
	movl	8(%r9), %ebx	# MEM[(int *)cfg_2(D) + 8B], p
# kiss_fft.c:249:     const int m=*factors++; /* stage's fft length/p */
	movslq	12(%r9), %r12	# MEM[(int *)cfg_2(D) + 12B],
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	movl	%ebx, %edx	# p, tmp1623
	imull	%r12d, %edx	# m, tmp1623
# kiss_fft.c:276:     if (m==1) {
	movq	24(%rsp), %r8	# %sfp, pretmp_1439
	movq	32(%rsp), %rsi	# %sfp, fin
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	movslq	%edx, %rdx	# tmp1623, tmp1624
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	salq	$3, %rdx	#, _21
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	leaq	(%rax,%rdx), %rax	#, Fout_end
# kiss_fft.c:276:     if (m==1) {
	cmpl	$1, %r12d	#, m
# kiss_fft.c:250:     const kiss_fft_cpx * Fout_end = Fout + p*m;
	movq	%rax, (%rsp)	# Fout_end, %sfp
# SUCC: 49 [34.0% (guessed)]  count:109521667 (estimated locally) (CAN_FALLTHRU) 33 [66.0% (guessed)]  count:212600880 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:276:     if (m==1) {
	je	.L441	#,
# BLOCK 33, count:212600880 (estimated locally) seq:31
# PRED: 32 [66.0% (guessed)]  count:212600880 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	movslq	%r12d, %r13	# m, m
	leaq	0(,%r13,8), %rax	#, _39
# kiss_fft.c:376:         kiss_fft_cpx * tmpbuf = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC( sizeof(kiss_fft_cpx)*st->nfft);
	movq	%r14, %r13	# tmpbuf, Fout
	movq	%r14, 24(%rsp)	# tmpbuf, %sfp
	movl	%ebx, 32(%rsp)	# p, %sfp
	movl	%r12d, 40(%rsp)	# m, %sfp
	movq	%rbp, 48(%rsp)	# fout, %sfp
	movslq	%ebx, %r15	# p, _1536
	movq	%r13, %rbp	# Fout, Fout
	movq	%r8, %r12	# pretmp_1439, pretmp_1439
	movq	%r9, %r14	# cfg, cfg
	movq	%rsi, %rbx	# fin, fin
# SUCC: 34 [always]  count:212600880 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	%rax, %r13	# _39, _39
# BLOCK 34, count:966367647 (estimated locally) seq:32
# PRED: 33 [always]  count:212600880 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 34 [78.0% (guessed)]  count:753766766 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
.L322:
# kiss_fft.c:287:             kf_work( Fout , f, fstride*p, in_stride, factors,st);
	movq	%rbx, %rsi	# fin,
	movq	%rbp, %rdi	# Fout,
	movq	%r14, %r9	# cfg,
	movq	%r12, %r8	# pretmp_1439,
	movl	$1, %ecx	#,
	movq	%r15, %rdx	# _1536,
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	addq	%r13, %rbp	# _39, Fout
# kiss_fft.c:287:             kf_work( Fout , f, fstride*p, in_stride, factors,st);
	call	kf_work	#
# kiss_fft.c:288:             f += fstride*in_stride;
	addq	$8, %rbx	#, fin
# kiss_fft.c:289:         }while( (Fout += m) != Fout_end );
	cmpq	%rbp, (%rsp)	# Fout, %sfp
# SUCC: 34 [78.0% (guessed)]  count:753766766 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 35 [22.0% (guessed)]  count:212600881 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L322	#,
# BLOCK 35, count:212600881 (estimated locally) seq:33
# PRED: 34 [22.0% (guessed)]  count:212600881 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movq	%r14, %r9	# cfg, cfg
	movl	32(%rsp), %ebx	# %sfp, p
	movslq	40(%rsp), %r12	# %sfp,
	movq	24(%rsp), %r14	# %sfp, tmpbuf
# SUCC: 36 [always]  count:212600881 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movq	48(%rsp), %rbp	# %sfp, fout
# BLOCK 36, count:322122549 (estimated locally) seq:34
# PRED: 35 [always]  count:212600881 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 49 [always]  count:109521667 (estimated locally) (CAN_FALLTHRU)
.L323:
# kiss_fft.c:295:     switch (p) {
	cmpl	$4, %ebx	#, p
# SUCC: 37 [80.0% (adjusted)]  count:257698038 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 64 [20.0% (adjusted)]  count:64424511 (estimated locally) (CAN_FALLTHRU)
	je	.L316	#,
# BLOCK 37, count:322122549 (estimated locally) seq:35
# PRED: 36 [80.0% (adjusted)]  count:257698038 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# SUCC: 38 [62.5% (adjusted)]  count:201326593 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 50 [37.5% (adjusted)]  count:120795956 (estimated locally) (CAN_FALLTHRU)
	jg	.L317	#,
# BLOCK 38, count:322122549 (estimated locally) seq:36
# PRED: 37 [62.5% (adjusted)]  count:201326593 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$2, %ebx	#, p
# SUCC: 39 [60.0% (adjusted)]  count:193273530 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 70 [40.0% (adjusted)]  count:128849019 (estimated locally) (CAN_FALLTHRU)
	je	.L318	#,
# BLOCK 39, count:322122549 (estimated locally) seq:37
# PRED: 38 [60.0% (adjusted)]  count:193273530 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$3, %ebx	#, p
# SUCC: 69 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 40 [always (guessed)]  count:322122549 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L320	#,
# BLOCK 40, count:64424510 (estimated locally) seq:38
# PRED: 39 [always (guessed)]  count:322122549 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movq	%r12, %r8	# k, _92
	leaq	264(,%r12,8), %rbx	#, _595
	salq	$4, %r8	#, _92
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leaq	-264(%rbx), %rsi	#, _78
	leaq	32(%r8), %r10	#, _1289
	leaq	-232(%rbx), %r13	#, _1293
	cmpq	%r10, %rsi	# _1289, _78
	setge	%r15b	#, tmp1712
	leaq	32(%r14), %rax	#, _1281
	cmpq	%r13, %r8	# _1293, _92
	movq	%rax, (%rsp)	# _1281, %sfp
	setge	%r11b	#, tmp1714
	leaq	-1(%r12), %rdi	#, k
	orl	%r15d, %r11d	# tmp1712, tmp1715
	cmpq	$3, %rdi	#, k
	seta	%r15b	#, tmp1717
	leaq	(%r14,%rsi), %rax	#, _1280
	andl	%r15d, %r11d	# tmp1717, tmp1718
	cmpq	(%rsp), %rax	# %sfp, _1280
	setnb	%r15b	#, tmp1720
	testq	%r13, %r13	# _1293
	setle	%r13b	#, tmp1722
	orl	%r13d, %r15d	# tmp1722, tmp1723
# kiss_fft.c:104:      epi3 = st->twiddles[fstride*m];
	movss	4(%r9,%rbx), %xmm2	# MEM[(struct  *)_75 + 4B], epi3$i
# kiss_fft.c:106:      tw1=tw2=st->twiddles;
	leaq	264(%r9), %rcx	#, tw1
	leaq	(%rax,%rsi), %rdx	#, _1272
	testb	%r15b, %r11b	# tmp1723, tmp1718
# SUCC: 85 [10.0% (guessed)]  count:6442451 (estimated locally) (CAN_FALLTHRU) 41 [90.0% (guessed)]  count:57982059 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L330	#,
# BLOCK 41, count:57982059 (estimated locally) seq:39
# PRED: 40 [90.0% (guessed)]  count:57982059 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpq	(%rsp), %rdx	# %sfp, _1272
	setnb	%r13b	#, tmp1726
	testq	%r10, %r10	# _1289
	setle	%r11b	#, tmp1728
	orb	%r11b, %r13b	# tmp1728, tmp1726
# SUCC: 85 [11.1% (guessed)]  count:6442451 (estimated locally) (CAN_FALLTHRU) 42 [88.9% (guessed)]  count:51539608 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L330	#,
# BLOCK 42, count:51539608 (estimated locally) seq:40
# PRED: 41 [88.9% (guessed)]  count:51539608 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	subq	$5, %r12	#, tmp1730
	shrq	$2, %r12	#, tmp1731
	movaps	%xmm2, %xmm4	# epi3$i, vect_cst__1019
	movapd	.LC0(%rip), %xmm3	#, tmp2561
	movaps	112(%rsp), %xmm9	# %sfp, tmp1762
	movaps	128(%rsp), %xmm10	# %sfp, tmp1764
	movaps	144(%rsp), %xmm11	# %sfp, tmp1776
	movaps	160(%rsp), %xmm12	# %sfp, tmp1778
	shufps	$0, %xmm4, %xmm4	# vect_cst__1019
	incq	%r12	# bnd.1157
	movq	%r14, %r11	# tmpbuf, ivtmp.1435
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	xorl	%r8d, %r8d	# ivtmp.1426
	xorl	%r13d, %r13d	# ivtmp.1423
	movss	%xmm2, 24(%rsp)	# epi3$i, %sfp
# SUCC: 43 [always]  count:51539608 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movaps	%xmm4, (%rsp)	# vect_cst__1019, %sfp
# BLOCK 43, count:309237649 (estimated locally) seq:41
# PRED: 42 [always]  count:51539608 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 43 [83.3% (adjusted)]  count:257698042 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L331:
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movups	(%rax,%r8), %xmm2	# MEM[base: _1280, index: ivtmp.1426_2223, offset: 0B], MEM[base: _1280, index: ivtmp.1426_2223, offset: 0B]
	movups	16(%rax,%r8), %xmm0	# MEM[base: _1280, index: ivtmp.1426_2223, offset: 16B], MEM[base: _1280, index: ivtmp.1426_2223, offset: 16B]
	movups	264(%r9,%r8), %xmm1	# MEM[base: cfg_2(D), index: ivtmp.1426_2223, offset: 264B], MEM[base: cfg_2(D), index: ivtmp.1426_2223, offset: 264B]
	movups	280(%r9,%r8), %xmm4	# MEM[base: cfg_2(D), index: ivtmp.1426_2223, offset: 280B], MEM[base: cfg_2(D), index: ivtmp.1426_2223, offset: 280B]
	movaps	%xmm2, %xmm5	# MEM[base: _1280, index: ivtmp.1426_2223, offset: 0B], vect_perm_even_1107
	shufps	$136, %xmm0, %xmm5	#, MEM[base: _1280, index: ivtmp.1426_2223, offset: 16B], vect_perm_even_1107
	shufps	$221, %xmm0, %xmm2	#, MEM[base: _1280, index: ivtmp.1426_2223, offset: 16B], vect_perm_odd_1106
	movaps	%xmm1, %xmm0	# MEM[base: cfg_2(D), index: ivtmp.1426_2223, offset: 264B], vect_perm_even_1099
	shufps	$136, %xmm4, %xmm0	#, MEM[base: cfg_2(D), index: ivtmp.1426_2223, offset: 280B], vect_perm_even_1099
	shufps	$221, %xmm4, %xmm1	#, MEM[base: cfg_2(D), index: ivtmp.1426_2223, offset: 280B], vect_perm_odd_1098
	movaps	%xmm0, %xmm7	# vect_perm_even_1099, vect__84.1171
	movaps	%xmm1, %xmm6	# vect_perm_odd_1098, vect__87.1172
	mulps	%xmm2, %xmm6	# vect_perm_odd_1106, vect__87.1172
	mulps	%xmm5, %xmm7	# vect_perm_even_1107, vect__84.1171
	mulps	%xmm5, %xmm1	# vect_perm_even_1107, vect__89.1174
	mulps	%xmm2, %xmm0	# vect_perm_odd_1106, vect__90.1175
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movups	296(%r9,%r8,2), %xmm4	# MEM[base: cfg_2(D), index: ivtmp.1426_2223, step: 2, offset: 296B], MEM[base: cfg_2(D), index: ivtmp.1426_2223, step: 2, offset: 296B]
	movups	280(%r9,%r8,2), %xmm14	# MEM[base: cfg_2(D), index: ivtmp.1426_2223, step: 2, offset: 280B], MEM[base: cfg_2(D), index: ivtmp.1426_2223, step: 2, offset: 280B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subps	%xmm6, %xmm7	# vect__87.1172, vect__88.1173
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movups	(%rdx,%r8), %xmm6	# MEM[base: _1272, index: ivtmp.1426_2223, offset: 0B], MEM[base: _1272, index: ivtmp.1426_2223, offset: 0B]
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addps	%xmm1, %xmm0	# vect__89.1174, vect__91.1176
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movups	16(%rdx,%r8), %xmm1	# MEM[base: _1272, index: ivtmp.1426_2223, offset: 16B], MEM[base: _1272, index: ivtmp.1426_2223, offset: 16B]
	movaps	%xmm6, %xmm8	# MEM[base: _1272, index: ivtmp.1426_2223, offset: 0B], vect_perm_even_1085
	shufps	$136, %xmm1, %xmm8	#, MEM[base: _1272, index: ivtmp.1426_2223, offset: 16B], vect_perm_even_1085
	shufps	$221, %xmm1, %xmm6	#, MEM[base: _1272, index: ivtmp.1426_2223, offset: 16B], vect_perm_odd_1084
	movups	264(%r9,%r8,2), %xmm1	# MEM[base: cfg_2(D), index: ivtmp.1426_2223, step: 2, offset: 264B], MEM[base: cfg_2(D), index: ivtmp.1426_2223, step: 2, offset: 264B]
	movups	312(%r9,%r8,2), %xmm13	# MEM[base: cfg_2(D), index: ivtmp.1426_2223, step: 2, offset: 312B], MEM[base: cfg_2(D), index: ivtmp.1426_2223, step: 2, offset: 312B]
	movaps	%xmm1, %xmm2	# MEM[base: cfg_2(D), index: ivtmp.1426_2223, step: 2, offset: 264B], tmp1747
	movaps	%xmm4, %xmm15	# MEM[base: cfg_2(D), index: ivtmp.1426_2223, step: 2, offset: 296B], tmp1748
	shufps	$136, %xmm13, %xmm15	#, MEM[base: cfg_2(D), index: ivtmp.1426_2223, step: 2, offset: 312B], tmp1748
	shufps	$221, %xmm13, %xmm4	#, MEM[base: cfg_2(D), index: ivtmp.1426_2223, step: 2, offset: 312B], tmp1750
	shufps	$136, %xmm14, %xmm2	#, MEM[base: cfg_2(D), index: ivtmp.1426_2223, step: 2, offset: 280B], tmp1747
	shufps	$136, %xmm15, %xmm2	#, tmp1748, vect_perm_even_1069
	movaps	%xmm2, %xmm13	# vect_perm_even_1069, vect__97.1187
	mulps	%xmm8, %xmm13	# vect_perm_even_1085, vect__97.1187
	shufps	$221, %xmm14, %xmm1	#, MEM[base: cfg_2(D), index: ivtmp.1426_2223, step: 2, offset: 280B], tmp1749
	shufps	$136, %xmm4, %xmm1	#, tmp1750, vect_perm_even_1067
	movaps	%xmm1, %xmm4	# vect_perm_even_1067, vect__100.1188
	mulps	%xmm6, %xmm4	# vect_perm_odd_1084, vect__100.1188
	movaps	%xmm2, %xmm5	# vect_perm_even_1069, vect_perm_even_1069
	mulps	%xmm6, %xmm5	# vect_perm_odd_1084, vect_perm_even_1069
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm13, %xmm6	# vect__97.1187, tmp1753
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	mulps	%xmm8, %xmm1	# vect_perm_even_1085, vect__102.1190
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addps	%xmm7, %xmm6	# vect__88.1173, tmp1753
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movups	(%r11), %xmm14	# MEM[base: _2228, offset: 0B], MEM[base: _2228, offset: 0B]
	incq	%r13	# ivtmp.1423
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	subps	%xmm4, %xmm6	# vect__100.1188, vect__105.1193
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addps	%xmm1, %xmm5	# vect__102.1190, vect__104.1192
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movups	16(%r11), %xmm1	# MEM[base: _2228, offset: 16B], MEM[base: _2228, offset: 16B]
	movaps	%xmm14, %xmm15	# MEM[base: _2228, offset: 0B], vect_perm_even_1049
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movhlps	%xmm6, %xmm10	# vect__105.1193, tmp1764
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	shufps	$221, %xmm1, %xmm14	#, MEM[base: _2228, offset: 16B], vect_perm_odd_1048
	shufps	$136, %xmm1, %xmm15	#, MEM[base: _2228, offset: 16B], vect_perm_even_1049
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm6, %xmm2	# vect__105.1193, vect__115.1203
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movhlps	%xmm15, %xmm9	# vect_perm_even_1049, tmp1762
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	mulpd	%xmm3, %xmm2	# tmp2561, vect__116.1204
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm15, %xmm1	# vect_perm_even_1049, vect__114.1202
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm10, %xmm15	# tmp1764, vect__115.1203
	mulpd	%xmm3, %xmm15	# tmp2561, vect__116.1204
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm5, %xmm8	# vect__104.1192, vect__106.1194
	addps	%xmm0, %xmm8	# vect__91.1176, vect__106.1194
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subpd	%xmm2, %xmm1	# vect__116.1204, vect__117.1205
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtps2pd	%xmm9, %xmm2	# tmp1762, vect__114.1202
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subpd	%xmm15, %xmm2	# vect__116.1204, vect__117.1205
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movhlps	%xmm8, %xmm12	# vect__106.1194, tmp1778
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movhlps	%xmm14, %xmm11	# vect_perm_odd_1048, tmp1776
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtpd2ps	%xmm2, %xmm2	# vect__117.1205, tmp1769
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtps2pd	%xmm14, %xmm15	# vect_perm_odd_1048, vect__120.1207
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtpd2ps	%xmm1, %xmm1	# vect__117.1205, tmp1768
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtps2pd	%xmm12, %xmm14	# tmp1778, vect__121.1208
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movlhps	%xmm2, %xmm1	# tmp1769, vect__118.1206
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	mulpd	%xmm3, %xmm14	# tmp2561, vect__122.1209
	cvtps2pd	%xmm8, %xmm2	# vect__106.1194, vect__121.1208
	mulpd	%xmm3, %xmm2	# tmp2561, vect__122.1209
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subps	%xmm5, %xmm0	# vect__104.1192, vect__108.1197
	addps	%xmm7, %xmm4	# vect__88.1173, tmp1786
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	movaps	(%rsp), %xmm7	# %sfp, vect_cst__1019
	addq	$32, %r11	#, ivtmp.1435
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subpd	%xmm2, %xmm15	# vect__122.1209, vect__123.1210
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtps2pd	%xmm11, %xmm2	# tmp1776, vect__120.1207
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subpd	%xmm14, %xmm2	# vect__122.1209, vect__123.1210
	cvtpd2ps	%xmm15, %xmm15	# vect__123.1210, tmp1782
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subps	%xmm13, %xmm4	# vect__97.1187, vect__107.1196
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtpd2ps	%xmm2, %xmm2	# vect__123.1210, tmp1783
	movlhps	%xmm2, %xmm15	# tmp1783, vect__124.1211
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	movaps	%xmm1, %xmm2	# vect__118.1206, tmp1784
	unpcklps	%xmm15, %xmm2	# vect__124.1211, tmp1784
	unpckhps	%xmm15, %xmm1	# vect__124.1211, tmp1785
	movups	%xmm2, (%rax,%r8)	# tmp1784, MEM[base: _1280, index: ivtmp.1426_2223, offset: 0B]
	movups	%xmm1, 16(%rax,%r8)	# tmp1785, MEM[base: _1280, index: ivtmp.1426_2223, offset: 16B]
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movups	-32(%r11), %xmm1	# MEM[base: _2228, offset: 0B], MEM[base: _2228, offset: 0B]
	movups	-16(%r11), %xmm5	# MEM[base: _2228, offset: 16B], MEM[base: _2228, offset: 16B]
	movaps	%xmm1, %xmm2	# MEM[base: _2228, offset: 0B], tmp1791
	shufps	$136, %xmm5, %xmm2	#, MEM[base: _2228, offset: 16B], tmp1791
	addps	%xmm2, %xmm6	# tmp1791, vect__128.1220
	shufps	$221, %xmm5, %xmm1	#, MEM[base: _2228, offset: 16B], tmp1792
	addps	%xmm1, %xmm8	# tmp1792, vect__130.1221
	movaps	%xmm6, %xmm1	# vect__128.1220, tmp1793
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulps	%xmm7, %xmm0	# vect_cst__1019, vect__126.1215
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	unpcklps	%xmm8, %xmm1	# vect__130.1221, tmp1793
	unpckhps	%xmm8, %xmm6	# vect__130.1221, tmp1794
	movups	%xmm1, -32(%r11)	# tmp1793, MEM[base: _2228, offset: 0B]
	movups	%xmm6, -16(%r11)	# tmp1794, MEM[base: _2228, offset: 16B]
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulps	%xmm7, %xmm4	# vect_cst__1019, vect__125.1214
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movups	(%rax,%r8), %xmm1	# MEM[base: _1280, index: ivtmp.1426_2223, offset: 0B], MEM[base: _1280, index: ivtmp.1426_2223, offset: 0B]
	movups	16(%rax,%r8), %xmm5	# MEM[base: _1280, index: ivtmp.1426_2223, offset: 16B], MEM[base: _1280, index: ivtmp.1426_2223, offset: 16B]
	movaps	%xmm1, %xmm2	# MEM[base: _1280, index: ivtmp.1426_2223, offset: 0B], tmp1797
	shufps	$136, %xmm5, %xmm2	#, MEM[base: _1280, index: ivtmp.1426_2223, offset: 16B], tmp1797
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addps	%xmm0, %xmm2	# vect__126.1215, vect__132.1228
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	shufps	$221, %xmm5, %xmm1	#, MEM[base: _1280, index: ivtmp.1426_2223, offset: 16B], tmp1798
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	subps	%xmm4, %xmm1	# vect__125.1214, vect__134.1229
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movaps	%xmm2, %xmm5	# vect__132.1228, tmp1799
	unpcklps	%xmm1, %xmm5	# vect__134.1229, tmp1799
	unpckhps	%xmm1, %xmm2	# vect__134.1229, tmp1800
	movups	%xmm5, (%rdx,%r8)	# tmp1799, MEM[base: _1272, index: ivtmp.1426_2223, offset: 0B]
	movups	%xmm2, 16(%rdx,%r8)	# tmp1800, MEM[base: _1272, index: ivtmp.1426_2223, offset: 16B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movups	(%rax,%r8), %xmm7	# MEM[base: _1280, index: ivtmp.1426_2223, offset: 0B], MEM[base: _1280, index: ivtmp.1426_2223, offset: 0B]
	movups	16(%rax,%r8), %xmm2	# MEM[base: _1280, index: ivtmp.1426_2223, offset: 16B], MEM[base: _1280, index: ivtmp.1426_2223, offset: 16B]
	movaps	%xmm7, %xmm1	# MEM[base: _1280, index: ivtmp.1426_2223, offset: 0B], tmp1803
	shufps	$136, %xmm2, %xmm1	#, MEM[base: _1280, index: ivtmp.1426_2223, offset: 16B], tmp1803
	subps	%xmm0, %xmm1	# vect__126.1215, tmp1803
	shufps	$221, %xmm2, %xmm7	#, MEM[base: _1280, index: ivtmp.1426_2223, offset: 16B], tmp1804
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addps	%xmm7, %xmm4	# tmp1804, vect__138.1237
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movaps	%xmm1, %xmm0	# tmp1803, vect__136.1236
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	unpckhps	%xmm4, %xmm0	# vect__138.1237, tmp1806
	unpcklps	%xmm4, %xmm1	# vect__138.1237, tmp1805
	movups	%xmm1, (%rax,%r8)	# tmp1805, MEM[base: _1280, index: ivtmp.1426_2223, offset: 0B]
	movups	%xmm0, 16(%rax,%r8)	# tmp1806, MEM[base: _1280, index: ivtmp.1426_2223, offset: 16B]
	addq	$32, %r8	#, ivtmp.1426
	cmpq	%r13, %r12	# ivtmp.1423, bnd.1157
# SUCC: 43 [83.3% (adjusted)]  count:257698042 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 44 [16.7% (adjusted)]  count:51539607 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	ja	.L331	#,
# BLOCK 44, count:51539607 (estimated locally) seq:42
# PRED: 43 [16.7% (adjusted)]  count:51539607 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	leaq	0(,%r12,4), %r11	#, niters_vector_mult_vf.1158
	salq	$5, %r12	#, _1119
	leaq	(%r14,%r12), %rax	#, tmp.1159
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leaq	(%rax,%rsi), %rdx	#, _396
	movss	(%rdx), %xmm5	# _396->r, _398
	addq	%r12, %rcx	# _1119, tmp.1161
	movss	4(%rcx), %xmm6	# tmp.1161_1117->i, _402
	movss	(%rcx), %xmm3	# tmp.1161_1117->r, _399
	movss	4(%rdx), %xmm4	# _396->i, _401
	movaps	%xmm5, %xmm1	# _398, tmp1807
	mulss	%xmm3, %xmm1	# _399, tmp1807
	mulss	%xmm6, %xmm5	# _402, tmp1809
	mulss	%xmm4, %xmm3	# _401, tmp1810
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leaq	(%rdx,%rsi), %r8	#, _821
	addq	%rcx, %r12	# tmp.1161, tmp.1162
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movaps	%xmm4, %xmm7	# _401, tmp1808
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%r8), %xmm8	# _821->i, _414
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm3, %xmm5	# tmp1810, tmp1809
	mulss	%xmm6, %xmm7	# _402, tmp1808
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	(%r12), %xmm3	# tmp.1162_1115->r, _412
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movaps	%xmm5, %xmm4	# tmp1809, _410
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	(%r8), %xmm5	# _821->r, _411
	movss	4(%r12), %xmm6	# tmp.1162_1115->i, _823
	movaps	%xmm5, %xmm0	# _411, _413
	mulss	%xmm3, %xmm0	# _412, _413
	mulss	%xmm6, %xmm5	# _823, tmp1811
	mulss	%xmm8, %xmm3	# _414, tmp1812
	movaps	%xmm8, %xmm9	# _414, _415
	mulss	%xmm6, %xmm9	# _823, _415
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm7, %xmm1	# tmp1808, _405
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp1815
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm3, %xmm5	# tmp1812, tmp1811
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	movsd	.LC1(%rip), %xmm3	#, tmp1817
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm4, %xmm7	# _410, _95
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm5, %xmm8	# tmp1811, _419
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm5	# _405, tmp1813
	subss	%xmm9, %xmm5	# _415, tmp1813
	addss	%xmm8, %xmm7	# _419, _95
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm6, %xmm6	# tmp1814
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm0, %xmm5	# _413, _421
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	(%rax), %xmm6	# tmp.1159_1120->r, tmp1814
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _413, _405
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm5, %xmm10	# _421, tmp1815
	mulsd	%xmm3, %xmm10	# tmp1817, tmp1816
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm0	# _405, tmp1827
	movaps	%xmm4, %xmm1	# _410, _410
	subss	%xmm8, %xmm1	# _419, _410
	movss	24(%rsp), %xmm2	# %sfp, epi3$i
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm6	# tmp1816, tmp1818
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp1821
	cvtss2sd	%xmm7, %xmm10	# _95, tmp1821
	mulsd	%xmm3, %xmm10	# tmp1817, tmp1822
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm6, %xmm6	# tmp1818, tmp1819
	movss	%xmm6, (%rdx)	# tmp1819, _396->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm6, %xmm6	# tmp1820
	cvtss2sd	4(%rax), %xmm6	# tmp.1159_1120->i, tmp1820
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	(%rax), %xmm5	# tmp.1159_1120->r, tmp1830
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm10, %xmm6	# tmp1822, tmp1824
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm2, %xmm1	# epi3$i, _98
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _415, tmp1828
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm6, %xmm6	# tmp1824, tmp1826
	movss	%xmm6, 4(%rdx)	# tmp1826, _396->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm5, (%rax)	# tmp1830, tmp.1159_1120->r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rdx), %xmm4	# _396->r, tmp1834
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	4(%rax), %xmm7	# tmp.1159_1120->i, tmp1832
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm2, %xmm0	# epi3$i, _97
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm4	# _98, tmp1834
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm7, 4(%rax)	# tmp1832, tmp.1159_1120->i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm4, (%r8)	# tmp1834, _821->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rdx), %xmm4	# _396->i, _396->i
	subss	%xmm0, %xmm4	# _97, tmp1836
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm4, 4(%r8)	# tmp1836, _821->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rdx), %xmm4	# _396->r, _396->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rdx), %xmm0	# _396->i, tmp1840
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm4	# _98, _396->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rdx)	# tmp1840, _396->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm4, (%rdx)	# tmp1838, _396->r
# kiss_fft.c:133:      }while(--k);
	subq	%r11, %rdi	# niters_vector_mult_vf.1158, k
# SUCC: 45 [89.0% (guessed)]  count:45870250 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 48 [11.0% (guessed)]  count:5669357 (estimated locally) (CAN_FALLTHRU)
	je	.L329	#,
# BLOCK 45, count:45870253 (estimated locally) seq:43
# PRED: 44 [89.0% (guessed)]  count:45870250 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	leaq	-256(%rax,%rbx), %rdx	#, _125
	movss	(%rdx), %xmm6	# _125->r, _126
	movss	12(%rcx), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1161_1117 + 8B].i, _130
	movss	8(%rcx), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.1161_1117 + 8B].r, _127
	movss	4(%rdx), %xmm4	# _125->i, _129
	movaps	%xmm6, %xmm1	# _126, tmp1843
	mulss	%xmm5, %xmm1	# _127, tmp1843
	mulss	%xmm7, %xmm6	# _130, tmp1845
	mulss	%xmm4, %xmm5	# _129, tmp1846
	movaps	%xmm4, %xmm8	# _129, tmp1844
	mulss	%xmm7, %xmm8	# _130, tmp1844
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leaq	(%rdx,%rsi), %r8	#, _136
	movss	16(%r12), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1162_1115 + 16B].r, _138
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm5, %xmm6	# tmp1846, tmp1845
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	(%r8), %xmm5	# _136->r, _137
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm8, %xmm1	# tmp1844, _132
	movaps	%xmm6, %xmm4	# tmp1845, _135
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%r8), %xmm8	# _136->i, _141
	movss	20(%r12), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.1162_1115 + 16B].i, _49
	movaps	%xmm5, %xmm0	# _137, _139
	mulss	%xmm7, %xmm0	# _138, _139
	movaps	%xmm6, %xmm9	# _49, _47
	mulss	%xmm8, %xmm7	# _141, tmp1847
	mulss	%xmm5, %xmm6	# _137, tmp1848
	mulss	%xmm8, %xmm9	# _141, _47
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp1851
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm6, %xmm7	# tmp1848, tmp1847
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# _132, tmp1849
	subss	%xmm9, %xmm6	# _47, tmp1849
	movaps	%xmm7, %xmm8	# _50, _52
	addss	%xmm4, %xmm8	# _135, _52
	addss	%xmm0, %xmm6	# _139, _51
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm7, %xmm5	# tmp1847, _50
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp1850
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm10	# _51, tmp1851
	mulsd	%xmm3, %xmm10	# tmp1817, tmp1852
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	8(%rax), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 8B].r, tmp1850
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _139, _132
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm7	# tmp1852, tmp1854
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp1857
	cvtss2sd	%xmm8, %xmm10	# _52, tmp1857
	mulsd	%xmm3, %xmm10	# tmp1817, tmp1858
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm0	# _132, tmp1863
	movaps	%xmm4, %xmm1	# _135, _135
	subss	%xmm5, %xmm1	# _50, _135
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp1854, tmp1855
	movss	%xmm7, (%rdx)	# tmp1855, _125->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp1856
	cvtss2sd	12(%rax), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 8B].i, tmp1856
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	8(%rax), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 8B].r, tmp1866
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm10, %xmm7	# tmp1858, tmp1860
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm2, %xmm1	# epi3$i, _837
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _47, tmp1864
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm7, %xmm7	# tmp1860, tmp1862
	movss	%xmm7, 4(%rdx)	# tmp1862, _125->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, 8(%rax)	# tmp1866, MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 8B].r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rdx), %xmm4	# _125->r, tmp1870
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	12(%rax), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 8B].i, tmp1868
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm2, %xmm0	# epi3$i, _1901
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm4	# _837, tmp1870
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm8, 12(%rax)	# tmp1868, MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 8B].i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm4, (%r8)	# tmp1870, _136->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rdx), %xmm4	# _125->i, _125->i
	subss	%xmm0, %xmm4	# _1901, tmp1872
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm4, 4(%r8)	# tmp1872, _136->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rdx), %xmm4	# _125->r, _125->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rdx), %xmm0	# _125->i, tmp1876
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm4	# _837, _125->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rdx)	# tmp1876, _125->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm4, (%rdx)	# tmp1874, _125->r
# kiss_fft.c:132:          ++Fout;
	leaq	16(%rax), %rdx	#, Fout
# kiss_fft.c:133:      }while(--k);
	cmpq	$1, %rdi	#, k
# SUCC: 46 [89.0% (guessed)]  count:40824525 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 48 [11.0% (guessed)]  count:5045728 (estimated locally) (CAN_FALLTHRU)
	je	.L329	#,
# BLOCK 46, count:40824524 (estimated locally) seq:44
# PRED: 45 [89.0% (guessed)]  count:40824525 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addq	%rsi, %rdx	# _78, _509
	movss	(%rdx), %xmm6	# _509->r, _510
	movss	20(%rcx), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1161_1117 + 16B].i, _515
	movss	16(%rcx), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.1161_1117 + 16B].r, _511
	movss	4(%rdx), %xmm4	# _509->i, _513
	movaps	%xmm6, %xmm1	# _510, tmp1879
	mulss	%xmm5, %xmm1	# _511, tmp1879
	mulss	%xmm7, %xmm6	# _515, tmp1881
	mulss	%xmm4, %xmm5	# _513, tmp1882
	movaps	%xmm4, %xmm8	# _513, tmp1880
	mulss	%xmm7, %xmm8	# _515, tmp1880
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	leaq	(%rdx,%rsi), %r8	#, _523
	movss	(%r8), %xmm7	# _523->r, _524
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm5, %xmm6	# tmp1882, tmp1881
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%r8), %xmm5	# _523->i, _827
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm8, %xmm1	# tmp1880, _517
	movaps	%xmm6, %xmm4	# tmp1881, _522
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	36(%r12), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.1162_1115 + 32B].i, _528
	movss	32(%r12), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.1162_1115 + 32B].r, _525
	movaps	%xmm7, %xmm0	# _524, _526
	mulss	%xmm6, %xmm0	# _525, _526
	mulss	%xmm8, %xmm7	# _528, tmp1883
	mulss	%xmm5, %xmm6	# _827, tmp1884
	movaps	%xmm8, %xmm9	# _528, _529
	mulss	%xmm5, %xmm9	# _827, _529
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp1887
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm4, %xmm8	# _522, _533
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm6, %xmm7	# tmp1884, tmp1883
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# _517, tmp1885
	subss	%xmm9, %xmm6	# _529, tmp1885
	addss	%xmm7, %xmm8	# _828, _533
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm7, %xmm5	# tmp1883, _828
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm0, %xmm6	# _526, _532
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp1886
	cvtss2sd	16(%rax), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 16B].r, tmp1886
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm10	# _532, tmp1887
	mulsd	%xmm3, %xmm10	# tmp1817, tmp1888
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _526, _517
	movaps	%xmm1, %xmm0	# _517, tmp1899
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm7	# tmp1888, tmp1890
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp1893
	cvtss2sd	%xmm8, %xmm10	# _533, tmp1893
	mulsd	%xmm3, %xmm10	# tmp1817, tmp1894
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm4, %xmm1	# _522, _522
	subss	%xmm5, %xmm1	# _828, _522
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp1890, tmp1891
	movss	%xmm7, (%rdx)	# tmp1891, _509->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp1892
	cvtss2sd	20(%rax), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 16B].i, tmp1892
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	16(%rax), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 16B].r, tmp1902
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm10, %xmm7	# tmp1894, tmp1896
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm2, %xmm1	# epi3$i, _551
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _529, tmp1900
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm7, %xmm7	# tmp1896, tmp1898
	movss	%xmm7, 4(%rdx)	# tmp1898, _509->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, 16(%rax)	# tmp1902, MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 16B].r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rdx), %xmm4	# _509->r, tmp1906
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	20(%rax), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 16B].i, tmp1904
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm2, %xmm0	# epi3$i, _747
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm4	# _551, tmp1906
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm8, 20(%rax)	# tmp1904, MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 16B].i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm4, (%r8)	# tmp1906, _523->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rdx), %xmm4	# _509->i, _509->i
	subss	%xmm0, %xmm4	# _747, tmp1908
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm4, 4(%r8)	# tmp1908, _523->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rdx), %xmm4	# _509->r, _509->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rdx), %xmm0	# _509->i, tmp1912
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm4	# _551, _509->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rdx)	# tmp1912, _509->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm4, (%rdx)	# tmp1910, _509->r
# kiss_fft.c:132:          ++Fout;
	leaq	24(%rax), %rdx	#, Fout
# kiss_fft.c:133:      }while(--k);
	cmpq	$2, %rdi	#, k
# SUCC: 47 [89.0% (guessed)]  count:36333826 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 48 [11.0% (guessed)]  count:4490698 (estimated locally) (CAN_FALLTHRU)
	je	.L329	#,
# BLOCK 47, count:36333826 (estimated locally) seq:45
# PRED: 46 [89.0% (guessed)]  count:36333826 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addq	%rsi, %rdx	# _78, _1191
	movss	28(%rcx), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.1161_1117 + 24B].i, _1186
	movss	24(%rcx), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1161_1117 + 24B].r, _1189
	movss	(%rdx), %xmm4	# _1191->r, _1190
	movss	4(%rdx), %xmm6	# _1191->i, _1187
	movaps	%xmm5, %xmm8	# _1186, tmp1915
	mulss	%xmm6, %xmm8	# _1187, tmp1915
	mulss	%xmm4, %xmm5	# _1190, tmp1917
	mulss	%xmm7, %xmm6	# _1189, tmp1916
	movaps	%xmm7, %xmm1	# _1189, tmp1914
	mulss	%xmm4, %xmm1	# _1190, tmp1914
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addq	%rdx, %rsi	# _1191, _1180
	movss	4(%rsi), %xmm7	# _1180->i, _1176
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm5, %xmm6	# tmp1917, tmp1916
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	(%rsi), %xmm5	# _1180->r, _1179
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm8, %xmm1	# tmp1915, _1184
	movaps	%xmm6, %xmm4	# tmp1916, _1181
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	52(%r12), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.1162_1115 + 48B].i, _1175
	movss	48(%r12), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.1162_1115 + 48B].r, _1178
	movaps	%xmm6, %xmm9	# _1175, _1174
	mulss	%xmm7, %xmm9	# _1176, _1174
	mulss	%xmm5, %xmm6	# _1179, tmp1919
	mulss	%xmm8, %xmm7	# _1178, tmp1918
	movaps	%xmm8, %xmm0	# _1178, _1177
	mulss	%xmm5, %xmm0	# _1179, _1177
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm10, %xmm10	# tmp1922
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm6, %xmm7	# tmp1919, tmp1918
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm6	# _1184, tmp1920
	subss	%xmm9, %xmm6	# _1174, tmp1920
	movaps	%xmm7, %xmm8	# _1170, _1168
	addss	%xmm4, %xmm8	# _1181, _1168
	addss	%xmm0, %xmm6	# _1177, _1169
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm7, %xmm5	# tmp1918, _1170
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp1921
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm10	# _1169, tmp1922
	mulsd	%xmm3, %xmm10	# tmp1817, tmp1923
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	24(%rax), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 24B].r, tmp1921
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm0, %xmm1	# _1177, _1184
	subss	%xmm5, %xmm4	# _1170, tmp1936
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm10, %xmm7	# tmp1923, tmp1925
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm10, %xmm10	# tmp1928
	cvtss2sd	%xmm8, %xmm10	# _1168, tmp1928
	mulsd	%xmm10, %xmm3	# tmp1928, tmp1929
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm0	# _1184, tmp1934
	addss	%xmm9, %xmm0	# _1174, tmp1935
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp1925, tmp1926
	movss	%xmm7, (%rdx)	# tmp1926, _1191->r
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp1927
	cvtss2sd	28(%rax), %xmm7	# MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 24B].i, tmp1927
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	24(%rax), %xmm6	# MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 24B].r, tmp1937
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm3, %xmm7	# tmp1929, tmp1927
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm2, %xmm0	# epi3$i, _1148
	mulss	%xmm4, %xmm2	# tmp1936, _1147
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm3, %xmm3	# tmp1933
	cvtsd2ss	%xmm7, %xmm3	# tmp1931, tmp1933
	movss	%xmm3, 4(%rdx)	# tmp1933, _1191->i
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, 24(%rax)	# tmp1937, MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 24B].r
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	(%rdx), %xmm1	# _1191->r, tmp1941
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	28(%rax), %xmm8	# MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 24B].i, tmp1939
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm2, %xmm1	# _1147, tmp1941
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm8, 28(%rax)	# tmp1939, MEM[(struct kiss_fft_cpx *)tmp.1159_1120 + 24B].i
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm1, (%rsi)	# tmp1941, _1180->r
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	4(%rdx), %xmm1	# _1191->i, _1191->i
	subss	%xmm0, %xmm1	# _1148, tmp1943
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm1, 4(%rsi)	# tmp1943, _1180->i
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	(%rdx), %xmm1	# _1191->r, _1191->r
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	4(%rdx), %xmm0	# _1191->i, tmp1947
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm2, %xmm1	# _1147, tmp1945
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, 4(%rdx)	# tmp1947, _1191->i
# SUCC: 48 [always]  count:36333826 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm1, (%rdx)	# tmp1945, _1191->r
# BLOCK 48, count:322122551 (estimated locally) seq:46
# PRED: 66 [11.0% (guessed)]  count:64424510 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 54 [always]  count:57337814 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 74 [25.0% (guessed)]  count:12884902 (estimated locally) (CAN_FALLTHRU) 75 [11.0% (guessed)]  count:4252018 (estimated locally) (CAN_FALLTHRU) 76 [11.0% (guessed)]  count:3784296 (estimated locally) (CAN_FALLTHRU) 47 [always]  count:36333826 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 69 [always]  count:64424510 (estimated locally) (CAN_FALLTHRU) 51 [11.0% (guessed)]  count:7086696 (estimated locally) (CAN_FALLTHRU) 44 [11.0% (guessed)]  count:5669357 (estimated locally) (CAN_FALLTHRU) 45 [11.0% (guessed)]  count:5045728 (estimated locally) (CAN_FALLTHRU) 46 [11.0% (guessed)]  count:4490698 (estimated locally) (CAN_FALLTHRU) 77 [always]  count:30618393 (estimated locally) (CAN_FALLTHRU) 84 [always]  count:12884902 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 88 [always]  count:12884902 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
.L329:
# kiss_fft.c:378:         memcpy(fout,tmpbuf,sizeof(kiss_fft_cpx)*st->nfft);
	movslq	(%r9), %rdx	# cfg_2(D)->nfft, cfg_2(D)->nfft
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:34:   return __builtin___memcpy_chk (__dest, __src, __len, __bos0 (__dest));
	movq	%rbp, %rdi	# fout,
	movq	%r14, %rsi	# tmpbuf,
# kiss_fft.c:378:         memcpy(fout,tmpbuf,sizeof(kiss_fft_cpx)*st->nfft);
	salq	$3, %rdx	#, tmp2060
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:34:   return __builtin___memcpy_chk (__dest, __src, __len, __bos0 (__dest));
	call	memcpy@PLT	#
# kiss_fft.c:388: }
	addq	$184, %rsp	#,
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
# kiss_fft.c:379:         KISS_FFT_TMP_FREE(tmpbuf);
	movq	%r14, %rdi	# tmpbuf,
# kiss_fft.c:388: }
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# SUCC: EXIT [always]  count:322122551 (estimated locally) (ABNORMAL,SIBCALL)
# kiss_fft.c:379:         KISS_FFT_TMP_FREE(tmpbuf);
	jmp	free@PLT	#
# BLOCK 49, count:109521667 (estimated locally) seq:47
# PRED: 32 [34.0% (guessed)]  count:109521667 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L441:
	.cfi_restore_state
	movq	%rbp, %rsi	# fout,
	movq	%r14, %rdi	# tmpbuf,
	movq	%r9, (%rsp)	# cfg, %sfp
	call	memcpy@PLT	#
	movq	(%rsp), %r9	# %sfp, cfg
# SUCC: 36 [always]  count:109521667 (estimated locally) (CAN_FALLTHRU)
	jmp	.L323	#
# BLOCK 50, count:322122549 (estimated locally) seq:48
# PRED: 37 [37.5% (adjusted)]  count:120795956 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L317:
# kiss_fft.c:295:     switch (p) {
	cmpl	$5, %ebx	#, p
# SUCC: 69 [33.3% (adjusted)]  count:107374184 (estimated locally) (CAN_FALLTHRU) 51 [66.7% (adjusted)]  count:214748365 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L320	#,
# BLOCK 51, count:64424510 (estimated locally) seq:49
# PRED: 50 [66.7% (adjusted)]  count:214748365 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movslq	%r12d, %rdx	# m, m
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	salq	$3, %rdx	#, _220
	leaq	264(%r9,%rdx), %rax	#, _221
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movss	4(%rax), %xmm3	# MEM[(struct kiss_fft_cpx *)_221 + 4B], ya$i
	movss	(%rax), %xmm15	# MEM[(struct kiss_fft_cpx *)_221], ya$r
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	addq	%rdx, %rax	# _220, _225
# kiss_fft.c:149:     ya = twiddles[fstride*m];
	movss	%xmm3, (%rsp)	# ya$i, %sfp
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	movss	(%rax), %xmm3	# MEM[(struct kiss_fft_cpx *)_225], yb$r
# kiss_fft.c:153:     Fout1=Fout0+m;
	leaq	(%r14,%rdx), %rcx	#, Fout1
# kiss_fft.c:154:     Fout2=Fout0+2*m;
	leaq	(%rcx,%rdx), %rsi	#, Fout2
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	movss	%xmm3, 24(%rsp)	# yb$r, %sfp
	movss	4(%rax), %xmm3	# MEM[(struct kiss_fft_cpx *)_225 + 4B], yb$i
# kiss_fft.c:155:     Fout3=Fout0+3*m;
	leaq	(%rsi,%rdx), %rdi	#, Fout3
# kiss_fft.c:150:     yb = twiddles[fstride*2*m];
	movss	%xmm3, 32(%rsp)	# yb$i, %sfp
# kiss_fft.c:156:     Fout4=Fout0+4*m;
	addq	%rdi, %rdx	# Fout3, Fout4
# kiss_fft.c:159:     for ( u=0; u<m; ++u ) {
	testl	%r12d, %r12d	# m
# SUCC: 52 [89.0% (guessed)]  count:57337814 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 48 [11.0% (guessed)]  count:7086696 (estimated locally) (CAN_FALLTHRU)
	jle	.L329	#,
# BLOCK 52, count:57337814 (estimated locally) seq:50
# PRED: 51 [89.0% (guessed)]  count:57337814 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leal	-1(%r12), %eax	#, tmp2008
	leaq	8(,%rax,8), %r11	#, _2264
	movq	%r9, %r8	# cfg, ivtmp.1500
# SUCC: 53 [always]  count:57337814 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	xorl	%eax, %eax	# ivtmp.1484
# BLOCK 53, count:521252856 (estimated locally) seq:51
# PRED: 52 [always]  count:57337814 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 53 [89.0% (guessed)]  count:463915042 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L339:
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	movss	(%rcx,%rax), %xmm2	# MEM[base: Fout1_229, index: ivtmp.1484_2254, offset: 0B], _246
	movss	4(%rcx,%rax), %xmm4	# MEM[base: Fout1_229, index: ivtmp.1484_2254, offset: 4B], _254
	movss	264(%r9,%rax), %xmm1	# MEM[base: cfg_2(D), index: ivtmp.1484_2254, offset: 264B], _252
	movss	268(%r9,%rax), %xmm0	# MEM[base: cfg_2(D), index: ivtmp.1484_2254, offset: 268B], _255
	movaps	%xmm2, %xmm3	# _246, tmp2010
	movaps	%xmm4, %xmm5	# _254, tmp2011
	mulss	%xmm0, %xmm5	# _255, tmp2011
	mulss	%xmm1, %xmm3	# _252, tmp2010
	mulss	%xmm2, %xmm0	# _246, tmp2012
	mulss	%xmm4, %xmm1	# _254, tmp2013
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movss	4(%rsi,%rax), %xmm6	# MEM[base: Fout2_233, index: ivtmp.1484_2254, offset: 4B], _270
	movss	264(%r9,%rax,2), %xmm4	# MEM[base: cfg_2(D), index: ivtmp.1484_2254, step: 2, offset: 264B], _268
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	subss	%xmm5, %xmm3	# tmp2011, _257
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movss	(%rsi,%rax), %xmm5	# MEM[base: Fout2_233, index: ivtmp.1484_2254, offset: 0B], _262
	movss	268(%r9,%rax,2), %xmm2	# MEM[base: cfg_2(D), index: ivtmp.1484_2254, step: 2, offset: 268B], _271
# kiss_fft.c:163:         C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
	addss	%xmm1, %xmm0	# tmp2013, _260
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	movaps	%xmm6, %xmm7	# _270, tmp2015
	movaps	%xmm5, %xmm1	# _262, tmp2014
	mulss	%xmm2, %xmm7	# _271, tmp2015
	mulss	%xmm4, %xmm1	# _268, tmp2014
	mulss	%xmm5, %xmm2	# _262, tmp2016
	mulss	%xmm6, %xmm4	# _270, tmp2017
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	(%rdi,%rax), %xmm5	# MEM[base: Fout3_237, index: ivtmp.1484_2254, offset: 0B], _278
	movss	4(%rdi,%rax), %xmm6	# MEM[base: Fout3_237, index: ivtmp.1484_2254, offset: 4B], _286
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	subss	%xmm7, %xmm1	# tmp2015, _273
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	268(%r8), %xmm7	# MEM[base: _2259, offset: 268B], _287
# kiss_fft.c:164:         C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
	addss	%xmm4, %xmm2	# tmp2017, _276
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movss	264(%r8), %xmm4	# MEM[base: _2259, offset: 264B], _284
	movaps	%xmm5, %xmm10	# _278, _285
	mulss	%xmm4, %xmm10	# _284, _285
	mulss	%xmm7, %xmm5	# _287, tmp2018
	mulss	%xmm6, %xmm4	# _286, tmp2019
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	4(%rdx,%rax), %xmm14	# MEM[base: Fout4_241, index: ivtmp.1484_2254, offset: 4B], _302
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movaps	%xmm6, %xmm13	# _286, _288
	mulss	%xmm7, %xmm13	# _287, _288
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	268(%r9,%rax,4), %xmm7	# MEM[base: cfg_2(D), index: ivtmp.1484_2254, step: 4, offset: 268B], _303
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	addss	%xmm4, %xmm5	# tmp2019, tmp2018
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	(%rdx,%rax), %xmm4	# MEM[base: Fout4_241, index: ivtmp.1484_2254, offset: 0B], _294
	movaps	%xmm14, %xmm8	# _302, _304
# kiss_fft.c:165:         C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
	movaps	%xmm5, %xmm6	# tmp2018, _292
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	movss	264(%r9,%rax,4), %xmm5	# MEM[base: cfg_2(D), index: ivtmp.1484_2254, step: 4, offset: 264B], _300
	movaps	%xmm4, %xmm9	# _294, _301
	mulss	%xmm5, %xmm9	# _300, _301
	mulss	%xmm7, %xmm8	# _303, _304
	mulss	%xmm4, %xmm7	# _294, tmp2020
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	movaps	%xmm3, %xmm4	# _257, tmp2022
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	mulss	%xmm14, %xmm5	# _302, tmp2021
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	subss	%xmm9, %xmm3	# _301, tmp2023
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	subss	%xmm8, %xmm4	# _304, tmp2022
# kiss_fft.c:161:         scratch[0] = *Fout0;
	movss	(%r14,%rax), %xmm12	# MEM[base: tmpbuf_10, index: ivtmp.1484_2254, offset: 0B], scratch$0$r
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	addss	%xmm8, %xmm3	# _304, _311
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	movaps	%xmm1, %xmm8	# _273, tmp2024
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	addss	%xmm9, %xmm4	# _301, _309
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	addss	%xmm10, %xmm8	# _285, tmp2024
	movaps	%xmm2, %xmm9	# _276, _314
	addss	%xmm6, %xmm9	# _292, _314
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	subss	%xmm6, %xmm2	# _292, _316
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	movaps	%xmm12, %xmm6	# scratch$0$r, tmp2026
# kiss_fft.c:170:         C_ADD( scratch[8],scratch[2],scratch[3]);
	subss	%xmm13, %xmm8	# _288, _313
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	addss	%xmm4, %xmm6	# _309, tmp2026
# kiss_fft.c:166:         C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);
	addss	%xmm5, %xmm7	# tmp2021, _308
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	movaps	%xmm0, %xmm5	# _260, _310
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	addss	%xmm8, %xmm6	# _313, tmp2027
# kiss_fft.c:161:         scratch[0] = *Fout0;
	movss	4(%r14,%rax), %xmm11	# MEM[base: tmpbuf_10, index: ivtmp.1484_2254, offset: 4B], scratch$0$i
# kiss_fft.c:168:         C_ADD( scratch[7],scratch[1],scratch[4]);
	addss	%xmm7, %xmm5	# _308, _310
# kiss_fft.c:173:         Fout0->r += scratch[7].r + scratch[8].r;
	movss	%xmm6, (%r14,%rax)	# tmp2027, MEM[base: tmpbuf_10, index: ivtmp.1484_2254, offset: 0B]
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	movaps	%xmm11, %xmm6	# scratch$0$i, tmp2028
	addss	%xmm5, %xmm6	# _310, tmp2028
# kiss_fft.c:169:         C_SUB( scratch[10],scratch[1],scratch[4]);
	subss	%xmm7, %xmm0	# _308, _312
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movaps	%xmm15, %xmm7	# ya$r, tmp2030
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	addss	%xmm9, %xmm6	# _314, tmp2029
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movss	24(%rsp), %xmm14	# %sfp, yb$r
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	mulss	%xmm4, %xmm7	# _309, tmp2030
# kiss_fft.c:174:         Fout0->i += scratch[7].i + scratch[8].i;
	movss	%xmm6, 4(%r14,%rax)	# tmp2029, MEM[base: tmpbuf_10, index: ivtmp.1484_2254, offset: 4B]
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	movaps	%xmm14, %xmm6	# yb$r, tmp2032
	mulss	%xmm8, %xmm6	# _313, tmp2032
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	addss	%xmm13, %xmm1	# _288, tmp2025
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	addss	%xmm12, %xmm7	# scratch$0$r, tmp2031
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	mulss	%xmm15, %xmm8	# ya$r, tmp2046
# kiss_fft.c:171:         C_SUB( scratch[9],scratch[2],scratch[3]);
	subss	%xmm10, %xmm1	# _285, _315
# kiss_fft.c:176:         scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
	addss	%xmm6, %xmm7	# tmp2032, _324
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movaps	%xmm15, %xmm6	# ya$r, tmp2033
	mulss	%xmm5, %xmm6	# _310, tmp2033
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	movaps	%xmm14, %xmm10	# yb$r, tmp2035
	mulss	%xmm9, %xmm10	# _314, tmp2035
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movss	(%rsp), %xmm14	# %sfp, ya$i
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	mulss	%xmm15, %xmm9	# ya$r, tmp2049
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	addss	%xmm11, %xmm6	# scratch$0$i, tmp2034
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movaps	%xmm14, %xmm13	# ya$i, tmp2036
	mulss	%xmm0, %xmm13	# _312, tmp2036
# kiss_fft.c:177:         scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);
	addss	%xmm10, %xmm6	# tmp2035, _328
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	movss	32(%rsp), %xmm10	# %sfp, tmp2037
	addq	$24, %r8	#, ivtmp.1500
	mulss	%xmm2, %xmm10	# _316, tmp2037
# kiss_fft.c:179:         scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
	addss	%xmm13, %xmm10	# tmp2036, _331
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movaps	%xmm14, %xmm13	# ya$i, _332
	mulss	%xmm3, %xmm13	# _311, _332
	movaps	%xmm13, %xmm14	# _332, _332
# kiss_fft.c:180:         scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);
	movss	32(%rsp), %xmm13	# %sfp, _334
	mulss	%xmm1, %xmm13	# _315, _334
	movss	%xmm13, 40(%rsp)	# _334, %sfp
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movaps	%xmm7, %xmm13	# _324, tmp2038
	subss	%xmm10, %xmm13	# _331, tmp2038
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	addss	%xmm10, %xmm7	# _331, tmp2041
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movss	%xmm13, (%rcx,%rax)	# tmp2038, MEM[base: Fout1_229, index: ivtmp.1484_2254, offset: 0B]
	movss	40(%rsp), %xmm13	# %sfp, tmp2039
	addss	%xmm14, %xmm13	# _332, tmp2039
	addss	%xmm6, %xmm13	# _328, tmp2040
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	subss	40(%rsp), %xmm6	# %sfp, tmp2042
# kiss_fft.c:182:         C_SUB(*Fout1,scratch[5],scratch[6]);
	movss	%xmm13, 4(%rcx,%rax)	# tmp2040, MEM[base: Fout1_229, index: ivtmp.1484_2254, offset: 4B]
# kiss_fft.c:183:         C_ADD(*Fout4,scratch[5],scratch[6]);
	subss	%xmm14, %xmm6	# _332, tmp2043
	movss	%xmm7, (%rdx,%rax)	# tmp2041, MEM[base: Fout4_241, index: ivtmp.1484_2254, offset: 0B]
	movss	%xmm6, 4(%rdx,%rax)	# tmp2043, MEM[base: Fout4_241, index: ivtmp.1484_2254, offset: 4B]
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	movss	24(%rsp), %xmm6	# %sfp, yb$r
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	mulss	%xmm6, %xmm5	# yb$r, tmp2047
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	mulss	%xmm6, %xmm4	# yb$r, tmp2044
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	addss	%xmm5, %xmm11	# tmp2047, tmp2048
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movss	(%rsp), %xmm5	# %sfp, ya$i
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movss	32(%rsp), %xmm7	# %sfp, yb$i
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	mulss	%xmm5, %xmm2	# ya$i, _348
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	mulss	%xmm7, %xmm0	# yb$i, _349
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	addss	%xmm4, %xmm12	# tmp2044, tmp2045
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	mulss	%xmm7, %xmm3	# yb$i, _351
# kiss_fft.c:188:         scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);
	mulss	%xmm5, %xmm1	# ya$i, _352
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	movaps	%xmm2, %xmm4	# _348, tmp2050
# kiss_fft.c:185:         scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
	addss	%xmm12, %xmm8	# tmp2045, _343
# kiss_fft.c:187:         scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
	subss	%xmm0, %xmm4	# _349, tmp2050
# kiss_fft.c:186:         scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
	addss	%xmm11, %xmm9	# tmp2048, _347
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	subss	%xmm2, %xmm0	# _348, tmp2054
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	addss	%xmm8, %xmm4	# _343, tmp2051
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	addss	%xmm0, %xmm8	# tmp2054, tmp2055
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	movss	%xmm4, (%rsi,%rax)	# tmp2051, MEM[base: Fout2_233, index: ivtmp.1484_2254, offset: 0B]
	movaps	%xmm9, %xmm4	# _347, tmp2052
	subss	%xmm1, %xmm4	# _352, tmp2052
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	subss	%xmm3, %xmm1	# _351, tmp2056
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	addss	%xmm3, %xmm4	# _351, tmp2053
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	addss	%xmm1, %xmm9	# tmp2056, tmp2057
# kiss_fft.c:190:         C_ADD(*Fout2,scratch[11],scratch[12]);
	movss	%xmm4, 4(%rsi,%rax)	# tmp2053, MEM[base: Fout2_233, index: ivtmp.1484_2254, offset: 4B]
# kiss_fft.c:191:         C_SUB(*Fout3,scratch[11],scratch[12]);
	movss	%xmm8, (%rdi,%rax)	# tmp2055, MEM[base: Fout3_237, index: ivtmp.1484_2254, offset: 0B]
	movss	%xmm9, 4(%rdi,%rax)	# tmp2057, MEM[base: Fout3_237, index: ivtmp.1484_2254, offset: 4B]
	addq	$8, %rax	#, ivtmp.1484
# kiss_fft.c:159:     for ( u=0; u<m; ++u ) {
	cmpq	%r11, %rax	# _2264, ivtmp.1484
# SUCC: 53 [89.0% (guessed)]  count:463915042 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 54 [11.0% (guessed)]  count:57337814 (estimated locally) (FALLTHRU)
	jne	.L339	#,
# BLOCK 54, count:57337814 (estimated locally) seq:52
# PRED: 53 [11.0% (guessed)]  count:57337814 (estimated locally) (FALLTHRU)
# SUCC: 48 [always]  count:57337814 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L329	#
# BLOCK 55, count:150323856 (estimated locally) seq:53
# PRED: 8 [40.0% (adjusted)]  count:300647711 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L344:
# kiss_fft.c:29:     kiss_fft_cpx * tw1 = st->twiddles;
	leaq	264(%r9), %rsi	#, tw1
# kiss_fft.c:31:     Fout2 = Fout + m;
	movslq	%r12d, %rax	# m, m
	leaq	32(%rbp), %r10	#, _931
	salq	$3, %rax	#, _393
	leaq	296(%r9), %r8	#, _943
	cmpq	%rsi, %r10	# tw1, _931
	setbe	%dl	#, tmp2073
	cmpq	%r8, %rbp	# _943, fout
	setnb	%dil	#, tmp2075
	leal	-1(%r12), %r11d	#, tmp2560
	orl	%edi, %edx	# tmp2075, tmp2076
	cmpl	$2, %r11d	#, tmp2560
	seta	%dil	#, tmp2079
# kiss_fft.c:31:     Fout2 = Fout + m;
	leaq	0(%rbp,%rax), %rcx	#, Fout2
	addq	$32, %rax	#, tmp2081
	andl	%edi, %edx	# tmp2079, tmp2080
	leaq	0(%rbp,%rax), %rdi	#, tmp2082
	cmpq	%rdi, %rsi	# tmp2082, tw1
	setnb	%dil	#, tmp2084
	cmpq	%r8, %rcx	# _943, Fout2
	setnb	%r8b	#, tmp2086
	orl	%r8d, %edi	# tmp2086, tmp2087
	testb	%dil, %dl	# tmp2087, tmp2080
# SUCC: 89 [10.0% (guessed)]  count:15032386 (estimated locally) (CAN_FALLTHRU) 56 [90.0% (guessed)]  count:135291470 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L350	#,
# BLOCK 56, count:135291470 (estimated locally) seq:54
# PRED: 55 [90.0% (guessed)]  count:135291470 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	testq	%rax, %rax	# tmp2081
	setle	%dl	#, tmp2091
	cmpq	%r10, %rcx	# _931, Fout2
	setnb	%al	#, tmp2093
	orb	%al, %dl	# tmp2093, tmp2091
# SUCC: 89 [11.1% (guessed)]  count:15032385 (estimated locally) (CAN_FALLTHRU) 57 [88.9% (guessed)]  count:120259085 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L350	#,
# BLOCK 57, count:120259085 (estimated locally) seq:55
# PRED: 56 [88.9% (guessed)]  count:120259085 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movl	%r12d, %edi	# m, bnd.1241
	shrl	$2, %edi	#,
	movq	%rbp, %rdx	# fout, ivtmp.1546
	salq	$5, %rdi	#, _2281
# SUCC: 58 [always]  count:120259085 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	xorl	%eax, %eax	# ivtmp.1545
# BLOCK 58, count:721554506 (estimated locally) seq:56
# PRED: 57 [always]  count:120259085 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 58 [83.3% (adjusted)]  count:601295423 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L351:
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movups	(%rcx,%rax), %xmm4	# MEM[base: Fout2_394, index: ivtmp.1545_2272, offset: 0B], MEM[base: Fout2_394, index: ivtmp.1545_2272, offset: 0B]
	movups	16(%rcx,%rax), %xmm0	# MEM[base: Fout2_394, index: ivtmp.1545_2272, offset: 16B], MEM[base: Fout2_394, index: ivtmp.1545_2272, offset: 16B]
	movups	264(%r9,%rax), %xmm3	# MEM[base: cfg_2(D), index: ivtmp.1545_2272, offset: 264B], MEM[base: cfg_2(D), index: ivtmp.1545_2272, offset: 264B]
	movaps	%xmm4, %xmm2	# MEM[base: Fout2_394, index: ivtmp.1545_2272, offset: 0B], vect_perm_even_449
	shufps	$136, %xmm0, %xmm2	#, MEM[base: Fout2_394, index: ivtmp.1545_2272, offset: 16B], vect_perm_even_449
	shufps	$221, %xmm0, %xmm4	#, MEM[base: Fout2_394, index: ivtmp.1545_2272, offset: 16B], vect_perm_odd_422
	movups	280(%r9,%rax), %xmm0	# MEM[base: cfg_2(D), index: ivtmp.1545_2272, offset: 280B], MEM[base: cfg_2(D), index: ivtmp.1545_2272, offset: 280B]
	movaps	%xmm3, %xmm1	# MEM[base: cfg_2(D), index: ivtmp.1545_2272, offset: 264B], vect_perm_even_353
	shufps	$136, %xmm0, %xmm1	#, MEM[base: cfg_2(D), index: ivtmp.1545_2272, offset: 280B], vect_perm_even_353
	movaps	%xmm1, %xmm6	# vect_perm_even_353, vect__399.1255
	mulps	%xmm4, %xmm1	# vect_perm_odd_422, vect__405.1258
	shufps	$221, %xmm0, %xmm3	#, MEM[base: cfg_2(D), index: ivtmp.1545_2272, offset: 280B], vect_perm_odd_345
	movaps	%xmm3, %xmm5	# vect_perm_odd_345, vect__402.1256
	mulps	%xmm2, %xmm3	# vect_perm_even_449, vect__404.1257
	mulps	%xmm4, %xmm5	# vect_perm_odd_422, vect__402.1256
	mulps	%xmm2, %xmm6	# vect_perm_even_449, vect__399.1255
	movaps	%xmm1, %xmm2	# vect__405.1258, vect__405.1258
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movups	16(%rdx), %xmm0	# MEM[base: _2277, offset: 16B], MEM[base: _2277, offset: 16B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	addps	%xmm3, %xmm2	# vect__404.1257, vect__405.1258
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movups	(%rdx), %xmm3	# MEM[base: _2277, offset: 0B], MEM[base: _2277, offset: 0B]
	addq	$32, %rdx	#, ivtmp.1546
	movaps	%xmm3, %xmm1	# MEM[base: _2277, offset: 0B], tmp2105
	shufps	$136, %xmm0, %xmm1	#, MEM[base: _2277, offset: 16B], tmp2105
	addps	%xmm5, %xmm1	# vect__402.1256, vect__821.1264
	shufps	$221, %xmm0, %xmm3	#, MEM[base: _2277, offset: 16B], tmp2107
	subps	%xmm2, %xmm3	# vect__406.1259, vect__413.1266
	subps	%xmm6, %xmm1	# vect__399.1255, vect__411.1265
	movaps	%xmm1, %xmm0	# vect__411.1265, tmp2108
	unpcklps	%xmm3, %xmm0	# vect__413.1266, tmp2108
	unpckhps	%xmm3, %xmm1	# vect__413.1266, tmp2109
	movups	%xmm0, (%rcx,%rax)	# tmp2108, MEM[base: Fout2_394, index: ivtmp.1545_2272, offset: 0B]
	movups	%xmm1, 16(%rcx,%rax)	# tmp2109, MEM[base: Fout2_394, index: ivtmp.1545_2272, offset: 16B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	movups	-32(%rdx), %xmm1	# MEM[base: _2277, offset: 0B], MEM[base: _2277, offset: 0B]
	movups	-16(%rdx), %xmm3	# MEM[base: _2277, offset: 16B], MEM[base: _2277, offset: 16B]
	movaps	%xmm1, %xmm0	# MEM[base: _2277, offset: 0B], tmp2112
	shufps	$136, %xmm3, %xmm0	#, MEM[base: _2277, offset: 16B], tmp2112
	addps	%xmm6, %xmm0	# vect__399.1255, vect__823.1273
	shufps	$221, %xmm3, %xmm1	#, MEM[base: _2277, offset: 16B], tmp2114
	addps	%xmm2, %xmm1	# vect__406.1259, vect__417.1275
	subps	%xmm5, %xmm0	# vect__402.1256, vect__415.1274
	addq	$32, %rax	#, ivtmp.1545
	movaps	%xmm0, %xmm2	# vect__415.1274, tmp2115
	unpcklps	%xmm1, %xmm2	# vect__417.1275, tmp2115
	unpckhps	%xmm1, %xmm0	# vect__417.1275, tmp2116
	movups	%xmm2, -32(%rdx)	# tmp2115, MEM[base: _2277, offset: 0B]
	movups	%xmm0, -16(%rdx)	# tmp2116, MEM[base: _2277, offset: 16B]
	cmpq	%rdi, %rax	# _2281, ivtmp.1545
# SUCC: 58 [83.3% (adjusted)]  count:601295423 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 59 [16.7% (adjusted)]  count:120259083 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L351	#,
# BLOCK 59, count:120259085 (estimated locally) seq:57
# PRED: 58 [16.7% (adjusted)]  count:120259083 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movl	%r12d, %edx	# m, niters_vector_mult_vf.1242
	andl	$-4, %edx	#, niters_vector_mult_vf.1242
	movl	%edx, %eax	# niters_vector_mult_vf.1242, niters_vector_mult_vf.1242
	salq	$3, %rax	#, _693
	movl	%r12d, %edi	# m, tmp.1244
	addq	%rax, %rbp	# _693, tmp.1243
	subl	%edx, %edi	# niters_vector_mult_vf.1242, tmp.1244
	addq	%rax, %rcx	# _693, tmp.1245
	addq	%rax, %rsi	# _693, tmp.1246
	cmpl	%r12d, %edx	# m, niters_vector_mult_vf.1242
# SUCC: 60 [75.0% (guessed)]  count:90194314 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [25.0% (guessed)]  count:30064771 (estimated locally) (CAN_FALLTHRU)
	je	.L313	#,
# BLOCK 60, count:90194314 (estimated locally) seq:58
# PRED: 59 [75.0% (guessed)]  count:90194314 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	(%rsi), %xmm0	# tmp.1246_653->r, _1445
	movss	4(%rsi), %xmm1	# tmp.1246_653->i, _1442
	movss	(%rcx), %xmm5	# tmp.1245_681->r, _1447
	movss	4(%rcx), %xmm3	# tmp.1245_681->i, _1444
	movaps	%xmm0, %xmm2	# _1445, _751
	movaps	%xmm1, %xmm4	# _1442, _752
	mulss	%xmm3, %xmm0	# _1444, tmp2119
	mulss	%xmm5, %xmm1	# _1447, tmp2118
	mulss	%xmm3, %xmm4	# _1444, _752
	mulss	%xmm5, %xmm2	# _1447, _751
	addss	%xmm1, %xmm0	# tmp2118, _719
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	0(%rbp), %xmm1	# tmp.1243_721->r, tmp2120
	addss	%xmm4, %xmm1	# _752, tmp2120
	subss	%xmm2, %xmm1	# _751, tmp2121
	movss	%xmm1, (%rcx)	# tmp2121, tmp.1245_681->r
	movss	4(%rbp), %xmm1	# tmp.1243_721->i, tmp.1243_721->i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	0(%rbp), %xmm2	# tmp.1243_721->r, tmp2124
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm1	# _719, tmp2122
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm4, %xmm2	# _752, tmp2125
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm1, 4(%rcx)	# tmp2122, tmp.1245_681->i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	4(%rbp), %xmm0	# tmp.1243_721->i, tmp2126
	movss	%xmm2, 0(%rbp)	# tmp2125, tmp.1243_721->r
	movss	%xmm0, 4(%rbp)	# tmp2126, tmp.1243_721->i
# kiss_fft.c:41:     }while (--m);
	cmpl	$1, %edi	#, tmp.1244
# SUCC: 61 [89.0% (guessed)]  count:80272940 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:9921374 (estimated locally) (CAN_FALLTHRU)
	je	.L313	#,
# BLOCK 61, count:80272943 (estimated locally) seq:59
# PRED: 60 [89.0% (guessed)]  count:80272940 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	8(%rsi), %xmm3	# MEM[(struct kiss_fft_cpx *)tmp.1246_653 + 8B].r, _168
	movss	12(%rsi), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.1246_653 + 8B].i, _172
	movss	8(%rcx), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.1245_681 + 8B].r, _167
	movss	12(%rcx), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.1245_681 + 8B].i, _171
	movaps	%xmm1, %xmm2	# _167, _169
	movaps	%xmm0, %xmm4	# _171, _174
	mulss	%xmm5, %xmm1	# _172, tmp2129
	mulss	%xmm3, %xmm0	# _168, tmp2130
	mulss	%xmm5, %xmm4	# _172, _174
	mulss	%xmm3, %xmm2	# _168, _169
	addss	%xmm1, %xmm0	# tmp2129, _177
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	8(%rbp), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.1243_721 + 8B].r, tmp2131
	addss	%xmm4, %xmm1	# _174, tmp2131
	subss	%xmm2, %xmm1	# _169, tmp2132
	movss	%xmm1, 8(%rcx)	# tmp2132, MEM[(struct kiss_fft_cpx *)tmp.1245_681 + 8B].r
	movss	12(%rbp), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.1243_721 + 8B].i, MEM[(struct kiss_fft_cpx *)tmp.1243_721 + 8B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	8(%rbp), %xmm2	# MEM[(struct kiss_fft_cpx *)tmp.1243_721 + 8B].r, tmp2135
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm1	# _177, tmp2133
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm4, %xmm2	# _174, tmp2136
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm1, 12(%rcx)	# tmp2133, MEM[(struct kiss_fft_cpx *)tmp.1245_681 + 8B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	12(%rbp), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.1243_721 + 8B].i, tmp2137
	movss	%xmm2, 8(%rbp)	# tmp2136, MEM[(struct kiss_fft_cpx *)tmp.1243_721 + 8B].r
	movss	%xmm0, 12(%rbp)	# tmp2137, MEM[(struct kiss_fft_cpx *)tmp.1243_721 + 8B].i
# kiss_fft.c:41:     }while (--m);
	cmpl	$2, %edi	#, tmp.1244
# SUCC: 62 [89.0% (guessed)]  count:71442919 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 18 [11.0% (guessed)]  count:8830024 (estimated locally) (CAN_FALLTHRU)
	je	.L313	#,
# BLOCK 62, count:71442918 (estimated locally) seq:60
# PRED: 61 [89.0% (guessed)]  count:71442919 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	16(%rsi), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.1246_653 + 16B].r, _877
	movss	20(%rsi), %xmm3	# MEM[(struct kiss_fft_cpx *)tmp.1246_653 + 16B].i, _874
	movss	16(%rcx), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.1245_681 + 16B].r, _878
	movss	20(%rcx), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.1245_681 + 16B].i, _875
	movaps	%xmm5, %xmm2	# _877, _876
	movaps	%xmm3, %xmm4	# _874, _873
	mulss	%xmm0, %xmm2	# _878, _876
	mulss	%xmm1, %xmm4	# _875, _873
	mulss	%xmm3, %xmm0	# _874, tmp2140
	mulss	%xmm5, %xmm1	# _877, tmp2139
	addss	%xmm1, %xmm0	# tmp2139, _870
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	16(%rbp), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.1243_721 + 16B].r, tmp2141
	addss	%xmm4, %xmm1	# _873, tmp2141
	subss	%xmm2, %xmm1	# _876, tmp2142
	movss	%xmm1, 16(%rcx)	# tmp2142, MEM[(struct kiss_fft_cpx *)tmp.1245_681 + 16B].r
	movss	20(%rbp), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.1243_721 + 16B].i, MEM[(struct kiss_fft_cpx *)tmp.1243_721 + 16B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	16(%rbp), %xmm2	# MEM[(struct kiss_fft_cpx *)tmp.1243_721 + 16B].r, tmp2145
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm1	# _870, tmp2143
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm4, %xmm2	# _873, tmp2146
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm1, 20(%rcx)	# tmp2143, MEM[(struct kiss_fft_cpx *)tmp.1245_681 + 16B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	20(%rbp), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.1243_721 + 16B].i, tmp2147
	movss	%xmm2, 16(%rbp)	# tmp2146, MEM[(struct kiss_fft_cpx *)tmp.1243_721 + 16B].r
	movss	%xmm0, 20(%rbp)	# tmp2147, MEM[(struct kiss_fft_cpx *)tmp.1243_721 + 16B].i
# SUCC: 18 [always]  count:71442918 (estimated locally) (CAN_FALLTHRU)
	jmp	.L313	#
# BLOCK 63, count:150323856 (estimated locally) seq:61
# PRED: 9 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 27 [33.3% (adjusted)]  count:250539762 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L346:
# kiss_fft.c:388: }
	addq	$184, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movq	%rbp, %rdi	# fout,
# kiss_fft.c:388: }
	popq	%rbp	#
	.cfi_def_cfa_offset 40
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movl	%r12d, %ecx	# m,
# kiss_fft.c:388: }
	popq	%r12	#
	.cfi_def_cfa_offset 32
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movl	%r13d, %r8d	# p,
# kiss_fft.c:388: }
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movq	%r9, %rdx	# cfg,
	movl	$1, %esi	#,
# kiss_fft.c:388: }
	popq	%r15	#
	.cfi_def_cfa_offset 8
# SUCC: EXIT [always]  count:150323856 (estimated locally) (ABNORMAL,SIBCALL)
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	jmp	kf_bfly_generic	#
# BLOCK 64, count:64424510 (estimated locally) seq:62
# PRED: 36 [20.0% (adjusted)]  count:64424511 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L316:
	.cfi_restore_state
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movq	%r12, %rdi	# k, _157
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	leaq	264(%r9), %rsi	#, tw1
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	salq	$4, %rdi	#, _157
	leaq	(%r14,%r12,8), %rdx	#, ivtmp.1465
# kiss_fft.c:77:         if(st->inverse) {
	movl	4(%r9), %ebx	# cfg_2(D)->inverse, _205
	leaq	(%rdx,%rdi), %rcx	#, ivtmp.1469
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	movq	%rsi, %r11	# tw1, tw3
# kiss_fft.c:58:     tw3 = tw2 = tw1 = st->twiddles;
	movq	%rsi, %r8	# tw1, tw2
# kiss_fft.c:376:         kiss_fft_cpx * tmpbuf = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC( sizeof(kiss_fft_cpx)*st->nfft);
	movq	%r14, %rax	# tmpbuf, Fout
# SUCC: 67 [always]  count:64424510 (estimated locally) (CAN_FALLTHRU)
	jmp	.L338	#
# BLOCK 65, count:292838683 (estimated locally) seq:63
# PRED: 67 [50.0% (guessed)]  count:292838683 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L442:
# kiss_fft.c:78:             Fout[m].r = scratch[5].r - scratch[4].i;
	movss	%xmm4, (%rdx)	# _1607, MEM[base: _2242, offset: 0B]
# kiss_fft.c:79:             Fout[m].i = scratch[5].i + scratch[4].r;
	movss	%xmm1, 4(%rdx)	# _1606, MEM[base: _2242, offset: 4B]
# kiss_fft.c:80:             Fout[m3].r = scratch[5].r + scratch[4].i;
	movss	%xmm0, (%rcx)	# _1609, MEM[base: _2245, offset: 0B]
# SUCC: 66 [always]  count:292838683 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:81:             Fout[m3].i = scratch[5].i - scratch[4].r;
	movss	%xmm2, 4(%rcx)	# _1608, MEM[base: _2245, offset: 4B]
# BLOCK 66, count:585677366 (estimated locally) seq:64
# PRED: 65 [always]  count:292838683 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 68 [always]  count:292838683 (estimated locally) (CAN_FALLTHRU)
.L337:
# kiss_fft.c:88:         ++Fout;
	addq	$8, %rax	#, Fout
	addq	$8, %rdx	#, ivtmp.1465
	addq	$8, %rcx	#, ivtmp.1469
# kiss_fft.c:89:     }while(--k);
	decq	%r12	# k
# SUCC: 67 [89.0% (guessed)]  count:521252856 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 48 [11.0% (guessed)]  count:64424510 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	je	.L329	#,
# BLOCK 67, count:585677366 (estimated locally) seq:65
# PRED: 66 [89.0% (guessed)]  count:521252856 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 64 [always]  count:64424510 (estimated locally) (CAN_FALLTHRU)
.L338:
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movss	4(%rsi), %xmm0	# MEM[base: tw1_24, offset: 4B], _1665
	movss	4(%rdx), %xmm4	# MEM[base: _2242, offset: 4B], _1666
	movss	(%rsi), %xmm5	# MEM[base: tw1_24, offset: 0B], _1684
	movss	(%rdx), %xmm3	# MEM[base: _2242, offset: 0B], _1685
	movaps	%xmm0, %xmm6	# _1665, tmp1986
	mulss	%xmm4, %xmm6	# _1666, tmp1986
	mulss	%xmm5, %xmm4	# _1684, tmp1987
	mulss	%xmm3, %xmm0	# _1685, tmp1988
	movaps	%xmm5, %xmm2	# _1684, tmp1985
	mulss	%xmm3, %xmm2	# _1685, tmp1985
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	(%r8), %xmm1	# MEM[base: tw2_772, offset: 0B], _1657
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	movaps	%xmm4, %xmm3	# tmp1987, tmp1987
	addss	%xmm0, %xmm3	# tmp1988, tmp1987
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	4(%r8), %xmm0	# MEM[base: tw2_772, offset: 4B], _1654
# kiss_fft.c:63:         C_MUL(scratch[0],Fout[m] , *tw1 );
	subss	%xmm6, %xmm2	# tmp1986, _1663
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movss	4(%rax,%rdi), %xmm6	# MEM[base: Fout_23, index: _157, offset: 4B], _1655
	movss	(%rax,%rdi), %xmm7	# MEM[base: Fout_23, index: _157, offset: 0B], _1658
	movaps	%xmm0, %xmm9	# _1654, _1653
	mulss	%xmm6, %xmm9	# _1655, _1653
	mulss	%xmm1, %xmm6	# _1657, tmp1989
	mulss	%xmm7, %xmm0	# _1658, tmp1990
	movaps	%xmm1, %xmm11	# _1657, _1656
	mulss	%xmm7, %xmm11	# _1658, _1656
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	4(%r11), %xmm5	# MEM[base: tw3_28, offset: 4B], _1644
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	movaps	%xmm6, %xmm7	# tmp1989, tmp1989
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	(%rcx), %xmm4	# MEM[base: _2245, offset: 0B], _1648
	movss	4(%rcx), %xmm6	# MEM[base: _2245, offset: 4B], _1645
# kiss_fft.c:64:         C_MUL(scratch[1],Fout[m2] , *tw2 );
	addss	%xmm0, %xmm7	# tmp1990, tmp1989
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movss	(%r11), %xmm0	# MEM[base: tw3_28, offset: 0B], _1647
	movaps	%xmm5, %xmm10	# _1644, _1643
	mulss	%xmm6, %xmm10	# _1645, _1643
	mulss	%xmm4, %xmm5	# _1648, tmp1992
	mulss	%xmm0, %xmm6	# _1647, tmp1991
	movaps	%xmm0, %xmm1	# _1647, _1646
	mulss	%xmm4, %xmm1	# _1648, _1646
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movss	(%rax), %xmm0	# MEM[base: Fout_23, offset: 0B], _1638
# kiss_fft.c:72:         tw1 += fstride;
	addq	$8, %rsi	#, tw1
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	addss	%xmm5, %xmm6	# tmp1992, tmp1991
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movaps	%xmm0, %xmm5	# _1638, tmp1993
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	addss	%xmm11, %xmm0	# _1656, tmp1994
# kiss_fft.c:65:         C_MUL(scratch[2],Fout[m3] , *tw3 );
	movaps	%xmm6, %xmm4	# tmp1991, _1639
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movss	4(%rax), %xmm6	# MEM[base: Fout_23, offset: 4B], _1634
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	subss	%xmm9, %xmm0	# _1653, _1632
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	movaps	%xmm6, %xmm8	# _1634, _1633
	subss	%xmm7, %xmm8	# _1650, _1633
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	addss	%xmm7, %xmm6	# _1650, _1630
# kiss_fft.c:69:         C_ADD( scratch[3] , scratch[0] , scratch[2] );
	movaps	%xmm2, %xmm7	# _1663, tmp1995
	subss	%xmm10, %xmm7	# _1643, tmp1995
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	addss	%xmm9, %xmm5	# _1653, tmp1993
# kiss_fft.c:69:         C_ADD( scratch[3] , scratch[0] , scratch[2] );
	movaps	%xmm4, %xmm9	# _1639, _1627
	addss	%xmm1, %xmm7	# _1646, _1628
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	movss	%xmm0, (%rax)	# _1632, MEM[base: Fout_23, offset: 0B]
# kiss_fft.c:67:         C_SUB( scratch[5] , *Fout, scratch[1] );
	subss	%xmm11, %xmm5	# _1656, _1635
# kiss_fft.c:71:         C_SUB( Fout[m2], *Fout, scratch[3] );
	subss	%xmm7, %xmm0	# _1628, tmp1997
# kiss_fft.c:69:         C_ADD( scratch[3] , scratch[0] , scratch[2] );
	addss	%xmm3, %xmm9	# _1660, _1627
# kiss_fft.c:68:         C_ADDTO(*Fout, scratch[1]);
	movss	%xmm6, 4(%rax)	# _1630, MEM[base: Fout_23, offset: 4B]
# kiss_fft.c:70:         C_SUB( scratch[4] , scratch[0] , scratch[2] );
	subss	%xmm1, %xmm2	# _1646, _1663
# kiss_fft.c:71:         C_SUB( Fout[m2], *Fout, scratch[3] );
	movss	%xmm0, (%rax,%rdi)	# tmp1997, MEM[base: Fout_23, index: _157, offset: 0B]
	subss	%xmm9, %xmm6	# _1627, tmp1998
	movaps	%xmm5, %xmm0	# _1635, tmp2003
	addss	%xmm3, %xmm0	# _1660, tmp2003
	movss	%xmm6, 4(%rax,%rdi)	# tmp1998, MEM[base: Fout_23, index: _157, offset: 4B]
# kiss_fft.c:70:         C_SUB( scratch[4] , scratch[0] , scratch[2] );
	movaps	%xmm2, %xmm1	# _1663, tmp1996
	addss	%xmm10, %xmm1	# _1643, _1625
# kiss_fft.c:75:         C_ADDTO( *Fout , scratch[3] );
	addss	(%rax), %xmm7	# MEM[base: Fout_23, offset: 0B], tmp1999
	addss	4(%rax), %xmm9	# MEM[base: Fout_23, offset: 4B], tmp2001
	subss	%xmm4, %xmm0	# _1639, _1609
	addss	%xmm5, %xmm4	# _1635, tmp2004
	movaps	%xmm8, %xmm2	# _1633, _1608
	subss	%xmm1, %xmm2	# _1625, _1608
	subss	%xmm3, %xmm4	# _1660, _1607
	addss	%xmm8, %xmm1	# _1633, _1606
# kiss_fft.c:73:         tw2 += fstride*2;
	addq	$16, %r8	#, tw2
# kiss_fft.c:74:         tw3 += fstride*3;
	addq	$24, %r11	#, tw3
# kiss_fft.c:75:         C_ADDTO( *Fout , scratch[3] );
	movss	%xmm7, (%rax)	# tmp1999, MEM[base: Fout_23, offset: 0B]
	movss	%xmm9, 4(%rax)	# tmp2001, MEM[base: Fout_23, offset: 4B]
# kiss_fft.c:77:         if(st->inverse) {
	testl	%ebx, %ebx	# _205
# SUCC: 65 [50.0% (guessed)]  count:292838683 (estimated locally) (CAN_FALLTHRU) 68 [50.0% (guessed)]  count:292838683 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jne	.L442	#,
# BLOCK 68, count:292838683 (estimated locally) seq:66
# PRED: 67 [50.0% (guessed)]  count:292838683 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:83:             Fout[m].r = scratch[5].r + scratch[4].i;
	movss	%xmm0, (%rdx)	# _1609, MEM[base: _2242, offset: 0B]
# kiss_fft.c:84:             Fout[m].i = scratch[5].i - scratch[4].r;
	movss	%xmm2, 4(%rdx)	# _1608, MEM[base: _2242, offset: 4B]
# kiss_fft.c:85:             Fout[m3].r = scratch[5].r - scratch[4].i;
	movss	%xmm4, (%rcx)	# _1607, MEM[base: _2245, offset: 0B]
# kiss_fft.c:86:             Fout[m3].i = scratch[5].i + scratch[4].r;
	movss	%xmm1, 4(%rcx)	# _1606, MEM[base: _2245, offset: 4B]
# SUCC: 66 [always]  count:292838683 (estimated locally) (CAN_FALLTHRU)
	jmp	.L337	#
# BLOCK 69, count:64424510 (estimated locally) seq:67
# PRED: 39 [never (guessed)]  count:0 (estimated locally) (CAN_FALLTHRU) 50 [33.3% (adjusted)]  count:107374184 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L320:
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movq	%r9, %rdx	# cfg,
	movl	%ebx, %r8d	# p,
	movl	%r12d, %ecx	# m,
	movl	$1, %esi	#,
	movq	%r14, %rdi	# tmpbuf,
	movq	%r9, (%rsp)	# cfg, %sfp
	call	kf_bfly_generic	#
# kiss_fft.c:300:         default: kf_bfly_generic(Fout,fstride,st,m,p); break;
	movq	(%rsp), %r9	# %sfp, cfg
# SUCC: 48 [always]  count:64424510 (estimated locally) (CAN_FALLTHRU)
	jmp	.L329	#
# BLOCK 70, count:64424510 (estimated locally) seq:68
# PRED: 38 [40.0% (adjusted)]  count:128849019 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L318:
# kiss_fft.c:31:     Fout2 = Fout + m;
	movslq	%r12d, %rax	# m, m
	salq	$3, %rax	#, _45
# kiss_fft.c:31:     Fout2 = Fout + m;
	leaq	(%r14,%rax), %rdx	#, Fout2
	addq	$32, %rax	#, tmp1632
	testq	%rax, %rax	# tmp1632
	leaq	32(%r14), %rax	#, tmp1635
	setle	%cl	#, tmp1634
	cmpq	%rax, %rdx	# tmp1635, Fout2
	setnb	%al	#, tmp1637
	orb	%al, %cl	# tmp1637, tmp1634
# kiss_fft.c:29:     kiss_fft_cpx * tw1 = st->twiddles;
	leaq	264(%r9), %rsi	#, tw1
	leal	-1(%r12), %eax	#,
# SUCC: 82 [10.0% (guessed)]  count:6442451 (estimated locally) (CAN_FALLTHRU) 71 [90.0% (guessed)]  count:57982059 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	je	.L324	#,
# BLOCK 71, count:57982059 (estimated locally) seq:69
# PRED: 70 [90.0% (guessed)]  count:57982059 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	cmpl	$2, %eax	#, tmp2557
# SUCC: 82 [11.1% (guessed)]  count:6442451 (estimated locally) (CAN_FALLTHRU) 72 [88.9% (guessed)]  count:51539608 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jbe	.L324	#,
# BLOCK 72, count:51539608 (estimated locally) seq:70
# PRED: 71 [88.9% (guessed)]  count:51539608 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	movl	%r12d, %edi	# m, bnd.1118
	shrl	$2, %edi	#,
	movq	%r14, %rcx	# tmpbuf, ivtmp.1385
	salq	$5, %rdi	#, _2202
# SUCC: 73 [always]  count:51539608 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:31:     Fout2 = Fout + m;
	xorl	%eax, %eax	# ivtmp.1384
# BLOCK 73, count:309237649 (estimated locally) seq:71
# PRED: 72 [always]  count:51539608 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 73 [83.3% (adjusted)]  count:257698042 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L325:
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movups	(%rdx,%rax), %xmm4	# MEM[base: Fout2_46, index: ivtmp.1384_2211, offset: 0B], MEM[base: Fout2_46, index: ivtmp.1384_2211, offset: 0B]
	movups	16(%rdx,%rax), %xmm0	# MEM[base: Fout2_46, index: ivtmp.1384_2211, offset: 16B], MEM[base: Fout2_46, index: ivtmp.1384_2211, offset: 16B]
	movups	264(%r9,%rax), %xmm3	# MEM[base: cfg_2(D), index: ivtmp.1384_2211, offset: 264B], MEM[base: cfg_2(D), index: ivtmp.1384_2211, offset: 264B]
	movaps	%xmm4, %xmm2	# MEM[base: Fout2_46, index: ivtmp.1384_2211, offset: 0B], vect_perm_even_1352
	shufps	$136, %xmm0, %xmm2	#, MEM[base: Fout2_46, index: ivtmp.1384_2211, offset: 16B], vect_perm_even_1352
	shufps	$221, %xmm0, %xmm4	#, MEM[base: Fout2_46, index: ivtmp.1384_2211, offset: 16B], vect_perm_odd_1351
	movups	280(%r9,%rax), %xmm0	# MEM[base: cfg_2(D), index: ivtmp.1384_2211, offset: 280B], MEM[base: cfg_2(D), index: ivtmp.1384_2211, offset: 280B]
	movaps	%xmm3, %xmm1	# MEM[base: cfg_2(D), index: ivtmp.1384_2211, offset: 264B], vect_perm_even_1344
	shufps	$136, %xmm0, %xmm1	#, MEM[base: cfg_2(D), index: ivtmp.1384_2211, offset: 280B], vect_perm_even_1344
	shufps	$221, %xmm0, %xmm3	#, MEM[base: cfg_2(D), index: ivtmp.1384_2211, offset: 280B], vect_perm_odd_1343
	movaps	%xmm1, %xmm6	# vect_perm_even_1344, vect__51.1132
	movaps	%xmm3, %xmm5	# vect_perm_odd_1343, vect__54.1133
	mulps	%xmm4, %xmm1	# vect_perm_odd_1351, vect__57.1135
	mulps	%xmm2, %xmm3	# vect_perm_even_1352, vect__56.1134
	mulps	%xmm4, %xmm5	# vect_perm_odd_1351, vect__54.1133
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movups	16(%rcx), %xmm0	# MEM[base: _2206, offset: 16B], MEM[base: _2206, offset: 16B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	mulps	%xmm2, %xmm6	# vect_perm_even_1352, vect__51.1132
	addq	$32, %rcx	#, ivtmp.1385
	addps	%xmm3, %xmm1	# vect__56.1134, vect__57.1135
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movups	-32(%rcx), %xmm3	# MEM[base: _2206, offset: 0B], MEM[base: _2206, offset: 0B]
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movaps	%xmm1, %xmm2	# vect__57.1135, vect__58.1136
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movaps	%xmm3, %xmm1	# MEM[base: _2206, offset: 0B], tmp1652
	shufps	$136, %xmm0, %xmm1	#, MEM[base: _2206, offset: 16B], tmp1652
	addps	%xmm5, %xmm1	# vect__54.1133, vect__219.1141
	shufps	$221, %xmm0, %xmm3	#, MEM[base: _2206, offset: 16B], tmp1654
	subps	%xmm2, %xmm3	# vect__58.1136, vect__65.1143
	subps	%xmm6, %xmm1	# vect__51.1132, vect__63.1142
	movaps	%xmm1, %xmm0	# vect__63.1142, tmp1655
	unpcklps	%xmm3, %xmm0	# vect__65.1143, tmp1655
	unpckhps	%xmm3, %xmm1	# vect__65.1143, tmp1656
	movups	%xmm0, (%rdx,%rax)	# tmp1655, MEM[base: Fout2_46, index: ivtmp.1384_2211, offset: 0B]
	movups	%xmm1, 16(%rdx,%rax)	# tmp1656, MEM[base: Fout2_46, index: ivtmp.1384_2211, offset: 16B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	movups	-32(%rcx), %xmm1	# MEM[base: _2206, offset: 0B], MEM[base: _2206, offset: 0B]
	movups	-16(%rcx), %xmm3	# MEM[base: _2206, offset: 16B], MEM[base: _2206, offset: 16B]
	movaps	%xmm1, %xmm0	# MEM[base: _2206, offset: 0B], tmp1659
	shufps	$136, %xmm3, %xmm0	#, MEM[base: _2206, offset: 16B], tmp1659
	addps	%xmm6, %xmm0	# vect__51.1132, vect__195.1150
	shufps	$221, %xmm3, %xmm1	#, MEM[base: _2206, offset: 16B], tmp1661
	addps	%xmm2, %xmm1	# vect__58.1136, vect__69.1152
	subps	%xmm5, %xmm0	# vect__54.1133, vect__67.1151
	addq	$32, %rax	#, ivtmp.1384
	movaps	%xmm0, %xmm2	# vect__67.1151, tmp1662
	unpcklps	%xmm1, %xmm2	# vect__69.1152, tmp1662
	unpckhps	%xmm1, %xmm0	# vect__69.1152, tmp1663
	movups	%xmm2, -32(%rcx)	# tmp1662, MEM[base: _2206, offset: 0B]
	movups	%xmm0, -16(%rcx)	# tmp1663, MEM[base: _2206, offset: 16B]
	cmpq	%rax, %rdi	# ivtmp.1384, _2202
# SUCC: 73 [83.3% (adjusted)]  count:257698042 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 74 [16.7% (adjusted)]  count:51539607 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jne	.L325	#,
# BLOCK 74, count:51539608 (estimated locally) seq:72
# PRED: 73 [16.7% (adjusted)]  count:51539607 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	movl	%r12d, %edi	# m, niters_vector_mult_vf.1119
	andl	$-4, %edi	#, niters_vector_mult_vf.1119
	movl	%edi, %ecx	# niters_vector_mult_vf.1119, niters_vector_mult_vf.1119
	salq	$3, %rcx	#, _1370
	movl	%r12d, %r8d	# m, tmp.1121
	leaq	(%r14,%rcx), %rax	#, tmp.1120
	subl	%edi, %r8d	# niters_vector_mult_vf.1119, tmp.1121
	addq	%rcx, %rdx	# _1370, tmp.1122
	addq	%rcx, %rsi	# _1370, tmp.1123
	cmpl	%r12d, %edi	# m, niters_vector_mult_vf.1119
# SUCC: 75 [75.0% (guessed)]  count:38654706 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 48 [25.0% (guessed)]  count:12884902 (estimated locally) (CAN_FALLTHRU)
	je	.L329	#,
# BLOCK 75, count:38654706 (estimated locally) seq:73
# PRED: 74 [75.0% (guessed)]  count:38654706 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	(%rsi), %xmm3	# tmp.1123_1364->r, _428
	movss	4(%rsi), %xmm5	# tmp.1123_1364->i, _432
	movss	(%rdx), %xmm1	# tmp.1122_1367->r, _427
	movss	4(%rdx), %xmm0	# tmp.1122_1367->i, _431
	movaps	%xmm1, %xmm2	# _427, _429
	movaps	%xmm0, %xmm4	# _431, _433
	mulss	%xmm5, %xmm1	# _432, tmp1665
	mulss	%xmm3, %xmm0	# _428, tmp1666
	mulss	%xmm5, %xmm4	# _432, _433
	mulss	%xmm3, %xmm2	# _428, _429
	addss	%xmm1, %xmm0	# tmp1665, _436
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	(%rax), %xmm1	# tmp.1120_1372->r, tmp1667
	addss	%xmm4, %xmm1	# _433, tmp1667
	subss	%xmm2, %xmm1	# _429, tmp1668
	movss	%xmm1, (%rdx)	# tmp1668, tmp.1122_1367->r
	movss	4(%rax), %xmm1	# tmp.1120_1372->i, tmp.1120_1372->i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	(%rax), %xmm2	# tmp.1120_1372->r, tmp1671
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm1	# _436, tmp1669
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm4, %xmm2	# _433, tmp1672
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm1, 4(%rdx)	# tmp1669, tmp.1122_1367->i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	4(%rax), %xmm0	# tmp.1120_1372->i, tmp1673
	movss	%xmm2, (%rax)	# tmp1672, tmp.1120_1372->r
	movss	%xmm0, 4(%rax)	# tmp1673, tmp.1120_1372->i
# kiss_fft.c:41:     }while (--m);
	cmpl	$1, %r8d	#, tmp.1121
# SUCC: 76 [89.0% (guessed)]  count:34402688 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 48 [11.0% (guessed)]  count:4252018 (estimated locally) (CAN_FALLTHRU)
	je	.L329	#,
# BLOCK 76, count:34402690 (estimated locally) seq:74
# PRED: 75 [89.0% (guessed)]  count:34402688 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	8(%rsi), %xmm3	# MEM[(struct kiss_fft_cpx *)tmp.1123_1364 + 8B].r, _462
	movss	12(%rsi), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.1123_1364 + 8B].i, _465
	movss	8(%rdx), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.1122_1367 + 8B].r, _461
	movss	12(%rdx), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.1122_1367 + 8B].i, _464
	movaps	%xmm1, %xmm2	# _461, _463
	movaps	%xmm0, %xmm4	# _464, _466
	mulss	%xmm5, %xmm1	# _465, tmp1676
	mulss	%xmm3, %xmm0	# _462, tmp1677
	mulss	%xmm5, %xmm4	# _465, _466
	mulss	%xmm3, %xmm2	# _462, _463
	addss	%xmm1, %xmm0	# tmp1676, _469
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	8(%rax), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.1120_1372 + 8B].r, tmp1678
	addss	%xmm4, %xmm1	# _466, tmp1678
	subss	%xmm2, %xmm1	# _463, tmp1679
	movss	%xmm1, 8(%rdx)	# tmp1679, MEM[(struct kiss_fft_cpx *)tmp.1122_1367 + 8B].r
	movss	12(%rax), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.1120_1372 + 8B].i, MEM[(struct kiss_fft_cpx *)tmp.1120_1372 + 8B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	8(%rax), %xmm2	# MEM[(struct kiss_fft_cpx *)tmp.1120_1372 + 8B].r, tmp1682
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm1	# _469, tmp1680
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm4, %xmm2	# _466, tmp1683
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm1, 12(%rdx)	# tmp1680, MEM[(struct kiss_fft_cpx *)tmp.1122_1367 + 8B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	12(%rax), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.1120_1372 + 8B].i, tmp1684
	movss	%xmm2, 8(%rax)	# tmp1683, MEM[(struct kiss_fft_cpx *)tmp.1120_1372 + 8B].r
	movss	%xmm0, 12(%rax)	# tmp1684, MEM[(struct kiss_fft_cpx *)tmp.1120_1372 + 8B].i
# kiss_fft.c:41:     }while (--m);
	cmpl	$2, %r8d	#, tmp.1121
# SUCC: 77 [89.0% (guessed)]  count:30618394 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 48 [11.0% (guessed)]  count:3784296 (estimated locally) (CAN_FALLTHRU)
	je	.L329	#,
# BLOCK 77, count:30618393 (estimated locally) seq:75
# PRED: 76 [89.0% (guessed)]  count:30618394 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	16(%rsi), %xmm5	# MEM[(struct kiss_fft_cpx *)tmp.1123_1364 + 16B].r, _1401
	movss	20(%rsi), %xmm3	# MEM[(struct kiss_fft_cpx *)tmp.1123_1364 + 16B].i, _1398
	movss	16(%rdx), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.1122_1367 + 16B].r, _1402
	movss	20(%rdx), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.1122_1367 + 16B].i, _1399
	movaps	%xmm5, %xmm2	# _1401, _1400
	movaps	%xmm3, %xmm4	# _1398, _1397
	mulss	%xmm0, %xmm2	# _1402, _1400
	mulss	%xmm1, %xmm4	# _1399, _1397
	mulss	%xmm3, %xmm0	# _1398, tmp1687
	mulss	%xmm5, %xmm1	# _1401, tmp1686
	addss	%xmm1, %xmm0	# tmp1686, _1394
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	16(%rax), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.1120_1372 + 16B].r, tmp1688
	addss	%xmm4, %xmm1	# _1397, tmp1688
	subss	%xmm2, %xmm1	# _1400, tmp1689
	movss	%xmm1, 16(%rdx)	# tmp1689, MEM[(struct kiss_fft_cpx *)tmp.1122_1367 + 16B].r
	movss	20(%rax), %xmm1	# MEM[(struct kiss_fft_cpx *)tmp.1120_1372 + 16B].i, MEM[(struct kiss_fft_cpx *)tmp.1120_1372 + 16B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	16(%rax), %xmm2	# MEM[(struct kiss_fft_cpx *)tmp.1120_1372 + 16B].r, tmp1692
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	subss	%xmm0, %xmm1	# _1394, tmp1690
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	subss	%xmm4, %xmm2	# _1397, tmp1693
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	%xmm1, 20(%rdx)	# tmp1690, MEM[(struct kiss_fft_cpx *)tmp.1122_1367 + 16B].i
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	20(%rax), %xmm0	# MEM[(struct kiss_fft_cpx *)tmp.1120_1372 + 16B].i, tmp1694
	movss	%xmm2, 16(%rax)	# tmp1693, MEM[(struct kiss_fft_cpx *)tmp.1120_1372 + 16B].r
	movss	%xmm0, 20(%rax)	# tmp1694, MEM[(struct kiss_fft_cpx *)tmp.1120_1372 + 16B].i
# SUCC: 48 [always]  count:30618393 (estimated locally) (CAN_FALLTHRU)
	jmp	.L329	#
# BLOCK 78, count:30064771 (estimated locally) seq:76
# PRED: 11 [11.1% (guessed)]  count:15032385 (estimated locally) (CAN_FALLTHRU) 10 [10.0% (guessed)]  count:15032386 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L356:
	movsd	.LC1(%rip), %xmm5	#, tmp2562
# kiss_fft.c:106:      tw1=tw2=st->twiddles;
	movq	%rsi, %rax	# tw1, tw2
# SUCC: 80 [always]  count:30064771 (estimated locally) (CAN_FALLTHRU)
	jmp	.L361	#
# BLOCK 79, count:243251327 (estimated locally) seq:77
# PRED: 80 [89.0% (guessed)]  count:243251327 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L443:
# SUCC: 80 [always]  count:243251327 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
	decq	%r10	# k
# BLOCK 80, count:273316098 (estimated locally) seq:78
# PRED: 79 [always]  count:243251327 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 78 [always]  count:30064771 (estimated locally) (CAN_FALLTHRU)
.L361:
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movss	(%rdx), %xmm6	# MEM[base: _2289, offset: 0B], _1765
	movss	4(%rsi), %xmm1	# MEM[base: tw1_1761, offset: 4B], _1769
	movss	(%rsi), %xmm3	# MEM[base: tw1_1761, offset: 0B], _1766
	movss	4(%rdx), %xmm2	# MEM[base: _2289, offset: 4B], _1768
	movaps	%xmm6, %xmm0	# _1765, tmp2445
	mulss	%xmm3, %xmm0	# _1766, tmp2445
	mulss	%xmm1, %xmm6	# _1769, tmp2447
	mulss	%xmm2, %xmm3	# _1768, tmp2448
	movaps	%xmm2, %xmm7	# _1768, tmp2446
	mulss	%xmm1, %xmm7	# _1769, tmp2446
# kiss_fft.c:116:          tw1 += fstride;
	addq	$8, %rsi	#, tw1
# kiss_fft.c:117:          tw2 += fstride*2;
	addq	$16, %rax	#, tw2
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm3, %xmm6	# tmp2448, tmp2447
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	4(%rbp,%r8), %xmm3	# MEM[base: Fout_1759, index: _440, offset: 4B], _1779
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm7, %xmm0	# tmp2446, tmp2445
	movaps	%xmm6, %xmm2	# tmp2447, _1774
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	0(%rbp,%r8), %xmm6	# MEM[base: Fout_1759, index: _440, offset: 0B], _1776
	movss	-12(%rax), %xmm7	# MEM[base: tw2_1762, offset: 4B], _1780
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movaps	%xmm0, %xmm9	# tmp2445, _1771
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	-16(%rax), %xmm0	# MEM[base: tw2_1762, offset: 0B], _1777
	movaps	%xmm6, %xmm10	# _1776, _1778
	mulss	%xmm0, %xmm10	# _1777, _1778
	mulss	%xmm7, %xmm6	# _1780, tmp2449
	movaps	%xmm3, %xmm1	# _1779, _1781
	mulss	%xmm7, %xmm1	# _1780, _1781
	mulss	%xmm3, %xmm0	# _1779, tmp2450
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm2, %xmm8	# _1774, _1787
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm6, %xmm3	# tmp2449, tmp2449
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm10, %xmm6	# _1778, tmp2451
	subss	%xmm1, %xmm6	# _1781, tmp2451
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm0, %xmm3	# tmp2450, tmp2449
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm0, %xmm0	# tmp2453
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	addss	%xmm9, %xmm6	# _1771, _1786
	addss	%xmm3, %xmm8	# _1785, _1787
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp2452
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm0	# _1786, tmp2453
	mulsd	%xmm5, %xmm0	# tmp2562, tmp2454
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	0(%rbp), %xmm7	# MEM[base: Fout_1759, offset: 0B], tmp2452
	addq	$8, %rdx	#, ivtmp.1573
# kiss_fft.c:132:          ++Fout;
	addq	$8, %rbp	#, fout
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm0, %xmm7	# tmp2454, tmp2456
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm0, %xmm0	# tmp2459
	cvtss2sd	%xmm8, %xmm0	# _1787, tmp2459
	mulsd	%xmm5, %xmm0	# tmp2562, tmp2460
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp2456, tmp2457
	movss	%xmm7, -8(%rdx)	# tmp2457, MEM[base: _2289, offset: 0B]
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp2458
	cvtss2sd	-4(%rbp), %xmm7	# MEM[base: Fout_1759, offset: 4B], tmp2458
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm0, %xmm7	# tmp2460, tmp2462
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm0	# _1781, _1781
	movaps	%xmm2, %xmm1	# _1774, _1774
	subss	%xmm3, %xmm1	# _1785, _1774
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm7, %xmm7	# tmp2462, tmp2464
	movss	%xmm7, -4(%rdx)	# tmp2464, MEM[base: _2289, offset: 4B]
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	-8(%rbp), %xmm6	# MEM[base: Fout_1759, offset: 0B], tmp2468
	addss	-4(%rbp), %xmm8	# MEM[base: Fout_1759, offset: 4B], tmp2470
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm1	# epi3$i, _1808
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm10, %xmm0	# _1778, _1781
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, -8(%rbp)	# tmp2468, MEM[base: Fout_1759, offset: 0B]
	movss	%xmm8, -4(%rbp)	# tmp2470, MEM[base: Fout_1759, offset: 4B]
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	-8(%rdx), %xmm2	# MEM[base: _2289, offset: 0B], tmp2472
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _1771, tmp2466
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm2	# _1808, tmp2472
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm4, %xmm0	# epi3$i, _1807
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm2, -8(%rbp,%r8)	# tmp2472, MEM[base: Fout_1759, index: _440, offset: 0B]
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	-4(%rdx), %xmm2	# MEM[base: _2289, offset: 4B], MEM[base: _2289, offset: 4B]
	subss	%xmm0, %xmm2	# _1807, tmp2474
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm2, -4(%rbp,%r8)	# tmp2474, MEM[base: Fout_1759, index: _440, offset: 4B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	-8(%rdx), %xmm2	# MEM[base: _2289, offset: 0B], MEM[base: _2289, offset: 0B]
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	-4(%rdx), %xmm0	# MEM[base: _2289, offset: 4B], tmp2478
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm2	# _1808, MEM[base: _2289, offset: 0B]
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, -4(%rdx)	# tmp2478, MEM[base: _2289, offset: 4B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm2, -8(%rdx)	# tmp2476, MEM[base: _2289, offset: 0B]
# kiss_fft.c:133:      }while(--k);
	testq	%r10, %r10	# k
# SUCC: 79 [89.0% (guessed)]  count:243251327 (estimated locally) (CAN_FALLTHRU) 81 [11.0% (guessed)]  count:30064771 (estimated locally) (FALLTHRU)
	jne	.L443	#,
# BLOCK 81, count:30064771 (estimated locally) seq:79
# PRED: 80 [11.0% (guessed)]  count:30064771 (estimated locally) (FALLTHRU)
# SUCC: 18 [always]  count:30064771 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L313	#
# BLOCK 82, count:12884902 (estimated locally) seq:80
# PRED: 71 [11.1% (guessed)]  count:6442451 (estimated locally) (CAN_FALLTHRU) 70 [10.0% (guessed)]  count:6442451 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L324:
	leaq	272(%r9,%rax,8), %rcx	#, _2212
# SUCC: 83 [always]  count:12884902 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:376:         kiss_fft_cpx * tmpbuf = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC( sizeof(kiss_fft_cpx)*st->nfft);
	movq	%r14, %rax	# tmpbuf, Fout
# BLOCK 83, count:117135471 (estimated locally) seq:81
# PRED: 82 [always]  count:12884902 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 83 [89.0% (guessed)]  count:104250569 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L327:
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	(%rsi), %xmm5	# MEM[base: tw1_1438, offset: 0B], _1435
	movss	4(%rsi), %xmm3	# MEM[base: tw1_1438, offset: 4B], _1432
	movss	(%rdx), %xmm0	# MEM[base: Fout2_1441, offset: 0B], _1436
	movss	4(%rdx), %xmm1	# MEM[base: Fout2_1441, offset: 4B], _1433
	movaps	%xmm5, %xmm2	# _1435, _1434
	movaps	%xmm3, %xmm4	# _1432, _1431
	mulss	%xmm0, %xmm2	# _1436, _1434
	mulss	%xmm1, %xmm4	# _1433, _1431
	mulss	%xmm3, %xmm0	# _1432, tmp1701
	mulss	%xmm5, %xmm1	# _1435, tmp1700
# kiss_fft.c:36:         tw1 += fstride;
	addq	$8, %rsi	#, tw1
# kiss_fft.c:39:         ++Fout2;
	addq	$8, %rdx	#, Fout2
# kiss_fft.c:40:         ++Fout;
	addq	$8, %rax	#, Fout
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	addss	%xmm1, %xmm0	# tmp1700, _1428
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	-8(%rax), %xmm1	# MEM[base: Fout_1572, offset: 0B], tmp1702
	addss	%xmm4, %xmm1	# _1431, tmp1702
	subss	%xmm2, %xmm1	# _1434, tmp1703
	movss	%xmm1, -8(%rdx)	# tmp1703, MEM[base: Fout2_1441, offset: 0B]
	movss	-4(%rax), %xmm1	# MEM[base: Fout_1572, offset: 4B], MEM[base: Fout_1572, offset: 4B]
	subss	%xmm0, %xmm1	# _1428, tmp1704
	movss	%xmm1, -4(%rdx)	# tmp1704, MEM[base: Fout2_1441, offset: 4B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	-8(%rax), %xmm2	# MEM[base: Fout_1572, offset: 0B], tmp1706
	addss	-4(%rax), %xmm0	# MEM[base: Fout_1572, offset: 4B], tmp1708
	subss	%xmm4, %xmm2	# _1431, tmp1707
	movss	%xmm0, -4(%rax)	# tmp1708, MEM[base: Fout_1572, offset: 4B]
	movss	%xmm2, -8(%rax)	# tmp1707, MEM[base: Fout_1572, offset: 0B]
# kiss_fft.c:41:     }while (--m);
	cmpq	%rcx, %rsi	# _2212, tw1
# SUCC: 83 [89.0% (guessed)]  count:104250569 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 84 [11.0% (guessed)]  count:12884902 (estimated locally) (FALLTHRU)
	jne	.L327	#,
# BLOCK 84, count:12884902 (estimated locally) seq:82
# PRED: 83 [11.0% (guessed)]  count:12884902 (estimated locally) (FALLTHRU)
# SUCC: 48 [always]  count:12884902 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L329	#
# BLOCK 85, count:12884902 (estimated locally) seq:83
# PRED: 41 [11.1% (guessed)]  count:6442451 (estimated locally) (CAN_FALLTHRU) 40 [10.0% (guessed)]  count:6442451 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L330:
	movsd	.LC1(%rip), %xmm5	#, tmp2562
# kiss_fft.c:106:      tw1=tw2=st->twiddles;
	movq	%rcx, %rsi	# tw1, tw2
# kiss_fft.c:376:         kiss_fft_cpx * tmpbuf = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC( sizeof(kiss_fft_cpx)*st->nfft);
	movq	%r14, %rdx	# tmpbuf, Fout
# SUCC: 87 [always]  count:12884902 (estimated locally) (CAN_FALLTHRU)
	jmp	.L335	#
# BLOCK 86, count:104250569 (estimated locally) seq:84
# PRED: 87 [89.0% (guessed)]  count:104250569 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L444:
# SUCC: 87 [always]  count:104250569 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
	decq	%rdi	# k
# BLOCK 87, count:117135471 (estimated locally) seq:85
# PRED: 86 [always]  count:104250569 (estimated locally) (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 85 [always]  count:12884902 (estimated locally) (CAN_FALLTHRU)
.L335:
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movss	(%rcx), %xmm1	# MEM[base: tw1_1266, offset: 0B], _1261
	movss	4(%rcx), %xmm4	# MEM[base: tw1_1266, offset: 4B], _1258
	movss	(%rax), %xmm3	# MEM[base: _420, offset: 0B], _1262
	movss	4(%rax), %xmm6	# MEM[base: _420, offset: 4B], _1259
	movaps	%xmm1, %xmm0	# _1261, tmp1949
	movaps	%xmm4, %xmm7	# _1258, tmp1950
	mulss	%xmm6, %xmm7	# _1259, tmp1950
	mulss	%xmm3, %xmm0	# _1262, tmp1949
	mulss	%xmm1, %xmm6	# _1261, tmp1951
	mulss	%xmm3, %xmm4	# _1262, tmp1952
# kiss_fft.c:116:          tw1 += fstride;
	addq	$8, %rcx	#, tw1
# kiss_fft.c:117:          tw2 += fstride*2;
	addq	$16, %rsi	#, tw2
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	subss	%xmm7, %xmm0	# tmp1950, tmp1949
	movaps	%xmm6, %xmm3	# tmp1951, tmp1951
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	-16(%rsi), %xmm7	# MEM[base: tw2_1265, offset: 0B], _1250
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	movaps	%xmm0, %xmm9	# tmp1949, _1256
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	-12(%rsi), %xmm0	# MEM[base: tw2_1265, offset: 4B], _1247
	movss	4(%rdx,%r8), %xmm6	# MEM[base: Fout_1268, index: _92, offset: 4B], _1248
# kiss_fft.c:111:          C_MUL(scratch[1],Fout[m] , *tw1);
	addss	%xmm4, %xmm3	# tmp1952, tmp1951
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movss	(%rdx,%r8), %xmm4	# MEM[base: Fout_1268, index: _92, offset: 0B], _1251
	movaps	%xmm0, %xmm1	# _1247, _1246
	mulss	%xmm6, %xmm1	# _1248, _1246
	mulss	%xmm4, %xmm0	# _1251, tmp1954
	mulss	%xmm7, %xmm6	# _1250, tmp1953
	movaps	%xmm7, %xmm10	# _1250, _1249
	mulss	%xmm4, %xmm10	# _1251, _1249
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm7, %xmm7	# tmp1956
	cvtss2sd	(%rdx), %xmm7	# MEM[base: Fout_1268, offset: 0B], tmp1956
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	addss	%xmm0, %xmm6	# tmp1954, tmp1953
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	pxor	%xmm0, %xmm0	# tmp1957
# kiss_fft.c:132:          ++Fout;
	addq	$8, %rdx	#, Fout
# kiss_fft.c:112:          C_MUL(scratch[2],Fout[m2] , *tw2);
	movaps	%xmm6, %xmm4	# tmp1953, _1242
# kiss_fft.c:114:          C_ADD(scratch[3],scratch[1],scratch[2]);
	movaps	%xmm10, %xmm6	# _1249, tmp1955
	subss	%xmm1, %xmm6	# _1246, tmp1955
	movaps	%xmm4, %xmm8	# _1242, _1240
	addss	%xmm3, %xmm8	# _1253, _1240
	addss	%xmm9, %xmm6	# _1256, _1241
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm4, %xmm3	# _1242, _1253
	addq	$8, %rax	#, ivtmp.1411
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtss2sd	%xmm6, %xmm0	# _1241, tmp1957
	mulsd	%xmm5, %xmm0	# tmp2562, tmp1958
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	subsd	%xmm0, %xmm7	# tmp1958, tmp1960
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm0, %xmm0	# tmp1963
	cvtss2sd	%xmm8, %xmm0	# _1240, tmp1963
	mulsd	%xmm5, %xmm0	# tmp2562, tmp1964
# kiss_fft.c:119:          Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
	cvtsd2ss	%xmm7, %xmm7	# tmp1960, tmp1961
	movss	%xmm7, -8(%rax)	# tmp1961, MEM[base: _420, offset: 0B]
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	pxor	%xmm7, %xmm7	# tmp1962
	cvtss2sd	-4(%rdx), %xmm7	# MEM[base: Fout_1268, offset: 4B], tmp1962
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	subsd	%xmm0, %xmm7	# tmp1964, tmp1966
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	movaps	%xmm1, %xmm0	# _1246, _1246
	movaps	%xmm3, %xmm1	# _1253, tmp1971
# kiss_fft.c:120:          Fout[m].i = Fout->i - HALF_OF(scratch[3].i);
	cvtsd2ss	%xmm7, %xmm7	# tmp1966, tmp1968
	movss	%xmm7, -4(%rax)	# tmp1968, MEM[base: _420, offset: 4B]
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	addss	-8(%rdx), %xmm6	# MEM[base: Fout_1268, offset: 0B], tmp1972
	addss	-4(%rdx), %xmm8	# MEM[base: Fout_1268, offset: 4B], tmp1974
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm2, %xmm1	# epi3$i, _1219
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	subss	%xmm10, %xmm0	# _1249, _1246
# kiss_fft.c:124:          C_ADDTO(*Fout,scratch[3]);
	movss	%xmm6, -8(%rdx)	# tmp1972, MEM[base: Fout_1268, offset: 0B]
	movss	%xmm8, -4(%rdx)	# tmp1974, MEM[base: Fout_1268, offset: 4B]
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	-8(%rax), %xmm3	# MEM[base: _420, offset: 0B], tmp1976
# kiss_fft.c:115:          C_SUB(scratch[0],scratch[1],scratch[2]);
	addss	%xmm9, %xmm0	# _1256, tmp1970
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	addss	%xmm1, %xmm3	# _1219, tmp1976
# kiss_fft.c:122:          C_MULBYSCALAR( scratch[0] , epi3.i );
	mulss	%xmm2, %xmm0	# epi3$i, _1220
# kiss_fft.c:126:          Fout[m2].r = Fout[m].r + scratch[0].i;
	movss	%xmm3, -8(%rdx,%r8)	# tmp1976, MEM[base: Fout_1268, index: _92, offset: 0B]
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	-4(%rax), %xmm3	# MEM[base: _420, offset: 4B], MEM[base: _420, offset: 4B]
	subss	%xmm0, %xmm3	# _1220, tmp1978
# kiss_fft.c:127:          Fout[m2].i = Fout[m].i - scratch[0].r;
	movss	%xmm3, -4(%rdx,%r8)	# tmp1978, MEM[base: Fout_1268, index: _92, offset: 4B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	-8(%rax), %xmm3	# MEM[base: _420, offset: 0B], MEM[base: _420, offset: 0B]
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	addss	-4(%rax), %xmm0	# MEM[base: _420, offset: 4B], tmp1982
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	subss	%xmm1, %xmm3	# _1219, MEM[base: _420, offset: 0B]
# kiss_fft.c:130:          Fout[m].i += scratch[0].r;
	movss	%xmm0, -4(%rax)	# tmp1982, MEM[base: _420, offset: 4B]
# kiss_fft.c:129:          Fout[m].r -= scratch[0].i;
	movss	%xmm3, -8(%rax)	# tmp1980, MEM[base: _420, offset: 0B]
# kiss_fft.c:133:      }while(--k);
	testq	%rdi, %rdi	# k
# SUCC: 86 [89.0% (guessed)]  count:104250569 (estimated locally) (CAN_FALLTHRU) 88 [11.0% (guessed)]  count:12884902 (estimated locally) (FALLTHRU)
	jne	.L444	#,
# BLOCK 88, count:12884902 (estimated locally) seq:86
# PRED: 87 [11.0% (guessed)]  count:12884902 (estimated locally) (FALLTHRU)
# SUCC: 48 [always]  count:12884902 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L329	#
# BLOCK 89, count:30064771 (estimated locally) seq:87
# PRED: 56 [11.1% (guessed)]  count:15032385 (estimated locally) (CAN_FALLTHRU) 55 [10.0% (guessed)]  count:15032386 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L350:
	movl	%r11d, %eax	# tmp2560, tmp2150
# SUCC: 90 [always]  count:30064771 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	leaq	272(%r9,%rax,8), %rax	#, _2271
# BLOCK 90, count:273316098 (estimated locally) seq:88
# PRED: 89 [always]  count:30064771 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 90 [89.0% (guessed)]  count:243251327 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L353:
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	movss	(%rsi), %xmm5	# MEM[base: tw1_914, offset: 0B], _911
	movss	4(%rsi), %xmm3	# MEM[base: tw1_914, offset: 4B], _908
	movss	(%rcx), %xmm0	# MEM[base: Fout2_915, offset: 0B], _912
	movss	4(%rcx), %xmm1	# MEM[base: Fout2_915, offset: 4B], _909
	movaps	%xmm5, %xmm2	# _911, _910
	movaps	%xmm3, %xmm4	# _908, _907
	mulss	%xmm0, %xmm2	# _912, _910
	mulss	%xmm1, %xmm4	# _909, _907
	mulss	%xmm3, %xmm0	# _908, tmp2154
	mulss	%xmm5, %xmm1	# _911, tmp2153
# kiss_fft.c:36:         tw1 += fstride;
	addq	$8, %rsi	#, tw1
# kiss_fft.c:39:         ++Fout2;
	addq	$8, %rcx	#, Fout2
# kiss_fft.c:40:         ++Fout;
	addq	$8, %rbp	#, fout
# kiss_fft.c:35:         C_MUL (t,  *Fout2 , *tw1);
	addss	%xmm1, %xmm0	# tmp2153, _904
# kiss_fft.c:37:         C_SUB( *Fout2 ,  *Fout , t );
	movss	-8(%rbp), %xmm1	# MEM[base: Fout_917, offset: 0B], tmp2155
	addss	%xmm4, %xmm1	# _907, tmp2155
	subss	%xmm2, %xmm1	# _910, tmp2156
	movss	%xmm1, -8(%rcx)	# tmp2156, MEM[base: Fout2_915, offset: 0B]
	movss	-4(%rbp), %xmm1	# MEM[base: Fout_917, offset: 4B], MEM[base: Fout_917, offset: 4B]
	subss	%xmm0, %xmm1	# _904, tmp2157
	movss	%xmm1, -4(%rcx)	# tmp2157, MEM[base: Fout2_915, offset: 4B]
# kiss_fft.c:38:         C_ADDTO( *Fout ,  t );
	addss	-8(%rbp), %xmm2	# MEM[base: Fout_917, offset: 0B], tmp2159
	addss	-4(%rbp), %xmm0	# MEM[base: Fout_917, offset: 4B], tmp2161
	subss	%xmm4, %xmm2	# _907, tmp2160
	movss	%xmm0, -4(%rbp)	# tmp2161, MEM[base: Fout_917, offset: 4B]
	movss	%xmm2, -8(%rbp)	# tmp2160, MEM[base: Fout_917, offset: 0B]
# kiss_fft.c:41:     }while (--m);
	cmpq	%rax, %rsi	# _2271, tw1
# SUCC: 90 [89.0% (guessed)]  count:243251327 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 91 [11.0% (guessed)]  count:30064771 (estimated locally) (FALLTHRU)
	jne	.L353	#,
# BLOCK 91, count:30064771 (estimated locally) seq:89
# PRED: 90 [11.0% (guessed)]  count:30064771 (estimated locally) (FALLTHRU)
# SUCC: 18 [always]  count:30064771 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L313	#
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
.L454:
# kiss_fft.c:400:         while ( (m%2) == 0 ) m/=2;
	movl	%r8d, %eax	# n, m
	testb	$1, %r8b	#, n
# SUCC: 4 [89.0% (guessed)]  count:105119323 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 7 [11.0% (guessed)]  count:12992276 (estimated locally) (CAN_FALLTHRU)
	jne	.L460	#,
# BLOCK 4, count:955630213 (estimated locally) seq:2
# PRED: 3 [89.0% (guessed)]  count:105119323 (estimated locally) (FALLTHRU,CAN_FALLTHRU) 4 [89.0% (guessed)]  count:850510890 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L448:
# kiss_fft.c:400:         while ( (m%2) == 0 ) m/=2;
	movl	%eax, %edx	# m, tmp95
	shrl	$31, %edx	#, tmp95
	addl	%eax, %edx	# m, tmp96
	movl	%edx, %eax	# tmp96, m
	sarl	%eax	# m
# kiss_fft.c:400:         while ( (m%2) == 0 ) m/=2;
	andl	$2, %edx	#, tmp96
# SUCC: 4 [89.0% (guessed)]  count:850510890 (estimated locally) (DFS_BACK,CAN_FALLTHRU) 5 [11.0% (guessed)]  count:105119323 (estimated locally) (FALLTHRU)
	je	.L448	#,
# BLOCK 5, count:105119323 (estimated locally) seq:3
# PRED: 4 [11.0% (guessed)]  count:105119323 (estimated locally) (FALLTHRU)
# SUCC: 7 [always]  count:105119323 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L460	#
# BLOCK 6, count:955630219 (estimated locally) seq:4
# PRED: 7 [89.0% (guessed)]  count:955630219 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L450:
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
.L460:
	imull	$-1431655765, %eax, %edx	#, m, tmp124
	addl	$715827882, %edx	#, tmp125
# kiss_fft.c:401:         while ( (m%3) == 0 ) m/=3;
	cmpl	$1431655764, %edx	#, tmp125
# SUCC: 6 [89.0% (guessed)]  count:955630219 (estimated locally) (CAN_FALLTHRU) 8 [11.0% (guessed)]  count:118111599 (estimated locally) (FALLTHRU)
	jbe	.L450	#,
# BLOCK 8, count:118111599 (estimated locally) seq:6
# PRED: 7 [11.0% (guessed)]  count:118111599 (estimated locally) (FALLTHRU)
# SUCC: 10 [always]  count:118111599 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	jmp	.L461	#
# BLOCK 9, count:955630225 (estimated locally) seq:7
# PRED: 10 [89.0% (guessed)]  count:955630224 (estimated locally) (CAN_FALLTHRU)
	.p2align 4,,10
	.p2align 3
.L452:
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
.L461:
	imull	$-858993459, %eax, %edx	#, m, tmp154
	addl	$429496729, %edx	#, tmp155
# kiss_fft.c:402:         while ( (m%5) == 0 ) m/=5;
	cmpl	$858993458, %edx	#, tmp155
# SUCC: 9 [89.0% (guessed)]  count:955630224 (estimated locally) (CAN_FALLTHRU) 11 [11.0% (guessed)]  count:118111600 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	jbe	.L452	#,
# BLOCK 11, count:118111601 (estimated locally) seq:9
# PRED: 10 [11.0% (guessed)]  count:118111600 (estimated locally) (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
# kiss_fft.c:403:         if (m<=1)
	cmpl	$1, %eax	#, m
# SUCC: 13 [11.0% (guessed)]  count:12992276 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT) 12 [89.0% (guessed)]  count:105119325 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
	jle	.L453	#,
# BLOCK 12, count:105119325 (estimated locally) seq:10
# PRED: 11 [89.0% (guessed)]  count:105119325 (estimated locally) (FALLTHRU,CAN_FALLTHRU)
# kiss_fft.c:405:         n++;
	incl	%r8d	# n
# SUCC: 3 [always]  count:105119325 (estimated locally) (DFS_BACK,CAN_FALLTHRU)
# kiss_fft.c:398:     while(1) {
	jmp	.L454	#
# BLOCK 13, count:12992276 (estimated locally) seq:11
# PRED: 11 [11.0% (guessed)]  count:12992276 (estimated locally) (CAN_FALLTHRU,LOOP_EXIT)
	.p2align 4,,10
	.p2align 3
.L453:
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
	.long	0
	.long	1071644672
	.long	0
	.long	1071644672
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1071644672
	.align 8
.LC2:
	.long	0
	.long	1075052544
	.align 8
.LC3:
	.long	0
	.long	1127219200
	.section	.rodata.cst16
	.align 16
.LC4:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC5:
	.long	0
	.long	1074266112
	.align 8
.LC6:
	.long	0
	.long	1073741824
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.align 8
.LC8:
	.long	1413754136
	.long	-1072094725
	.section	.rodata.cst16
	.align 16
.LC9:
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
