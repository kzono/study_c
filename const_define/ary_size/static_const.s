	.file	"main.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rcx
	movl	NUM.1795(%rip), %eax
	cltq
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	NUM.1795(%rip), %eax
	cltq
	movq	%rax, %r8
	movl	$0, %r9d
	movl	NUM.1795(%rip), %eax
	cltq
	movq	%rax, %rsi
	movl	$0, %edi
	movl	NUM.1795(%rip), %eax
	cltq
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$10, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	%rcx, %rsp
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
	.type	NUM.1795, @object
	.size	NUM.1795, 4
NUM.1795:
	.long	5
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
