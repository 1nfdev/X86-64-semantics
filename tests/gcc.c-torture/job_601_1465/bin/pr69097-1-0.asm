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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	b(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	a(%rip), %eax
	notl	%eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	notl	%eax
	movl	%eax, %ecx
	movl	b(%rip), %eax
	orl	%ecx, %eax
	addl	%edx, %eax
	notl	%eax
	movl	%eax, b(%rip)
	movl	c(%rip), %eax
	notl	%eax
	movl	%eax, %edx
	movl	b(%rip), %eax
	shrx	%eax, %edx, %eax
	notl	%eax
	movl	%eax, a(%rip)
	movl	a(%rip), %eax
	movl	b(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	movl	%eax, c(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
