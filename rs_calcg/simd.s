	.text
	.file	"simd.7rcbfp3g-cgu.0"
	.section	.text._ZN3std2rt10lang_start17h9e1f9ef8590b863cE,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17h9e1f9ef8590b863cE
	.globl	_ZN3std2rt10lang_start17h9e1f9ef8590b863cE
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17h9e1f9ef8590b863cE,@function
_ZN3std2rt10lang_start17h9e1f9ef8590b863cE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	leaq	.L__unnamed_1(%rip), %rax
	movq	%rdi, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rsi, 24(%rsp)
	movq	%rax, %rsi
	movq	24(%rsp), %rax
	movq	%rdx, 16(%rsp)
	movq	%rax, %rdx
	movq	16(%rsp), %rcx
	callq	*_ZN3std2rt19lang_start_internal17he0d8d06abc6f912fE@GOTPCREL(%rip)
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN3std2rt10lang_start17h9e1f9ef8590b863cE, .Lfunc_end0-_ZN3std2rt10lang_start17h9e1f9ef8590b863cE
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5e20b6221d7b0f93E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5e20b6221d7b0f93E,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5e20b6221d7b0f93E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*(%rdi)
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbde34b571ea0e089E
	movl	%eax, 4(%rsp)
	movl	4(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5e20b6221d7b0f93E, .Lfunc_end1-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5e20b6221d7b0f93E
	.cfi_endproc

	.section	.text._ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h96187d42c6a12ef9E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h96187d42c6a12ef9E,@function
_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h96187d42c6a12ef9E:
	.cfi_startproc
	movzbl	(%rdi), %eax
	retq
.Lfunc_end2:
	.size	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h96187d42c6a12ef9E, .Lfunc_end2-_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h96187d42c6a12ef9E
	.cfi_endproc

	.section	".text._ZN41_$LT$bool$u20$as$u20$core..fmt..Debug$GT$3fmt17h70c0c469006c85d7E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN41_$LT$bool$u20$as$u20$core..fmt..Debug$GT$3fmt17h70c0c469006c85d7E,@function
_ZN41_$LT$bool$u20$as$u20$core..fmt..Debug$GT$3fmt17h70c0c469006c85d7E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hb47911a3f110d3f1E@GOTPCREL(%rip)
	movb	%al, 7(%rsp)
	movb	7(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZN41_$LT$bool$u20$as$u20$core..fmt..Debug$GT$3fmt17h70c0c469006c85d7E, .Lfunc_end3-_ZN41_$LT$bool$u20$as$u20$core..fmt..Debug$GT$3fmt17h70c0c469006c85d7E
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f1a9190dcf6f3b2E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f1a9190dcf6f3b2E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f1a9190dcf6f3b2E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN41_$LT$bool$u20$as$u20$core..fmt..Debug$GT$3fmt17h70c0c469006c85d7E
	movb	%al, 7(%rsp)
	movb	7(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f1a9190dcf6f3b2E, .Lfunc_end4-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f1a9190dcf6f3b2E
	.cfi_endproc

	.section	".text._ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$9add_usize17h50c1ac9a781da123E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$9add_usize17h50c1ac9a781da123E,@function
_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$9add_usize17h50c1ac9a781da123E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movq	%rsi, %rdi
	callq	_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h4e7f8724694bf756E
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rax
	movq	(%rax), %rdi
	callq	_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h48d679c3b81d1541E
	movq	%rax, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rdx
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$9add_usize17h50c1ac9a781da123E, .Lfunc_end5-_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$9add_usize17h50c1ac9a781da123E
	.cfi_endproc

	.section	".text._ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hde17b751d40bae2bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hde17b751d40bae2bE,@function
_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hde17b751d40bae2bE:
	.cfi_startproc
	movq	(%rdi), %rdi
	cmpq	(%rsi), %rdi
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end6:
	.size	_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hde17b751d40bae2bE, .Lfunc_end6-_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hde17b751d40bae2bE
	.cfi_endproc

	.section	.text._ZN4core3fmt10ArgumentV13new17h8ee1f26ddd8eef67E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt10ArgumentV13new17h8ee1f26ddd8eef67E,@function
_ZN4core3fmt10ArgumentV13new17h8ee1f26ddd8eef67E:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, 40(%rsp)
	movq	40(%rsp), %rsi
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	8(%rsp), %rcx
	movq	%rcx, 32(%rsp)
	movq	24(%rsp), %rax
	movq	32(%rsp), %rdx
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_ZN4core3fmt10ArgumentV13new17h8ee1f26ddd8eef67E, .Lfunc_end7-_ZN4core3fmt10ArgumentV13new17h8ee1f26ddd8eef67E
	.cfi_endproc

	.section	.text._ZN4core3fmt9Arguments16new_v1_formatted17h36c2b95b9d75dd1cE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt9Arguments16new_v1_formatted17h36c2b95b9d75dd1cE,@function
_ZN4core3fmt9Arguments16new_v1_formatted17h36c2b95b9d75dd1cE:
	.cfi_startproc
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	movq	%rdi, %rax
	movq	24(%rsp), %r10
	movq	%r9, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	%rdx, 16(%rdi)
	movq	%rsi, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%r8, 40(%rdi)
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	_ZN4core3fmt9Arguments16new_v1_formatted17h36c2b95b9d75dd1cE, .Lfunc_end8-_ZN4core3fmt9Arguments16new_v1_formatted17h36c2b95b9d75dd1cE
	.cfi_endproc

	.section	.text._ZN4core3mem4swap17hc18756a87a034934E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3mem4swap17hc18756a87a034934E,@function
_ZN4core3mem4swap17hc18756a87a034934E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr23swap_nonoverlapping_one17hd228db1df8a74e7aE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	_ZN4core3mem4swap17hc18756a87a034934E, .Lfunc_end9-_ZN4core3mem4swap17hc18756a87a034934E
	.cfi_endproc

	.section	.text._ZN4core3mem7size_of17h5b30502bb9ee2f3dE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3mem7size_of17h5b30502bb9ee2f3dE,@function
_ZN4core3mem7size_of17h5b30502bb9ee2f3dE:
	.cfi_startproc
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	movq	$32, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	_ZN4core3mem7size_of17h5b30502bb9ee2f3dE, .Lfunc_end10-_ZN4core3mem7size_of17h5b30502bb9ee2f3dE
	.cfi_endproc

	.section	.text._ZN4core3mem7size_of17hebc9a52c0c38e63bE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3mem7size_of17hebc9a52c0c38e63bE,@function
_ZN4core3mem7size_of17hebc9a52c0c38e63bE:
	.cfi_startproc
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	movq	$8, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	_ZN4core3mem7size_of17hebc9a52c0c38e63bE, .Lfunc_end11-_ZN4core3mem7size_of17hebc9a52c0c38e63bE
	.cfi_endproc

	.section	".text._ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h48d679c3b81d1541E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h48d679c3b81d1541E,@function
_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h48d679c3b81d1541E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	callq	_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hf607a6568d6f6bd6E
	movq	%rax, 16(%rsp)
	movb	%dl, 15(%rsp)
	movb	15(%rsp), %al
	testb	$1, %al
	jne	.LBB12_2
	jmp	.LBB12_3
.LBB12_2:
	movq	$0, 24(%rsp)
	jmp	.LBB12_4
.LBB12_3:
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 24(%rsp)
.LBB12_4:
	movq	24(%rsp), %rax
	movq	32(%rsp), %rdx
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h48d679c3b81d1541E, .Lfunc_end12-_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h48d679c3b81d1541E
	.cfi_endproc

	.section	".text._ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hf607a6568d6f6bd6E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hf607a6568d6f6bd6E,@function
_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hf607a6568d6f6bd6E:
	.cfi_startproc
	subq	$48, %rsp
	.cfi_def_cfa_offset 56
	addq	%rsi, %rdi
	setb	%al
	andb	$1, %al
	movq	%rdi, 32(%rsp)
	movb	%al, 40(%rsp)
	movq	32(%rsp), %rsi
	movb	40(%rsp), %al
	movq	%rsi, 8(%rsp)
	movb	%al, 7(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movb	7(%rsp), %cl
	andb	$1, %cl
	movb	%cl, 24(%rsp)
	movq	16(%rsp), %rax
	movb	24(%rsp), %dl
	addq	$48, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hf607a6568d6f6bd6E, .Lfunc_end13-_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hf607a6568d6f6bd6E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h29c90b34eba2cbccE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h29c90b34eba2cbccE,@function
_ZN4core3ops8function6FnOnce9call_once17h29c90b34eba2cbccE:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp0:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5e20b6221d7b0f93E
.Ltmp1:
	movl	%eax, 4(%rsp)
	jmp	.LBB14_1
.LBB14_1:
	jmp	.LBB14_2
.LBB14_2:
	movl	4(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB14_3:
	.cfi_def_cfa_offset 48
	jmp	.LBB14_4
.LBB14_4:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB14_5:
.Ltmp2:
	movl	%edx, %ecx
	movq	%rax, 24(%rsp)
	movl	%ecx, 32(%rsp)
	jmp	.LBB14_3
.Lfunc_end14:
	.size	_ZN4core3ops8function6FnOnce9call_once17h29c90b34eba2cbccE, .Lfunc_end14-_ZN4core3ops8function6FnOnce9call_once17h29c90b34eba2cbccE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table14:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp1-.Lfunc_begin0
	.uleb128 .Lfunc_end14-.Ltmp1
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.section	".text._ZN4core3ops8function6FnOnce9call_once32_$u7b$$u7b$vtable.shim$u7d$$u7d$17h7fc2b2cde2e3b133E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once32_$u7b$$u7b$vtable.shim$u7d$$u7d$17h7fc2b2cde2e3b133E,@function
_ZN4core3ops8function6FnOnce9call_once32_$u7b$$u7b$vtable.shim$u7d$$u7d$17h7fc2b2cde2e3b133E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17h29c90b34eba2cbccE
	movl	%eax, 12(%rsp)
	movl	12(%rsp), %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	_ZN4core3ops8function6FnOnce9call_once32_$u7b$$u7b$vtable.shim$u7d$$u7d$17h7fc2b2cde2e3b133E, .Lfunc_end15-_ZN4core3ops8function6FnOnce9call_once32_$u7b$$u7b$vtable.shim$u7d$$u7d$17h7fc2b2cde2e3b133E
	.cfi_endproc

	.section	.text._ZN4core3ptr18real_drop_in_place17ha84fc7d5ce37fc3dE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr18real_drop_in_place17ha84fc7d5ce37fc3dE,@function
_ZN4core3ptr18real_drop_in_place17ha84fc7d5ce37fc3dE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	_ZN4core3ptr18real_drop_in_place17ha84fc7d5ce37fc3dE, .Lfunc_end16-_ZN4core3ptr18real_drop_in_place17ha84fc7d5ce37fc3dE
	.cfi_endproc

	.section	.text._ZN4core3ptr19swap_nonoverlapping17hce2cb8d890b2be1cE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr19swap_nonoverlapping17hce2cb8d890b2be1cE,@function
_ZN4core3ptr19swap_nonoverlapping17hce2cb8d890b2be1cE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdx, 32(%rsp)
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	callq	_ZN4core3mem7size_of17hebc9a52c0c38e63bE
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	movq	32(%rsp), %rcx
	imulq	%rcx, %rax
	movq	24(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	%rax, %rdx
	callq	_ZN4core3ptr25swap_nonoverlapping_bytes17hee3af4672b6d9b02E
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	_ZN4core3ptr19swap_nonoverlapping17hce2cb8d890b2be1cE, .Lfunc_end17-_ZN4core3ptr19swap_nonoverlapping17hce2cb8d890b2be1cE
	.cfi_endproc

	.section	.text._ZN4core3ptr23swap_nonoverlapping_one17hd228db1df8a74e7aE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr23swap_nonoverlapping_one17hd228db1df8a74e7aE,@function
_ZN4core3ptr23swap_nonoverlapping_one17hd228db1df8a74e7aE:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movb	$0, 39(%rsp)
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	callq	_ZN4core3mem7size_of17hebc9a52c0c38e63bE
	movq	%rax, 8(%rsp)
	jmp	.LBB18_2
.LBB18_1:
	movq	40(%rsp), %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB18_2:
	movq	8(%rsp), %rax
	cmpq	$32, %rax
	jae	.LBB18_4
	movb	$1, 39(%rsp)
	movq	24(%rsp), %rdi
	callq	_ZN4core3ptr4read17h306334d0e0b958f1E
	movq	%rax, (%rsp)
	jmp	.LBB18_5
.LBB18_4:
	movq	24(%rsp), %rdi
	movq	16(%rsp), %rsi
	movl	$1, %edx
	callq	_ZN4core3ptr19swap_nonoverlapping17hce2cb8d890b2be1cE
	jmp	.LBB18_8
.LBB18_5:
	movq	16(%rsp), %rax
	movq	(%rax), %rcx
	movq	24(%rsp), %rdx
	movq	%rcx, (%rdx)
	movb	$0, 39(%rsp)
.Ltmp3:
	movq	16(%rsp), %rdi
	movq	(%rsp), %rsi
	callq	_ZN4core3ptr5write17hdc005393508b43a2E
.Ltmp4:
	jmp	.LBB18_7
.LBB18_7:
	movb	$0, 39(%rsp)
	jmp	.LBB18_9
.LBB18_8:
	jmp	.LBB18_9
.LBB18_9:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB18_10:
	.cfi_def_cfa_offset 64
	movb	$0, 39(%rsp)
	jmp	.LBB18_1
.LBB18_11:
	testb	$1, 39(%rsp)
	jne	.LBB18_10
	jmp	.LBB18_1
.LBB18_12:
.Ltmp5:
	movl	%edx, %ecx
	movq	%rax, 40(%rsp)
	movl	%ecx, 48(%rsp)
	jmp	.LBB18_11
.Lfunc_end18:
	.size	_ZN4core3ptr23swap_nonoverlapping_one17hd228db1df8a74e7aE, .Lfunc_end18-_ZN4core3ptr23swap_nonoverlapping_one17hd228db1df8a74e7aE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table18:
.Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1
	.uleb128 .Ltmp3-.Lfunc_begin1
	.byte	0
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin1
	.uleb128 .Ltmp4-.Ltmp3
	.uleb128 .Ltmp5-.Lfunc_begin1
	.byte	0
.Lcst_end1:
	.p2align	2

	.section	.text._ZN4core3ptr25swap_nonoverlapping_bytes17hee3af4672b6d9b02E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr25swap_nonoverlapping_bytes17hee3af4672b6d9b02E,@function
_ZN4core3ptr25swap_nonoverlapping_bytes17hee3af4672b6d9b02E:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-32, %rsp
	subq	$224, %rsp
	movq	%rdi, 112(%rsp)
	movq	%rsi, 104(%rsp)
	movq	%rdx, 96(%rsp)
	callq	_ZN4core3mem7size_of17h5b30502bb9ee2f3dE
	movq	%rax, 88(%rsp)
	movq	$0, 120(%rsp)
.LBB19_2:
	movq	88(%rsp), %rax
	addq	120(%rsp), %rax
	movq	96(%rsp), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB19_4
	movq	96(%rsp), %rax
	cmpq	%rax, 120(%rsp)
	jb	.LBB19_12
	jmp	.LBB19_20
.LBB19_4:
	jmp	.LBB19_6
.LBB19_6:
	leaq	128(%rsp), %rax
	movq	120(%rsp), %rsi
	movq	112(%rsp), %rdi
	movq	%rax, 80(%rsp)
	callq	_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h9853b532986cb9d1E
	movq	%rax, 72(%rsp)
	movq	120(%rsp), %rsi
	movq	104(%rsp), %rdi
	callq	_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h9853b532986cb9d1E
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rax
	shlq	$0, %rax
	movq	80(%rsp), %rdi
	movq	72(%rsp), %rsi
	movq	%rax, %rdx
	callq	memcpy@PLT
	movq	88(%rsp), %rax
	shlq	$0, %rax
	movq	72(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	%rax, %rdx
	callq	memcpy@PLT
	movq	88(%rsp), %rax
	shlq	$0, %rax
	movq	64(%rsp), %rdi
	movq	80(%rsp), %rsi
	movq	%rax, %rdx
	callq	memcpy@PLT
	movq	88(%rsp), %rax
	addq	120(%rsp), %rax
	movq	%rax, 120(%rsp)
	jmp	.LBB19_2
.LBB19_12:
	movq	96(%rsp), %rax
	subq	120(%rsp), %rax
	leaq	176(%rsp), %rcx
	movq	%rax, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	120(%rsp), %rsi
	movq	112(%rsp), %rdi
	movq	%rax, 40(%rsp)
	callq	_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h9853b532986cb9d1E
	movq	%rax, 32(%rsp)
	movq	120(%rsp), %rsi
	movq	104(%rsp), %rdi
	callq	_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h9853b532986cb9d1E
	movq	%rax, 24(%rsp)
	movq	56(%rsp), %rax
	shlq	$0, %rax
	movq	40(%rsp), %rdi
	movq	32(%rsp), %rsi
	movq	%rax, %rdx
	callq	memcpy@PLT
	movq	56(%rsp), %rax
	shlq	$0, %rax
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rsi
	movq	%rax, %rdx
	callq	memcpy@PLT
	movq	56(%rsp), %rax
	shlq	$0, %rax
	movq	24(%rsp), %rdi
	movq	40(%rsp), %rsi
	movq	%rax, %rdx
	callq	memcpy@PLT
	jmp	.LBB19_20
.LBB19_20:
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_ZN4core3ptr25swap_nonoverlapping_bytes17hee3af4672b6d9b02E, .Lfunc_end19-_ZN4core3ptr25swap_nonoverlapping_bytes17hee3af4672b6d9b02E
	.cfi_endproc

	.section	".text._ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h9853b532986cb9d1E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h9853b532986cb9d1E,@function
_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h9853b532986cb9d1E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17hb595f8c70cc449e6E
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h9853b532986cb9d1E, .Lfunc_end20-_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h9853b532986cb9d1E
	.cfi_endproc

	.section	".text._ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17hb595f8c70cc449e6E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17hb595f8c70cc449e6E,@function
_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17hb595f8c70cc449e6E:
	.cfi_startproc
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	addq	%rsi, %rdi
	movq	%rdi, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end21:
	.size	_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17hb595f8c70cc449e6E, .Lfunc_end21-_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17hb595f8c70cc449e6E
	.cfi_endproc

	.section	.text._ZN4core3ptr4read17h306334d0e0b958f1E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr4read17h306334d0e0b958f1E,@function
_ZN4core3ptr4read17h306334d0e0b958f1E:
	.cfi_startproc
	subq	$32, %rsp
	.cfi_def_cfa_offset 40
	movq	24(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%rdi, 8(%rsp)
	jmp	.LBB22_2
.LBB22_2:
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end22:
	.size	_ZN4core3ptr4read17h306334d0e0b958f1E, .Lfunc_end22-_ZN4core3ptr4read17h306334d0e0b958f1E
	.cfi_endproc

	.section	.text._ZN4core3ptr5write17hdc005393508b43a2E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr5write17hdc005393508b43a2E,@function
_ZN4core3ptr5write17hdc005393508b43a2E:
	.cfi_startproc
	movq	%rsi, (%rdi)
	retq
.Lfunc_end23:
	.size	_ZN4core3ptr5write17hdc005393508b43a2E, .Lfunc_end23-_ZN4core3ptr5write17hdc005393508b43a2E
	.cfi_endproc

	.section	".text._ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbc7d8d9663595238E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbc7d8d9663595238E,@function
_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbc7d8d9663595238E:
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception2
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movb	$0, 71(%rsp)
	movq	%rdi, %rax
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rdi, 16(%rsp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hde17b751d40bae2bE
	movb	%al, 15(%rsp)
	jmp	.LBB24_2
.LBB24_1:
	movq	72(%rsp), %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB24_2:
	movb	15(%rsp), %al
	testb	$1, %al
	jne	.LBB24_3
	jmp	.LBB24_4
.LBB24_3:
	movb	$1, 71(%rsp)
	movl	$1, %esi
	movq	16(%rsp), %rdi
	callq	_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$9add_usize17h50c1ac9a781da123E
	movq	%rdx, 48(%rsp)
	movq	%rax, 40(%rsp)
	jmp	.LBB24_5
.LBB24_4:
	movq	$0, 24(%rsp)
	jmp	.LBB24_12
.LBB24_5:
	cmpq	$1, 40(%rsp)
	je	.LBB24_7
	movq	$0, 24(%rsp)
	jmp	.LBB24_11
.LBB24_7:
	movb	$0, 71(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 56(%rsp)
.Ltmp6:
	leaq	56(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	_ZN4core3mem4swap17hc18756a87a034934E
.Ltmp7:
	jmp	.LBB24_8
.LBB24_8:
	movq	56(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 24(%rsp)
	jmp	.LBB24_11
.LBB24_9:
	cmpq	$1, 40(%rsp)
	je	.LBB24_1
	jmp	.LBB24_13
.LBB24_10:
	jmp	.LBB24_9
.LBB24_11:
	cmpq	$1, 40(%rsp)
	je	.LBB24_15
	jmp	.LBB24_17
.LBB24_12:
	movq	24(%rsp), %rax
	movq	32(%rsp), %rdx
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB24_13:
	.cfi_def_cfa_offset 96
	jmp	.LBB24_1
.LBB24_14:
	movb	$0, 71(%rsp)
	jmp	.LBB24_12
.LBB24_15:
	testb	$1, 71(%rsp)
	je	.LBB24_14
	movb	$0, 71(%rsp)
	jmp	.LBB24_14
.LBB24_17:
	jmp	.LBB24_14
.LBB24_18:
.Ltmp8:
	movl	%edx, %ecx
	movq	%rax, 72(%rsp)
	movl	%ecx, 80(%rsp)
	jmp	.LBB24_10
.Lfunc_end24:
	.size	_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbc7d8d9663595238E, .Lfunc_end24-_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbc7d8d9663595238E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table24:
.Lexception2:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2
	.uleb128 .Ltmp6-.Lfunc_begin2
	.byte	0
	.byte	0
	.uleb128 .Ltmp6-.Lfunc_begin2
	.uleb128 .Ltmp7-.Ltmp6
	.uleb128 .Ltmp8-.Lfunc_begin2
	.byte	0
.Lcst_end2:
	.p2align	2

	.section	".text._ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17ha27c4225ab9f5036E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17ha27c4225ab9f5036E,@function
_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17ha27c4225ab9f5036E:
	.cfi_startproc
	movq	%rdi, %rax
	retq
.Lfunc_end25:
	.size	_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17ha27c4225ab9f5036E, .Lfunc_end25-_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17ha27c4225ab9f5036E
	.cfi_endproc

	.section	".text._ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h4e7f8724694bf756E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h4e7f8724694bf756E,@function
_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h4e7f8724694bf756E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	callq	_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17ha27c4225ab9f5036E
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	16(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end26:
	.size	_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h4e7f8724694bf756E, .Lfunc_end26-_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h4e7f8724694bf756E
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbde34b571ea0e089E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbde34b571ea0e089E,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbde34b571ea0e089E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%edi, %edi
	callq	_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h5c5eb55ff486a7b6E
	movl	%eax, 4(%rsp)
	movl	4(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end27:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbde34b571ea0e089E, .Lfunc_end27-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbde34b571ea0e089E
	.cfi_endproc

	.section	".text._ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h6947363436f56df5E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h6947363436f56df5E,@function
_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h6947363436f56df5E:
	.cfi_startproc
	movq	%rdi, %rax
	movq	%rsi, %rdx
	retq
.Lfunc_end28:
	.size	_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h6947363436f56df5E, .Lfunc_end28-_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h6947363436f56df5E
	.cfi_endproc

	.section	".text._ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h5c5eb55ff486a7b6E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h5c5eb55ff486a7b6E,@function
_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h5c5eb55ff486a7b6E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	%dil, %al
	movb	%al, 7(%rsp)
	leaq	7(%rsp), %rdi
	callq	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h96187d42c6a12ef9E
	movl	%eax, (%rsp)
	movl	(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end29:
	.size	_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h5c5eb55ff486a7b6E, .Lfunc_end29-_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h5c5eb55ff486a7b6E
	.cfi_endproc

	.section	.text._ZN4simd16simd_eq_fallback17h8aac69a76fd7d2c9E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4simd16simd_eq_fallback17h8aac69a76fd7d2c9E,@function
_ZN4simd16simd_eq_fallback17h8aac69a76fd7d2c9E:
	.cfi_startproc
	subq	$184, %rsp
	.cfi_def_cfa_offset 192
	movq	%rdi, 112(%rsp)
	movq	%rsi, 104(%rsp)
	movq	%rdx, 96(%rsp)
	movq	96(%rsp), %rax
	shrq	$6, %rax
	movq	%rax, 88(%rsp)
	movq	96(%rsp), %rax
	andq	$63, %rax
	movq	$0, 136(%rsp)
	movq	$32, 144(%rsp)
	movq	136(%rsp), %rdi
	movq	144(%rsp), %rsi
	movq	%rax, 80(%rsp)
	callq	_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h6947363436f56df5E
	movq	%rax, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 160(%rsp)
.LBB30_4:
	leaq	152(%rsp), %rdi
	callq	_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbc7d8d9663595238E
	movq	%rdx, 176(%rsp)
	movq	%rax, 168(%rsp)
	movq	168(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	je	.LBB30_6
	jmp	.LBB30_26
.LBB30_26:
	movq	56(%rsp), %rax
	subq	$1, %rax
	movq	%rax, 48(%rsp)
	je	.LBB30_8
	jmp	.LBB30_7
.LBB30_6:
	movb	$1, 127(%rsp)
	jmp	.LBB30_19
.LBB30_7:
	ud2
.LBB30_8:
	movq	176(%rsp), %rax
	cmpq	$32, %rax
	setb	%cl
	testb	$1, %cl
	movq	%rax, 40(%rsp)
	jne	.LBB30_9
	jmp	.LBB30_22
.LBB30_9:
	movq	112(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdx
	cmpq	$32, %rcx
	setb	%sil
	testb	$1, %sil
	movq	%rdx, 32(%rsp)
	jne	.LBB30_10
	jmp	.LBB30_23
.LBB30_10:
	movq	32(%rsp), %rax
	movq	104(%rsp), %rcx
	movq	40(%rsp), %rdx
	xorq	(%rcx,%rdx,8), %rax
	movq	88(%rsp), %rsi
	cmpq	%rsi, %rdx
	movq	%rax, 24(%rsp)
	jne	.LBB30_12
	movl	$64, %eax
	movq	80(%rsp), %rcx
	subq	%rcx, %rax
	setb	%dl
	testb	$1, %dl
	movq	%rax, 16(%rsp)
	jne	.LBB30_24
	jmp	.LBB30_13
.LBB30_12:
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	jne	.LBB30_20
	jmp	.LBB30_21
.LBB30_13:
	movq	16(%rsp), %rax
	andq	$-64, %rax
	cmpq	$0, %rax
	setne	%cl
	movq	16(%rsp), %rax
	andq	$63, %rax
	movb	%cl, 15(%rsp)
	movq	%rax, %rcx
	movq	$-1, %rax
	shrq	%cl, %rax
	movb	15(%rsp), %cl
	testb	$1, %cl
	movq	%rax, (%rsp)
	jne	.LBB30_25
	movq	24(%rsp), %rax
	movq	(%rsp), %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB30_16
	movb	$0, 127(%rsp)
	jmp	.LBB30_17
.LBB30_16:
	movb	$1, 127(%rsp)
.LBB30_17:
	jmp	.LBB30_18
.LBB30_18:
	jmp	.LBB30_19
.LBB30_19:
	movb	127(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$184, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB30_20:
	.cfi_def_cfa_offset 192
	movb	$0, 127(%rsp)
	jmp	.LBB30_18
.LBB30_21:
	jmp	.LBB30_4
.LBB30_22:
	leaq	.L__unnamed_2(%rip), %rdi
	movq	_ZN4core9panicking18panic_bounds_check17h34b80e64d41db052E@GOTPCREL(%rip), %rax
	movl	$32, %edx
	movq	40(%rsp), %rsi
	callq	*%rax
	ud2
.LBB30_23:
	leaq	.L__unnamed_3(%rip), %rdi
	movq	_ZN4core9panicking18panic_bounds_check17h34b80e64d41db052E@GOTPCREL(%rip), %rax
	movl	$32, %edx
	movq	40(%rsp), %rsi
	callq	*%rax
	ud2
.LBB30_24:
	leaq	.L__unnamed_4(%rip), %rdi
	movq	_ZN4core9panicking5panic17h13421bef49a1c627E@GOTPCREL(%rip), %rax
	callq	*%rax
	ud2
.LBB30_25:
	leaq	.L__unnamed_5(%rip), %rdi
	movq	_ZN4core9panicking5panic17h13421bef49a1c627E@GOTPCREL(%rip), %rax
	callq	*%rax
	ud2
.Lfunc_end30:
	.size	_ZN4simd16simd_eq_fallback17h8aac69a76fd7d2c9E, .Lfunc_end30-_ZN4simd16simd_eq_fallback17h8aac69a76fd7d2c9E
	.cfi_endproc

	.section	.text._ZN4simd4main17h231847b3bf5bb9deE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4simd4main17h231847b3bf5bb9deE,@function
_ZN4simd4main17h231847b3bf5bb9deE:
	.cfi_startproc
	subq	$3240, %rsp
	.cfi_def_cfa_offset 3248
	leaq	272(%rsp), %rax
	movq	%rax, %rcx
	addq	$256, %rcx
	movq	%rcx, 264(%rsp)
	movq	%rax, 256(%rsp)
	jmp	.LBB31_26
.LBB31_1:
	movabsq	$-2017613178522857985, %rax
	movq	%rax, 272(%rsp)
	movabsq	$-1080863910568919056, %rax
	movq	%rax, 280(%rsp)
	movabsq	$-2017613178522857985, %rax
	movq	%rax, 528(%rsp)
	movabsq	$1152921504606846960, %rax
	movq	%rax, 536(%rsp)
	leaq	808(%rsp), %rax
	movq	%rax, %rcx
	leaq	272(%rsp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movl	$256, %ecx
	movq	%rcx, %rdx
	movq	%rax, 248(%rsp)
	movq	%rcx, 240(%rsp)
	callq	memcpy@PLT
	leaq	1064(%rsp), %rax
	movq	%rax, %rcx
	leaq	528(%rsp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	240(%rsp), %rdx
	movq	%rax, 232(%rsp)
	callq	memcpy@PLT
	movq	248(%rsp), %rdi
	movq	232(%rsp), %rsi
	movl	$84, %edx
	callq	_ZN4simd16simd_eq_fallback17h8aac69a76fd7d2c9E
	andb	$1, %al
	movb	%al, 807(%rsp)
	leaq	807(%rsp), %rax
	movq	%rax, 784(%rsp)
	leaq	.L__unnamed_6(%rip), %rax
	movq	%rax, 792(%rsp)
	movq	784(%rsp), %rax
	movq	%rax, 1320(%rsp)
	movq	792(%rsp), %rax
	movq	%rax, 1328(%rsp)
	movq	1320(%rsp), %rax
	movb	(%rax), %cl
	movq	1328(%rsp), %rax
	movb	(%rax), %dl
	xorb	%dl, %cl
	xorb	$1, %cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB31_6
	jmp	.LBB31_7
.LBB31_6:
	leaq	1320(%rsp), %rax
	movq	%rax, 1416(%rsp)
	leaq	1328(%rsp), %rax
	movq	%rax, 1424(%rsp)
	movq	1416(%rsp), %rdi
	movq	1424(%rsp), %rax
	leaq	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f1a9190dcf6f3b2E(%rip), %rsi
	movq	%rax, 224(%rsp)
	callq	_ZN4core3fmt10ArgumentV13new17h8ee1f26ddd8eef67E
	movq	%rax, 216(%rsp)
	movq	%rdx, 208(%rsp)
	jmp	.LBB31_8
.LBB31_7:
	jmp	.LBB31_11
.LBB31_8:
	movq	224(%rsp), %rdi
	leaq	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f1a9190dcf6f3b2E(%rip), %rsi
	callq	_ZN4core3fmt10ArgumentV13new17h8ee1f26ddd8eef67E
	movq	%rax, 200(%rsp)
	movq	%rdx, 192(%rsp)
	leaq	.L__unnamed_7(%rip), %rax
	leaq	.L__unnamed_8(%rip), %rcx
	movq	216(%rsp), %rdx
	movq	%rdx, 1384(%rsp)
	movq	208(%rsp), %rsi
	movq	%rsi, 1392(%rsp)
	movq	200(%rsp), %rdi
	movq	%rdi, 1400(%rsp)
	movq	192(%rsp), %r8
	movq	%r8, 1408(%rsp)
	leaq	1384(%rsp), %r9
	leaq	1336(%rsp), %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	movq	%rcx, 184(%rsp)
	movq	%r9, %rcx
	movl	$2, %r8d
	movq	184(%rsp), %r9
	movq	$2, (%rsp)
	callq	_ZN4core3fmt9Arguments16new_v1_formatted17h36c2b95b9d75dd1cE
	leaq	.L__unnamed_9(%rip), %rsi
	movq	_ZN3std9panicking15begin_panic_fmt17h376894437226fc7cE@GOTPCREL(%rip), %rax
	leaq	1336(%rsp), %rdi
	callq	*%rax
	ud2
.LBB31_11:
	movabsq	$-2017613178522857986, %rax
	movq	%rax, 272(%rsp)
	leaq	1456(%rsp), %rax
	movq	%rax, %rcx
	leaq	272(%rsp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movl	$256, %ecx
	movq	%rcx, %rdx
	movq	%rax, 176(%rsp)
	movq	%rcx, 168(%rsp)
	callq	memcpy@PLT
	leaq	1712(%rsp), %rax
	movq	%rax, %rcx
	leaq	528(%rsp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	168(%rsp), %rdx
	movq	%rax, 160(%rsp)
	callq	memcpy@PLT
	movq	176(%rsp), %rdi
	movq	160(%rsp), %rsi
	movl	$84, %edx
	callq	_ZN4simd16simd_eq_fallback17h8aac69a76fd7d2c9E
	andb	$1, %al
	movb	%al, 1455(%rsp)
	leaq	1455(%rsp), %rax
	movq	%rax, 1432(%rsp)
	leaq	.L__unnamed_10(%rip), %rax
	movq	%rax, 1440(%rsp)
	movq	1432(%rsp), %rax
	movq	%rax, 1968(%rsp)
	movq	1440(%rsp), %rax
	movq	%rax, 1976(%rsp)
	movq	1968(%rsp), %rax
	movb	(%rax), %cl
	movq	1976(%rsp), %rax
	movb	(%rax), %dl
	xorb	%dl, %cl
	xorb	$1, %cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB31_13
	jmp	.LBB31_14
.LBB31_13:
	leaq	1968(%rsp), %rax
	movq	%rax, 2064(%rsp)
	leaq	1976(%rsp), %rax
	movq	%rax, 2072(%rsp)
	movq	2064(%rsp), %rdi
	movq	2072(%rsp), %rax
	leaq	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f1a9190dcf6f3b2E(%rip), %rsi
	movq	%rax, 152(%rsp)
	callq	_ZN4core3fmt10ArgumentV13new17h8ee1f26ddd8eef67E
	movq	%rax, 144(%rsp)
	movq	%rdx, 136(%rsp)
	jmp	.LBB31_15
.LBB31_14:
	xorl	%eax, %eax
	leaq	2336(%rsp), %rcx
	leaq	2080(%rsp), %rdx
	movq	%rdx, %rdi
	movl	%eax, %esi
	movl	$256, %edx
	movq	%rdx, 128(%rsp)
	movl	%eax, 124(%rsp)
	movq	%rcx, 112(%rsp)
	callq	memset@PLT
	movq	112(%rsp), %rcx
	movq	%rcx, %rdi
	movl	124(%rsp), %esi
	movq	128(%rsp), %rdx
	callq	memset@PLT
	jmp	.LBB31_18
.LBB31_15:
	movq	152(%rsp), %rdi
	leaq	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f1a9190dcf6f3b2E(%rip), %rsi
	callq	_ZN4core3fmt10ArgumentV13new17h8ee1f26ddd8eef67E
	movq	%rax, 104(%rsp)
	movq	%rdx, 96(%rsp)
	leaq	.L__unnamed_7(%rip), %rax
	leaq	.L__unnamed_8(%rip), %rcx
	movq	144(%rsp), %rdx
	movq	%rdx, 2032(%rsp)
	movq	136(%rsp), %rsi
	movq	%rsi, 2040(%rsp)
	movq	104(%rsp), %rdi
	movq	%rdi, 2048(%rsp)
	movq	96(%rsp), %r8
	movq	%r8, 2056(%rsp)
	leaq	2032(%rsp), %r9
	leaq	1984(%rsp), %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	movq	%rcx, 88(%rsp)
	movq	%r9, %rcx
	movl	$2, %r8d
	movq	88(%rsp), %r9
	movq	$2, (%rsp)
	callq	_ZN4core3fmt9Arguments16new_v1_formatted17h36c2b95b9d75dd1cE
	leaq	.L__unnamed_11(%rip), %rsi
	movq	_ZN3std9panicking15begin_panic_fmt17h376894437226fc7cE@GOTPCREL(%rip), %rax
	leaq	1984(%rsp), %rdi
	callq	*%rax
	ud2
.LBB31_18:
	movq	$7, 2080(%rsp)
	movq	$5, 2336(%rsp)
	leaq	2616(%rsp), %rax
	movq	%rax, %rcx
	leaq	2080(%rsp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movl	$256, %ecx
	movq	%rcx, %rdx
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	callq	memcpy@PLT
	leaq	2872(%rsp), %rax
	movq	%rax, %rcx
	leaq	2336(%rsp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	72(%rsp), %rdx
	movq	%rax, 64(%rsp)
	callq	memcpy@PLT
	movq	80(%rsp), %rdi
	movq	64(%rsp), %rsi
	movl	$3, %edx
	callq	_ZN4simd16simd_eq_fallback17h8aac69a76fd7d2c9E
	andb	$1, %al
	movb	%al, 2615(%rsp)
	leaq	2615(%rsp), %rax
	movq	%rax, 2592(%rsp)
	leaq	.L__unnamed_10(%rip), %rax
	movq	%rax, 2600(%rsp)
	movq	2592(%rsp), %rax
	movq	%rax, 3128(%rsp)
	movq	2600(%rsp), %rax
	movq	%rax, 3136(%rsp)
	movq	3128(%rsp), %rax
	movb	(%rax), %cl
	movq	3136(%rsp), %rax
	movb	(%rax), %dl
	xorb	%dl, %cl
	xorb	$1, %cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB31_21
	jmp	.LBB31_22
.LBB31_21:
	leaq	3128(%rsp), %rax
	movq	%rax, 3224(%rsp)
	leaq	3136(%rsp), %rax
	movq	%rax, 3232(%rsp)
	movq	3224(%rsp), %rdi
	movq	3232(%rsp), %rax
	leaq	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f1a9190dcf6f3b2E(%rip), %rsi
	movq	%rax, 56(%rsp)
	callq	_ZN4core3fmt10ArgumentV13new17h8ee1f26ddd8eef67E
	movq	%rax, 48(%rsp)
	movq	%rdx, 40(%rsp)
	jmp	.LBB31_23
.LBB31_22:
	addq	$3240, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB31_23:
	.cfi_def_cfa_offset 3248
	movq	56(%rsp), %rdi
	leaq	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f1a9190dcf6f3b2E(%rip), %rsi
	callq	_ZN4core3fmt10ArgumentV13new17h8ee1f26ddd8eef67E
	movq	%rax, 32(%rsp)
	movq	%rdx, 24(%rsp)
	leaq	.L__unnamed_7(%rip), %rax
	leaq	.L__unnamed_8(%rip), %rcx
	movq	48(%rsp), %rdx
	movq	%rdx, 3192(%rsp)
	movq	40(%rsp), %rsi
	movq	%rsi, 3200(%rsp)
	movq	32(%rsp), %rdi
	movq	%rdi, 3208(%rsp)
	movq	24(%rsp), %r8
	movq	%r8, 3216(%rsp)
	leaq	3192(%rsp), %r9
	leaq	3144(%rsp), %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	movq	%rcx, 16(%rsp)
	movq	%r9, %rcx
	movl	$2, %r8d
	movq	16(%rsp), %r9
	movq	$2, (%rsp)
	callq	_ZN4core3fmt9Arguments16new_v1_formatted17h36c2b95b9d75dd1cE
	leaq	.L__unnamed_12(%rip), %rsi
	movq	_ZN3std9panicking15begin_panic_fmt17h376894437226fc7cE@GOTPCREL(%rip), %rax
	leaq	3144(%rsp), %rdi
	callq	*%rax
	ud2
.LBB31_26:
	movq	256(%rsp), %rax
	movq	264(%rsp), %rcx
	cmpq	%rcx, %rax
	movq	%rax, 8(%rsp)
	je	.LBB31_28
	movq	8(%rsp), %rax
	movq	$-1, (%rax)
	addq	$8, %rax
	movq	%rax, 256(%rsp)
	jmp	.LBB31_26
.LBB31_28:
	xorl	%esi, %esi
	leaq	528(%rsp), %rax
	movq	%rax, %rdi
	movl	$256, %edx
	callq	memset@PLT
	jmp	.LBB31_1
.Lfunc_end31:
	.size	_ZN4simd4main17h231847b3bf5bb9deE, .Lfunc_end31-_ZN4simd4main17h231847b3bf5bb9deE
	.cfi_endproc

	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movslq	%edi, %rax
	leaq	_ZN4simd4main17h231847b3bf5bb9deE(%rip), %rdi
	movq	%rsi, (%rsp)
	movq	%rax, %rsi
	movq	(%rsp), %rdx
	callq	_ZN3std2rt10lang_start17h9e1f9ef8590b863cE
	movl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end32:
	.size	main, .Lfunc_end32-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3
.L__unnamed_1:
	.quad	_ZN4core3ptr18real_drop_in_place17ha84fc7d5ce37fc3dE
	.quad	8
	.quad	8
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5e20b6221d7b0f93E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5e20b6221d7b0f93E
	.quad	_ZN4core3ops8function6FnOnce9call_once32_$u7b$$u7b$vtable.shim$u7d$$u7d$17h7fc2b2cde2e3b133E
	.size	.L__unnamed_1, 48

	.type	str.0,@object
	.section	.rodata.str.0,"a",@progbits
str.0:
	.ascii	"src/simd.rs"
	.size	str.0, 11

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3
.L__unnamed_2:
	.quad	str.0
	.quad	11
	.long	76
	.long	17
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_3,@object
	.section	.data.rel.ro..L__unnamed_3,"aw",@progbits
	.p2align	3
.L__unnamed_3:
	.quad	str.0
	.quad	11
	.long	76
	.long	24
	.size	.L__unnamed_3, 24

	.type	str.1,@object
	.section	.rodata.str.1,"a",@progbits
	.p2align	4
str.1:
	.ascii	"attempt to subtract with overflow"
	.size	str.1, 33

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3
.L__unnamed_4:
	.quad	str.1
	.quad	33
	.quad	str.0
	.quad	11
	.long	82
	.long	31
	.size	.L__unnamed_4, 40

	.type	str.2,@object
	.section	.rodata.str.2,"a",@progbits
	.p2align	4
str.2:
	.ascii	"attempt to shift right with overflow"
	.size	str.2, 36

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3
.L__unnamed_5:
	.quad	str.2
	.quad	36
	.quad	str.0
	.quad	11
	.long	82
	.long	24
	.size	.L__unnamed_5, 40

	.type	.L__unnamed_6,@object
	.section	.rodata..L__unnamed_6,"a",@progbits
.L__unnamed_6:
	.byte	1
	.size	.L__unnamed_6, 1

	.type	.L__unnamed_13,@object
	.section	.rodata..L__unnamed_13,"a",@progbits
.L__unnamed_13:
	.ascii	"assertion failed: `(left == right)`\n  left: `"
	.size	.L__unnamed_13, 45

	.type	.L__unnamed_14,@object
	.section	.rodata..L__unnamed_14,"a",@progbits
.L__unnamed_14:
	.ascii	"`,\n right: `"
	.size	.L__unnamed_14, 12

	.type	.L__unnamed_15,@object
	.section	.rodata..L__unnamed_15,"a",@progbits
.L__unnamed_15:
	.byte	96
	.size	.L__unnamed_15, 1

	.type	.L__unnamed_7,@object
	.section	.data.rel.ro..L__unnamed_7,"aw",@progbits
	.p2align	3
.L__unnamed_7:
	.quad	.L__unnamed_13
	.asciz	"-\000\000\000\000\000\000"
	.quad	.L__unnamed_14
	.asciz	"\f\000\000\000\000\000\000"
	.quad	.L__unnamed_15
	.asciz	"\001\000\000\000\000\000\000"
	.size	.L__unnamed_7, 48

	.type	.L__unnamed_8,@object
	.section	.rodata..L__unnamed_8,"a",@progbits
	.p2align	3
.L__unnamed_8:
	.asciz	"\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\000\003\000\000\000\000\000\000"
	.size	.L__unnamed_8, 128

	.type	.L__unnamed_16,@object
	.section	.rodata..L__unnamed_16,"a",@progbits
.L__unnamed_16:
	.ascii	"src/simd.rs"
	.size	.L__unnamed_16, 11

	.type	.L__unnamed_9,@object
	.section	.data.rel.ro..L__unnamed_9,"aw",@progbits
	.p2align	3
.L__unnamed_9:
	.quad	.L__unnamed_16
	.asciz	"\013\000\000\000\000\000\000\000j\000\000\000\t\000\000"
	.size	.L__unnamed_9, 24

	.type	.L__unnamed_10,@object
	.section	.rodata..L__unnamed_10,"a",@progbits
.L__unnamed_10:
	.zero	1
	.size	.L__unnamed_10, 1

	.type	.L__unnamed_11,@object
	.section	.data.rel.ro..L__unnamed_11,"aw",@progbits
	.p2align	3
.L__unnamed_11:
	.quad	.L__unnamed_16
	.asciz	"\013\000\000\000\000\000\000\000n\000\000\000\t\000\000"
	.size	.L__unnamed_11, 24

	.type	.L__unnamed_12,@object
	.section	.data.rel.ro..L__unnamed_12,"aw",@progbits
	.p2align	3
.L__unnamed_12:
	.quad	.L__unnamed_16
	.asciz	"\013\000\000\000\000\000\000\000u\000\000\000\t\000\000"
	.size	.L__unnamed_12, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality

	.section	".note.GNU-stack","",@progbits
