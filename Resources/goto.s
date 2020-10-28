
goto:	file format Mach-O 64-bit x86-64

Disassembly of section __TEXT,__text:
__text:
100000bd0:	55 	pushq	%rbp
100000bd1:	48 89 e5 	movq	%rsp, %rbp
100000bd4:	48 83 ec 20 	subq	$32, %rsp
100000bd8:	48 89 7d f8 	movq	%rdi, -8(%rbp)
100000bdc:	48 89 75 f0 	movq	%rsi, -16(%rbp)
100000be0:	48 c7 45 e8 00 00 00 00 	movq	$0, -24(%rbp)
100000be8:	48 8b 45 e8 	movq	-24(%rbp), %rax
100000bec:	48 3b 45 f0 	cmpq	-16(%rbp), %rax
100000bf0:	0f 83 2d 00 00 00 	jae	45 <__intp_+0x53>
100000bf6:	48 8d 3d a1 02 00 00 	leaq	673(%rip), %rdi
100000bfd:	48 8b 45 f8 	movq	-8(%rbp), %rax
100000c01:	48 8b 4d e8 	movq	-24(%rbp), %rcx
100000c05:	8b 34 88 	movl	(%rax,%rcx,4), %esi
100000c08:	b0 00 	movb	$0, %al
100000c0a:	e8 59 02 00 00 	callq	601
100000c0f:	48 8b 4d e8 	movq	-24(%rbp), %rcx
100000c13:	48 83 c1 01 	addq	$1, %rcx
100000c17:	48 89 4d e8 	movq	%rcx, -24(%rbp)
100000c1b:	89 45 e4 	movl	%eax, -28(%rbp)
100000c1e:	e9 c5 ff ff ff 	jmp	-59 <__intp_+0x18>
100000c23:	48 83 c4 20 	addq	$32, %rsp
100000c27:	5d 	popq	%rbp
100000c28:	c3 	retq
100000c29:	0f 1f 80 00 00 00 00 	nopl	(%rax)
100000c30:	55 	pushq	%rbp
100000c31:	48 89 e5 	movq	%rsp, %rbp
100000c34:	48 83 ec 20 	subq	$32, %rsp
100000c38:	48 89 7d f8 	movq	%rdi, -8(%rbp)
100000c3c:	48 89 75 f0 	movq	%rsi, -16(%rbp)
100000c40:	48 c7 45 e8 00 00 00 00 	movq	$0, -24(%rbp)
100000c48:	48 8b 45 e8 	movq	-24(%rbp), %rax
100000c4c:	48 3b 45 f0 	cmpq	-16(%rbp), %rax
100000c50:	0f 83 52 00 00 00 	jae	82 <__boolp_+0x78>
100000c56:	48 8b 45 f8 	movq	-8(%rbp), %rax
100000c5a:	48 8b 4d e8 	movq	-24(%rbp), %rcx
100000c5e:	8a 14 08 	movb	(%rax,%rcx), %dl
100000c61:	80 e2 01 	andb	$1, %dl
100000c64:	0f b6 f2 	movzbl	%dl, %esi
100000c67:	83 fe 01 	cmpl	$1, %esi
100000c6a:	0f 85 16 00 00 00 	jne	22 <__boolp_+0x56>
100000c70:	48 8d 3d 2b 02 00 00 	leaq	555(%rip), %rdi
100000c77:	b0 00 	movb	$0, %al
100000c79:	e8 ea 01 00 00 	callq	490
100000c7e:	89 45 e4 	movl	%eax, -28(%rbp)
100000c81:	e9 11 00 00 00 	jmp	17 <__boolp_+0x67>
100000c86:	48 8d 3d 1b 02 00 00 	leaq	539(%rip), %rdi
100000c8d:	b0 00 	movb	$0, %al
100000c8f:	e8 d4 01 00 00 	callq	468
100000c94:	89 45 e0 	movl	%eax, -32(%rbp)
100000c97:	48 8b 45 e8 	movq	-24(%rbp), %rax
100000c9b:	48 83 c0 01 	addq	$1, %rax
100000c9f:	48 89 45 e8 	movq	%rax, -24(%rbp)
100000ca3:	e9 a0 ff ff ff 	jmp	-96 <__boolp_+0x18>
100000ca8:	48 83 c4 20 	addq	$32, %rsp
100000cac:	5d 	popq	%rbp
100000cad:	c3 	retq
100000cae:	66 90 	nop
100000cb0:	55 	pushq	%rbp
100000cb1:	48 89 e5 	movq	%rsp, %rbp
100000cb4:	48 83 ec 20 	subq	$32, %rsp
100000cb8:	48 89 7d f8 	movq	%rdi, -8(%rbp)
100000cbc:	48 89 75 f0 	movq	%rsi, -16(%rbp)
100000cc0:	48 c7 45 e8 00 00 00 00 	movq	$0, -24(%rbp)
100000cc8:	48 8b 45 e8 	movq	-24(%rbp), %rax
100000ccc:	48 3b 45 f0 	cmpq	-16(%rbp), %rax
100000cd0:	0f 83 3f 00 00 00 	jae	63 <__vectp_+0x65>
100000cd6:	48 8d 3d d2 01 00 00 	leaq	466(%rip), %rdi
100000cdd:	48 8b 45 f8 	movq	-8(%rbp), %rax
100000ce1:	48 8b 4d e8 	movq	-24(%rbp), %rcx
100000ce5:	48 8b 04 c8 	movq	(%rax,%rcx,8), %rax
100000ce9:	8b 30 	movl	(%rax), %esi
100000ceb:	48 8b 45 f8 	movq	-8(%rbp), %rax
100000cef:	48 8b 4d e8 	movq	-24(%rbp), %rcx
100000cf3:	48 8b 04 c8 	movq	(%rax,%rcx,8), %rax
100000cf7:	8b 50 04 	movl	4(%rax), %edx
100000cfa:	b0 00 	movb	$0, %al
100000cfc:	e8 67 01 00 00 	callq	359
100000d01:	48 8b 4d e8 	movq	-24(%rbp), %rcx
100000d05:	48 83 c1 01 	addq	$1, %rcx
100000d09:	48 89 4d e8 	movq	%rcx, -24(%rbp)
100000d0d:	89 45 e4 	movl	%eax, -28(%rbp)
100000d10:	e9 b3 ff ff ff 	jmp	-77 <__vectp_+0x18>
100000d15:	48 83 c4 20 	addq	$32, %rsp
100000d19:	5d 	popq	%rbp
100000d1a:	c3 	retq
100000d1b:	0f 1f 44 00 00 	nopl	(%rax,%rax)
100000d20:	55 	pushq	%rbp
100000d21:	48 89 e5 	movq	%rsp, %rbp
100000d24:	48 83 ec 20 	subq	$32, %rsp
100000d28:	48 89 7d f8 	movq	%rdi, -8(%rbp)
100000d2c:	48 89 75 f0 	movq	%rsi, -16(%rbp)
100000d30:	48 83 7d f8 00 	cmpq	$0, -8(%rbp)
100000d35:	0f 84 29 00 00 00 	je	41 <__nodep_+0x44>
100000d3b:	48 8d 3d 76 01 00 00 	leaq	374(%rip), %rdi
100000d42:	48 8b 45 f8 	movq	-8(%rbp), %rax
100000d46:	48 8b 70 08 	movq	8(%rax), %rsi
100000d4a:	b0 00 	movb	$0, %al
100000d4c:	e8 17 01 00 00 	callq	279
100000d51:	48 8b 75 f8 	movq	-8(%rbp), %rsi
100000d55:	48 8b 36 	movq	(%rsi), %rsi
100000d58:	48 89 75 f8 	movq	%rsi, -8(%rbp)
100000d5c:	89 45 ec 	movl	%eax, -20(%rbp)
100000d5f:	e9 cc ff ff ff 	jmp	-52 <__nodep_+0x10>
100000d64:	48 83 c4 20 	addq	$32, %rsp
100000d68:	5d 	popq	%rbp
100000d69:	c3 	retq
100000d6a:	66 0f 1f 44 00 00 	nopw	(%rax,%rax)
100000d70:	55 	pushq	%rbp
100000d71:	48 89 e5 	movq	%rsp, %rbp
100000d74:	48 83 ec 20 	subq	$32, %rsp
100000d78:	48 8d 05 3d 01 00 00 	leaq	317(%rip), %rax
100000d7f:	48 8d 15 95 01 00 00 	leaq	405(%rip), %rdx
100000d86:	b9 61 00 00 00 	movl	$97, %ecx
100000d8b:	4c 8b 05 7e 02 00 00 	movq	638(%rip), %r8
100000d92:	48 89 7d f8 	movq	%rdi, -8(%rbp)
100000d96:	48 89 75 f0 	movq	%rsi, -16(%rbp)
100000d9a:	49 8b 38 	movq	(%r8), %rdi
100000d9d:	48 89 c6 	movq	%rax, %rsi
100000da0:	b0 00 	movb	$0, %al
100000da2:	e8 bb 00 00 00 	callq	187
100000da7:	89 45 ec 	movl	%eax, -20(%rbp)
100000daa:	48 83 c4 20 	addq	$32, %rsp
100000dae:	5d 	popq	%rbp
100000daf:	c3 	retq
100000db0:	55 	pushq	%rbp
100000db1:	48 89 e5 	movq	%rsp, %rbp
100000db4:	48 83 ec 20 	subq	$32, %rsp
100000db8:	c7 45 fc 00 00 00 00 	movl	$0, -4(%rbp)
100000dbf:	48 8b 45 f0 	movq	-16(%rbp), %rax
100000dc3:	48 89 45 e8 	movq	%rax, -24(%rbp)
100000dc7:	48 8b 45 f0 	movq	-16(%rbp), %rax
100000dcb:	48 3b 45 e8 	cmpq	-24(%rbp), %rax
100000dcf:	0f 85 05 00 00 00 	jne	5 <_main+0x2a>
100000dd5:	e9 4f 00 00 00 	jmp	79 <_main+0x79>
100000dda:	b8 01 00 00 00 	movl	$1, %eax
100000ddf:	89 c1 	movl	%eax, %ecx
100000de1:	48 89 cf 	movq	%rcx, %rdi
100000de4:	48 89 ce 	movq	%rcx, %rsi
100000de7:	e8 70 00 00 00 	callq	112
100000dec:	48 89 45 f0 	movq	%rax, -16(%rbp)
100000df0:	48 83 f8 00 	cmpq	$0, %rax
100000df4:	0f 85 2a 00 00 00 	jne	42 <_main+0x74>
100000dfa:	48 8d 35 26 01 00 00 	leaq	294(%rip), %rsi
100000e01:	48 8d 15 68 01 00 00 	leaq	360(%rip), %rdx
100000e08:	b9 09 00 00 00 	movl	$9, %ecx
100000e0d:	45 31 c0 	xorl	%r8d, %r8d
100000e10:	48 8b 05 f9 01 00 00 	movq	505(%rip), %rax
100000e17:	48 8b 38 	movq	(%rax), %rdi
100000e1a:	b0 00 	movb	$0, %al
100000e1c:	e8 41 00 00 00 	callq	65
100000e21:	89 45 e4 	movl	%eax, -28(%rbp)
100000e24:	e9 00 00 00 00 	jmp	0 <_main+0x79>
100000e29:	48 8d 35 47 01 00 00 	leaq	327(%rip), %rsi
100000e30:	48 8d 15 39 01 00 00 	leaq	313(%rip), %rdx
100000e37:	b9 09 00 00 00 	movl	$9, %ecx
100000e3c:	48 8b 05 cd 01 00 00 	movq	461(%rip), %rax
100000e43:	48 8b 38 	movq	(%rax), %rdi
100000e46:	b0 00 	movb	$0, %al
100000e48:	e8 15 00 00 00 	callq	21
100000e4d:	8b 4d fc 	movl	-4(%rbp), %ecx
100000e50:	89 45 e0 	movl	%eax, -32(%rbp)
100000e53:	89 c8 	movl	%ecx, %eax
100000e55:	48 83 c4 20 	addq	$32, %rsp
100000e59:	5d 	popq	%rbp
100000e5a:	c3 	retq

__intp_:
100000bd0:	55 	pushq	%rbp
100000bd1:	48 89 e5 	movq	%rsp, %rbp
100000bd4:	48 83 ec 20 	subq	$32, %rsp
100000bd8:	48 89 7d f8 	movq	%rdi, -8(%rbp)
100000bdc:	48 89 75 f0 	movq	%rsi, -16(%rbp)
100000be0:	48 c7 45 e8 00 00 00 00 	movq	$0, -24(%rbp)
100000be8:	48 8b 45 e8 	movq	-24(%rbp), %rax
100000bec:	48 3b 45 f0 	cmpq	-16(%rbp), %rax
100000bf0:	0f 83 2d 00 00 00 	jae	45 <__intp_+0x53>
100000bf6:	48 8d 3d a1 02 00 00 	leaq	673(%rip), %rdi
100000bfd:	48 8b 45 f8 	movq	-8(%rbp), %rax
100000c01:	48 8b 4d e8 	movq	-24(%rbp), %rcx
100000c05:	8b 34 88 	movl	(%rax,%rcx,4), %esi
100000c08:	b0 00 	movb	$0, %al
100000c0a:	e8 59 02 00 00 	callq	601
100000c0f:	48 8b 4d e8 	movq	-24(%rbp), %rcx
100000c13:	48 83 c1 01 	addq	$1, %rcx
100000c17:	48 89 4d e8 	movq	%rcx, -24(%rbp)
100000c1b:	89 45 e4 	movl	%eax, -28(%rbp)
100000c1e:	e9 c5 ff ff ff 	jmp	-59 <__intp_+0x18>
100000c23:	48 83 c4 20 	addq	$32, %rsp
100000c27:	5d 	popq	%rbp
100000c28:	c3 	retq
100000c29:	0f 1f 80 00 00 00 00 	nopl	(%rax)

__boolp_:
100000c30:	55 	pushq	%rbp
100000c31:	48 89 e5 	movq	%rsp, %rbp
100000c34:	48 83 ec 20 	subq	$32, %rsp
100000c38:	48 89 7d f8 	movq	%rdi, -8(%rbp)
100000c3c:	48 89 75 f0 	movq	%rsi, -16(%rbp)
100000c40:	48 c7 45 e8 00 00 00 00 	movq	$0, -24(%rbp)
100000c48:	48 8b 45 e8 	movq	-24(%rbp), %rax
100000c4c:	48 3b 45 f0 	cmpq	-16(%rbp), %rax
100000c50:	0f 83 52 00 00 00 	jae	82 <__boolp_+0x78>
100000c56:	48 8b 45 f8 	movq	-8(%rbp), %rax
100000c5a:	48 8b 4d e8 	movq	-24(%rbp), %rcx
100000c5e:	8a 14 08 	movb	(%rax,%rcx), %dl
100000c61:	80 e2 01 	andb	$1, %dl
100000c64:	0f b6 f2 	movzbl	%dl, %esi
100000c67:	83 fe 01 	cmpl	$1, %esi
100000c6a:	0f 85 16 00 00 00 	jne	22 <__boolp_+0x56>
100000c70:	48 8d 3d 2b 02 00 00 	leaq	555(%rip), %rdi
100000c77:	b0 00 	movb	$0, %al
100000c79:	e8 ea 01 00 00 	callq	490
100000c7e:	89 45 e4 	movl	%eax, -28(%rbp)
100000c81:	e9 11 00 00 00 	jmp	17 <__boolp_+0x67>
100000c86:	48 8d 3d 1b 02 00 00 	leaq	539(%rip), %rdi
100000c8d:	b0 00 	movb	$0, %al
100000c8f:	e8 d4 01 00 00 	callq	468
100000c94:	89 45 e0 	movl	%eax, -32(%rbp)
100000c97:	48 8b 45 e8 	movq	-24(%rbp), %rax
100000c9b:	48 83 c0 01 	addq	$1, %rax
100000c9f:	48 89 45 e8 	movq	%rax, -24(%rbp)
100000ca3:	e9 a0 ff ff ff 	jmp	-96 <__boolp_+0x18>
100000ca8:	48 83 c4 20 	addq	$32, %rsp
100000cac:	5d 	popq	%rbp
100000cad:	c3 	retq
100000cae:	66 90 	nop

__vectp_:
100000cb0:	55 	pushq	%rbp
100000cb1:	48 89 e5 	movq	%rsp, %rbp
100000cb4:	48 83 ec 20 	subq	$32, %rsp
100000cb8:	48 89 7d f8 	movq	%rdi, -8(%rbp)
100000cbc:	48 89 75 f0 	movq	%rsi, -16(%rbp)
100000cc0:	48 c7 45 e8 00 00 00 00 	movq	$0, -24(%rbp)
100000cc8:	48 8b 45 e8 	movq	-24(%rbp), %rax
100000ccc:	48 3b 45 f0 	cmpq	-16(%rbp), %rax
100000cd0:	0f 83 3f 00 00 00 	jae	63 <__vectp_+0x65>
100000cd6:	48 8d 3d d2 01 00 00 	leaq	466(%rip), %rdi
100000cdd:	48 8b 45 f8 	movq	-8(%rbp), %rax
100000ce1:	48 8b 4d e8 	movq	-24(%rbp), %rcx
100000ce5:	48 8b 04 c8 	movq	(%rax,%rcx,8), %rax
100000ce9:	8b 30 	movl	(%rax), %esi
100000ceb:	48 8b 45 f8 	movq	-8(%rbp), %rax
100000cef:	48 8b 4d e8 	movq	-24(%rbp), %rcx
100000cf3:	48 8b 04 c8 	movq	(%rax,%rcx,8), %rax
100000cf7:	8b 50 04 	movl	4(%rax), %edx
100000cfa:	b0 00 	movb	$0, %al
100000cfc:	e8 67 01 00 00 	callq	359
100000d01:	48 8b 4d e8 	movq	-24(%rbp), %rcx
100000d05:	48 83 c1 01 	addq	$1, %rcx
100000d09:	48 89 4d e8 	movq	%rcx, -24(%rbp)
100000d0d:	89 45 e4 	movl	%eax, -28(%rbp)
100000d10:	e9 b3 ff ff ff 	jmp	-77 <__vectp_+0x18>
100000d15:	48 83 c4 20 	addq	$32, %rsp
100000d19:	5d 	popq	%rbp
100000d1a:	c3 	retq
100000d1b:	0f 1f 44 00 00 	nopl	(%rax,%rax)

__nodep_:
100000d20:	55 	pushq	%rbp
100000d21:	48 89 e5 	movq	%rsp, %rbp
100000d24:	48 83 ec 20 	subq	$32, %rsp
100000d28:	48 89 7d f8 	movq	%rdi, -8(%rbp)
100000d2c:	48 89 75 f0 	movq	%rsi, -16(%rbp)
100000d30:	48 83 7d f8 00 	cmpq	$0, -8(%rbp)
100000d35:	0f 84 29 00 00 00 	je	41 <__nodep_+0x44>
100000d3b:	48 8d 3d 76 01 00 00 	leaq	374(%rip), %rdi
100000d42:	48 8b 45 f8 	movq	-8(%rbp), %rax
100000d46:	48 8b 70 08 	movq	8(%rax), %rsi
100000d4a:	b0 00 	movb	$0, %al
100000d4c:	e8 17 01 00 00 	callq	279
100000d51:	48 8b 75 f8 	movq	-8(%rbp), %rsi
100000d55:	48 8b 36 	movq	(%rsi), %rsi
100000d58:	48 89 75 f8 	movq	%rsi, -8(%rbp)
100000d5c:	89 45 ec 	movl	%eax, -20(%rbp)
100000d5f:	e9 cc ff ff ff 	jmp	-52 <__nodep_+0x10>
100000d64:	48 83 c4 20 	addq	$32, %rsp
100000d68:	5d 	popq	%rbp
100000d69:	c3 	retq
100000d6a:	66 0f 1f 44 00 00 	nopw	(%rax,%rax)

__defp_:
100000d70:	55 	pushq	%rbp
100000d71:	48 89 e5 	movq	%rsp, %rbp
100000d74:	48 83 ec 20 	subq	$32, %rsp
100000d78:	48 8d 05 3d 01 00 00 	leaq	317(%rip), %rax
100000d7f:	48 8d 15 95 01 00 00 	leaq	405(%rip), %rdx
100000d86:	b9 61 00 00 00 	movl	$97, %ecx
100000d8b:	4c 8b 05 7e 02 00 00 	movq	638(%rip), %r8
100000d92:	48 89 7d f8 	movq	%rdi, -8(%rbp)
100000d96:	48 89 75 f0 	movq	%rsi, -16(%rbp)
100000d9a:	49 8b 38 	movq	(%r8), %rdi
100000d9d:	48 89 c6 	movq	%rax, %rsi
100000da0:	b0 00 	movb	$0, %al
100000da2:	e8 bb 00 00 00 	callq	187
100000da7:	89 45 ec 	movl	%eax, -20(%rbp)
100000daa:	48 83 c4 20 	addq	$32, %rsp
100000dae:	5d 	popq	%rbp
100000daf:	c3 	retq

_main:
100000db0:	55 	pushq	%rbp
100000db1:	48 89 e5 	movq	%rsp, %rbp
100000db4:	48 83 ec 20 	subq	$32, %rsp
100000db8:	c7 45 fc 00 00 00 00 	movl	$0, -4(%rbp)
100000dbf:	48 8b 45 f0 	movq	-16(%rbp), %rax
100000dc3:	48 89 45 e8 	movq	%rax, -24(%rbp)
100000dc7:	48 8b 45 f0 	movq	-16(%rbp), %rax
100000dcb:	48 3b 45 e8 	cmpq	-24(%rbp), %rax
100000dcf:	0f 85 05 00 00 00 	jne	5 <_main+0x2a>
100000dd5:	e9 4f 00 00 00 	jmp	79 <_main+0x79>
100000dda:	b8 01 00 00 00 	movl	$1, %eax
100000ddf:	89 c1 	movl	%eax, %ecx
100000de1:	48 89 cf 	movq	%rcx, %rdi
100000de4:	48 89 ce 	movq	%rcx, %rsi
100000de7:	e8 70 00 00 00 	callq	112
100000dec:	48 89 45 f0 	movq	%rax, -16(%rbp)
100000df0:	48 83 f8 00 	cmpq	$0, %rax
100000df4:	0f 85 2a 00 00 00 	jne	42 <_main+0x74>
100000dfa:	48 8d 35 26 01 00 00 	leaq	294(%rip), %rsi
100000e01:	48 8d 15 68 01 00 00 	leaq	360(%rip), %rdx
100000e08:	b9 09 00 00 00 	movl	$9, %ecx
100000e0d:	45 31 c0 	xorl	%r8d, %r8d
100000e10:	48 8b 05 f9 01 00 00 	movq	505(%rip), %rax
100000e17:	48 8b 38 	movq	(%rax), %rdi
100000e1a:	b0 00 	movb	$0, %al
100000e1c:	e8 41 00 00 00 	callq	65
100000e21:	89 45 e4 	movl	%eax, -28(%rbp)
100000e24:	e9 00 00 00 00 	jmp	0 <_main+0x79>
100000e29:	48 8d 35 47 01 00 00 	leaq	327(%rip), %rsi
100000e30:	48 8d 15 39 01 00 00 	leaq	313(%rip), %rdx
100000e37:	b9 09 00 00 00 	movl	$9, %ecx
100000e3c:	48 8b 05 cd 01 00 00 	movq	461(%rip), %rax
100000e43:	48 8b 38 	movq	(%rax), %rdi
100000e46:	b0 00 	movb	$0, %al
100000e48:	e8 15 00 00 00 	callq	21
100000e4d:	8b 4d fc 	movl	-4(%rbp), %ecx
100000e50:	89 45 e0 	movl	%eax, -32(%rbp)
100000e53:	89 c8 	movl	%ecx, %eax
100000e55:	48 83 c4 20 	addq	$32, %rsp
100000e59:	5d 	popq	%rbp
100000e5a:	c3 	retq
Disassembly of section __TEXT,__stubs:
__stubs:
100000e5c:	ff 25 b6 01 00 00 	jmpq	*438(%rip)
100000e62:	ff 25 b8 01 00 00 	jmpq	*440(%rip)
100000e68:	ff 25 ba 01 00 00 	jmpq	*442(%rip)
Disassembly of section __TEXT,__stub_helper:
__stub_helper:
100000e70:	4c 8d 1d 91 01 00 00 	leaq	401(%rip), %r11
100000e77:	41 53 	pushq	%r11
100000e79:	ff 25 81 01 00 00 	jmpq	*385(%rip)
100000e7f:	90 	nop
100000e80:	68 00 00 00 00 	pushq	$0
100000e85:	e9 e6 ff ff ff 	jmp	-26 <__stub_helper>
100000e8a:	68 0e 00 00 00 	pushq	$14
100000e8f:	e9 dc ff ff ff 	jmp	-36 <__stub_helper>
100000e94:	68 1d 00 00 00 	pushq	$29
100000e99:	e9 d2 ff ff ff 	jmp	-46 <__stub_helper>
