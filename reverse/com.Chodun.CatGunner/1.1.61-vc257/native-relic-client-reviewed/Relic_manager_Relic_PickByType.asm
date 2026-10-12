02c32bd0  sub sp,sp,#0x70
02c32bd4  stp x29,x30,[sp, #0x10]
02c32bd8  stp x28,x27,[sp, #0x20]
02c32bdc  stp x26,x25,[sp, #0x30]
02c32be0  stp x24,x23,[sp, #0x40]
02c32be4  stp x22,x21,[sp, #0x50]
02c32be8  stp x20,x19,[sp, #0x60]
02c32bec  adrp x21,0x625c000
02c32bf0  mov w20,w1
02c32bf4  mov x19,x0
02c32bf8  ldrb w8,[x21, #0x44]
02c32bfc  tbnz w8,#0x0,0x02c32c50
02c32c00  adrp x0,0x5e63000
02c32c04  ldr x0,[x0, #0xa8]
02c32c08  bl 0x029f5a50
02c32c0c  adrp x0,0x5e63000
02c32c10  ldr x0,[x0, #0xb0]
02c32c14  bl 0x029f5a50
02c32c18  adrp x0,0x5e63000
02c32c1c  ldr x0,[x0, #0xb8]
02c32c20  bl 0x029f5a50
02c32c24  adrp x0,0x5e63000
02c32c28  ldr x0,[x0, #0xc0]
02c32c2c  bl 0x029f5a50
02c32c30  adrp x0,0x5e63000
02c32c34  ldr x0,[x0, #0xc8]
02c32c38  bl 0x029f5a50
02c32c3c  adrp x0,0x5e5d000
02c32c40  ldr x0,[x0, #0x4d8]
02c32c44  bl 0x029f5a50
02c32c48  mov w8,#0x1
02c32c4c  strb w8,[x21, #0x44]
02c32c50  cmp w20,#0x3
02c32c54  b.ne 0x02c32c6c
02c32c58  ldr x8,[x19, #0x20]
02c32c5c  cbz x8,0x02c32e34
02c32c60  ldr w23,[x8, #0x18]
02c32c64  mov w22,wzr
02c32c68  b 0x02c32c74
02c32c6c  add w22,w20,w20, LSL #0x2
02c32c70  mov w23,#0x5
02c32c74  adrp x8,0x5e63000
02c32c78  adrp x20,0x5e63000
02c32c7c  ldr x8,[x8, #0xc8]
02c32c80  ldr x20,[x20, #0xb0]
02c32c84  ldr x0,[x8]
02c32c88  bl 0x029f5cec
02c32c8c  ldr x1,[x20]
02c32c90  mov x21,x0
02c32c94  bl 0x0452c340
02c32c98  add w8,w22,w23
02c32c9c  str w23,[sp, #0x4]
02c32ca0  cmp w22,w8
02c32ca4  str x22,[sp, #0x8]
02c32ca8  b.ge 0x02c32d8c
02c32cac  ldr x9,[sp, #0x8]
02c32cb0  adrp x24,0x5e5d000
02c32cb4  mov w25,#0x32
02c32cb8  ldr x24,[x24, #0x4d8]
02c32cbc  ldr w29,[sp, #0x4]
02c32cc0  mov w28,#0x12c
02c32cc4  sbfiz x8,x9,#0x3,#0x20
02c32cc8  mov w20,w9
02c32ccc  add x27,x8,#0x20
02c32cd0  ldr x8,[x19, #0x20]
02c32cd4  cbz x8,0x02c32e34
02c32cd8  ldr w9,[x8, #0x18]
02c32cdc  cmp w20,w9
02c32ce0  b.cs 0x02c32e38
02c32ce4  ldr x22,[x8, x27, LSL #0x0]
02c32ce8  cbz x22,0x02c32e34
02c32cec  ldr x0,[x24]
02c32cf0  ldr w23,[x22, #0x18]
02c32cf4  ldr w26,[x22, #0x10]
02c32cf8  ldr w8,[x0, #0xe4]
02c32cfc  cbnz w8,0x02c32d04
02c32d00  bl 0x029f5bd0
02c32d04  cmp w26,#0x9
02c32d08  csel w8,w28,w25,cc
02c32d0c  cmp w23,w8
02c32d10  b.ge 0x02c32d7c
02c32d14  cbz x21,0x02c32e34
02c32d18  adrp x9,0x5e63000
02c32d1c  ldr w10,[x21, #0x1c]
02c32d20  ldr x8,[x21, #0x10]
02c32d24  ldr x9,[x9, #0xa8]
02c32d28  add w10,w10,#0x1
02c32d2c  ldr x9,[x9]
02c32d30  str w10,[x21, #0x1c]
02c32d34  cbz x8,0x02c32e34
02c32d38  ldrsw x10,[x21, #0x18]
02c32d3c  ldr w11,[x8, #0x18]
02c32d40  cmp w10,w11
02c32d44  b.cs 0x02c32d64
02c32d48  add x0,x8,x10, LSL #0x3
02c32d4c  add w9,w10,#0x1
02c32d50  mov x1,x22
02c32d54  str w9,[x21, #0x18]
02c32d58  str x22,[x0, #0x20]!
02c32d5c  bl 0x029f59f4
02c32d60  b 0x02c32d7c
02c32d64  ldr x8,[x9, #0x20]
02c32d68  mov x0,x21
02c32d6c  mov x1,x22
02c32d70  ldr x8,[x8, #0xc0]
02c32d74  ldr x2,[x8, #0x70]
02c32d78  bl 0x0452cba8
02c32d7c  subs w29,w29,#0x1
02c32d80  add w20,w20,#0x1
02c32d84  add x27,x27,#0x8
02c32d88  b.ne 0x02c32cd0
02c32d8c  cbz x21,0x02c32e34
02c32d90  ldr w1,[x21, #0x18]
02c32d94  ldr x20,[sp, #0x8]
02c32d98  ldr w8,[sp, #0x4]
02c32d9c  cmp w1,#0x1
02c32da0  b.lt 0x02c32de4
02c32da4  adrp x19,0x5e63000
02c32da8  mov w0,wzr
02c32dac  mov x2,xzr
02c32db0  ldr x19,[x19, #0xc0]
02c32db4  bl 0x057d5614
02c32db8  ldr x2,[x19]
02c32dbc  mov w1,w0
02c32dc0  mov x0,x21
02c32dc4  ldp x20,x19,[sp, #0x60]
02c32dc8  ldp x22,x21,[sp, #0x50]
02c32dcc  ldp x24,x23,[sp, #0x40]
02c32dd0  ldp x26,x25,[sp, #0x30]
02c32dd4  ldp x28,x27,[sp, #0x20]
02c32dd8  ldp x29,x30,[sp, #0x10]
02c32ddc  add sp,sp,#0x70
02c32de0  b 0x0452c8d8
02c32de4  ldr x19,[x19, #0x20]
02c32de8  mov w0,wzr
02c32dec  mov w1,w8
02c32df0  mov x2,xzr
02c32df4  bl 0x057d5614
02c32df8  cbz x19,0x02c32e34
02c32dfc  ldr w9,[x19, #0x18]
02c32e00  add w8,w0,w20
02c32e04  cmp w8,w9
02c32e08  b.cs 0x02c32e38
02c32e0c  add x8,x19,w8, SXTW  #0x3
02c32e10  ldp x20,x19,[sp, #0x60]
02c32e14  ldp x22,x21,[sp, #0x50]
02c32e18  ldp x24,x23,[sp, #0x40]
02c32e1c  ldr x0,[x8, #0x20]
02c32e20  ldp x26,x25,[sp, #0x30]
02c32e24  ldp x28,x27,[sp, #0x20]
02c32e28  ldp x29,x30,[sp, #0x10]
02c32e2c  add sp,sp,#0x70
02c32e30  ret
02c32e34  bl 0x029f5cfc
02c32e38  bl 0x029f5d04
