	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	arm7tdmi
	.eabi_attribute	6, 2	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 1	@ Tag_THUMB_ISA_use
	.eabi_attribute	34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"donut.c"
	.globl	main                            @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                              @ @main
main:
	.fnstart
@ %bb.0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #808
	sub	sp, sp, #8192
	mov	r0, #0
	str	r0, [r11, #-12]
	str	r0, [r11, #-16]
	str	r0, [r11, #-20]
	ldr	r0, .LCPI0_0
	bl	printf
	b	.LBB0_1
.LBB0_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_2 Depth 2
                                        @       Child Loop BB0_4 Depth 3
                                        @     Child Loop BB0_19 Depth 2
	add	r0, sp, #180
	mov	r1, #32
	mov	r2, #1760
	bl	memset
	add	lr, sp, #1024
	add	r0, lr, #916
	mov	r1, #0
	str	r1, [sp, #116]                  @ 4-byte Spill
	mov	r2, #7040
	bl	memset
                                        @ kill: def $r1 killed $r0
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	str	r0, [r11, #-28]
	b	.LBB0_2
.LBB0_2:                                @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_4 Depth 3
	ldr	r0, [r11, #-28]
	bl	__extendsfdf2
	ldr	r2, .LCPI0_1
	ldr	r3, .LCPI0_2
	bl	__ltdf2
	cmn	r0, #1
	bgt	.LBB0_18
	b	.LBB0_3
.LBB0_3:                                @   in Loop: Header=BB0_2 Depth=2
	mov	r0, #0
	str	r0, [r11, #-24]
	b	.LBB0_4
.LBB0_4:                                @   Parent Loop BB0_1 Depth=1
                                        @     Parent Loop BB0_2 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [r11, #-24]
	bl	__extendsfdf2
	ldr	r2, .LCPI0_1
	ldr	r3, .LCPI0_2
	bl	__ltdf2
	cmn	r0, #1
	bgt	.LBB0_16
	b	.LBB0_5
.LBB0_5:                                @   in Loop: Header=BB0_4 Depth=3
	ldr	r0, [r11, #-24]
	bl	__extendsfdf2
	bl	sin
	bl	__truncdfsf2
	str	r0, [sp, #176]
	ldr	r0, [r11, #-28]
	bl	__extendsfdf2
	bl	cos
	bl	__truncdfsf2
	str	r0, [sp, #172]
	ldr	r0, [r11, #-16]
	bl	__extendsfdf2
	bl	sin
	bl	__truncdfsf2
	str	r0, [sp, #168]
	ldr	r0, [r11, #-28]
	bl	__extendsfdf2
	bl	sin
	bl	__truncdfsf2
	str	r0, [sp, #164]
	ldr	r0, [r11, #-16]
	bl	__extendsfdf2
	bl	cos
	bl	__truncdfsf2
	str	r0, [sp, #160]
	ldr	r0, [sp, #172]
	mov	r1, #1073741824
	bl	__addsf3
	str	r0, [sp, #156]
	ldr	r0, [sp, #176]
	ldr	r1, [sp, #156]
	bl	__mulsf3
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #168]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #164]
	ldr	r1, [sp, #160]
	bl	__mulsf3
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	str	r2, [sp, #24]                   @ 4-byte Spill
	bl	__mulsf3
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	bl	__addsf3
	mov	r1, #10485760
	orr	r1, r1, #1073741824
	bl	__addsf3
	mov	r1, r0
	mov	r0, #1065353216
	bl	__divsf3
	str	r0, [sp, #152]
	ldr	r0, [r11, #-24]
	bl	__extendsfdf2
	bl	cos
	bl	__truncdfsf2
	str	r0, [sp, #148]
	ldr	r0, [r11, #-20]
	bl	__extendsfdf2
	bl	cos
	bl	__truncdfsf2
	str	r0, [sp, #144]
	ldr	r0, [r11, #-20]
	bl	__extendsfdf2
	bl	sin
	bl	__truncdfsf2
	str	r0, [sp, #140]
	ldr	r0, [sp, #176]
	ldr	r1, [sp, #156]
	bl	__mulsf3
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #160]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #164]
	ldr	r1, [sp, #168]
	bl	__mulsf3
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	str	r2, [sp, #36]                   @ 4-byte Spill
	bl	__mulsf3
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	bl	__subsf3
	str	r0, [sp, #136]
	ldr	r0, [sp, #152]
	mov	r1, #32505856
	orr	r1, r1, #1073741824
	bl	__mulsf3
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #148]
	ldr	r1, [sp, #156]
	bl	__mulsf3
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #144]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #136]
	ldr	r1, [sp, #140]
	bl	__mulsf3
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	str	r2, [sp, #48]                   @ 4-byte Spill
	bl	__mulsf3
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	bl	__subsf3
	mov	r1, r0
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	bl	__mulsf3
	mov	r1, #35651584
	orr	r1, r1, #1073741824
	bl	__addsf3
	bl	__fixsfsi
	str	r0, [sp, #132]
	ldr	r0, [sp, #152]
	mov	r1, #24117248
	orr	r1, r1, #1073741824
	bl	__mulsf3
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #148]
	ldr	r1, [sp, #156]
	bl	__mulsf3
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #140]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #136]
	ldr	r1, [sp, #144]
	bl	__mulsf3
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	str	r2, [sp, #64]                   @ 4-byte Spill
	bl	__mulsf3
	ldr	r1, [sp, #64]                   @ 4-byte Reload
	bl	__addsf3
	mov	r1, r0
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	bl	__mulsf3
	mov	r1, #20971520
	orr	r1, r1, #1073741824
	bl	__addsf3
	bl	__fixsfsi
	str	r0, [sp, #128]
	ldr	r0, [sp, #132]
	ldr	r1, [sp, #128]
	add	r1, r1, r1, lsl #2
	add	r0, r0, r1, lsl #4
	str	r0, [sp, #124]
	ldr	r0, [sp, #164]
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #168]
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #176]
	ldr	r1, [sp, #172]
	str	r1, [sp, #108]                  @ 4-byte Spill
	bl	__mulsf3
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r1, [sp, #160]
	str	r1, [sp, #96]                   @ 4-byte Spill
	bl	__mulsf3
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	str	r2, [sp, #72]                   @ 4-byte Spill
	bl	__mulsf3
	ldr	r1, [sp, #72]                   @ 4-byte Reload
	bl	__subsf3
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	str	r2, [sp, #88]                   @ 4-byte Spill
	ldr	r2, [sp, #144]
	str	r2, [sp, #84]                   @ 4-byte Spill
	bl	__mulsf3
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	str	r2, [sp, #92]                   @ 4-byte Spill
	bl	__mulsf3
	ldr	r1, [sp, #92]                   @ 4-byte Reload
	bl	__subsf3
	ldr	r1, [sp, #96]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	str	r2, [sp, #104]                  @ 4-byte Spill
	bl	__mulsf3
	mov	r1, r0
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	bl	__subsf3
	ldr	r1, [sp, #108]                  @ 4-byte Reload
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #148]
	bl	__mulsf3
	ldr	r1, [sp, #140]
	bl	__mulsf3
	mov	r1, r0
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	bl	__subsf3
	mov	r1, #1090519040
	bl	__mulsf3
	bl	__fixsfsi
	str	r0, [sp, #120]
	ldr	r0, [sp, #128]
	cmp	r0, #21
	bgt	.LBB0_14
	b	.LBB0_6
.LBB0_6:                                @   in Loop: Header=BB0_4 Depth=3
	ldr	r0, [sp, #128]
	cmp	r0, #1
	blt	.LBB0_14
	b	.LBB0_7
.LBB0_7:                                @   in Loop: Header=BB0_4 Depth=3
	ldr	r0, [sp, #132]
	cmp	r0, #1
	blt	.LBB0_14
	b	.LBB0_8
.LBB0_8:                                @   in Loop: Header=BB0_4 Depth=3
	ldr	r0, [sp, #132]
	cmp	r0, #79
	bgt	.LBB0_14
	b	.LBB0_9
.LBB0_9:                                @   in Loop: Header=BB0_4 Depth=3
	ldr	r0, [sp, #152]
	ldr	r2, [sp, #124]
	add	lr, sp, #1024
	add	r1, lr, #916
	ldr	r1, [r1, r2, lsl #2]
	bl	__gtsf2
	cmp	r0, #1
	blt	.LBB0_14
	b	.LBB0_10
.LBB0_10:                               @   in Loop: Header=BB0_4 Depth=3
	ldr	r0, [sp, #152]
	ldr	r2, [sp, #124]
	add	lr, sp, #1024
	add	r1, lr, #916
	str	r0, [r1, r2, lsl #2]
	ldr	r0, [sp, #120]
	cmp	r0, #1
	blt	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               @   in Loop: Header=BB0_4 Depth=3
	ldr	r0, [sp, #120]
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB0_13
.LBB0_12:                               @   in Loop: Header=BB0_4 Depth=3
	mov	r0, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB0_13
.LBB0_13:                               @   in Loop: Header=BB0_4 Depth=3
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r0, .LCPI0_13
	ldrb	r0, [r0, r1]
	ldr	r2, [sp, #124]
	add	r1, sp, #180
	strb	r0, [r1, r2]
	b	.LBB0_14
.LBB0_14:                               @   in Loop: Header=BB0_4 Depth=3
	b	.LBB0_15
.LBB0_15:                               @   in Loop: Header=BB0_4 Depth=3
	ldr	r0, [r11, #-24]
	bl	__extendsfdf2
	ldr	r2, .LCPI0_5
	ldr	r3, .LCPI0_7
	bl	__adddf3
	bl	__truncdfsf2
	str	r0, [r11, #-24]
	b	.LBB0_4
.LBB0_16:                               @   in Loop: Header=BB0_2 Depth=2
	b	.LBB0_17
.LBB0_17:                               @   in Loop: Header=BB0_2 Depth=2
	ldr	r0, [r11, #-28]
	bl	__extendsfdf2
	ldr	r2, .LCPI0_11
	ldr	r3, .LCPI0_12
	bl	__adddf3
	bl	__truncdfsf2
	str	r0, [r11, #-28]
	b	.LBB0_2
.LBB0_18:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_3
	bl	printf
	ldr	r1, .LCPI0_4
	mov	r0, #0
	str	r0, [r1]
	b	.LBB0_19
.LBB0_19:                               @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, .LCPI0_4
	ldr	r0, [r0]
	cmp	r0, #1760
	bgt	.LBB0_25
	b	.LBB0_20
.LBB0_20:                               @   in Loop: Header=BB0_19 Depth=2
	ldr	r0, .LCPI0_4
	ldr	r1, [r0]
	ldr	r3, .LCPI0_8
	ldr	r2, .LCPI0_9
	mla	r0, r1, r2, r3
	ror	r0, r0, #4
	ldr	r1, .LCPI0_10
	cmp	r0, r1
	blo	.LBB0_22
	b	.LBB0_21
.LBB0_21:                               @   in Loop: Header=BB0_19 Depth=2
	ldr	r0, .LCPI0_4
	ldr	r1, [r0]
	add	r0, sp, #180
	ldrb	r0, [r0, r1]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB0_23
.LBB0_22:                               @   in Loop: Header=BB0_19 Depth=2
	mov	r0, #10
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB0_23
.LBB0_23:                               @   in Loop: Header=BB0_19 Depth=2
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	bl	putchar
	b	.LBB0_24
.LBB0_24:                               @   in Loop: Header=BB0_19 Depth=2
	ldr	r1, .LCPI0_4
	ldr	r0, [r1]
	add	r0, r0, #1
	str	r0, [r1]
	b	.LBB0_19
.LBB0_25:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-16]
	bl	__extendsfdf2
	ldr	r2, .LCPI0_5
	str	r2, [sp, #4]                    @ 4-byte Spill
	ldr	r3, .LCPI0_6
	bl	__adddf3
	bl	__truncdfsf2
	str	r0, [r11, #-16]
	ldr	r0, [r11, #-20]
	bl	__extendsfdf2
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, .LCPI0_7
	bl	__adddf3
	bl	__truncdfsf2
	str	r0, [r11, #-20]
	b	.LBB0_1
	.p2align	2
@ %bb.26:
.LCPI0_0:
	.long	.L.str
.LCPI0_1:
	.long	1374389535                      @ 0x51eb851f
.LCPI0_2:
	.long	1075388088                      @ 0x40191eb8
.LCPI0_3:
	.long	.L.str.2
.LCPI0_4:
	.long	k
.LCPI0_5:
	.long	1202590843                      @ 0x47ae147b
.LCPI0_6:
	.long	1067743969                      @ 0x3fa47ae1
.LCPI0_7:
	.long	1066695393                      @ 0x3f947ae1
.LCPI0_8:
	.long	429496720                       @ 0x19999990
.LCPI0_9:
	.long	3435973837                      @ 0xcccccccd
.LCPI0_10:
	.long	53687091                        @ 0x3333333
.LCPI0_11:
	.long	515396076                       @ 0x1eb851ec
.LCPI0_12:
	.long	1068624773                      @ 0x3fb1eb85
.LCPI0_13:
	.long	.L.str.1
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cantunwind
	.fnend
                                        @ -- End function
	.type	.L.str,%object                  @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"\033[2J"
	.size	.L.str, 5

	.type	.L.str.1,%object                @ @.str.1
.L.str.1:
	.asciz	".,-~:;=!*#$@"
	.size	.L.str.1, 13

	.type	.L.str.2,%object                @ @.str.2
.L.str.2:
	.asciz	"\033[H"
	.size	.L.str.2, 4

	.type	k,%object                       @ @k
	.bss
	.globl	k
	.p2align	2, 0x0
k:
	.long	0                               @ 0x0
	.size	k, 4

	.ident	"clang version 16.0.6"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym sin
	.addrsig_sym cos
	.addrsig_sym putchar
	.addrsig_sym k
