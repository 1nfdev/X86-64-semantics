    .text
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L2
L3:
    addq	$1, -8(%rbp)
L2:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
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
L6:
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
    jne	L6
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L9
L11:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L9:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L10
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
L10:
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
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    jmp	L14
L16:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L14
    movl	$0, %eax
    jmp	L15
L14:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    jne	L16
    movq	-8(%rbp), %rax
L15:
    popq	%rbp
    ret
    .globl	strncpy
strncpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movq	-8(%rbp), %rax
    jmp	L19
L18:
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
    jne	L20
    jmp	L21
L22:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L21:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L22
    movq	-8(%rbp), %rax
L19:
    popq	%rbp
    ret
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    jmp	L24
L26:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %ecx
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    cmpb	%al, %cl
    je	L24
    movq	-8(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L25
L24:
    movq	-24(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    testq	%rax, %rax
    jne	L26
    movl	$0, %eax
L25:
    popq	%rbp
    ret
    .globl	strrchr
strrchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	$0, -8(%rbp)
L29:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-28(%rbp), %edx
    cmpb	%dl, %al
    jne	L28
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L28:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L29
    movq	-8(%rbp), %rax
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
    jmp	L32
L35:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L33
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L34
L33:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L35
    movl	$0, %eax
L34:
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
    jmp	L40
L41:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L40:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L41
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
    jmp	L44
L45:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L44:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L45
    movq	-24(%rbp), %rax
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
    jle	L49
    cmpl	$122, -4(%rbp)
    jg	L49
    movl	$1, %eax
    jmp	L50
L49:
    cmpl	$64, -4(%rbp)
    jle	L51
    cmpl	$90, -4(%rbp)
    jg	L51
    movl	$1, %eax
    jmp	L50
L51:
    cmpl	$47, -4(%rbp)
    jle	L52
    cmpl	$57, -4(%rbp)
    jg	L52
    movl	$1, %eax
    jmp	L50
L52:
    movl	$0, %eax
L50:
    popq	%rbp
    ret
    .comm	out,100,32
    .globl	c1
    .data
c1:
    .byte	97
    .globl	c2
c2:
    .byte	127
    .globl	c3
c3:
    .byte	-128
    .globl	c4
c4:
    .byte	-1
    .globl	c5
c5:
    .byte	-1
    .globl	d1
d1:
    .long	2576980378
    .long	1069128089
    .globl	d2
d2:
    .long	2576980378
    .long	1070176665
    .globl	d3
d3:
    .long	858993459
    .long	1070805811
    .globl	d4
d4:
    .long	2576980378
    .long	1071225241
    .globl	d5
d5:
    .long	0
    .long	1071644672
    .globl	d6
d6:
    .long	858993459
    .long	1071854387
    .globl	d7
d7:
    .long	1717986918
    .long	1072064102
    .globl	d8
d8:
    .long	2576980378
    .long	1072273817
    .globl	d9
d9:
    .long	3435973837
    .long	1072483532
    .globl	B1
B1:
    .long	2576980378
    .long	1069128089
    .long	1
    .long	2
    .long	3
    .zero	4
    .globl	B2
B2:
    .long	2576980378
    .long	1070176665
    .long	5
    .long	4
    .long	3
    .zero	4
    .globl	X1
X1:
    .string	"abcdefghijklmnopqrstuvwxyzABCDEF"
    .byte	71
    .globl	X2
X2:
    .string	"123"
    .zero	29
    .byte	57
    .globl	X3
X3:
    .string	"return-return-return"
    .zero	12
    .byte	82
    .text
    .globl	f
f:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$80, %rsp
    movq	%rdi, -56(%rbp)
    movl	%esi, %eax
    vmovsd	%xmm0, -72(%rbp)
    movb	%al, -60(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	xr3106(%rip), %rax
    movq	%rax, -48(%rbp)
    movq	xr3106 + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq	xr3106 + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq	xr3106 + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movzwl	xr3106 + 32(%rip), %eax
    movw	%ax, -16(%rbp)
    movzbl	-60(%rbp), %eax
    movb	%al, -15(%rbp)
    movq	-56(%rbp), %rax
    movq	-48(%rbp), %rdx
    movq	%rdx, (%rax)
    movq	-40(%rbp), %rdx
    movq	%rdx, 8(%rax)
    movq	-32(%rbp), %rdx
    movq	%rdx, 16(%rax)
    movq	-24(%rbp), %rdx
    movq	%rdx, 24(%rax)
    movzwl	-16(%rbp), %edx
    movw	%dx, 32(%rax)
    movq	-56(%rbp), %rax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L55
    call	__stack_chk_fail
L55:
    leave
    ret
    .globl	fp
    .data
fp:
    .quad	f
    .text
    .globl	main
.globl _start
_start:
    leaq	8(%rsp), %r10
    andq	$-32, %rsp
    pushq	-8(%r10)
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r10
    subq	$232, %rsp
    movq	$40, %rax
    movq	%rax, -24(%rbp)
    xorl	%eax, %eax
    movq	d3(%rip), %rcx
    movzbl	c2(%rip), %eax
    movsbl	%al, %edx
    leaq	-176(%rbp), %rax
    pushq	B2 + 16(%rip)
    pushq	B2 + 8(%rip)
    pushq	B2(%rip)
    pushq	B1 + 16(%rip)
    pushq	B1 + 8(%rip)
    pushq	B1(%rip)
    vmovq	%rcx, %xmm0
    movl	%edx, %esi
    movq	%rax, %rdi
    call	f
    addq	$48, %rsp
    leaq	-128(%rbp), %rax
    movl	$out, %esi
    movq	%rax, %rdi
    call	strcpy
    movb	$0, -143(%rbp)
    movzbl	-143(%rbp), %eax
    movb	%al, -176(%rbp)
    movq	fp(%rip), %rax
    movq	d3(%rip), %rsi
    movzbl	c2(%rip), %edx
    movsbl	%dl, %ecx
    leaq	-240(%rbp), %rdx
    pushq	B2 + 16(%rip)
    pushq	B2 + 8(%rip)
    pushq	B2(%rip)
    pushq	B1 + 16(%rip)
    pushq	B1 + 8(%rip)
    pushq	B1(%rip)
    vmovq	%rsi, %xmm0
    movl	%ecx, %esi
    movq	%rdx, %rdi
    call	%rax
    addq	$48, %rsp
    movq	-240(%rbp), %rax
    movq	%rax, -176(%rbp)
    movq	-232(%rbp), %rax
    movq	%rax, -168(%rbp)
    movq	-224(%rbp), %rax
    movq	%rax, -160(%rbp)
    movq	-216(%rbp), %rax
    movq	%rax, -152(%rbp)
    movzwl	-208(%rbp), %eax
    movw	%ax, -144(%rbp)
    leaq	-128(%rbp), %rax
    movl	$out, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L57
    call	abort
L57:
    movl	$0, %edi
    call	exit
    .data
xr3106:
    .string	"return val"
    .zero	22
    .byte	82
