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
	.comm	i,4,4
g:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, i(%rip)
	popq	%rbp
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -20(%rbp)
	jne	L11
	movl	$1, -4(%rbp)
L11:
	cmpl	$0, -4(%rbp)
	je	L12
	jmp	L10
L12:
	cmpl	$1, -4(%rbp)
	jne	L14
	movl	$0, -4(%rbp)
L14:
	cmpl	$0, -24(%rbp)
	jne	L15
	movl	$1, -4(%rbp)
L15:
	cmpl	$0, -4(%rbp)
	je	L10
	call	g
L10:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %esi
	movl	$1, %edi
	call	f
	movl	i(%rip), %eax
	cmpl	$1, %eax
	je	L17
	call	abort
L17:
	movl	$0, %eax
	popq	%rbp
	ret
