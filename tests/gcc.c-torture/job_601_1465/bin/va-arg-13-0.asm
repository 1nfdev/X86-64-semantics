strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cmpb	%al, %dl
	je	L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movl	$0, %eax
	jmp	L1
L3:
	movq	-8(%rbp), %rax
	jmp	L1
L6:
L1:
	popq	%rbp
	ret
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
dummy:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L10
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L11
L10:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L11:
	movl	(%rax), %eax
	cmpl	$1234, %eax
	je	L12
	call	abort
L12:
	nop
	leave
	ret
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L15
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L15:
	movl	%edi, -228(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	addq	$8, %rax
	movl	$8, (%rax)
	movl	$48, 4(%rax)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-176(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-184(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	dummy
	movl	$8, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-224(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	dummy
	nop
	leave
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1234, %esi
	movl	$456, %edi
	movl	$0, %eax
	call	test
	movl	$0, %edi
	call	exit