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
swap:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movzwl	%ax, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	shrw	$8, %ax
	orl	%edx, %eax
	movzwl	%ax, %eax
	popq	%rbp
	ret
a:
	.long	4660
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$4660, -4(%rbp)
	movl	a(%rip), %eax
	movl	%eax, %edi
	call	swap
	cmpl	$13330, %eax
	je	L12
	call	abort
L12:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	swap
	cmpl	$13330, %eax
	je	L13
	call	abort
L13:
	movl	$0, %eax
	leave
	ret
