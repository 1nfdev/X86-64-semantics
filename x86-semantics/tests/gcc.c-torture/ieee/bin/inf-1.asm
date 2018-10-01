    .text
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    nop
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
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
    .globl	strlen
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
    .globl	strcpy
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
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L15
L17:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L15:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L16
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L17
L16:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    popq	%rbp
    ret
    .globl	memcmp
memcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L20
L23:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L21
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L22
L21:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
    movl	$0, %eax
L22:
    popq	%rbp
    ret
    .globl	__stack_chk_fail
__stack_chk_fail:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L28
L29:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L29
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcpy
memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L32
L33:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L33
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	malloc
malloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	calloc
calloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	free
free:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	isprint
isprint:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$96, -4(%rbp)
    jle	L41
    cmpl	$122, -4(%rbp)
    jg	L41
    movl	$1, %eax
    jmp	L42
L41:
    cmpl	$64, -4(%rbp)
    jle	L43
    cmpl	$90, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L42
L43:
    cmpl	$47, -4(%rbp)
    jle	L44
    cmpl	$57, -4(%rbp)
    jg	L44
    movl	$1, %eax
    jmp	L42
L44:
    movl	$0, %eax
L42:
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    vmovss	LC0(%rip), %xmm0
    vmovss	%xmm0, -40(%rbp)
    vmovsd	LC1(%rip), %xmm0
    vmovsd	%xmm0, -32(%rbp)
    vmovsd	LC1(%rip), %xmm0
    vmovsd	%xmm0, -24(%rbp)
    vmovss	LC0(%rip), %xmm0
    vmovss	%xmm0, -36(%rbp)
    vmovsd	LC1(%rip), %xmm0
    vmovsd	%xmm0, -16(%rbp)
    vmovsd	LC1(%rip), %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovss	-40(%rbp), %xmm0
    vaddss	%xmm0, %xmm0, %xmm0
    vucomiss	-40(%rbp), %xmm0
    jp	L65
    vucomiss	-40(%rbp), %xmm0
    je	L74
L65:
    call	abort
L74:
    vmovsd	-32(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vucomisd	-32(%rbp), %xmm0
    jp	L66
    vucomisd	-32(%rbp), %xmm0
    je	L75
L66:
    call	abort
L75:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vucomisd	-24(%rbp), %xmm0
    jp	L67
    vucomisd	-24(%rbp), %xmm0
    je	L76
L67:
    call	abort
L76:
    vmovss	-40(%rbp), %xmm0
    vucomiss	-36(%rbp), %xmm0
    jp	L68
    vmovss	-40(%rbp), %xmm0
    vucomiss	-36(%rbp), %xmm0
    je	L77
L68:
    call	abort
L77:
    vmovsd	-32(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
    jp	L69
    vmovsd	-32(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
    je	L78
L69:
    call	abort
L78:
    vmovsd	-24(%rbp), %xmm0
    vucomisd	-8(%rbp), %xmm0
    jp	L70
    vmovsd	-24(%rbp), %xmm0
    vucomisd	-8(%rbp), %xmm0
    je	L79
L70:
    call	abort
L79:
    vxorps	%xmm0, %xmm0, %xmm0
    vucomiss	-40(%rbp), %xmm0
    jb	L80
    call	abort
L80:
    vxorpd	%xmm0, %xmm0, %xmm0
    vucomisd	-32(%rbp), %xmm0
    jb	L81
    call	abort
L81:
    vxorpd	%xmm0, %xmm0, %xmm0
    vucomisd	-24(%rbp), %xmm0
    jb	L82
    call	abort
L82:
    movl	$0, %eax
    leave
    ret
    .section	.rodata
LC0:
    .long	2139095040
LC1:
    .long	0
    .long	2146435072