02c32858  str x30,[sp, #-0x50]!
02c3285c  stp x26,x25,[sp, #0x10]
02c32860  stp x24,x23,[sp, #0x20]
02c32864  stp x22,x21,[sp, #0x30]
02c32868  stp x20,x19,[sp, #0x40]
02c3286c  adrp x23,0x625c000
02c32870  adrp x22,0x5e5d000
02c32874  mov w21,w2
02c32878  ldrb w8,[x23, #0x42]
02c3287c  ldr x22,[x22, #0xd28]
02c32880  mov w20,w1
02c32884  mov x19,x0
02c32888  tbnz w8,#0x0,0x02c328b8
02c3288c  adrp x0,0x5e5d000
02c32890  ldr x0,[x0, #0xd28]
02c32894  bl 0x029f5a50
02c32898  adrp x0,0x5e5d000
02c3289c  ldr x0,[x0, #0x540]
02c328a0  bl 0x029f5a50
02c328a4  adrp x0,0x5e63000
02c328a8  ldr x0,[x0, #0x98]
02c328ac  bl 0x029f5a50
02c328b0  mov w8,#0x1
02c328b4  strb w8,[x23, #0x42]
02c328b8  ldr x0,[x22]
02c328bc  ldr w8,[x0, #0xe4]
02c328c0  cbnz w8,0x02c328c8
02c328c4  bl 0x029f5bd0
02c328c8  mov w0,w20
02c328cc  mov x1,xzr
02c328d0  bl 0x02c2cc20
02c328d4  add w8,w21,w21, LSL #0x2
02c328d8  cmp w0,w8, LSL #0x2
02c328dc  b.lt 0x02c329d0
02c328e0  ldr x0,[x22]
02c328e4  adrp x23,0x5e5d000
02c328e8  lsl w22,w8,#0x2
02c328ec  ldr w9,[x0, #0xe4]
02c328f0  ldr x23,[x23, #0x540]
02c328f4  cbnz w9,0x02c328fc
02c328f8  bl 0x029f5bd0
02c328fc  mov w0,w20
02c32900  mov w1,w22
02c32904  mov x2,xzr
02c32908  bl 0x02c2cca4
02c3290c  ldr x0,[x23]
02c32910  ldr w8,[x0, #0xe4]
02c32914  cbnz w8,0x02c3291c
02c32918  bl 0x029f5bd0
02c3291c  mov w0,w20
02c32920  mov w1,w22
02c32924  mov x2,xzr
02c32928  bl 0x02b9a088
02c3292c  adrp x8,0x5e63000
02c32930  mov w1,w21
02c32934  ldr x8,[x8, #0x98]
02c32938  ldr x0,[x8]
02c3293c  bl 0x029f5b40
02c32940  cmp w21,#0x1
02c32944  mov x22,x0
02c32948  b.lt 0x02c329b4
02c3294c  mov x24,xzr
02c32950  add x23,x22,#0x20
02c32954  mov w25,w21
02c32958  mov x0,x19
02c3295c  mov w1,w20
02c32960  bl 0x02c32ab4
02c32964  cbz x22,0x02c329ec
02c32968  mov x21,x0
02c3296c  cbz x0,0x02c32984
02c32970  ldr x8,[x22]
02c32974  mov x0,x21
02c32978  ldr x1,[x8, #0x40]
02c3297c  bl 0x029f5bd4
02c32980  cbz x0,0x02c329f4
02c32984  ldr w8,[x22, #0x18]
02c32988  cmp x24,x8
02c3298c  b.cs 0x02c329f0
02c32990  mov x26,x23
02c32994  mov x0,x23
02c32998  mov x1,x21
02c3299c  str x21,[x26], #0x8
02c329a0  bl 0x029f59f4
02c329a4  add x24,x24,#0x1
02c329a8  mov x23,x26
02c329ac  cmp x25,x24
02c329b0  b.ne 0x02c32958
02c329b4  ldr x0,[x19, #0x40]
02c329b8  cbz x0,0x02c329ec
02c329bc  mov x1,x22
02c329c0  mov x2,xzr
02c329c4  bl 0x02c30464
02c329c8  mov x0,x19
02c329cc  bl 0x02c31f8c
02c329d0  mov x0,x19
02c329d4  ldp x20,x19,[sp, #0x40]
02c329d8  ldp x22,x21,[sp, #0x30]
02c329dc  ldp x24,x23,[sp, #0x20]
02c329e0  ldp x26,x25,[sp, #0x10]
02c329e4  ldr x30,[sp], #0x50
02c329e8  b 0x02c327d8
02c329ec  bl 0x029f5cfc
02c329f0  bl 0x029f5d04
02c329f4  bl 0x029f5d20
02c329f8  mov x1,xzr
02c329fc  bl 0x029f5bc0
02c32a00  cmp w1,#0x1
02c32a04  mov x22,x0
02c32a08  b.ne 0x02c32aa8
02c32a0c  mov x0,x22
02c32a10  bl 0x05afb1e0
02c32a14  mov x22,x0
02c32a18  adrp x0,0x5e58000
02c32a1c  ldr x0,[x0, #0xb30]
02c32a20  bl 0x029f5a64
02c32a24  ldr x8,[x22]
02c32a28  ldr x1,[x8]
02c32a2c  bl 0x029f6104
02c32a30  tbz w0,#0x0,0x02c32a80
02c32a34  ldr x22,[x22]
02c32a38  bl 0x05afb1f0
02c32a3c  adrp x0,0x5e63000
02c32a40  ldr x0,[x0, #0xa0]
02c32a44  bl 0x029f5a64
02c32a48  mov x1,x22
02c32a4c  mov x2,xzr
02c32a50  bl 0x046b6c0c
02c32a54  mov x22,x0
02c32a58  adrp x0,0x5e58000
02c32a5c  ldr x0,[x0, #0xf08]
02c32a60  bl 0x029f5a64
02c32a64  ldr w8,[x0, #0xe4]
02c32a68  cbnz w8,0x02c32a70
02c32a6c  bl 0x029f5bd0
02c32a70  mov x0,x22
02c32a74  mov x1,xzr
02c32a78  bl 0x0579a8d0
02c32a7c  b 0x02c3292c
02c32a80  mov w0,#0x8
02c32a84  bl 0x05afb210
02c32a88  ldr x8,[x22]
02c32a8c  str x8,[x0]
02c32a90  adrp x1,0x5b01000
02c32a94  add x1,x1,#0x708
02c32a98  mov x2,xzr
02c32a9c  bl 0x05afb220
02c32aa0  mov x22,x0
02c32aa4  bl 0x05afb1f0
02c32aa8  mov x0,x22
02c32aac  bl 0x02ae4a1c
02c32ab0  bl 0x02629f70
