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
x:
	.long	0
	.long	2147483648
	.long	32767
	.long	0
y:
	.long	0
	.long	2147483648
	.long	32767
	.long	0
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	fldt	x(%rip)
	fldt	y(%rip)
	fucomi	%st(1), %st
	jp	L14
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L13
	jmp	L12
L14:
	fstp	%st(0)
	fstp	%st(0)
L12:
	call	abort
L13:
	movl	$0, %edi
	call	exit