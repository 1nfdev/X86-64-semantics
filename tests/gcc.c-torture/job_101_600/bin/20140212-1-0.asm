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
	.comm	a,4,4
	.comm	b,4,4
	.comm	c,4,4
d:
	.long	1
	.comm	e,4,4
f:
	.long	1
	.comm	h,4,4
	.comm	i,4,4
	.comm	k,4,4
	.comm	g,1,1
	.comm	j,1,1
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, e(%rip)
	movl	$0, c(%rip)
L16:
	movl	a(%rip), %eax
	testl	%eax, %eax
	je	L10
	movl	b(%rip), %eax
	testl	%eax, %eax
	je	L10
	movl	$1, %eax
	jmp	L11
L10:
	movl	$0, %eax
L11:
	movl	%eax, k(%rip)
	movl	k(%rip), %eax
	movl	$54, %edx
	imull	%edx, %eax
	movb	%al, j(%rip)
	movzbl	j(%rip), %eax
	movl	$-109, %edx
	imull	%edx, %eax
	movb	%al, g(%rip)
	movzbl	g(%rip), %eax
	movsbl	%al, %eax
	notl	%eax
	movslq	%eax, %rdx
	movl	e(%rip), %eax
	cltq
	addq	%rdx, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	d(%rip), %eax
	testl	%eax, %eax
	je	L12
	movl	-4(%rbp), %eax
	movl	%eax, c(%rip)
	jmp	L13
L12:
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	%eax, i(%rip)
	movl	i(%rip), %eax
	movl	%eax, h(%rip)
L13:
	movl	f(%rip), %eax
	testl	%eax, %eax
	je	L14
	jmp	L17
L14:
	jmp	L16
L17:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	fn1
	movl	c(%rip), %eax
	cmpl	$1, %eax
	je	L19
	call	abort
L19:
	movl	$0, %eax
	popq	%rbp
	ret