	.text
	.file	"donut.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.quad	0x40191eb851eb851f              # double 6.2800000000000002
.LCPI0_1:
	.quad	0x3f947ae147ae147b              # double 0.02
.LCPI0_2:
	.quad	0x3fa47ae147ae147b              # double 0.040000000000000001
.LCPI0_3:
	.quad	0x3fb1eb851eb851ec              # double 0.070000000000000007
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_4:
	.long	0x41000000                      # float 8
.LCPI0_5:
	.long	0x41400000                      # float 12
.LCPI0_6:
	.long	0x41700000                      # float 15
.LCPI0_7:
	.long	0x42200000                      # float 40
.LCPI0_8:
	.long	0x41f00000                      # float 30
.LCPI0_9:
	.long	0x3f800000                      # float 1
.LCPI0_10:
	.long	0x40a00000                      # float 5
.LCPI0_11:
	.long	0x40000000                      # float 2
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$8912, %rsp                     # imm = 0x22D0
	movl	$0, -4(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_4 Depth 3
                                        #     Child Loop BB0_19 Depth 2
	leaq	-8832(%rbp), %rdi
	movl	$32, %esi
	movl	$1760, %edx                     # imm = 0x6E0
	callq	memset@PLT
	leaq	-7072(%rbp), %rdi
	xorl	%esi, %esi
	movl	$7040, %edx                     # imm = 0x1B80
	callq	memset@PLT
	xorps	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_18
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=2
	xorps	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
.LBB0_4:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_16
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=3
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	sin@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8836(%rbp)
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	cos@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8840(%rbp)
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	sin@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8844(%rbp)
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	sin@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8848(%rbp)
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	cos@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8852(%rbp)
	movss	.LCPI0_11(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	-8840(%rbp), %xmm0
	movss	%xmm0, -8856(%rbp)
	movss	-8836(%rbp), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	-8856(%rbp), %xmm1
	movss	-8844(%rbp), %xmm2              # xmm2 = mem[0],zero,zero,zero
	movss	-8848(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	mulss	-8852(%rbp), %xmm0
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	.LCPI0_10(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -8860(%rbp)
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	cos@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8864(%rbp)
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	cos@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8868(%rbp)
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	sin@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8872(%rbp)
	movss	-8836(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	mulss	-8856(%rbp), %xmm0
	movss	-8852(%rbp), %xmm2              # xmm2 = mem[0],zero,zero,zero
	movss	-8848(%rbp), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	-8844(%rbp), %xmm1
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -8876(%rbp)
	movss	.LCPI0_8(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	-8860(%rbp), %xmm0
	movss	-8864(%rbp), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	-8856(%rbp), %xmm1
	movss	-8868(%rbp), %xmm3              # xmm3 = mem[0],zero,zero,zero
	movss	-8876(%rbp), %xmm2              # xmm2 = mem[0],zero,zero,zero
	mulss	-8872(%rbp), %xmm2
	movd	%xmm2, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm2
	mulss	%xmm3, %xmm1
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	.LCPI0_7(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -8880(%rbp)
	movss	.LCPI0_6(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	-8860(%rbp), %xmm0
	movss	-8864(%rbp), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	-8856(%rbp), %xmm1
	movss	-8872(%rbp), %xmm3              # xmm3 = mem[0],zero,zero,zero
	movss	-8876(%rbp), %xmm2              # xmm2 = mem[0],zero,zero,zero
	mulss	-8868(%rbp), %xmm2
	mulss	%xmm3, %xmm1
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	.LCPI0_5(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -8884(%rbp)
	movl	-8880(%rbp), %eax
	imull	$80, -8884(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -8888(%rbp)
	movss	-8848(%rbp), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movss	-8844(%rbp), %xmm2              # xmm2 = mem[0],zero,zero,zero
	movss	-8836(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	mulss	-8840(%rbp), %xmm0
	mulss	-8852(%rbp), %xmm0
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	-8868(%rbp), %xmm2              # xmm2 = mem[0],zero,zero,zero
	movss	-8836(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	mulss	-8840(%rbp), %xmm0
	mulss	-8844(%rbp), %xmm0
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	-8848(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movss	-8852(%rbp), %xmm2              # xmm2 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	-8864(%rbp), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	-8840(%rbp), %xmm1
	movss	-8872(%rbp), %xmm2              # xmm2 = mem[0],zero,zero,zero
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm1
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -8892(%rbp)
	movl	$22, %eax
	cmpl	-8884(%rbp), %eax
	jle	.LBB0_14
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=3
	cmpl	$0, -8884(%rbp)
	jle	.LBB0_14
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=3
	cmpl	$0, -8880(%rbp)
	jle	.LBB0_14
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=3
	movl	$80, %eax
	cmpl	-8880(%rbp), %eax
	jle	.LBB0_14
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=3
	movss	-8860(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movslq	-8888(%rbp), %rax
	ucomiss	-7072(%rbp,%rax,4), %xmm0
	jbe	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=3
	movss	-8860(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movslq	-8888(%rbp), %rax
	movss	%xmm0, -7072(%rbp,%rax,4)
	cmpl	$0, -8892(%rbp)
	jle	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=3
	movl	-8892(%rbp), %eax
	movl	%eax, -8896(%rbp)               # 4-byte Spill
	jmp	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=3
	xorl	%eax, %eax
	movl	%eax, -8896(%rbp)               # 4-byte Spill
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=3
	movl	-8896(%rbp), %eax               # 4-byte Reload
	movslq	%eax, %rcx
	leaq	.L.str.1(%rip), %rax
	movb	(%rax,%rcx), %cl
	movslq	-8888(%rbp), %rax
	movb	%cl, -8832(%rbp,%rax)
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=3
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_4 Depth=3
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	jmp	.LBB0_4
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=2
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_2 Depth=2
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_3(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	jmp	.LBB0_2
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, k(%rip)
.LBB0_19:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1761, %eax                     # imm = 0x6E1
	cmpl	k(%rip), %eax
	jle	.LBB0_25
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=2
	movl	k(%rip), %eax
	movl	$80, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	movslq	k(%rip), %rax
	movsbl	-8832(%rbp,%rax), %eax
	movl	%eax, -8900(%rbp)               # 4-byte Spill
	jmp	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	movl	$10, %eax
	movl	%eax, -8900(%rbp)               # 4-byte Spill
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_19 Depth=2
	movl	-8900(%rbp), %edi               # 4-byte Reload
	callq	putchar@PLT
# %bb.24:                               #   in Loop: Header=BB0_19 Depth=2
	movl	k(%rip), %eax
	addl	$1, %eax
	movl	%eax, k(%rip)
	jmp	.LBB0_19
.LBB0_25:                               #   in Loop: Header=BB0_1 Depth=1
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	jmp	.LBB0_1
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\033[2J"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	".,-~:;=!*#$@"
	.size	.L.str.1, 13

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\033[H"
	.size	.L.str.2, 4

	.type	k,@object                       # @k
	.bss
	.globl	k
	.p2align	2, 0x0
k:
	.long	0                               # 0x0
	.size	k, 4

	.ident	"clang version 16.0.6"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym sin
	.addrsig_sym cos
	.addrsig_sym putchar
	.addrsig_sym k
