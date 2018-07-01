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
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
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
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
copy:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	movl	$0, -4(%rbp)
	jmp	L32
L33:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movb	%dl, -96(%rbp,%rax)
	movl	-4(%rbp), %eax
	movb	$0, -192(%rbp,%rax)
	addl	$1, -4(%rbp)
L32:
	cmpl	$84, -4(%rbp)
	jbe	L33
	movl	$0, -4(%rbp)
	nop
	movl	$0, -4(%rbp)
	nop
	movq	-96(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -112(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -108(%rbp)
	movl	$0, -4(%rbp)
	jmp	L34
L36:
	movl	-4(%rbp), %eax
	movzbl	-192(%rbp,%rax), %edx
	movl	-4(%rbp), %eax
	cmpb	%al, %dl
	je	L35
	call	abort
L35:
	addl	$1, -4(%rbp)
L34:
	cmpl	$84, -4(%rbp)
	jbe	L36
	leaq	-192(%rbp), %rax
	movl	$85, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movl	$0, -4(%rbp)
	jmp	L37
L39:
	movl	-4(%rbp), %eax
	movzbl	-192(%rbp,%rax), %eax
	testb	%al, %al
	je	L38
	call	abort
L38:
	addl	$1, -4(%rbp)
L37:
	cmpl	$84, -4(%rbp)
	jbe	L39
	leaq	-96(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy
	movl	$0, -4(%rbp)
	nop
	leaq	-192(%rbp), %rax
	movl	$85, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-96(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movl	$85, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy
	movl	$0, -4(%rbp)
	jmp	L40
L42:
	movl	-4(%rbp), %eax
	movzbl	-192(%rbp,%rax), %edx
	movl	-4(%rbp), %eax
	cmpb	%al, %dl
	je	L41
	call	abort
L41:
	addl	$1, -4(%rbp)
L40:
	cmpl	$84, -4(%rbp)
	jbe	L42
	movl	$0, %edi
	call	exit