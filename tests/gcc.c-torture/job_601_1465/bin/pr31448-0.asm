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
	.comm	next,8,8
g:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, %eax
	sall	$8, %eax
	sarl	$8, %eax
	movq	-8(%rbp), %rdx
	andl	$16777215, %eax
	movl	%eax, %ecx
	movl	(%rdx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, (%rdx)
	popq	%rbp
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	movq	next(%rip), %rdx
	movl	$-16843010, %eax
	sall	$8, %eax
	sarl	$8, %eax
	andl	$16777215, %eax
	movl	%eax, %ecx
	movl	(%rdx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, (%rdx)
	movq	next(%rip), %rdx
	movl	$-16843010, %eax
	sall	$8, %eax
	sarl	$8, %eax
	andl	$16777215, %eax
	movl	%eax, %ecx
	movl	4(%rdx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 4(%rdx)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rax
	movq	%rax, next(%rip)
	call	f
	movq	next(%rip), %rax
	movl	(%rax), %eax
	andl	$16777215, %eax
	cmpl	$16711422, %eax
	je	L12
	call	abort
L12:
	movq	next(%rip), %rax
	movl	4(%rax), %eax
	andl	$16777215, %eax
	cmpl	$16711422, %eax
	je	L13
	call	abort
L13:
	movl	$0, %eax
	leave
	ret
constreg.2264:
	.zero	4
constreg.2269:
	.long	-16843010
