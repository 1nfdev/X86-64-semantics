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
v:
	.long	1
	.comm	w,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %edx
	movl	%esi, %eax
	movw	%dx, -4(%rbp)
	movw	%ax, -8(%rbp)
	movzwl	-4(%rbp), %edx
	movzwl	-8(%rbp), %eax
	addl	%edx, %eax
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	w(%rip), %eax
	movzwl	%ax, %edx
	movl	w(%rip), %eax
	notl	%eax
	movzwl	%ax, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	foo
	movzwl	%ax, %eax
	movl	%eax, v(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	bar
	movl	v(%rip), %eax
	cmpl	$65535, %eax
	je	L13
	call	abort
L13:
	movl	$0, %eax
	popq	%rbp
	ret
