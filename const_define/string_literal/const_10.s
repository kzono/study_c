	.file	"const_10.c"
	.text
	.globl	STR1
	.section	.rodata
	.align 8
.LC0:
	.string	"The quick brown fox jumps over the lazy dog."
	.section	.data.rel.local,"aw",@progbits
	.align 8
	.type	STR1, @object
	.size	STR1, 8
STR1:
	.quad	.LC0
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
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	STR1(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	STR1(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	STR1(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	STR1(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	STR1(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	STR1(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	STR1(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	STR1(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	STR1(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	STR1(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
