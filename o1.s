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
.LFB116:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	call	__main
	movl	$1, 32(%rsp)
	movl	$6, 36(%rsp)
	movl	$5, 40(%rsp)
	movl	$3, 44(%rsp)
	movl	$2, 48(%rsp)
	movl	$4, 52(%rsp)
	movl	$7, 56(%rsp)
	movl	$9, 60(%rsp)
	movl	$8, 64(%rsp)
	movl	$11, 68(%rsp)
	movl	$15, 72(%rsp)
	movl	$13, 76(%rsp)
	movl	$16, 80(%rsp)
	movl	$12, 84(%rsp)
	movl	$10, 88(%rsp)
	movl	$22, 92(%rsp)
	leaq	32(%rsp), %rsi
	movl	$0, %ebp
	leaq	.LC0(%rip), %rdi
.L2:
	movl	$0, %ebx
.L3:
	movl	(%rsi,%rbx,4), %edx
	movq	%rdi, %rcx
	call	printf
	addq	$1, %rbx
	cmpq	$4, %rbx
	jne	.L3
	movl	$10, %ecx
	call	putchar
	addq	$4, %rbp
	addq	$16, %rsi
	cmpq	$16, %rbp
	jne	.L2
	movl	$0, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
