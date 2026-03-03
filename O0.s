	.file	"main.cpp"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "%d\11\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB114:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	call	__main
	movl	$1, -80(%rbp)
	movl	$6, -76(%rbp)
	movl	$5, -72(%rbp)
	movl	$3, -68(%rbp)
	movl	$2, -64(%rbp)
	movl	$4, -60(%rbp)
	movl	$7, -56(%rbp)
	movl	$9, -52(%rbp)
	movl	$8, -48(%rbp)
	movl	$11, -44(%rbp)
	movl	$15, -40(%rbp)
	movl	$13, -36(%rbp)
	movl	$16, -32(%rbp)
	movl	$12, -28(%rbp)
	movl	$10, -24(%rbp)
	movl	$22, -20(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	$0, -8(%rbp)
	jmp	.L3
.L4:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	leaq	.LC0(%rip), %rcx
	movl	%eax, %edx
	call	printf
	addl	$1, -8(%rbp)
.L3:
	cmpl	$3, -8(%rbp)
	jle	.L4
	movl	$10, %ecx
	call	putchar
	addl	$1, -4(%rbp)
.L2:
	cmpl	$3, -4(%rbp)
	jle	.L5
	movl	$0, %eax
	addq	$112, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
