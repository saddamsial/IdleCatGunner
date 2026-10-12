
reverse/com.Chodun.CatGunner/1.1.61-vc257/extracted/split_config.arm64_v8a/lib/arm64-v8a/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000029e8944 <__start_il2cpp>:
 2b172e4: f81e0ffe     	str	x30, [sp, #-0x20]!
 2b172e8: a9014ff4     	stp	x20, x19, [sp, #0x10]
 2b172ec: 9001b234     	adrp	x20, 0x615b000
 2b172f0: aa0003f3     	mov	x19, x0
 2b172f4: 397bde88     	ldrb	w8, [x20, #0xef7]
 2b172f8: 37000128     	tbnz	w8, #0x0, 0x2b1731c <__start_il2cpp+0x12e9d8>
 2b172fc: d0019200     	adrp	x0, 0x5d59000
 2b17300: f9445c00     	ldr	x0, [x0, #0x8b8]
 2b17304: 97f779d3     	bl	0x28f5a50 <.text+0x3cbd70>
 2b17308: f0019240     	adrp	x0, 0x5d62000
 2b1730c: f9439c00     	ldr	x0, [x0, #0x738]
 2b17310: 97f779d0     	bl	0x28f5a50 <.text+0x3cbd70>
 2b17314: 52800028     	mov	w8, #0x1                // =1
 2b17318: 393bde88     	strb	w8, [x20, #0xef7]
 2b1731c: aa1303e0     	mov	x0, x19
 2b17320: aa1f03e1     	mov	x1, xzr
 2b17324: 946fb566     	bl	0x47048bc <__start_il2cpp+0x1d1bf78>
 2b17328: 360003c0     	tbz	w0, #0x0, 0x2b173a0 <__start_il2cpp+0x12ea5c>
 2b1732c: aa1303e0     	mov	x0, x19
 2b17330: aa1f03e1     	mov	x1, xzr
 2b17334: 946fec75     	bl	0x4712508 <__start_il2cpp+0x1d29bc4>
 2b17338: aa1f03e1     	mov	x1, xzr
 2b1733c: aa0003f4     	mov	x20, x0
 2b17340: 946aa4b1     	bl	0x45c0604 <__start_il2cpp+0x1bd7cc0>
 2b17344: 370002e0     	tbnz	w0, #0x0, 0x2b173a0 <__start_il2cpp+0x12ea5c>
 2b17348: d0019208     	adrp	x8, 0x5d59000
 2b1734c: f9445d08     	ldr	x8, [x8, #0x8b8]
 2b17350: f9400100     	ldr	x0, [x8]
 2b17354: b940e408     	ldr	w8, [x0, #0xe4]
 2b17358: 35000048     	cbnz	w8, 0x2b17360 <__start_il2cpp+0x12ea1c>
 2b1735c: 97f77a1d     	bl	0x28f5bd0 <.text+0x3cbef0>
 2b17360: aa1403e0     	mov	x0, x20
 2b17364: aa1f03e1     	mov	x1, xzr
 2b17368: 946eadb5     	bl	0x46c2a3c <__start_il2cpp+0x1cda0f8>
 2b1736c: aa0003f4     	mov	x20, x0
 2b17370: aa1f03e0     	mov	x0, xzr
 2b17374: 946b1b67     	bl	0x45de110 <__start_il2cpp+0x1bf57cc>
 2b17378: b4000280     	cbz	x0, 0x2b173c8 <__start_il2cpp+0x12ea84>
 2b1737c: f9400008     	ldr	x8, [x0]
 2b17380: f941c509     	ldr	x9, [x8, #0x388]
 2b17384: f941c902     	ldr	x2, [x8, #0x390]
 2b17388: aa1403e1     	mov	x1, x20
 2b1738c: d63f0120     	blr	x9
 2b17390: aa1f03e1     	mov	x1, xzr
 2b17394: aa0003f4     	mov	x20, x0
 2b17398: 946aa49b     	bl	0x45c0604 <__start_il2cpp+0x1bd7cc0>
 2b1739c: 360000a0     	tbz	w0, #0x0, 0x2b173b0 <__start_il2cpp+0x12ea6c>
 2b173a0: aa1f03e0     	mov	x0, xzr
 2b173a4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 2b173a8: f84207fe     	ldr	x30, [sp], #0x20
 2b173ac: d65f03c0     	ret
 2b173b0: f0019248     	adrp	x8, 0x5d62000
 2b173b4: f9439d08     	ldr	x8, [x8, #0x738]
 2b173b8: f9400101     	ldr	x1, [x8]
 2b173bc: aa1403e0     	mov	x0, x20
 2b173c0: 94136484     	bl	0x2ff05d0 <__start_il2cpp+0x607c8c>
 2b173c4: 17fffff8     	b	0x2b173a4 <__start_il2cpp+0x12ea60>
 2b173c8: 97f77a4d     	bl	0x28f5cfc <.text+0x3cc01c>
 2b173cc: 14000009     	b	0x2b173f0 <__start_il2cpp+0x12eaac>
 2b173d0: 14000008     	b	0x2b173f0 <__start_il2cpp+0x12eaac>
 2b173d4: 14000007     	b	0x2b173f0 <__start_il2cpp+0x12eaac>
 2b173d8: 14000006     	b	0x2b173f0 <__start_il2cpp+0x12eaac>
 2b173dc: 14000005     	b	0x2b173f0 <__start_il2cpp+0x12eaac>
 2b173e0: 14000004     	b	0x2b173f0 <__start_il2cpp+0x12eaac>
 2b173e4: 14000003     	b	0x2b173f0 <__start_il2cpp+0x12eaac>
 2b173e8: 14000002     	b	0x2b173f0 <__start_il2cpp+0x12eaac>
 2b173ec: 14000001     	b	0x2b173f0 <__start_il2cpp+0x12eaac>
 2b173f0: aa0003f4     	mov	x20, x0
 2b173f4: 7100043f     	cmp	w1, #0x1
 2b173f8: 54000521     	b.ne	0x2b1749c <__start_il2cpp+0x12eb58>
 2b173fc: aa1403e0     	mov	x0, x20
 2b17400: 94bb8f78     	bl	0x59fb1e0 <__cxa_begin_catch@plt>
 2b17404: aa0003f4     	mov	x20, x0
 2b17408: b0019200     	adrp	x0, 0x5d58000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x23b8>
 2b1740c: f9459800     	ldr	x0, [x0, #0xb30]
 2b17410: 97f77995     	bl	0x28f5a64 <.text+0x3cbd84>
 2b17414: f9400288     	ldr	x8, [x20]
 2b17418: f9400101     	ldr	x1, [x8]
 2b1741c: 97f77b3a     	bl	0x28f6104 <.text+0x3cc424>
 2b17420: 360002a0     	tbz	w0, #0x0, 0x2b17474 <__start_il2cpp+0x12eb30>
 2b17424: f9400294     	ldr	x20, [x20]
 2b17428: 94bb8f72     	bl	0x59fb1f0 <__cxa_end_catch@plt>
 2b1742c: f0019240     	adrp	x0, 0x5d62000
 2b17430: f943a000     	ldr	x0, [x0, #0x740]
 2b17434: 97f7798c     	bl	0x28f5a64 <.text+0x3cbd84>
 2b17438: aa1303e1     	mov	x1, x19
 2b1743c: aa1403e2     	mov	x2, x20
 2b17440: aa1f03e3     	mov	x3, xzr
 2b17444: 946aaa34     	bl	0x45c1d14 <__start_il2cpp+0x1bd93d0>
 2b17448: aa0003f3     	mov	x19, x0
 2b1744c: b0019200     	adrp	x0, 0x5d58000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x23b8>
 2b17450: f9478400     	ldr	x0, [x0, #0xf08]
 2b17454: 97f77984     	bl	0x28f5a64 <.text+0x3cbd84>
 2b17458: b940e408     	ldr	w8, [x0, #0xe4]
 2b1745c: 35000048     	cbnz	w8, 0x2b17464 <__start_il2cpp+0x12eb20>
 2b17460: 97f779dc     	bl	0x28f5bd0 <.text+0x3cbef0>
 2b17464: aa1303e0     	mov	x0, x19
 2b17468: aa1f03e1     	mov	x1, xzr
 2b1746c: 94ae0c04     	bl	0x569a47c <__start_il2cpp+0x2cb1b38>
 2b17470: 17ffffcc     	b	0x2b173a0 <__start_il2cpp+0x12ea5c>
 2b17474: 52800100     	mov	w0, #0x8                // =8
 2b17478: 94bb8f66     	bl	0x59fb210 <__cxa_allocate_exception@plt>
 2b1747c: f9400288     	ldr	x8, [x20]
 2b17480: f9000008     	str	x8, [x0]
 2b17484: d0017741     	adrp	x1, 0x5a01000 <__system_property_get@plt+0x3910>
 2b17488: 911c2021     	add	x1, x1, #0x708
 2b1748c: aa1f03e2     	mov	x2, xzr
 2b17490: 94bb8f64     	bl	0x59fb220 <__cxa_throw@plt>
 2b17494: aa0003f4     	mov	x20, x0
 2b17498: 94bb8f56     	bl	0x59fb1f0 <__cxa_end_catch@plt>
 2b1749c: aa1403e0     	mov	x0, x20
 2b174a0: 97fb355f     	bl	0x29e4a1c <__emutls_get_address+0xfcc>
 2b174a4: 97e84ab3     	bl	0x2529f70 <.text+0x290>
