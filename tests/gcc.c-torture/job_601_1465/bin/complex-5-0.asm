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
p:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, -32(%rbp)
	movl	%eax, -28(%rbp)
	vmovq	%xmm1, %rax
	movq	%rax, -40(%rbp)
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%edx, -48(%rbp)
	movl	%eax, -44(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vaddss	-12(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %edx
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm5
	vaddss	-16(%rbp), %xmm5, %xmm4
	vmovd	%xmm4, %eax
	movl	%edx, -56(%rbp)
	movl	%eax, -52(%rbp)
	movq	-56(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
x:
	.long	1065353216
	.long	1096810496
y:
	.long	1088421888
	.long	1084227584
w:
	.long	1090519040
	.long	1100480512
	.comm	z,8,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	y(%rip), %edx
	movl	y+4(%rip), %eax
	movl	x(%rip), %esi
	movl	x+4(%rip), %ecx
	movl	%edx, -8(%rbp)
	movl	%eax, -4(%rbp)
	movq	-8(%rbp), %rdi
	movl	%esi, %edx
	movl	%ecx, %eax
	movl	%edx, -16(%rbp)
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rdi, %xmm1
	vmovq	%rax, %xmm0
	call	p
	vmovq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, z(%rip)
	movl	%eax, z+4(%rip)
	movl	z(%rip), %eax
	movl	z+4(%rip), %edx
	vmovd	%edx, %xmm3
	vmovd	%eax, %xmm2
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC1(%rip), %xmm0
	call	__divsc3
	vmovq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	x(%rip), %esi
	movl	x+4(%rip), %ecx
	movl	%edx, -40(%rbp)
	movl	%eax, -36(%rbp)
	movq	-40(%rbp), %rdi
	movl	%esi, %edx
	movl	%ecx, %eax
	movl	%edx, -48(%rbp)
	movl	%eax, -44(%rbp)
	movq	-48(%rbp), %rax
	vmovq	%rdi, %xmm1
	vmovq	%rax, %xmm0
	call	p
	vmovq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	%edx, y(%rip)
	movl	%eax, y+4(%rip)
	movl	z(%rip), %edx
	movl	z+4(%rip), %eax
	movl	w(%rip), %esi
	movl	w+4(%rip), %ecx
	vmovd	%edx, %xmm4
	vmovd	%esi, %xmm5
	vucomiss	%xmm5, %xmm4
	setp	%r8b
	movl	$1, %edi
	vmovd	%edx, %xmm6
	vmovd	%esi, %xmm7
	vucomiss	%xmm7, %xmm6
	cmove	%r8d, %edi
	movl	%edi, %esi
	vmovd	%eax, %xmm2
	vmovd	%ecx, %xmm3
	vucomiss	%xmm3, %xmm2
	setp	%dil
	movl	$1, %edx
	vmovd	%eax, %xmm4
	vmovd	%ecx, %xmm5
	vucomiss	%xmm5, %xmm4
	movl	%edx, %eax
	cmove	%edi, %eax
	orl	%esi, %eax
	cmpb	$1, %al
	jne	L12
	call	abort
L12:
	movl	$0, %edi
	call	exit
LC1:
	.long	1065353216
