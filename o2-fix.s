	.file	"main.cpp"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "%d\11\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB116:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	xorl	%edi, %edi
	call	__main
	movl	$1,  32(%rsp)
	movl	$6,  36(%rsp)
	movl	$5,  40(%rsp)
	movl	$3,  44(%rsp)

	movl	$2,  48(%rsp)
	movl	$4,  52(%rsp)
	movl	$7,  56(%rsp)
	movl	$9,  60(%rsp)

	movl	$8,  64(%rsp)
	movl	$11, 68(%rsp)
	movl	$15, 72(%rsp)
	movl	$13, 76(%rsp)

	movl	$16, 80(%rsp)
	movl	$12, 84(%rsp)
	movl	$10, 88(%rsp)
	movl	$22, 92(%rsp)

	leaq	32(%rsp), %rsi	  # rsi = &arr[0][0]
.L2:
	xorl	%ebx, %ebx
.L3:
	movl	(%rsi,%rbx,4), %edx
	leaq	.LC0(%rip), %rcx
	addq	$1, %rbx
	call	printf
	cmpq	$4, %rbx
	jne	.L3
	movl	$10, %ecx
	addq	$4, %rdi
	addq	$16, %rsi
	call	putchar
	cmpq	$16, %rdi
	jne	.L2
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
