
reverse/com.Chodun.CatGunner/1.1.61-vc257/extracted/split_config.arm64_v8a/lib/arm64-v8a/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section .text:

000000000293e15c <DllCanUnloadNow>:
 2943940:      	stp	x30, x25, [sp, #-0x40]!
 2943944:      	stp	x24, x23, [sp, #0x10]
 2943948:      	stp	x22, x21, [sp, #0x20]
 294394c:      	stp	x20, x19, [sp, #0x30]
 2943950:      	adrp	x21, 0x6171000
 2943954:      	ldr	x8, [x21, #0xe90]
 2943958:      	ldr	w9, [x8, #0x30]
 294395c:      	cmp	w9, #0x1
 2943960:      	b.lt	0x29439d0 <DllCanUnloadNow+0x5874>
 2943964:      	mov	w24, #0x7ffe            // =32766
 2943968:      	mov	x19, x1
 294396c:      	mov	x20, x0
 2943970:      	mov	x22, xzr
 2943974:      	mov	w23, #0x1               // =1
 2943978:      	movk	w24, #0x1346, lsl #16
 294397c:      	mov	w25, #0x40080000        // =1074266112
 2943980:      	ldr	x8, [x8, #0x38]
 2943984:      	ldr	x0, [x8, x22, lsl #3]
 2943988:      	ldrb	w8, [x0, #0xa]
 294398c:      	cmp	w8, #0x1e
 2943990:      	b.hi	0x29439a8 <DllCanUnloadNow+0x584c>
 2943994:      	lsl	w9, w23, w8
 2943998:      	mov	x8, x20
 294399c:      	tst	w9, w24
 29439a0:      	b.eq	0x29439c0 <DllCanUnloadNow+0x5864>
 29439a4:      	blr	x8
 29439a8:      	ldr	x8, [x21, #0xe90]
 29439ac:      	add	x22, x22, #0x1
 29439b0:      	ldrsw	x9, [x8, #0x30]
 29439b4:      	cmp	x22, x9
 29439b8:      	b.lt	0x2943980 <DllCanUnloadNow+0x5824>
 29439bc:      	b	0x29439d0 <DllCanUnloadNow+0x5874>
 29439c0:      	tst	w9, w25
 29439c4:      	b.eq	0x29439a8 <DllCanUnloadNow+0x584c>
 29439c8:      	mov	x8, x19
 29439cc:      	b	0x29439a4 <DllCanUnloadNow+0x5848>
 29439d0:      	ldp	x20, x19, [sp, #0x30]
 29439d4:      	ldp	x22, x21, [sp, #0x20]
 29439d8:      	ldp	x24, x23, [sp, #0x10]
 29439dc:      	ldp	x30, x25, [sp], #0x40
 29439e0:      	ret
 29439e4:      	ldrsw	x8, [x0]
 29439e8:      	cmn	w8, #0x1
 29439ec:      	b.eq	0x2943a1c <DllCanUnloadNow+0x58c0>
 29439f0:      	adrp	x9, 0x6171000
 29439f4:      	adrp	x10, 0x6171000
 29439f8:      	mov	w11, #0x1bec            // =7148
 29439fc:      	ldr	x9, [x9, #0xeb0]
 2943a00:      	ldr	x10, [x10, #0xea0]
 2943a04:      	ldr	w9, [x9, #0x24]
 2943a08:      	add	w9, w9, w11
 2943a0c:      	mov	w11, #0x58              // =88
 2943a10:      	add	x9, x10, w9, sxtw
 2943a14:      	smaddl	x8, w8, w11, x9
 2943a18:      	b	0x2943a20 <DllCanUnloadNow+0x58c4>
 2943a1c:      	mov	x8, xzr
 2943a20:      	str	x8, [x0]
 2943a24:      	ret
 2943a28:      	ldrsw	x8, [x0]
 2943a2c:      	cmn	w8, #0x1
 2943a30:      	b.eq	0x2943a5c <DllCanUnloadNow+0x5900>
 2943a34:      	adrp	x9, 0x6171000
 2943a38:      	adrp	x10, 0x6171000
 2943a3c:      	mov	w11, #0x1848            // =6216
 2943a40:      	ldr	x9, [x9, #0xeb0]
 2943a44:      	ldr	x10, [x10, #0xea0]
 2943a48:      	ldr	w9, [x9, #0x2c]
 2943a4c:      	add	w9, w9, w11
 2943a50:      	add	x9, x10, w9, sxtw
 2943a54:      	add	x8, x9, x8, lsl #4
 2943a58:      	b	0x2943a60 <DllCanUnloadNow+0x5904>
 2943a5c:      	mov	x8, xzr
 2943a60:      	str	x8, [x0]
 2943a64:      	ret
 2943a68:      	str	x30, [sp, #-0x30]!
 2943a6c:      	stp	x22, x21, [sp, #0x10]
 2943a70:      	stp	x20, x19, [sp, #0x20]
 2943a74:      	mov	x19, x0
 2943a78:      	mov	w21, w1
 2943a7c:      	mov	x0, xzr
 2943a80:      	mov	x1, x19
 2943a84:      	bl	0x29e47c0 <__emutls_get_address+0xd70>
 2943a88:      	mov	x8, x0
 2943a8c:      	dmb	ish
 2943a90:      	tbnz	w8, #0x0, 0x2943a9c <DllCanUnloadNow+0x5940>
 2943a94:      	mov	x0, x8
 2943a98:      	b	0x2943c14 <DllCanUnloadNow+0x5ab8>
 2943a9c:      	ubfx	x9, x8, #29, #3
 2943aa0:      	ubfx	w20, w8, #1, #28
 2943aa4:      	mov	x0, xzr
 2943aa8:      	cmp	w9, #0x3
 2943aac:      	b.le	0x2943b38 <DllCanUnloadNow+0x59dc>
 2943ab0:      	cmp	w9, #0x5
 2943ab4:      	b.gt	0x2943b54 <DllCanUnloadNow+0x59f8>
 2943ab8:      	cmp	w9, #0x4
 2943abc:      	b.eq	0x2943bd0 <DllCanUnloadNow+0x5a74>
 2943ac0:      	cmp	w9, #0x5
 2943ac4:      	b.ne	0x2943c14 <DllCanUnloadNow+0x5ab8>
 2943ac8:      	adrp	x22, 0x6171000
 2943acc:      	ldr	x8, [x22, #0xf10]
 2943ad0:      	ldr	x0, [x8, w20, uxtw #3]
 2943ad4:      	cbnz	x0, 0x2943c0c <DllCanUnloadNow+0x5ab0>
 2943ad8:      	adrp	x8, 0x6171000
 2943adc:      	adrp	x9, 0x6171000
 2943ae0:      	ldr	x8, [x8, #0xeb8]
 2943ae4:      	ldr	x9, [x9, #0xed8]
 2943ae8:      	add	x8, x8, x20, lsl #3
 2943aec:      	ldp	w1, w10, [x8]
 2943af0:      	sxtw	x10, w10
 2943af4:      	add	x0, x9, x10
 2943af8:      	bl	0x292f754 <JNI_OnUnload+0xf038>
 2943afc:      	ldr	x8, [x22, #0xf10]
 2943b00:      	mov	x21, x0
 2943b04:      	mov	x0, xzr
 2943b08:      	mov	x1, x21
 2943b0c:      	add	x2, x8, x20, lsl #3
 2943b10:      	bl	0x29e4540 <__emutls_get_address+0xaf0>
 2943b14:      	cmp	x0, #0x0
 2943b18:      	dmb	ish
 2943b1c:      	b.ne	0x2943c08 <DllCanUnloadNow+0x5aac>
 2943b20:      	ldr	x8, [x22, #0xf10]
 2943b24:      	add	x0, x8, x20, lsl #3
 2943b28:      	bl	0x28f6f64 <.text+0x3cd284>
 2943b2c:      	mov	x0, x21
 2943b30:      	cbnz	x0, 0x2943c0c <DllCanUnloadNow+0x5ab0>
 2943b34:      	b	0x2943c14 <DllCanUnloadNow+0x5ab8>
 2943b38:      	cmp	w9, #0x1
 2943b3c:      	b.eq	0x2943bbc <DllCanUnloadNow+0x5a60>
 2943b40:      	cmp	w9, #0x2
 2943b44:      	b.eq	0x2943c24 <DllCanUnloadNow+0x5ac8>
 2943b48:      	cmp	w9, #0x3
 2943b4c:      	b.eq	0x2943bac <DllCanUnloadNow+0x5a50>
 2943b50:      	b	0x2943c14 <DllCanUnloadNow+0x5ab8>
 2943b54:      	cmp	w9, #0x6
 2943b58:      	b.eq	0x2943bac <DllCanUnloadNow+0x5a50>
 2943b5c:      	cmp	w9, #0x7
 2943b60:      	b.ne	0x2943c14 <DllCanUnloadNow+0x5ab8>
 2943b64:      	adrp	x8, 0x6171000
 2943b68:      	adrp	x9, 0x6171000
 2943b6c:      	mov	w1, #0x1                // =1
 2943b70:      	ldr	x8, [x8, #0xeb0]
 2943b74:      	ldr	x9, [x9, #0xea0]
 2943b78:      	ldr	w8, [x8, #0x194]
 2943b7c:      	sub	w8, w8, #0xc08
 2943b80:      	add	x8, x9, w8, sxtw
 2943b84:      	add	x20, x8, w20, uxtw #3
 2943b88:      	ldr	w0, [x20]
 2943b8c:      	bl	0x2943c3c <DllCanUnloadNow+0x5ae0>
 2943b90:      	ldrsw	x8, [x20, #0x4]
 2943b94:      	ldr	x9, [x0, #0x80]
 2943b98:      	add	x1, sp, #0x8
 2943b9c:      	add	x0, x9, x8, lsl #5
 2943ba0:      	bl	0x2943d50 <DllCanUnloadNow+0x5bf4>
 2943ba4:      	cbnz	x0, 0x2943c0c <DllCanUnloadNow+0x5ab0>
 2943ba8:      	b	0x2943c14 <DllCanUnloadNow+0x5ab8>
 2943bac:      	mov	w0, w8
 2943bb0:      	bl	0x2943cf0 <DllCanUnloadNow+0x5b94>
 2943bb4:      	cbnz	x0, 0x2943c0c <DllCanUnloadNow+0x5ab0>
 2943bb8:      	b	0x2943c14 <DllCanUnloadNow+0x5ab8>
 2943bbc:      	and	w1, w21, #0x1
 2943bc0:      	mov	w0, w20
 2943bc4:      	bl	0x2943c3c <DllCanUnloadNow+0x5ae0>
 2943bc8:      	cbnz	x0, 0x2943c0c <DllCanUnloadNow+0x5ab0>
 2943bcc:      	b	0x2943c14 <DllCanUnloadNow+0x5ab8>
 2943bd0:      	adrp	x8, 0x6171000
 2943bd4:      	adrp	x9, 0x6171000
 2943bd8:      	mov	w1, #0x1                // =1
 2943bdc:      	ldr	x8, [x8, #0xeb0]
 2943be0:      	ldr	x9, [x9, #0xea0]
 2943be4:      	ldr	w8, [x8, #0x194]
 2943be8:      	sub	w8, w8, #0xc08
 2943bec:      	add	x8, x9, w8, sxtw
 2943bf0:      	add	x20, x8, w20, uxtw #3
 2943bf4:      	ldr	w0, [x20]
 2943bf8:      	bl	0x2943c3c <DllCanUnloadNow+0x5ae0>
 2943bfc:      	ldrsw	x8, [x20, #0x4]
 2943c00:      	ldr	x9, [x0, #0x80]
 2943c04:      	add	x0, x9, x8, lsl #5
 2943c08:      	cbz	x0, 0x2943c14 <DllCanUnloadNow+0x5ab8>
 2943c0c:      	dmb	ish
 2943c10:      	str	x0, [x19]
 2943c14:      	ldp	x20, x19, [sp, #0x20]
 2943c18:      	ldp	x22, x21, [sp, #0x10]
 2943c1c:      	ldr	x30, [sp], #0x30
 2943c20:      	ret
 2943c24:      	adrp	x8, 0x6171000
 2943c28:      	ldr	x8, [x8, #0xe90]
 2943c2c:      	ldr	x8, [x8, #0x38]
 2943c30:      	ldr	x0, [x8, w20, uxtw #3]
 2943c34:      	cbnz	x0, 0x2943c0c <DllCanUnloadNow+0x5ab0>
 2943c38:      	b	0x2943c14 <DllCanUnloadNow+0x5ab8>
 2943c3c:      	str	x30, [sp, #-0x30]!
 2943c40:      	stp	x22, x21, [sp, #0x10]
 2943c44:      	stp	x20, x19, [sp, #0x20]
 2943c48:      	cmn	w0, #0x1
 2943c4c:      	b.eq	0x2943cc4 <DllCanUnloadNow+0x5b68>
 2943c50:      	adrp	x8, 0x6171000
 2943c54:      	mov	w19, w0
 2943c58:      	ldr	x22, [x8, #0xf00]
 2943c5c:      	ldr	x21, [x22, w0, sxtw #3]
 2943c60:      	dmb	ishld
 2943c64:      	cbnz	x21, 0x2943cc8 <DllCanUnloadNow+0x5b6c>
 2943c68:      	mov	w20, w1
 2943c6c:      	adrp	x1, 0x5dea000
 2943c70:      	add	x0, sp, #0x8
 2943c74:      	ldr	x1, [x1, #0xa98]
 2943c78:      	bl	0x28f7040 <.text+0x3cd360>
 2943c7c:      	ldr	x21, [x22, w19, sxtw #3]
 2943c80:      	cbnz	x21, 0x2943cb8 <DllCanUnloadNow+0x5b5c>
 2943c84:      	adrp	x8, 0x6171000
 2943c88:      	ldr	x8, [x8, #0xe90]
 2943c8c:      	ldr	x8, [x8, #0x38]
 2943c90:      	ldr	x0, [x8, w19, sxtw #3]
 2943c94:      	and	w1, w20, #0x1
 2943c98:      	bl	0x2956e9c <DllCanUnloadNow+0x18d40>
 2943c9c:      	mov	x21, x0
 2943ca0:      	cbz	x0, 0x2943cb0 <DllCanUnloadNow+0x5b54>
 2943ca4:      	and	w1, w20, #0x1
 2943ca8:      	mov	x0, x21
 2943cac:      	bl	0x292ea24 <JNI_OnUnload+0xe308>
 2943cb0:      	dmb	ish
 2943cb4:      	str	x21, [x22, w19, sxtw #3]
 2943cb8:      	add	x0, sp, #0x8
 2943cbc:      	bl	0x28f70cc <.text+0x3cd3ec>
 2943cc0:      	b	0x2943cc8 <DllCanUnloadNow+0x5b6c>
 2943cc4:      	mov	x21, xzr
 2943cc8:      	mov	x0, x21
 2943ccc:      	ldp	x20, x19, [sp, #0x20]
 2943cd0:      	ldp	x22, x21, [sp, #0x10]
 2943cd4:      	ldr	x30, [sp], #0x30
 2943cd8:      	ret
 2943cdc:      	mov	x19, x0
 2943ce0:      	add	x0, sp, #0x8
 2943ce4:      	bl	0x28f70cc <.text+0x3cd3ec>
 2943ce8:      	mov	x0, x19
 2943cec:      	bl	0x29e4a1c <__emutls_get_address+0xfcc>
 2943cf0:      	lsr	w8, w0, #29
 2943cf4:      	ubfx	w0, w0, #1, #28
 2943cf8:      	cbz	w8, 0x2943d34 <DllCanUnloadNow+0x5bd8>
 2943cfc:      	cmp	w8, #0x3
 2943d00:      	b.eq	0x2943d30 <DllCanUnloadNow+0x5bd4>
 2943d04:      	cmp	w8, #0x6
 2943d08:      	b.ne	0x2943d48 <DllCanUnloadNow+0x5bec>
 2943d0c:      	sub	sp, sp, #0x30
 2943d10:      	str	x30, [sp, #0x20]
 2943d14:      	add	x8, sp, #0x8
 2943d18:      	bl	0x2945120 <DllCanUnloadNow+0x6fc4>
 2943d1c:      	add	x0, sp, #0x8
 2943d20:      	bl	0x2913ff4 <IdawzTWZaqv+0x168d4>
 2943d24:      	ldr	x30, [sp, #0x20]
 2943d28:      	add	sp, sp, #0x30
 2943d2c:      	ret
 2943d30:      	b	0x2943234 <DllCanUnloadNow+0x50d8>
 2943d34:      	cmp	w0, #0x1
 2943d38:      	adrp	x8, 0x5d51000 <_ZTCNSt6__ndk113basic_fstreamIcNS_11char_traitsIcEEEE16_NS_13basic_ostreamIcS2_EE+0x2a0>
 2943d3c:      	add	x8, x8, #0x2d8
 2943d40:      	csel	x0, x8, xzr, eq
 2943d44:      	ret
 2943d48:      	mov	x0, xzr
 2943d4c:      	ret
 2943d50:      	sub	sp, sp, #0x40
 2943d54:      	stp	x30, x23, [sp, #0x10]
 2943d58:      	stp	x22, x21, [sp, #0x20]
 2943d5c:      	stp	x20, x19, [sp, #0x30]
 2943d60:      	ldr	x21, [x0, #0x10]
 2943d64:      	mov	x20, x0
 2943d68:      	mov	x19, x1
 2943d6c:      	ldr	x23, [x21, #0x80]
 2943d70:      	add	x0, x21, #0x20
 2943d74:      	bl	0x2950ba8 <DllCanUnloadNow+0x12a4c>
 2943d78:      	tbz	w0, #0x0, 0x2943d88 <DllCanUnloadNow+0x5c2c>
 2943d7c:      	ldr	x0, [x21, #0x60]
 2943d80:      	bl	0x294d0b4 <DllCanUnloadNow+0xef58>
 2943d84:      	mov	x21, x0
 2943d88:      	adrp	x22, 0x6171000
 2943d8c:      	mov	x10, #-0x5555555555555556 // =-6148914691236517206
 2943d90:      	ldr	x11, [x21, #0x68]
 2943d94:      	ldr	x8, [x22, #0xeb0]
 2943d98:      	movk	x10, #0xaaab
 2943d9c:      	mov	w13, #0x14dc            // =5340
 2943da0:      	ldr	w11, [x11, #0x20]
 2943da4:      	nop
 2943da8:      	adr	x4, 0x29488f0 <DllCanUnloadNow+0xa794>
 2943dac:      	ldrsw	x9, [x8]
 2943db0:      	ldr	w8, [x8, #0x50]
 2943db4:      	add	x0, sp, #0x4
 2943db8:      	mov	w3, #0xc                // =12
 2943dbc:      	umulh	x9, x9, x10
 2943dc0:      	sub	x10, x20, x23
 2943dc4:      	adrp	x20, 0x6171000
 2943dc8:      	ldr	x12, [x20, #0xea0]
 2943dcc:      	lsr	x10, x10, #5
 2943dd0:      	add	w8, w8, w13
 2943dd4:      	add	x1, x12, w8, sxtw
 2943dd8:      	add	w10, w11, w10
 2943ddc:      	str	w10, [sp, #0x4]
 2943de0:      	lsr	x2, x9, #3
 2943de4:      	bl	0x59fb7c0 <bsearch@plt>
 2943de8:      	cbz	x0, 0x2943e44 <DllCanUnloadNow+0x5ce8>
 2943dec:      	ldrsw	x8, [x0, #0x4]
 2943df0:      	cmn	w8, #0x1
 2943df4:      	b.eq	0x2943e0c <DllCanUnloadNow+0x5cb0>
 2943df8:      	adrp	x9, 0x6171000
 2943dfc:      	ldr	x9, [x9, #0xe90]
 2943e00:      	ldr	x9, [x9, #0x38]
 2943e04:      	ldr	x9, [x9, x8, lsl #3]
 2943e08:      	b	0x2943e10 <DllCanUnloadNow+0x5cb4>
 2943e0c:      	mov	x9, xzr
 2943e10:      	ldr	w8, [x0, #0x8]
 2943e14:      	str	x9, [x19]
 2943e18:      	cmn	w8, #0x1
 2943e1c:      	b.eq	0x2943e40 <DllCanUnloadNow+0x5ce4>
 2943e20:      	ldr	x9, [x22, #0xeb0]
 2943e24:      	ldr	x10, [x20, #0xea0]
 2943e28:      	mov	w11, #-0x10e0           // =-4320
 2943e2c:      	ldr	w9, [x9, #0x60]
 2943e30:      	add	w9, w9, w11
 2943e34:      	add	x9, x10, w9, sxtw
 2943e38:      	add	x0, x9, x8
 2943e3c:      	b	0x2943e44 <DllCanUnloadNow+0x5ce8>
 2943e40:      	mov	x0, xzr
 2943e44:      	ldp	x20, x19, [sp, #0x30]
 2943e48:      	ldp	x22, x21, [sp, #0x20]
 2943e4c:      	ldp	x30, x23, [sp, #0x10]
 2943e50:      	add	sp, sp, #0x40
 2943e54:      	ret
 2943e58:      	str	x30, [sp, #-0x10]!
 2943e5c:      	adrp	x8, 0x6171000
 2943e60:      	mov	x1, xzr
 2943e64:      	ldr	x8, [x8, #0xeb0]
 2943e68:      	ldrsw	x8, [x8, #0x1c]
 2943e6c:      	and	x0, x8, #0xfffffffffffffff8
 2943e70:      	bl	0x28f7224 <.text+0x3cd544>
 2943e74:      	adrp	x8, 0x6171000
 2943e78:      	str	x0, [x8, #0xf10]
 2943e7c:      	ldr	x30, [sp], #0x10
 2943e80:      	ret
 2943e84:      	sub	sp, sp, #0xd0
 2943e88:      	str	x30, [sp, #0x70]
 2943e8c:      	stp	x28, x27, [sp, #0x80]
 2943e90:      	stp	x26, x25, [sp, #0x90]
 2943e94:      	stp	x24, x23, [sp, #0xa0]
 2943e98:      	stp	x22, x21, [sp, #0xb0]
 2943e9c:      	stp	x20, x19, [sp, #0xc0]
 2943ea0:      	adrp	x22, 0x6171000
 2943ea4:      	mov	x19, x1
 2943ea8:      	adrp	x24, 0x6171000
 2943eac:      	ldr	x8, [x22, #0xeb0]
 2943eb0:      	ldr	x21, [x24, #0xea0]
 2943eb4:      	mov	x20, x0
 2943eb8:      	ldr	w26, [x8, #0x14c]
 2943ebc:      	ldr	w25, [x8, #0x40]
 2943ec0:      	asr	w23, w26, #3
 2943ec4:      	cmp	w23, #0x0
 2943ec8:      	cinc	w9, w23, lt
 2943ecc:      	asr	w9, w9, #1
 2943ed0:      	add	w9, w9, #0x1
 2943ed4:      	sxtw	x1, w9
 2943ed8:      	bl	0x2948cf4 <DllCanUnloadNow+0xab98>
 2943edc:      	sbfx	x1, x26, #3, #29
 2943ee0:      	mov	x0, x19
 2943ee4:      	bl	0x2949834 <DllCanUnloadNow+0xb6d8>
 2943ee8:      	cmp	w23, #0x1
 2943eec:      	b.lt	0x2943fb8 <DllCanUnloadNow+0x5e5c>
 2943ef0:      	add	w8, w25, #0xe54
 2943ef4:      	mov	w26, #-0x10d8           // =-4312
 2943ef8:      	adrp	x27, 0x6171000
 2943efc:      	sxtw	x8, w8
 2943f00:      	add	x8, x8, x21
 2943f04:      	add	x25, x8, #0x4
 2943f08:      	ldrsw	x8, [x25]
 2943f0c:      	cmn	w8, #0x1
 2943f10:      	b.eq	0x2943f24 <DllCanUnloadNow+0x5dc8>
 2943f14:      	ldr	x9, [x27, #0xe90]
 2943f18:      	ldr	x9, [x9, #0x38]
 2943f1c:      	ldr	x0, [x9, x8, lsl #3]
 2943f20:      	b	0x2943f28 <DllCanUnloadNow+0x5dcc>
 2943f24:      	mov	x0, xzr
 2943f28:      	ldr	x8, [x22, #0xeb0]
 2943f2c:      	ldr	x9, [x24, #0xea0]
 2943f30:      	mov	w1, #0x1                // =1
 2943f34:      	ldursw	x10, [x25, #-0x4]
 2943f38:      	ldr	w8, [x8, #0xd0]
 2943f3c:      	add	w8, w8, w26
 2943f40:      	add	x8, x9, w8, sxtw
 2943f44:      	add	x28, x8, x10
 2943f48:      	bl	0x2956e9c <DllCanUnloadNow+0x18d40>
 2943f4c:      	ldr	x8, [x0, #0x60]
 2943f50:      	mov	x21, x0
 2943f54:      	cbz	x8, 0x2943f64 <DllCanUnloadNow+0x5e08>
 2943f58:      	add	x8, x21, #0x135
 2943f5c:      	ldrh	w8, [x8]
 2943f60:      	tbnz	w8, #0x3, 0x2943f88 <DllCanUnloadNow+0x5e2c>
 2943f64:      	mov	x0, x20
 2943f68:      	mov	w1, #0x1                // =1
 2943f6c:      	str	wzr, [sp, #0x58]
 2943f70:      	stp	x28, x21, [sp, #0x60]
 2943f74:      	bl	0x2948e0c <DllCanUnloadNow+0xacb0>
 2943f78:      	add	x8, sp, #0x8
 2943f7c:      	add	x1, sp, #0x58
 2943f80:      	mov	x0, x20
 2943f84:      	bl	0x294a208 <DllCanUnloadNow+0xc0ac>
 2943f88:      	mov	x0, x19
 2943f8c:      	mov	w1, #0x1                // =1
 2943f90:      	str	wzr, [sp, #0x58]
 2943f94:      	stp	x21, x28, [sp, #0x60]
 2943f98:      	add	x25, x25, #0x8
 2943f9c:      	bl	0x294994c <DllCanUnloadNow+0xb7f0>
 2943fa0:      	add	x8, sp, #0x8
 2943fa4:      	add	x1, sp, #0x58
 2943fa8:      	mov	x0, x19
 2943fac:      	bl	0x28f87f4 <.text+0x3ceb14>
 2943fb0:      	subs	x23, x23, #0x1
 2943fb4:      	b.ne	0x2943f08 <DllCanUnloadNow+0x5dac>
 2943fb8:      	ldp	x20, x19, [sp, #0xc0]
 2943fbc:      	ldr	x30, [sp, #0x70]
 2943fc0:      	ldp	x22, x21, [sp, #0xb0]
 2943fc4:      	ldp	x24, x23, [sp, #0xa0]
 2943fc8:      	ldp	x26, x25, [sp, #0x90]
 2943fcc:      	ldp	x28, x27, [sp, #0x80]
 2943fd0:      	add	sp, sp, #0xd0
 2943fd4:      	ret
 2943fd8:      	sub	sp, sp, #0xc0
 2943fdc:      	stp	x30, x27, [sp, #0x70]
 2943fe0:      	stp	x26, x25, [sp, #0x80]
 2943fe4:      	stp	x24, x23, [sp, #0x90]
 2943fe8:      	stp	x22, x21, [sp, #0xa0]
 2943fec:      	stp	x20, x19, [sp, #0xb0]
 2943ff0:      	adrp	x20, 0x6171000
 2943ff4:      	mov	x19, x0
 2943ff8:      	ldr	x8, [x20, #0xe98]
 2943ffc:      	ldr	w1, [x8, #0x38]
 2944000:      	bl	0x294a634 <DllCanUnloadNow+0xc4d8>
 2944004:      	ldr	x8, [x20, #0xe98]
 2944008:      	ldr	w8, [x8, #0x38]
 294400c:      	cbz	w8, 0x29440dc <DllCanUnloadNow+0x5f80>
 2944010:      	mov	x21, xzr
 2944014:      	adrp	x22, 0x6171000
 2944018:      	adrp	x23, 0x6171000
 294401c:      	adrp	x24, 0x6171000
 2944020:      	ldr	x8, [x23, #0xeb0]
 2944024:      	ldr	x9, [x22, #0xea0]
 2944028:      	ldr	w8, [x8, #0x8c]
 294402c:      	add	w8, w8, #0x2cc
 2944030:      	add	x26, x9, w8, sxtw
 2944034:      	add	x27, x26, x21, lsl #3
 2944038:      	ldrsw	x25, [x27, #0x4]
 294403c:      	lsl	x0, x25, #3
 2944040:      	bl	0x29408f8 <DllCanUnloadNow+0x279c>
 2944044:      	ldr	w8, [x27, #0x4]
 2944048:      	cmp	w8, #0x1
 294404c:      	b.lt	0x29440a0 <DllCanUnloadNow+0x5f44>
 2944050:      	ldr	x9, [x23, #0xeb0]
 2944054:      	lsl	x10, x21, #3
 2944058:      	ldr	x11, [x22, #0xea0]
 294405c:      	ldr	w9, [x9, #0x18c]
 2944060:      	sub	w12, w9, #0x15c
 2944064:      	ldr	w9, [x26, x10]
 2944068:      	add	x10, x11, w12, sxtw
 294406c:      	ldr	x11, [x24, #0xe90]
 2944070:      	mov	x12, x0
 2944074:      	ldrsw	x13, [x10, w9, sxtw #2]
 2944078:      	cmn	w13, #0x1
 294407c:      	b.eq	0x294408c <DllCanUnloadNow+0x5f30>
 2944080:      	ldr	x14, [x11, #0x38]
 2944084:      	ldr	x13, [x14, x13, lsl #3]
 2944088:      	b	0x2944090 <DllCanUnloadNow+0x5f34>
 294408c:      	mov	x13, xzr
 2944090:      	subs	x8, x8, #0x1
 2944094:      	add	w9, w9, #0x1
 2944098:      	str	x13, [x12], #0x8
 294409c:      	b.ne	0x2944074 <DllCanUnloadNow+0x5f18>
 29440a0:      	stp	x25, x0, [sp, #0x58]
 29440a4:      	mov	x0, x19
 29440a8:      	mov	w1, #0x1                // =1
 29440ac:      	str	wzr, [sp, #0x50]
 29440b0:      	str	w21, [sp, #0x68]
 29440b4:      	bl	0x294a74c <DllCanUnloadNow+0xc5f0>
 29440b8:      	mov	x8, sp
 29440bc:      	add	x1, sp, #0x50
 29440c0:      	mov	x0, x19
 29440c4:      	bl	0x294b47c <DllCanUnloadNow+0xd320>
 29440c8:      	ldr	x8, [x20, #0xe98]
 29440cc:      	add	x21, x21, #0x1
 29440d0:      	ldr	w8, [x8, #0x38]
 29440d4:      	cmp	x21, x8
 29440d8:      	b.lo	0x2944020 <DllCanUnloadNow+0x5ec4>
 29440dc:      	ldp	x20, x19, [sp, #0xb0]
 29440e0:      	ldp	x22, x21, [sp, #0xa0]
 29440e4:      	ldp	x24, x23, [sp, #0x90]
 29440e8:      	ldp	x26, x25, [sp, #0x80]
 29440ec:      	ldp	x30, x27, [sp, #0x70]
 29440f0:      	add	sp, sp, #0xc0
 29440f4:      	ret
 29440f8:      	sub	sp, sp, #0xb0
 29440fc:      	str	x30, [sp, #0x70]
 2944100:      	stp	x24, x23, [sp, #0x80]
 2944104:      	stp	x22, x21, [sp, #0x90]
 2944108:      	stp	x20, x19, [sp, #0xa0]
 294410c:      	adrp	x20, 0x6171000
 2944110:      	mov	x19, x0
 2944114:      	ldr	x8, [x20, #0xe90]
 2944118:      	ldrsw	x1, [x8, #0x20]
 294411c:      	bl	0x294b88c <DllCanUnloadNow+0xd730>
 2944120:      	ldr	x8, [x20, #0xe90]
 2944124:      	ldr	w9, [x8, #0x20]
 2944128:      	cmp	w9, #0x1
 294412c:      	b.lt	0x294419c <DllCanUnloadNow+0x6040>
 2944130:      	mov	x21, xzr
 2944134:      	mov	x22, xzr
 2944138:      	mov	w23, #0xc               // =12
 294413c:      	ldr	x9, [x8, #0x28]
 2944140:      	ldr	x8, [x8, #0x48]
 2944144:      	add	x0, sp, #0x78
 2944148:      	add	x24, x9, x21
 294414c:      	ldrsw	x9, [x24], #0x4
 2944150:      	nop
 2944154:      	smaddl	x1, w9, w23, x8
 2944158:      	bl	0x2910a78 <IdawzTWZaqv+0x13358>
 294415c:      	ldr	x8, [sp, #0x78]
 2944160:      	mov	x0, x19
 2944164:      	mov	w1, #0x1                // =1
 2944168:      	str	wzr, [sp, #0x58]
 294416c:      	stp	x8, x24, [sp, #0x60]
 2944170:      	bl	0x294b9a4 <DllCanUnloadNow+0xd848>
 2944174:      	add	x8, sp, #0x8
 2944178:      	add	x1, sp, #0x58
 294417c:      	mov	x0, x19
 2944180:      	bl	0x294c378 <DllCanUnloadNow+0xe21c>
 2944184:      	ldr	x8, [x20, #0xe90]
 2944188:      	add	x22, x22, #0x1
 294418c:      	add	x21, x21, #0x10
 2944190:      	ldrsw	x9, [x8, #0x20]
 2944194:      	cmp	x22, x9
 2944198:      	b.lt	0x294413c <DllCanUnloadNow+0x5fe0>
 294419c:      	ldp	x20, x19, [sp, #0xa0]
 29441a0:      	ldr	x30, [sp, #0x70]
 29441a4:      	ldp	x22, x21, [sp, #0x90]
 29441a8:      	ldp	x24, x23, [sp, #0x80]
 29441ac:      	add	sp, sp, #0xb0
 29441b0:      	ret
 29441b4:      	adrp	x8, 0x6171000
 29441b8:      	adrp	x9, 0x6171000
 29441bc:      	mov	w10, #0x138c            // =5004
 29441c0:      	ldr	x8, [x8, #0xeb0]
 29441c4:      	ldr	x9, [x9, #0xea0]
 29441c8:      	mov	w11, #0x28              // =40
 29441cc:      	adrp	x12, 0x6171000
 29441d0:      	ldr	w8, [x8, #0x8]
 29441d4:      	add	w8, w8, w10
 29441d8:      	add	x8, x9, w8, sxtw
 29441dc:      	adrp	x9, 0x6171000
 29441e0:      	smaddl	x8, w1, w11, x8
 29441e4:      	ldr	x9, [x9, #0xee0]
 29441e8:      	ldp	w10, w11, [x8]
 29441ec:      	sxtw	x10, w10
 29441f0:      	str	w11, [x2]
 29441f4:      	add	x9, x9, x10
 29441f8:      	mov	w10, #0x18              // =24
 29441fc:      	ldr	w11, [x8, #0x1c]
 2944200:      	str	x9, [x0]
 2944204:      	ldp	w13, w9, [x8, #0x8]
 2944208:      	ldp	w15, w14, [x8, #0x10]
 294420c:      	ldr	x12, [x12, #0xef8]
 2944210:      	str	w11, [x0, #0x40]
 2944214:      	str	w9, [x0, #0x18]
 2944218:      	nop
 294421c:      	smaddl	x9, w1, w10, x12
 2944220:      	ldr	w10, [x8, #0x24]
 2944224:      	ldr	w12, [x8, #0x18]
 2944228:      	ldr	w8, [x8, #0x20]
 294422c:      	str	w14, [x0, #0x1c]
 2944230:      	str	w10, [x0, #0x20]
 2944234:      	stp	w8, w12, [x9, #0x8]
 2944238:      	stp	w13, w15, [x9]
 294423c:      	str	x0, [x9, #0x10]
 2944240:      	str	x9, [x0, #0x28]
 2944244:      	ret
 2944248:      	adrp	x8, 0x6171000
 294424c:      	sxtw	x9, w1
 2944250:      	ldr	x8, [x8, #0xed0]
 2944254:      	add	x8, x8, x9, lsl #6
 2944258:      	ldur	d0, [x8, #0x4]
 294425c:      	str	d0, [x0, #0x8]
 2944260:      	ldp	w9, w10, [x8, #0xc]
 2944264:      	ldpsw	x11, x12, [x8, #0x14]
 2944268:      	sxtw	x10, w10
 294426c:      	str	w9, [x0, #0x10]
 2944270:      	adrp	x9, 0x6171000
 2944274:      	ldur	q0, [x8, #0x1c]
 2944278:      	ldr	x9, [x9, #0xee0]
 294427c:      	str	q0, [x0, #0x30]
 2944280:      	add	x10, x9, x10
 2944284:      	add	x11, x9, x11
 2944288:      	ldur	d0, [x8, #0x2c]
 294428c:      	stp	x10, x11, [x0, #0x18]
 2944290:      	add	x9, x9, x12
 2944294:      	str	x9, [x0, #0x28]
 2944298:      	str	d0, [x0, #0x40]
 294429c:      	ldr	w10, [x8, #0x34]
 29442a0:      	str	w10, [x0, #0x48]
 29442a4:      	ldr	x9, [x8, #0x38]
 29442a8:      	stur	x9, [x0, #0x4c]
 29442ac:      	ldr	w8, [x8]
 29442b0:      	str	w8, [x2]
 29442b4:      	ret
 29442b8:      	ldr	x8, [x0, #0x28]
 29442bc:      	cbz	x8, 0x29442d0 <DllCanUnloadNow+0x6174>
 29442c0:      	ldr	w0, [x8, #0xc]
 29442c4:      	cmn	w0, #0x1
 29442c8:      	b.eq	0x29442d0 <DllCanUnloadNow+0x6174>
 29442cc:      	b	0x2943234 <DllCanUnloadNow+0x50d8>
 29442d0:      	mov	x0, xzr
 29442d4:      	ret
 29442d8:      	ldr	x8, [x0, #0x28]
 29442dc:      	ldr	w8, [x8]
 29442e0:      	add	w8, w8, w1
 29442e4:      	cmn	w8, #0x1
 29442e8:      	b.eq	0x2944318 <DllCanUnloadNow+0x61bc>
 29442ec:      	adrp	x9, 0x6171000
 29442f0:      	adrp	x10, 0x6171000
 29442f4:      	mov	w11, #0x1bec            // =7148
 29442f8:      	ldr	x9, [x9, #0xeb0]
 29442fc:      	ldr	x10, [x10, #0xea0]
 2944300:      	ldr	w9, [x9, #0x24]
 2944304:      	add	w9, w9, w11
 2944308:      	mov	w11, #0x58              // =88
 294430c:      	add	x9, x10, w9, sxtw
 2944310:      	smaddl	x0, w8, w11, x9
 2944314:      	ret
 2944318:      	mov	x0, xzr
 294431c:      	ret
 2944320:      	cmn	w0, #0x1
 2944324:      	b.eq	0x2944354 <DllCanUnloadNow+0x61f8>
 2944328:      	adrp	x8, 0x6171000
 294432c:      	adrp	x9, 0x6171000
 2944330:      	mov	w10, #0x1bec            // =7148
 2944334:      	ldr	x8, [x8, #0xeb0]
 2944338:      	ldr	x9, [x9, #0xea0]
 294433c:      	ldr	w8, [x8, #0x24]
 2944340:      	add	w8, w8, w10
 2944344:      	mov	w10, #0x58              // =88
 2944348:      	add	x8, x9, w8, sxtw
 294434c:      	smaddl	x0, w0, w10, x8
 2944350:      	ret
 2944354:      	mov	x0, xzr
 2944358:      	ret
 294435c:      	adrp	x8, 0x6171000
 2944360:      	adrp	x9, 0x6171000
 2944364:      	ldr	w10, [x0, #0xc]
 2944368:      	ldr	x8, [x8, #0xeb0]
 294436c:      	ldr	x9, [x9, #0xea0]
 2944370:      	ldr	w8, [x8, #0x15c]
 2944374:      	sub	w8, w8, #0x4e4
 2944378:      	add	x8, x9, w8, sxtw
 294437c:      	add	w9, w10, w1
 2944380:      	ldrsw	x8, [x8, w9, sxtw #2]
 2944384:      	mov	w9, #0x58               // =88
 2944388:      	smaddl	x0, w8, w9, x2
 294438c:      	ret
 2944390:      	cmn	w1, #0x1
 2944394:      	b.eq	0x29443ec <DllCanUnloadNow+0x6290>
 2944398:      	adrp	x8, 0x6171000
 294439c:      	ldr	x10, [x0, #0x28]
 29443a0:      	mov	w12, #-0x1ce0           // =-7392
 29443a4:      	ldr	x9, [x8, #0xeb0]
 29443a8:      	adrp	x8, 0x6171000
 29443ac:      	ldr	x8, [x8, #0xea0]
 29443b0:      	ldr	w10, [x10, #0x4]
 29443b4:      	ldr	w11, [x9, #0x17c]
 29443b8:      	add	w10, w10, w1
 29443bc:      	add	w11, w11, w12
 29443c0:      	add	x11, x8, w11, sxtw
 29443c4:      	ldrsw	x10, [x11, w10, sxtw #2]
 29443c8:      	cmn	w10, #0x1
 29443cc:      	b.eq	0x29443ec <DllCanUnloadNow+0x6290>
 29443d0:      	ldr	w9, [x9, #0x24]
 29443d4:      	mov	w11, #0x1bec            // =7148
 29443d8:      	add	w9, w9, w11
 29443dc:      	mov	w11, #0x58              // =88
 29443e0:      	add	x8, x8, w9, sxtw
 29443e4:      	smaddl	x0, w10, w11, x8
 29443e8:      	ret
 29443ec:      	mov	x0, xzr
 29443f0:      	ret
 29443f4:      	str	x30, [sp, #-0x60]!
 29443f8:      	stp	x28, x27, [sp, #0x10]
 29443fc:      	stp	x26, x25, [sp, #0x20]
 2944400:      	stp	x24, x23, [sp, #0x30]
 2944404:      	stp	x22, x21, [sp, #0x40]
 2944408:      	stp	x20, x19, [sp, #0x50]
 294440c:      	cmn	w0, #0x1
 2944410:      	b.eq	0x2944570 <DllCanUnloadNow+0x6414>
 2944414:      	adrp	x8, 0x6171000
 2944418:      	mov	w20, w0
 294441c:      	ldr	x21, [x8, #0xf08]
 2944420:      	ldr	x19, [x21, w0, sxtw #3]
 2944424:      	dmb	ishld
 2944428:      	cbnz	x19, 0x294471c <DllCanUnloadNow+0x65c0>
 294442c:      	adrp	x1, 0x5dea000
 2944430:      	add	x0, sp, #0x8
 2944434:      	sxtw	x22, w20
 2944438:      	ldr	x1, [x1, #0xa98]
 294443c:      	bl	0x28f7040 <.text+0x3cd360>
 2944440:      	ldr	x19, [x21, x22, lsl #3]
 2944444:      	cbnz	x19, 0x2944714 <DllCanUnloadNow+0x65b8>
 2944448:      	adrp	x27, 0x6171000
 294444c:      	adrp	x26, 0x6171000
 2944450:      	mov	w10, #0x1bec            // =7148
 2944454:      	ldr	x8, [x27, #0xeb0]
 2944458:      	ldr	x9, [x26, #0xea0]
 294445c:      	adrp	x23, 0x6171000
 2944460:      	ldr	w8, [x8, #0x24]
 2944464:      	add	w8, w8, w10
 2944468:      	mov	w10, #0x58              // =88
 294446c:      	add	x24, x9, w8, sxtw
 2944470:      	ldr	x8, [x23, #0xe90]
 2944474:      	nop
 2944478:      	smaddl	x28, w22, w10, x24
 294447c:      	ldr	x8, [x8, #0x68]
 2944480:      	ldrh	w9, [x28, #0x4a]
 2944484:      	ldr	x25, [x8, x22, lsl #3]
 2944488:      	lsl	x8, x9, #4
 294448c:      	add	x1, x8, #0x138
 2944490:      	mov	w0, #0x1                // =1
 2944494:      	bl	0x292a8e4 <JNI_OnUnload+0xa1c8>
 2944498:      	adrp	x8, 0x6171000
 294449c:      	mov	x19, x0
 29444a0:      	str	x0, [x0, #0x78]
 29444a4:      	ldr	w8, [x8, #0xef0]
 29444a8:      	cmp	w8, #0x1
 29444ac:      	b.lt	0x29444e8 <DllCanUnloadNow+0x638c>
 29444b0:      	adrp	x9, 0x6171000
 29444b4:      	ldr	x9, [x9, #0xef8]
 29444b8:      	add	x10, x9, #0x10
 29444bc:      	ldur	w11, [x10, #-0x10]
 29444c0:      	cmp	w11, w20
 29444c4:      	b.gt	0x29444dc <DllCanUnloadNow+0x6380>
 29444c8:      	ldr	x9, [x10]
 29444cc:      	ldr	w12, [x9, #0x18]
 29444d0:      	add	w11, w12, w11
 29444d4:      	cmp	w11, w20
 29444d8:      	b.hi	0x29444ec <DllCanUnloadNow+0x6390>
 29444dc:      	subs	x8, x8, #0x1
 29444e0:      	add	x10, x10, #0x18
 29444e4:      	b.ne	0x29444bc <DllCanUnloadNow+0x6360>
 29444e8:      	mov	x9, xzr
 29444ec:      	mov	w8, #0x58               // =88
 29444f0:      	str	x9, [x19]
 29444f4:      	adrp	x9, 0x6171000
 29444f8:      	smaddl	x8, w22, w8, x24
 29444fc:      	ldrsw	x10, [x28]
 2944500:      	ldr	x9, [x9, #0xee0]
 2944504:      	ldr	x11, [x23, #0xe90]
 2944508:      	add	x10, x9, x10
 294450c:      	ldpsw	x12, x13, [x8, #0x4]
 2944510:      	ldr	x11, [x11, #0x38]
 2944514:      	add	x9, x9, x12
 2944518:      	stp	x10, x9, [x19, #0x10]
 294451c:      	ldr	x9, [x11, x13, lsl #3]
 2944520:      	ldr	q0, [x9]
 2944524:      	str	q0, [x19, #0x20]
 2944528:      	ldr	q0, [x9]
 294452c:      	str	x28, [x19, #0x68]
 2944530:      	str	q0, [x19, #0x30]
 2944534:      	ldr	w9, [x19, #0x38]
 2944538:      	and	w9, w9, #0x7fffffff
 294453c:      	orr	w9, w9, #0x20000000
 2944540:      	str	w9, [x19, #0x38]
 2944544:      	ldrsw	x9, [x8, #0x18]!
 2944548:      	cmn	w9, #0x1
 294454c:      	b.eq	0x2944578 <DllCanUnloadNow+0x641c>
 2944550:      	ldr	x10, [x27, #0xeb0]
 2944554:      	ldr	x11, [x26, #0xea0]
 2944558:      	mov	w12, #-0x1390           // =-5008
 294455c:      	ldr	w10, [x10, #0xf8]
 2944560:      	add	w10, w10, w12
 2944564:      	add	x10, x11, w10, sxtw
 2944568:      	add	x9, x10, x9, lsl #4
 294456c:      	b	0x294457c <DllCanUnloadNow+0x6420>
 2944570:      	mov	x19, xzr
 2944574:      	b	0x294471c <DllCanUnloadNow+0x65c0>
 2944578:      	mov	x9, xzr
 294457c:      	ldr	w10, [x25]
 2944580:      	add	x20, x19, #0x135
 2944584:      	str	x9, [x19, #0xf0]
 2944588:      	ldrh	w27, [x20]
 294458c:      	mov	w9, #-0x1               // =-1
 2944590:      	str	w10, [x19, #0xf8]
 2944594:      	str	w10, [x19, #0x100]
 2944598:      	mov	w10, #0x58              // =88
 294459c:      	ldur	d0, [x25, #0x4]
 29445a0:      	nop
 29445a4:      	smaddl	x26, w22, w10, x24
 29445a8:      	str	w9, [x19, #0x114]
 29445ac:      	str	d0, [x19, #0x108]
 29445b0:      	ldrb	w10, [x26, #0x50]
 29445b4:      	ldr	w11, [x26, #0x1c]
 29445b8:      	lsr	w10, w10, #1
 29445bc:      	str	w11, [x19, #0x118]
 29445c0:      	bfi	w27, w10, #2, #1
 29445c4:      	ldr	w10, [x25, #0xc]
 29445c8:      	strh	w27, [x20]
 29445cc:      	ldr	w8, [x8]
 29445d0:      	str	w10, [x19, #0x110]
 29445d4:      	cmn	w8, #0x1
 29445d8:      	cset	w8, ne
 29445dc:      	bfi	w27, w8, #4, #1
 29445e0:      	strh	w27, [x20]
 29445e4:      	ldrb	w8, [x26, #0x50]
 29445e8:      	lsr	w8, w8, #2
 29445ec:      	bfi	w27, w8, #9, #1
 29445f0:      	strh	w27, [x20]
 29445f4:      	ldrb	w8, [x26, #0x50]
 29445f8:      	lsr	w12, w8, #3
 29445fc:      	ubfx	w8, w8, #3, #1
 2944600:      	bfi	w27, w12, #10, #1
 2944604:      	eor	w8, w8, #0x1
 2944608:      	str	w8, [x19, #0xe4]
 294460c:      	strh	w27, [x20]
 2944610:      	ldrb	w12, [x26, #0x50]
 2944614:      	lsr	w12, w12, #4
 2944618:      	bfi	w27, w12, #11, #1
 294461c:      	strh	w27, [x20]
 2944620:      	ldrb	w12, [x26, #0x50]
 2944624:      	lsr	w12, w12, #5
 2944628:      	bfi	w27, w12, #12, #1
 294462c:      	strh	w27, [x20]
 2944630:      	ldr	w25, [x26, #0x50]
 2944634:      	ubfx	w0, w25, #6, #4
 2944638:      	bl	0x2945398 <DllCanUnloadNow+0x723c>
 294463c:      	lsr	w8, w25, #2
 2944640:      	and	w9, w27, #0xffffbfff
 2944644:      	strb	w0, [x19, #0x134]
 2944648:      	and	w8, w8, #0x4000
 294464c:      	orr	w8, w9, w8
 2944650:      	strh	w8, [x20]
 2944654:      	ldr	q0, [x26, #0x40]
 2944658:      	ldr	w8, [x26, #0x54]
 294465c:      	str	q0, [x19, #0x120]
 2944660:      	str	w8, [x19, #0x11c]
 2944664:      	add	x0, x19, #0x20
 2944668:      	bl	0x295bc94 <DllCanUnloadNow+0x1db38>
 294466c:      	mov	w8, #0x58               // =88
 2944670:      	str	x0, [x19, #0x70]
 2944674:      	nop
 2944678:      	smaddl	x8, w22, w8, x24
 294467c:      	ldrsw	x8, [x8, #0x10]
 2944680:      	cmn	w8, #0x1
 2944684:      	b.eq	0x29446a0 <DllCanUnloadNow+0x6544>
 2944688:      	ldr	x9, [x23, #0xe90]
 294468c:      	ldr	x9, [x9, #0x38]
 2944690:      	ldr	x0, [x9, x8, lsl #3]
 2944694:      	mov	w1, #0x1                // =1
 2944698:      	bl	0x2956e9c <DllCanUnloadNow+0x18d40>
 294469c:      	str	x0, [x19, #0x58]
 29446a0:      	mov	w8, #0x58               // =88
 29446a4:      	smaddl	x8, w22, w8, x24
 29446a8:      	ldrsw	x8, [x8, #0xc]
 29446ac:      	cmn	w8, #0x1
 29446b0:      	b.eq	0x29446cc <DllCanUnloadNow+0x6570>
 29446b4:      	ldr	x9, [x23, #0xe90]
 29446b8:      	ldr	x9, [x9, #0x38]
 29446bc:      	ldr	x0, [x9, x8, lsl #3]
 29446c0:      	mov	w1, #0x1                // =1
 29446c4:      	bl	0x2956e9c <DllCanUnloadNow+0x18d40>
 29446c8:      	str	x0, [x19, #0x50]
 29446cc:      	ldrb	w8, [x20]
 29446d0:      	stp	x19, x19, [x19, #0x40]
 29446d4:      	tbz	w8, #0x2, 0x294470c <DllCanUnloadNow+0x65b0>
 29446d8:      	mov	w8, #0x58               // =88
 29446dc:      	smaddl	x8, w22, w8, x24
 29446e0:      	ldrsw	x8, [x8, #0x14]
 29446e4:      	cmn	w8, #0x1
 29446e8:      	b.eq	0x29446fc <DllCanUnloadNow+0x65a0>
 29446ec:      	ldr	x9, [x23, #0xe90]
 29446f0:      	ldr	x9, [x9, #0x38]
 29446f4:      	ldr	x0, [x9, x8, lsl #3]
 29446f8:      	b	0x2944700 <DllCanUnloadNow+0x65a4>
 29446fc:      	mov	x0, xzr
 2944700:      	mov	w1, #0x1                // =1
 2944704:      	bl	0x2956e9c <DllCanUnloadNow+0x18d40>
 2944708:      	stp	x0, x0, [x19, #0x40]
 294470c:      	dmb	ish
 2944710:      	str	x19, [x21, x22, lsl #3]
 2944714:      	add	x0, sp, #0x8
 2944718:      	bl	0x28f70cc <.text+0x3cd3ec>
 294471c:      	mov	x0, x19
 2944720:      	ldp	x20, x19, [sp, #0x50]
 2944724:      	ldp	x22, x21, [sp, #0x40]
 2944728:      	ldp	x24, x23, [sp, #0x30]
 294472c:      	ldp	x26, x25, [sp, #0x20]
 2944730:      	ldp	x28, x27, [sp, #0x10]
 2944734:      	ldr	x30, [sp], #0x60
 2944738:      	ret
 294473c:      	mov	x19, x0
 2944740:      	add	x0, sp, #0x8
 2944744:      	bl	0x28f70cc <.text+0x3cd3ec>
 2944748:      	mov	x0, x19
 294474c:      	bl	0x29e4a1c <__emutls_get_address+0xfcc>
 2944750:      	adrp	x8, 0x6171000
 2944754:      	adrp	x9, 0x6171000
 2944758:      	mov	w10, #0x1bec            // =7148
 294475c:      	ldr	x8, [x8, #0xeb0]
 2944760:      	ldr	x9, [x9, #0xea0]
 2944764:      	ldr	w8, [x8, #0x24]
 2944768:      	add	w8, w8, w10
 294476c:      	add	x8, x9, w8, sxtw
 2944770:      	mov	w9, #0x8ba3             // =35747
 2944774:      	movk	w9, #0xba2e, lsl #16
 2944778:      	sub	x8, x0, x8
 294477c:      	lsr	x8, x8, #3
 2944780:      	mul	w0, w8, w9
 2944784:      	b	0x29443f4 <DllCanUnloadNow+0x6298>
 2944788:      	adrp	x8, 0x6171000
 294478c:      	adrp	x9, 0x6171000
 2944790:      	mov	w10, #0x1bec            // =7148
 2944794:      	ldr	x8, [x8, #0xeb0]
 2944798:      	ldr	x9, [x9, #0xea0]
 294479c:      	ldr	w8, [x8, #0x24]
 29447a0:      	add	w8, w8, w10
 29447a4:      	ldr	x10, [x0]
 29447a8:      	add	x8, x9, w8, sxtw
 29447ac:      	mov	w9, #0x8ba3             // =35747
 29447b0:      	movk	w9, #0xba2e, lsl #16
 29447b4:      	sub	x8, x10, x8
 29447b8:      	lsr	x8, x8, #3
 29447bc:      	mul	w0, w8, w9
 29447c0:      	b	0x29443f4 <DllCanUnloadNow+0x6298>
 29447c4:      	adrp	x8, 0x6171000
 29447c8:      	ldr	x9, [x0, #0x68]
 29447cc:      	adrp	x10, 0x6171000
 29447d0:      	ldr	x8, [x8, #0xeb0]
 29447d4:      	ldr	x10, [x10, #0xea0]
 29447d8:      	mov	w11, #0x1ab8            // =6840
 29447dc:      	ldr	w9, [x9, #0x34]
 29447e0:      	ldr	w8, [x8, #0x20]
 29447e4:      	add	w9, w9, w1
 29447e8:      	add	w8, w8, w11
 29447ec:      	add	x8, x10, w8, sxtw
 29447f0:      	ldrsw	x8, [x8, w9, sxtw #2]
 29447f4:      	cmn	w8, #0x1
 29447f8:      	b.eq	0x2944810 <DllCanUnloadNow+0x66b4>
 29447fc:      	adrp	x9, 0x6171000
 2944800:      	ldr	x9, [x9, #0xe90]
 2944804:      	ldr	x9, [x9, #0x38]
 2944808:      	ldr	x0, [x9, x8, lsl #3]
 294480c:      	ret
 2944810:      	mov	x0, xzr
 2944814:      	ret
 2944818:      	adrp	x8, 0x6171000
 294481c:      	ldr	x9, [x0, #0x68]
 2944820:      	adrp	x10, 0x6171000
 2944824:      	ldr	x8, [x8, #0xeb0]
 2944828:      	ldr	x10, [x10, #0xea0]
 294482c:      	mov	w11, #-0x1424           // =-5156
 2944830:      	ldr	w9, [x9, #0x3c]
 2944834:      	ldr	w8, [x8, #0xac]
 2944838:      	add	w9, w9, w1
 294483c:      	add	w8, w8, w11
 2944840:      	add	x8, x10, w8, sxtw
 2944844:      	sbfiz	x10, x9, #3, #32
 2944848:      	sxtw	x9, w9
 294484c:      	ldrsw	x10, [x8, x10]
 2944850:      	cmn	w10, #0x1
 2944854:      	b.eq	0x294486c <DllCanUnloadNow+0x6710>
 2944858:      	adrp	x11, 0x6171000
 294485c:      	ldr	x11, [x11, #0xe90]
 2944860:      	ldr	x11, [x11, #0x38]
 2944864:      	ldr	x0, [x11, x10, lsl #3]
 2944868:      	b	0x2944870 <DllCanUnloadNow+0x6714>
 294486c:      	mov	x0, xzr
 2944870:      	add	x8, x8, x9, lsl #3
 2944874:      	ldr	w1, [x8, #0x4]
 2944878:      	ret
 294487c:      	ldr	w8, [x0, #0xc]
 2944880:      	cmn	w8, #0x1
 2944884:      	cset	w0, ne
 2944888:      	ret
 294488c:      	ldrb	w8, [x0, #0x51]
 2944890:      	ubfx	w0, w8, #3, #1
 2944894:      	ret
 2944898:      	adrp	x8, 0x6171000
 294489c:      	ldpsw	x10, x9, [x0]
 29448a0:      	ldr	x8, [x8, #0xee0]
 29448a4:      	add	x0, x8, x9
 29448a8:      	add	x1, x8, x10
 29448ac:      	ret
 29448b0:      	adrp	x8, 0x6171000
 29448b4:      	ldr	x9, [x0, #0x68]
 29448b8:      	adrp	x10, 0x6171000
 29448bc:      	ldr	x8, [x8, #0xeb0]
 29448c0:      	ldr	x10, [x10, #0xea0]
 29448c4:      	mov	w11, #0x15e0            // =5600
 29448c8:      	ldr	w9, [x9, #0x30]
 29448cc:      	ldr	w8, [x8, #0x130]
 29448d0:      	add	w9, w9, w1
 29448d4:      	add	w8, w8, w11
 29448d8:      	add	x8, x10, w8, sxtw
 29448dc:      	ldr	w0, [x8, w9, sxtw #2]
 29448e0:      	b	0x29443f4 <DllCanUnloadNow+0x6298>
 29448e4:      	cbz	x1, 0x2944980 <DllCanUnloadNow+0x6824>
 29448e8:      	adrp	x8, 0x6171000
 29448ec:      	mov	w11, #0x15e0            // =5600
 29448f0:      	ldr	x9, [x8, #0xeb0]
 29448f4:      	adrp	x8, 0x6171000
 29448f8:      	ldr	x8, [x8, #0xea0]
 29448fc:      	ldr	w10, [x9, #0x130]
 2944900:      	add	w11, w10, w11
 2944904:      	ldr	x10, [x1]
 2944908:      	add	x11, x8, w11, sxtw
 294490c:      	cbz	x10, 0x2944944 <DllCanUnloadNow+0x67e8>
 2944910:      	ldr	w12, [x0, #0x30]
 2944914:      	ldrh	w13, [x0, #0x48]
 2944918:      	add	w13, w12, w13
 294491c:      	add	x12, x10, #0x4
 2944920:      	sxtw	x10, w13
 2944924:      	sub	x11, x12, x11
 2944928:      	cmp	x10, x11, asr #2
 294492c:      	b.le	0x2944980 <DllCanUnloadNow+0x6824>
 2944930:      	ldr	w10, [x12]
 2944934:      	str	x12, [x1]
 2944938:      	cmn	w10, #0x1
 294493c:      	b.ne	0x2944964 <DllCanUnloadNow+0x6808>
 2944940:      	b	0x2944980 <DllCanUnloadNow+0x6824>
 2944944:      	ldrh	w10, [x0, #0x48]
 2944948:      	cbz	w10, 0x2944980 <DllCanUnloadNow+0x6824>
 294494c:      	ldrsw	x12, [x0, #0x30]
 2944950:      	ldr	w10, [x11, x12, lsl #2]
 2944954:      	add	x11, x11, x12, lsl #2
 2944958:      	cmn	w10, #0x1
 294495c:      	str	x11, [x1]
 2944960:      	b.eq	0x2944980 <DllCanUnloadNow+0x6824>
 2944964:      	ldr	w9, [x9, #0x24]
 2944968:      	mov	w11, #0x1bec            // =7148
 294496c:      	add	w9, w9, w11
 2944970:      	mov	w11, #0x58              // =88
 2944974:      	add	x8, x8, w9, sxtw
 2944978:      	smaddl	x0, w10, w11, x8
 294497c:      	ret
 2944980:      	mov	x0, xzr
 2944984:      	ret
 2944988:      	stp	x30, xzr, [sp, #-0x10]!
 294498c:      	adrp	x8, 0x6171000
 2944990:      	adrp	x9, 0x6171000
 2944994:      	ldr	x10, [x0, #0x28]
 2944998:      	ldr	x8, [x8, #0xeb0]
 294499c:      	ldr	x9, [x9, #0xea0]
 29449a0:      	ldr	w2, [x0, #0x20]
 29449a4:      	str	w1, [sp, #0x8]
 29449a8:      	nop
 29449ac:      	adr	x4, 0x29449dc <DllCanUnloadNow+0x6880>
 29449b0:      	ldr	w8, [x8, #0xc]
 29449b4:      	add	x0, sp, #0x8
 29449b8:      	mov	w3, #0x8                // =8
 29449bc:      	sub	w8, w8, #0x364
 29449c0:      	add	x8, x9, w8, sxtw
 29449c4:      	ldrsw	x9, [x10, #0x8]
 29449c8:      	add	x8, x8, x9, lsl #3
 29449cc:      	mov	x1, x8
 29449d0:      	bl	0x59fb7c0 <bsearch@plt>
 29449d4:      	ldr	x30, [sp], #0x10
 29449d8:      	ret
 29449dc:      	ldr	w8, [x0]
 29449e0:      	ldr	w9, [x1]
 29449e4:      	sub	w0, w8, w9
 29449e8:      	ret
 29449ec:      	str	x30, [sp, #-0x20]!
 29449f0:      	stp	x20, x19, [sp, #0x10]
 29449f4:      	mov	x20, x8
 29449f8:      	adrp	x8, 0x6171000
 29449fc:      	adrp	x9, 0x6171000
 2944a00:      	ldr	x8, [x8, #0xeb0]
 2944a04:      	ldr	x9, [x9, #0xea0]
 2944a08:      	ldr	x10, [x0, #0x28]
 2944a0c:      	ldr	w2, [x0, #0x20]
 2944a10:      	mov	x19, x0
 2944a14:      	str	xzr, [sp, #0x8]
 2944a18:      	ldr	w8, [x8, #0xc]
 2944a1c:      	str	w1, [sp, #0x8]
 2944a20:      	nop
 2944a24:      	adr	x4, 0x29449dc <DllCanUnloadNow+0x6880>
 2944a28:      	add	x0, sp, #0x8
 2944a2c:      	mov	w3, #0x8                // =8
 2944a30:      	sub	w8, w8, #0x364
 2944a34:      	add	x8, x9, w8, sxtw
 2944a38:      	ldrsw	x9, [x10, #0x8]
 2944a3c:      	add	x8, x8, x9, lsl #3
 2944a40:      	mov	x1, x8
 2944a44:      	bl	0x59fb7c0 <bsearch@plt>
 2944a48:      	mov	x8, x20
 2944a4c:      	mov	x1, x19
 2944a50:      	bl	0x2944a60 <DllCanUnloadNow+0x6904>
 2944a54:      	ldp	x20, x19, [sp, #0x10]
 2944a58:      	ldr	x30, [sp], #0x20
 2944a5c:      	ret
 2944a60:      	cbz	x0, 0x2944a9c <DllCanUnloadNow+0x6940>
 2944a64:      	adrp	x9, 0x6171000
 2944a68:      	adrp	x10, 0x6171000
 2944a6c:      	mov	w11, #0x1100            // =4352
 2944a70:      	ldr	x9, [x9, #0xeb0]
 2944a74:      	ldr	x10, [x10, #0xea0]
 2944a78:      	ldr	w9, [x9, #0xcc]
 2944a7c:      	add	w9, w9, w11
 2944a80:      	ldr	w11, [x0, #0x4]
 2944a84:      	add	x9, x10, w9, sxtw
 2944a88:      	ldr	w10, [x0, #0xc]
 2944a8c:      	mov	x0, x8
 2944a90:      	add	x2, x9, x11
 2944a94:      	add	x3, x9, x10
 2944a98:      	b	0x290f3a0 <IdawzTWZaqv+0x11c80>
 2944a9c:      	stp	xzr, xzr, [x8]
 2944aa0:      	str	wzr, [x8, #0x18]
 2944aa4:      	str	xzr, [x8, #0x10]
 2944aa8:      	ret
 2944aac:      	cbz	x0, 0x2944b18 <DllCanUnloadNow+0x69bc>
 2944ab0:      	adrp	x9, 0x6171000
 2944ab4:      	ldr	w9, [x9, #0xef0]
 2944ab8:      	cmp	w9, #0x1
 2944abc:      	b.lt	0x2944b18 <DllCanUnloadNow+0x69bc>
 2944ac0:      	adrp	x10, 0x6171000
 2944ac4:      	adrp	x11, 0x6171000
 2944ac8:      	adrp	x12, 0x6171000
 2944acc:      	ldr	x10, [x10, #0xeb0]
 2944ad0:      	ldr	x11, [x11, #0xea0]
 2944ad4:      	ldr	w10, [x10, #0xc]
 2944ad8:      	sub	w10, w10, #0x364
 2944adc:      	add	x10, x11, w10, sxtw
 2944ae0:      	sub	x10, x0, x10
 2944ae4:      	lsr	x11, x10, #3
 2944ae8:      	ldr	x10, [x12, #0xef8]
 2944aec:      	ldr	w13, [x10, #0x8]
 2944af0:      	cmp	w13, w11
 2944af4:      	b.gt	0x2944b0c <DllCanUnloadNow+0x69b0>
 2944af8:      	ldr	x12, [x10, #0x10]
 2944afc:      	ldr	w14, [x12, #0x20]
 2944b00:      	add	w13, w14, w13
 2944b04:      	cmp	w13, w11
 2944b08:      	b.hi	0x2944b20 <DllCanUnloadNow+0x69c4>
 2944b0c:      	subs	x9, x9, #0x1
 2944b10:      	add	x10, x10, #0x18
 2944b14:      	b.ne	0x2944aec <DllCanUnloadNow+0x6990>
 2944b18:      	mov	x1, xzr
 2944b1c:      	b	0x2944a60 <DllCanUnloadNow+0x6904>
 2944b20:      	cmp	x10, #0x0
 2944b24:      	csel	x1, xzr, x12, eq
 2944b28:      	b	0x2944a60 <DllCanUnloadNow+0x6904>
 2944b2c:      	adrp	x8, 0x6171000
 2944b30:      	ldr	x9, [x0, #0x68]
 2944b34:      	adrp	x10, 0x6171000
 2944b38:      	ldr	x8, [x8, #0xeb0]
 2944b3c:      	ldr	x10, [x10, #0xea0]
 2944b40:      	mov	w11, #-0x1a38           // =-6712
 2944b44:      	ldr	w9, [x9, #0x38]
 2944b48:      	ldr	w8, [x8, #0x88]
 2944b4c:      	add	w9, w9, w1
 2944b50:      	add	w8, w8, w11
 2944b54:      	add	x8, x10, w8, sxtw
 2944b58:      	ldr	w0, [x8, w9, uxtw #2]
 2944b5c:      	b	0x2943cf0 <DllCanUnloadNow+0x5b94>
 2944b60:      	sub	sp, sp, #0x40
 2944b64:      	stp	x30, x23, [sp, #0x10]
 2944b68:      	stp	x22, x21, [sp, #0x20]
 2944b6c:      	stp	x20, x19, [sp, #0x30]
 2944b70:      	strb	wzr, [x3]
 2944b74:      	mov	x19, x3
 2944b78:      	mov	x20, x2
 2944b7c:      	ldrb	w8, [x0, #0x53]
 2944b80:      	mov	w21, w1
 2944b84:      	and	w8, w8, #0x3
 2944b88:      	cmp	w8, #0x2
 2944b8c:      	b.ne	0x2944b94 <DllCanUnloadNow+0x6a38>
 2944b90:      	bl	0x295b1ac <DllCanUnloadNow+0x1d050>
 2944b94:      	ldr	x8, [x0, #0x38]
 2944b98:      	cbz	x8, 0x2944c54 <DllCanUnloadNow+0x6af8>
 2944b9c:      	adrp	x22, 0x6171000
 2944ba0:      	mov	x11, #-0x5555555555555556 // =-6148914691236517206
 2944ba4:      	adrp	x23, 0x6171000
 2944ba8:      	ldr	x9, [x22, #0xeb0]
 2944bac:      	movk	x11, #0xaaab
 2944bb0:      	ldr	w8, [x8, #0x10]
 2944bb4:      	nop
 2944bb8:      	adr	x4, 0x2948900 <DllCanUnloadNow+0xa7a4>
 2944bbc:      	add	x0, sp, #0x4
 2944bc0:      	ldrsw	x10, [x9, #0xe0]
 2944bc4:      	ldr	w9, [x9, #0x16c]
 2944bc8:      	add	w8, w8, w21
 2944bcc:      	mov	w3, #0xc                // =12
 2944bd0:      	str	w8, [sp, #0x4]
 2944bd4:      	umulh	x10, x10, x11
 2944bd8:      	ldr	x11, [x23, #0xea0]
 2944bdc:      	sub	w9, w9, #0x314
 2944be0:      	add	x1, x11, w9, sxtw
 2944be4:      	lsr	x2, x10, #3
 2944be8:      	bl	0x59fb7c0 <bsearch@plt>
 2944bec:      	cbz	x0, 0x2944c58 <DllCanUnloadNow+0x6afc>
 2944bf0:      	ldrsw	x8, [x0, #0x4]
 2944bf4:      	cmn	w8, #0x1
 2944bf8:      	b.eq	0x2944c10 <DllCanUnloadNow+0x6ab4>
 2944bfc:      	adrp	x9, 0x6171000
 2944c00:      	ldr	x9, [x9, #0xe90]
 2944c04:      	ldr	x9, [x9, #0x38]
 2944c08:      	ldr	x9, [x9, x8, lsl #3]
 2944c0c:      	b	0x2944c14 <DllCanUnloadNow+0x6ab8>
 2944c10:      	mov	x9, xzr
 2944c14:      	ldr	w8, [x0, #0x8]
 2944c18:      	mov	w10, #-0x1              // =-1
 2944c1c:      	str	x9, [x20]
 2944c20:      	cmp	x8, x10
 2944c24:      	cset	w9, eq
 2944c28:      	cmn	w8, #0x1
 2944c2c:      	strb	w9, [x19]
 2944c30:      	b.eq	0x2944c54 <DllCanUnloadNow+0x6af8>
 2944c34:      	ldr	x9, [x22, #0xeb0]
 2944c38:      	ldr	x10, [x23, #0xea0]
 2944c3c:      	mov	w11, #-0x10e0           // =-4320
 2944c40:      	ldr	w9, [x9, #0x60]
 2944c44:      	add	w9, w9, w11
 2944c48:      	add	x9, x10, w9, sxtw
 2944c4c:      	add	x0, x9, x8
 2944c50:      	b	0x2944c58 <DllCanUnloadNow+0x6afc>
 2944c54:      	mov	x0, xzr
 2944c58:      	ldp	x20, x19, [sp, #0x30]
 2944c5c:      	ldp	x22, x21, [sp, #0x20]
 2944c60:      	ldp	x30, x23, [sp, #0x10]
 2944c64:      	add	sp, sp, #0x40
 2944c68:      	ret
 2944c6c:      	adrp	x8, 0x6171000
 2944c70:      	adrp	x9, 0x6171000
 2944c74:      	mov	w10, #0x1bec            // =7148
 2944c78:      	ldr	x8, [x8, #0xeb0]
 2944c7c:      	ldr	x9, [x9, #0xea0]
 2944c80:      	ldr	w8, [x8, #0x24]
 2944c84:      	add	w8, w8, w10
 2944c88:      	ldr	x10, [x0, #0x68]
 2944c8c:      	add	x8, x9, w8, sxtw
 2944c90:      	adrp	x9, 0x6171000
 2944c94:      	ldr	x9, [x9, #0xe90]
 2944c98:      	sub	x8, x10, x8
 2944c9c:      	mov	w10, #0x8ba3            // =35747
 2944ca0:      	lsr	x8, x8, #3
 2944ca4:      	movk	w10, #0xba2e, lsl #16
 2944ca8:      	ldr	x9, [x9, #0x58]
 2944cac:      	mul	w8, w8, w10
 2944cb0:      	ldr	x8, [x9, w8, uxtw #3]
 2944cb4:      	ldr	w0, [x8, w1, sxtw #2]
 2944cb8:      	ret
 2944cbc:      	sub	sp, sp, #0x30
 2944cc0:      	str	x30, [sp, #0x10]
 2944cc4:      	stp	x20, x19, [sp, #0x20]
 2944cc8:      	ldr	x19, [x0, #0x10]
 2944ccc:      	ldr	x8, [x19, #0x80]
 2944cd0:      	sub	x20, x0, x8
 2944cd4:      	add	x0, x19, #0x20
 2944cd8:      	bl	0x2950ba8 <DllCanUnloadNow+0x12a4c>
 2944cdc:      	tbz	w0, #0x0, 0x2944cec <DllCanUnloadNow+0x6b90>
 2944ce0:      	ldr	x0, [x19, #0x60]
 2944ce4:      	bl	0x294d0b4 <DllCanUnloadNow+0xef58>
 2944ce8:      	mov	x19, x0
 2944cec:      	adrp	x8, 0x6171000
 2944cf0:      	mov	x10, #-0x5555555555555556 // =-6148914691236517206
 2944cf4:      	adrp	x11, 0x6171000
 2944cf8:      	ldr	x8, [x8, #0xeb0]
 2944cfc:      	movk	x10, #0xaaab
 2944d00:      	ldr	x11, [x11, #0xea0]
 2944d04:      	lsr	x12, x20, #5
 2944d08:      	nop
 2944d0c:      	adr	x4, 0x2944d64 <DllCanUnloadNow+0x6c08>
 2944d10:      	ldrsw	x9, [x8, #0xd4]
 2944d14:      	ldr	w8, [x8, #0x154]
 2944d18:      	add	x0, sp, #0x4
 2944d1c:      	mov	w3, #0xc                // =12
 2944d20:      	umulh	x9, x9, x10
 2944d24:      	ldr	x10, [x19, #0x68]
 2944d28:      	add	w8, w8, #0xd34
 2944d2c:      	add	x1, x11, w8, sxtw
 2944d30:      	ldr	w10, [x10, #0x20]
 2944d34:      	add	w8, w10, w12
 2944d38:      	lsr	x2, x9, #3
 2944d3c:      	str	w8, [sp, #0x4]
 2944d40:      	bl	0x59fb7c0 <bsearch@plt>
 2944d44:      	cbz	x0, 0x2944d50 <DllCanUnloadNow+0x6bf4>
 2944d48:      	ldr	w0, [x0, #0x8]
 2944d4c:      	b	0x2944d54 <DllCanUnloadNow+0x6bf8>
 2944d50:      	mov	w0, #-0x1               // =-1
 2944d54:      	ldp	x20, x19, [sp, #0x20]
 2944d58:      	ldr	x30, [sp, #0x10]
 2944d5c:      	add	sp, sp, #0x30
 2944d60:      	ret
 2944d64:      	ldr	w8, [x0]
 2944d68:      	ldr	w9, [x1]
 2944d6c:      	sub	w0, w8, w9
 2944d70:      	ret
 2944d74:      	ldr	x10, [x0, #0x68]
 2944d78:      	adrp	x9, 0x6171000
 2944d7c:      	mov	w11, #0xc               // =12
 2944d80:      	ldr	x9, [x9, #0xee8]
 2944d84:      	ldr	w10, [x10, #0x20]
 2944d88:      	add	w10, w10, w1
 2944d8c:      	smaddl	x11, w10, w11, x9
 2944d90:      	sxtw	x10, w10
 2944d94:      	ldrsw	x11, [x11, #0x4]
 2944d98:      	cmn	w11, #0x1
 2944d9c:      	b.eq	0x2944db4 <DllCanUnloadNow+0x6c58>
 2944da0:      	adrp	x12, 0x6171000
 2944da4:      	ldr	x12, [x12, #0xe90]
 2944da8:      	ldr	x12, [x12, #0x38]
 2944dac:      	ldr	x11, [x12, x11, lsl #3]
 2944db0:      	b	0x2944db8 <DllCanUnloadNow+0x6c5c>
 2944db4:      	mov	x11, xzr
 2944db8:      	mov	w12, #0xc               // =12
 2944dbc:      	smaddl	x9, w10, w12, x9
 2944dc0:      	adrp	x10, 0x6171000
 2944dc4:      	ldr	x10, [x10, #0xee0]
 2944dc8:      	ldrsw	x12, [x9]
 2944dcc:      	ldr	w9, [x9, #0x8]
 2944dd0:      	add	x10, x10, x12
 2944dd4:      	str	w9, [x8, #0x10]
 2944dd8:      	stp	x11, x10, [x8]
 2944ddc:      	ret
 2944de0:      	ldr	x9, [x0, #0x68]
 2944de4:      	adrp	x10, 0x6171000
 2944de8:      	mov	w11, #0x24              // =36
 2944dec:      	ldr	w9, [x9, #0x24]
 2944df0:      	add	w12, w9, w1
 2944df4:      	ldr	x9, [x10, #0xec0]
 2944df8:      	adrp	x10, 0x6171000
 2944dfc:      	smaddl	x13, w12, w11, x9
 2944e00:      	ldr	x10, [x10, #0xee0]
 2944e04:      	ldrsw	x14, [x13]
 2944e08:      	ldrsw	x11, [x13, #0x8]
 2944e0c:      	add	x14, x10, x14
 2944e10:      	sxtw	x10, w12
 2944e14:      	cmn	w11, #0x1
 2944e18:      	stp	x13, x14, [x8]
 2944e1c:      	b.eq	0x2944e34 <DllCanUnloadNow+0x6cd8>
 2944e20:      	adrp	x12, 0x6171000
 2944e24:      	ldr	x12, [x12, #0xe90]
 2944e28:      	ldr	x12, [x12, #0x38]
 2944e2c:      	ldr	x11, [x12, x11, lsl #3]
 2944e30:      	b	0x2944e38 <DllCanUnloadNow+0x6cdc>
 2944e34:      	mov	x11, xzr
 2944e38:      	mov	w12, #0x24              // =36
 2944e3c:      	str	x11, [x8, #0x10]
 2944e40:      	nop
 2944e44:      	smaddl	x9, w10, w12, x9
 2944e48:      	ldrh	w11, [x9, #0x1c]
 2944e4c:      	ldrh	w12, [x9, #0x1e]
 2944e50:      	ldr	w10, [x9, #0x18]
 2944e54:      	ldr	w9, [x9, #0x20]
 2944e58:      	strh	w11, [x8, #0x1c]
 2944e5c:      	lsr	w11, w12, #15
 2944e60:      	str	w10, [x8, #0x18]
 2944e64:      	and	w10, w12, #0x7fff
 2944e68:      	strh	w10, [x8, #0x1e]
 2944e6c:      	str	w9, [x8, #0x20]
 2944e70:      	strb	w11, [x8, #0x24]
 2944e74:      	ret
 2944e78:      	adrp	x9, 0x6171000
 2944e7c:      	adrp	x10, 0x6171000
 2944e80:      	ldr	w11, [x1, #0x10]
 2944e84:      	ldr	x9, [x9, #0xeb0]
 2944e88:      	ldr	x10, [x10, #0xea0]
 2944e8c:      	mov	w12, #0xc               // =12
 2944e90:      	add	w11, w11, w2
 2944e94:      	ldr	w9, [x9, #0x148]
 2944e98:      	add	w9, w9, #0x254
 2944e9c:      	add	x9, x10, w9, sxtw
 2944ea0:      	smaddl	x10, w11, w12, x9
 2944ea4:      	adrp	x9, 0x6171000
 2944ea8:      	ldr	x11, [x9, #0xee0]
 2944eac:      	ldrsw	x9, [x10, #0x8]
 2944eb0:      	ldp	w12, w10, [x10]
 2944eb4:      	cmn	w9, #0x1
 2944eb8:      	sxtw	x12, w12
 2944ebc:      	str	w10, [x8, #0x8]
 2944ec0:      	add	x11, x11, x12
 2944ec4:      	str	x11, [x8]
 2944ec8:      	b.eq	0x2944ee0 <DllCanUnloadNow+0x6d84>
 2944ecc:      	adrp	x10, 0x6171000
 2944ed0:      	ldr	x10, [x10, #0xe90]
 2944ed4:      	ldr	x10, [x10, #0x38]
 2944ed8:      	ldr	x9, [x10, x9, lsl #3]
 2944edc:      	b	0x2944ee4 <DllCanUnloadNow+0x6d88>
 2944ee0:      	mov	x9, xzr
 2944ee4:      	str	x9, [x8, #0x10]
 2944ee8:      	ret
 2944eec:      	ldr	x9, [x0, #0x68]
 2944ef0:      	mov	w11, #0x14              // =20
 2944ef4:      	adrp	x12, 0x6171000
 2944ef8:      	ldr	x12, [x12, #0xee0]
 2944efc:      	ldr	w9, [x9, #0x2c]
 2944f00:      	add	w10, w9, w1
 2944f04:      	adrp	x9, 0x6171000
 2944f08:      	ldr	x9, [x9, #0xec8]
 2944f0c:      	nop
 2944f10:      	smaddl	x11, w10, w11, x9
 2944f14:      	sxtw	x10, w10
 2944f18:      	ldpsw	x13, x11, [x11]
 2944f1c:      	add	x12, x12, x13
 2944f20:      	cmn	w11, #0x1
 2944f24:      	str	x12, [x8]
 2944f28:      	b.eq	0x2944f38 <DllCanUnloadNow+0x6ddc>
 2944f2c:      	ldr	x12, [x0, #0x98]
 2944f30:      	ldr	x11, [x12, x11, lsl #3]
 2944f34:      	b	0x2944f3c <DllCanUnloadNow+0x6de0>
 2944f38:      	mov	x11, xzr
 2944f3c:      	mov	w12, #0x14              // =20
 2944f40:      	str	x11, [x8, #0x8]
 2944f44:      	nop
 2944f48:      	smaddl	x12, w10, w12, x9
 2944f4c:      	ldrsw	x12, [x12, #0x8]
 2944f50:      	cmn	w12, #0x1
 2944f54:      	b.eq	0x2944f64 <DllCanUnloadNow+0x6e08>
 2944f58:      	ldr	x11, [x0, #0x98]
 2944f5c:      	ldr	x11, [x11, x12, lsl #3]
 2944f60:      	b	0x2944f68 <DllCanUnloadNow+0x6e0c>
 2944f64:      	mov	x11, xzr
 2944f68:      	mov	w12, #0x14              // =20
 2944f6c:      	str	x11, [x8, #0x10]
 2944f70:      	nop
 2944f74:      	smaddl	x9, w10, w12, x9
 2944f78:      	ldur	d0, [x9, #0xc]
 2944f7c:      	str	d0, [x8, #0x18]
 2944f80:      	ret
 2944f84:      	adrp	x9, 0x6171000
 2944f88:      	ldr	x10, [x0, #0x68]
 2944f8c:      	adrp	x11, 0x6171000
 2944f90:      	ldr	x9, [x9, #0xeb0]
 2944f94:      	ldr	x11, [x11, #0xea0]
 2944f98:      	mov	w12, #0x1ad8            // =6872
 2944f9c:      	ldr	w10, [x10, #0x28]
 2944fa0:      	ldr	w9, [x9, #0x54]
 2944fa4:      	add	w10, w10, w1
 2944fa8:      	add	w9, w9, w12
 2944fac:      	mov	w12, #0x18              // =24
 2944fb0:      	add	x9, x11, w9, sxtw
 2944fb4:      	smaddl	x11, w10, w12, x9
 2944fb8:      	adrp	x12, 0x6171000
 2944fbc:      	ldr	x12, [x12, #0xee0]
 2944fc0:      	sxtw	x10, w10
 2944fc4:      	ldpsw	x13, x11, [x11]
 2944fc8:      	add	x12, x12, x13
 2944fcc:      	cmn	w11, #0x1
 2944fd0:      	str	x12, [x8]
 2944fd4:      	b.eq	0x2944fec <DllCanUnloadNow+0x6e90>
 2944fd8:      	adrp	x12, 0x6171000
 2944fdc:      	ldr	x12, [x12, #0xe90]
 2944fe0:      	ldr	x12, [x12, #0x38]
 2944fe4:      	ldr	x11, [x12, x11, lsl #3]
 2944fe8:      	b	0x2944ff0 <DllCanUnloadNow+0x6e94>
 2944fec:      	mov	x11, xzr
 2944ff0:      	mov	w12, #0x18              // =24
 2944ff4:      	str	x11, [x8, #0x8]
 2944ff8:      	nop
 2944ffc:      	smaddl	x12, w10, w12, x9
