	.file	"switch_goto.c"
	.text
.Ltext0:
	.file 0 "/mnt/e/CMU-15-213-CSAPP/code" "switch_goto.c"
	.globl	swith_eg_impl
	.type	swith_eg_impl, @function
swith_eg_impl:
.LVL0:
.LFB39:
	.file 1 "switch_goto.c"
	.loc 1 4 48 view -0
	.cfi_startproc
	.loc 1 4 48 is_stmt 0 view .LVU1
	endbr64
	.loc 1 5 3 is_stmt 1 view .LVU2
	.loc 1 11 3 view .LVU3
	.loc 1 11 27 is_stmt 0 view .LVU4
	subq	$100, %rsi
.LVL1:
	.loc 1 12 3 is_stmt 1 view .LVU5
	.loc 1 14 3 view .LVU6
	.loc 1 14 6 is_stmt 0 view .LVU7
	cmpq	$5, %rsi
	ja	.L2
	.loc 1 17 3 is_stmt 1 view .LVU8
	.loc 1 17 11 is_stmt 0 view .LVU9
	leaq	jt.0(%rip), %rcx
	jmp	*(%rcx,%rsi,8)
.L3:
	endbr64
	.loc 1 20 5 is_stmt 1 view .LVU10
	.loc 1 20 9 is_stmt 0 view .LVU11
	leaq	(%rdi,%rdi,2), %rax
	leaq	(%rdi,%rax,4), %rax
.LVL2:
	.loc 1 21 5 is_stmt 1 view .LVU12
	jmp	.L4
.LVL3:
.L5:
	.loc 1 21 5 is_stmt 0 view .LVU13
	endbr64
	.loc 1 24 5 is_stmt 1 view .LVU14
.LVL4:
	.loc 1 25 5 view .LVU15
	jmp	.L4
.LVL5:
.L6:
	.loc 1 25 5 is_stmt 0 view .LVU16
	endbr64
	.loc 1 28 5 is_stmt 1 view .LVU17
	.loc 1 28 9 is_stmt 0 view .LVU18
	leaq	11(%rdi), %rax
.LVL6:
	.loc 1 29 5 is_stmt 1 view .LVU19
	jmp	.L4
.LVL7:
.L7:
	.loc 1 29 5 is_stmt 0 view .LVU20
	endbr64
	.loc 1 32 5 is_stmt 1 view .LVU21
.LVL8:
.L2:
	.loc 1 32 5 is_stmt 0 view .LVU22
	endbr64
	.loc 1 35 5 is_stmt 1 view .LVU23
.LVL9:
	.loc 1 35 9 is_stmt 0 view .LVU24
	movl	$0, %eax
.LVL10:
.L4:
	.loc 1 38 5 is_stmt 1 view .LVU25
	.loc 1 38 11 is_stmt 0 view .LVU26
	movq	%rax, (%rdx)
	.loc 1 39 5 is_stmt 1 view .LVU27
	.loc 1 40 1 is_stmt 0 view .LVU28
	ret
	.cfi_endproc
.LFE39:
	.size	swith_eg_impl, .-swith_eg_impl
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%ld %ld"
.LC1:
	.string	"%ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LVL11:
.LFB40:
	.loc 1 42 34 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 42 34 is_stmt 0 view .LVU30
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 42 34 view .LVU31
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 43 3 is_stmt 1 view .LVU32
	.loc 1 44 3 view .LVU33
	leaq	8(%rsp), %rdx
	movq	%rsp, %rsi
.LVL12:
	.loc 1 44 3 is_stmt 0 view .LVU34
	leaq	.LC0(%rip), %rdi
.LVL13:
	.loc 1 44 3 view .LVU35
	call	__isoc99_scanf@PLT
.LVL14:
	.loc 1 45 3 is_stmt 1 view .LVU36
	leaq	16(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	call	swith_eg_impl
.LVL15:
	.loc 1 46 3 view .LVU37
.LBB4:
.LBI4:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 84 1 view .LVU38
.LBB5:
	.loc 2 86 3 view .LVU39
	.loc 2 86 10 is_stmt 0 view .LVU40
	movq	16(%rsp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL16:
	.loc 2 86 10 view .LVU41
.LBE5:
.LBE4:
	.loc 1 47 3 is_stmt 1 view .LVU42
	.loc 1 48 1 is_stmt 0 view .LVU43
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L11
	movl	$0, %eax
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL17:
	.cfi_endproc
.LFE40:
	.size	main, .-main
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	jt.0, @object
	.size	jt.0, 56
jt.0:
	.quad	.L3
	.quad	.L2
	.quad	.L5
	.quad	.L6
	.quad	.L7
	.quad	.L2
	.quad	.L7
	.text
.Letext0:
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdio2-decl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2f6
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0xc
	.byte	0x8
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.long	0x6d
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0xe
	.long	0x6d
	.uleb128 0x4
	.long	0x74
	.uleb128 0xf
	.long	0x79
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x10
	.long	.LASF25
	.byte	0x4
	.byte	0x34
	.byte	0xc
	.long	0x5a
	.long	0xad
	.uleb128 0x5
	.long	0x5a
	.uleb128 0x5
	.long	0x79
	.uleb128 0x6
	.byte	0
	.uleb128 0x11
	.long	.LASF22
	.byte	0x3
	.value	0x1d2
	.byte	0xc
	.long	.LASF26
	.long	0x5a
	.long	0xc9
	.uleb128 0x5
	.long	0x79
	.uleb128 0x6
	.byte	0
	.uleb128 0x12
	.long	.LASF27
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.long	0x5a
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1da
	.uleb128 0x8
	.long	.LASF12
	.byte	0xe
	.long	0x5a
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x8
	.long	.LASF13
	.byte	0x1a
	.long	0x1da
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x7
	.string	"x"
	.byte	0x2b
	.byte	0x8
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"n"
	.byte	0x2b
	.byte	0xb
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF14
	.byte	0x1
	.byte	0x2b
	.byte	0xe
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.long	0x2d1
	.quad	.LBI4
	.byte	.LVU38
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0x1
	.byte	0x2e
	.byte	0x3
	.long	0x189
	.uleb128 0x15
	.long	0x2e2
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x16
	.quad	.LVL16
	.long	0x91
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL14
	.long	0xad
	.long	0x1b4
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x9
	.quad	.LVL15
	.long	0x1df
	.long	0x1cc
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x17
	.quad	.LVL17
	.long	0x2f0
	.byte	0
	.uleb128 0x4
	.long	0x68
	.uleb128 0x18
	.long	.LASF28
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bc
	.uleb128 0xa
	.string	"x"
	.byte	0x19
	.long	0x61
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0xa
	.string	"n"
	.byte	0x21
	.long	0x61
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x19
	.long	.LASF14
	.byte	0x1
	.byte	0x4
	.byte	0x2a
	.long	0x2bc
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.string	"jt"
	.byte	0x5
	.byte	0x10
	.long	0x2c1
	.uleb128 0x9
	.byte	0x3
	.quad	jt.0
	.uleb128 0x3
	.long	.LASF15
	.byte	0x13
	.quad	.L3
	.uleb128 0x3
	.long	.LASF16
	.byte	0x22
	.quad	.L2
	.uleb128 0x3
	.long	.LASF17
	.byte	0x17
	.quad	.L5
	.uleb128 0x3
	.long	.LASF18
	.byte	0x1b
	.quad	.L6
	.uleb128 0x3
	.long	.LASF19
	.byte	0x1f
	.quad	.L7
	.uleb128 0x1a
	.long	.LASF20
	.byte	0x1
	.byte	0xb
	.byte	0x11
	.long	0x2e
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x1b
	.string	"val"
	.byte	0x1
	.byte	0xc
	.byte	0x8
	.long	0x61
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x3
	.long	.LASF21
	.byte	0x25
	.quad	.L4
	.byte	0
	.uleb128 0x4
	.long	0x61
	.uleb128 0x1c
	.long	0x3c
	.long	0x2d1
	.uleb128 0x1d
	.long	0x2e
	.byte	0x6
	.byte	0
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x2
	.byte	0x54
	.byte	0x1
	.long	0x5a
	.byte	0x3
	.long	0x2f0
	.uleb128 0x1f
	.long	.LASF29
	.byte	0x2
	.byte	0x54
	.byte	0x20
	.long	0x7e
	.uleb128 0x6
	.byte	0
	.uleb128 0x20
	.long	.LASF30
	.long	.LASF30
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 42
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS4:
	.uleb128 0
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LFE40-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LFE40-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU38
	.uleb128 .LVU41
.LLST6:
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU25
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x3
	.byte	0x75
	.sleb128 10
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x4
	.byte	0x74
	.sleb128 100
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU5
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS3:
	.uleb128 .LVU12
	.uleb128 .LVU13
	.uleb128 .LVU19
	.uleb128 .LVU20
	.uleb128 .LVU24
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"__fmt"
.LASF25:
	.string	"__printf_chk"
.LASF26:
	.string	"__isoc99_scanf"
.LASF24:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -Og -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF22:
	.string	"scanf"
.LASF4:
	.string	"unsigned char"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF30:
	.string	"__stack_chk_fail"
.LASF14:
	.string	"dest"
.LASF27:
	.string	"main"
.LASF3:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF12:
	.string	"argc"
.LASF10:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF15:
	.string	"loc_A"
.LASF17:
	.string	"loc_B"
.LASF23:
	.string	"printf"
.LASF19:
	.string	"loc_D"
.LASF7:
	.string	"short int"
.LASF28:
	.string	"swith_eg_impl"
.LASF13:
	.string	"argv"
.LASF18:
	.string	"loc_C"
.LASF8:
	.string	"long int"
.LASF16:
	.string	"loc_def"
.LASF6:
	.string	"signed char"
.LASF20:
	.string	"index"
.LASF21:
	.string	"done"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/mnt/e/CMU-15-213-CSAPP/code"
.LASF0:
	.string	"switch_goto.c"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
