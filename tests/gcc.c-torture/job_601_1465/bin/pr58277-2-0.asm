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
	.local	a
	.comm	a,4,4
	.local	b
	.comm	b,4,4
	.local	c
	.comm	c,4,4
	.local	e
	.comm	e,4,4
	.local	i
	.comm	i,4,4
	.local	j
	.comm	j,4,4
	.local	k
	.comm	k,4,4
	.local	m
	.comm	m,4,4
q:
	.long	1
	.long	1
	.local	t
	.comm	t,4,4
	.comm	d,4,4
	.comm	r,8,8
s:
	.quad	r
	.comm	f,4,4
	.comm	g,4,4
	.comm	o,4,4
	.comm	x,4,4
h:
	.quad	f
	.local	p
	.comm	p,8,8
	.comm	n,1,1
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	b(%rip), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	movl	%eax, b(%rip)
	movl	b(%rip), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	movl	%eax, b(%rip)
	movl	b(%rip), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	movl	%eax, b(%rip)
	movl	b(%rip), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	movl	%eax, b(%rip)
	movl	b(%rip), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	movl	%eax, b(%rip)
	popq	%rbp
	ret
fn2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1304, %rsp
	movb	$0, n(%rip)
	jmp	L11
L14:
	movl	d(%rip), %eax
	movq	$0, -1424(%rbp)
	movq	$0, -1416(%rbp)
	movq	$0, -1408(%rbp)
	movq	$0, -1400(%rbp)
	movq	$0, -1392(%rbp)
	movq	$0, -1384(%rbp)
	movq	$0, -1376(%rbp)
	movq	$0, -1368(%rbp)
	movq	$0, -1360(%rbp)
	movq	$0, -1352(%rbp)
	movq	$0, -1344(%rbp)
	movq	$0, -1336(%rbp)
	movq	$0, -1328(%rbp)
	movq	$0, -1320(%rbp)
	movq	$0, -1312(%rbp)
	movq	$0, -1304(%rbp)
	movq	$0, -1296(%rbp)
	movq	$0, -1288(%rbp)
	movq	$0, -1280(%rbp)
	movq	$0, -1272(%rbp)
	movq	$0, -1264(%rbp)
	movq	$0, -1256(%rbp)
	movq	$0, -1248(%rbp)
	movq	$0, -1240(%rbp)
	movq	$0, -1232(%rbp)
	movq	$0, -1224(%rbp)
	movq	$0, -1216(%rbp)
	movq	$0, -1208(%rbp)
	movq	$0, -1200(%rbp)
	movq	$0, -1192(%rbp)
	movq	$0, -1184(%rbp)
	movq	$0, -1176(%rbp)
	movq	$0, -1168(%rbp)
	movq	$0, -1160(%rbp)
	movq	$0, -1152(%rbp)
	movq	$0, -1144(%rbp)
	movq	$0, -1136(%rbp)
	movq	$0, -1128(%rbp)
	movq	$0, -1120(%rbp)
	movq	$0, -1112(%rbp)
	movq	$0, -1104(%rbp)
	movq	$0, -1096(%rbp)
	movq	$0, -1088(%rbp)
	movq	$0, -1080(%rbp)
	movq	$0, -1072(%rbp)
	movq	$0, -1064(%rbp)
	movq	$0, -1056(%rbp)
	movq	$0, -1048(%rbp)
	movq	$0, -1040(%rbp)
	movq	$0, -1032(%rbp)
	movq	$0, -1024(%rbp)
	movq	$0, -1016(%rbp)
	movq	$0, -1008(%rbp)
	movq	$0, -1000(%rbp)
	movq	$0, -992(%rbp)
	movq	$0, -984(%rbp)
	movq	$0, -976(%rbp)
	movq	$0, -968(%rbp)
	movq	$0, -960(%rbp)
	movq	$0, -952(%rbp)
	movq	$0, -944(%rbp)
	movq	$0, -936(%rbp)
	movq	$0, -928(%rbp)
	movq	$0, -920(%rbp)
	movq	$0, -912(%rbp)
	movq	$0, -904(%rbp)
	movq	$0, -896(%rbp)
	movq	$0, -888(%rbp)
	movq	$0, -880(%rbp)
	movq	$0, -872(%rbp)
	movq	$0, -864(%rbp)
	movq	$0, -856(%rbp)
	movq	$0, -848(%rbp)
	movq	$0, -840(%rbp)
	movq	$0, -832(%rbp)
	movq	$0, -824(%rbp)
	movq	$0, -816(%rbp)
	movq	$0, -808(%rbp)
	movq	$0, -800(%rbp)
	movq	$0, -792(%rbp)
	movq	$0, -784(%rbp)
	movq	$0, -776(%rbp)
	movq	$0, -768(%rbp)
	movq	$0, -760(%rbp)
	movq	$0, -752(%rbp)
	movq	$0, -744(%rbp)
	movq	$0, -736(%rbp)
	movq	$0, -728(%rbp)
	movq	$0, -720(%rbp)
	movq	$0, -712(%rbp)
	movq	$0, -704(%rbp)
	movq	$0, -696(%rbp)
	movq	$0, -688(%rbp)
	movq	$0, -680(%rbp)
	movq	$0, -672(%rbp)
	movq	$0, -664(%rbp)
	movq	$0, -656(%rbp)
	movq	$0, -648(%rbp)
	movq	$0, -640(%rbp)
	movq	$0, -632(%rbp)
	movq	$0, -624(%rbp)
	movq	$0, -616(%rbp)
	movq	$0, -608(%rbp)
	movq	$0, -600(%rbp)
	movq	$0, -592(%rbp)
	movq	$0, -584(%rbp)
	movq	$0, -576(%rbp)
	movq	$0, -568(%rbp)
	movq	$0, -560(%rbp)
	movq	$0, -552(%rbp)
	movq	$0, -544(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -536(%rbp)
	movq	$0, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	$0, -512(%rbp)
	movq	$0, -504(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -496(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -488(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -480(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -472(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -464(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -456(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	$0, -440(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	$0, -424(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -416(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	$0, -392(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -384(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	$0, -368(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -360(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -352(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -344(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	$0, -328(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -320(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -312(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -304(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -296(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	$0, -280(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	$0, -256(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	$0, -240(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	$0, -216(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	$0, -168(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -64(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-1424(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	p(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L12
	movq	h(%rip), %rax
	movl	$0, (%rax)
	movl	t(%rip), %eax
	addl	$1, %eax
	movl	%eax, t(%rip)
	jmp	L11
L12:
	movl	$0, %eax
	jmp	L13
L11:
	movl	g(%rip), %eax
	testl	%eax, %eax
	jne	L14
	movl	$1, %eax
L13:
	leave
	ret
fn3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	leaq	-80(%rbp), %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	jmp	L16
L17:
	movl	$0, x(%rip)
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
L16:
	movl	i(%rip), %eax
	testl	%eax, %eax
	jne	L17
	movl	$0, %eax
	call	fn2
	testl	%eax, %eax
	je	L18
	leaq	-176(%rbp), %rsi
	movl	$0, %eax
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	jmp	L19
L20:
	movq	h(%rip), %rax
	movl	$0, (%rax)
	movzbl	n(%rip), %eax
	addl	$1, %eax
	movb	%al, n(%rip)
L19:
	movzbl	n(%rip), %eax
	testb	%al, %al
	jle	L20
	jmp	L21
L22:
	movl	-112(%rbp), %eax
	movl	%eax, o(%rip)
	movl	c(%rip), %eax
	addl	$1, %eax
	movl	%eax, c(%rip)
L21:
	movl	c(%rip), %eax
	testl	%eax, %eax
	jne	L22
	jmp	L23
L24:
	leaq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-120(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	e(%rip), %eax
	subl	$1, %eax
	movl	%eax, e(%rip)
L23:
	movl	e(%rip), %eax
	testl	%eax, %eax
	jne	L24
L18:
	movq	s(%rip), %rax
	movq	$0, (%rax)
	movb	$0, n(%rip)
L26:
	movl	$0, -124(%rbp)
	movzbl	n(%rip), %eax
	movsbl	%al, %eax
	cltq
	movl	q(,%rax,4), %eax
	testl	%eax, %eax
	jne	L27
	movq	r(%rip), %rax
	leaq	-124(%rbp), %rdx
	movq	%rdx, (%rax)
	movb	$0, n(%rip)
	jmp	L26
L27:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	L29
L30:
	movl	$0, a(%rip)
	movl	j(%rip), %eax
	subl	$1, %eax
	movl	%eax, j(%rip)
L29:
	movl	j(%rip), %eax
	testl	%eax, %eax
	jne	L30
	movl	$0, %eax
	call	fn3
	jmp	L31
L32:
	movl	$0, %eax
	call	fn1
	movl	k(%rip), %eax
	addl	$1, %eax
	movl	%eax, k(%rip)
L31:
	movl	k(%rip), %eax
	testl	%eax, %eax
	jne	L32
	movl	$0, %eax
	call	fn1
	movzbl	n(%rip), %eax
	testb	%al, %al
	je	L33
	call	abort
L33:
	movl	$0, %eax
	popq	%rbp
	ret
