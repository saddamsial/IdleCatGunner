02ca1ca0  sub sp,sp,#0x50
02ca1ca4  stp d9,d8,[sp, #0x10]
02ca1ca8  stp x30,x23,[sp, #0x20]
02ca1cac  stp x22,x21,[sp, #0x30]
02ca1cb0  stp x20,x19,[sp, #0x40]
02ca1cb4  adrp x21,0x625c000
02ca1cb8  adrp x20,0x5e5e000
02ca1cbc  mov x19,x0
02ca1cc0  ldrb w8,[x21, #0x48b]
02ca1cc4  ldr x20,[x20, #0x3e0]
02ca1cc8  tbnz w8,#0x0,0x02ca1cf8
02ca1ccc  adrp x0,0x5e59000
02ca1cd0  ldr x0,[x0, #0x1c0]
02ca1cd4  bl 0x029f5a50
02ca1cd8  adrp x0,0x5e5e000
02ca1cdc  ldr x0,[x0, #0x3e0]
02ca1ce0  bl 0x029f5a50
02ca1ce4  adrp x0,0x5e63000
02ca1ce8  ldr x0,[x0, #0x338]
02ca1cec  bl 0x029f5a50
02ca1cf0  mov w8,#0x1
02ca1cf4  strb w8,[x21, #0x48b]
02ca1cf8  ldr x0,[x20]
02ca1cfc  adrp x22,0x5e59000
02ca1d00  ldr w8,[x0, #0xe4]
02ca1d04  ldr x22,[x22, #0x1c0]
02ca1d08  cbnz w8,0x02ca1d14
02ca1d0c  bl 0x029f5bd0
02ca1d10  ldr x0,[x20]
02ca1d14  ldr x8,[x22]
02ca1d18  ldr x9,[x0, #0xb8]
02ca1d1c  ldr w10,[x8, #0xe4]
02ca1d20  ldr x20,[x9]
02ca1d24  cbnz w10,0x02ca1d30
02ca1d28  mov x0,x8
02ca1d2c  bl 0x029f5bd0
02ca1d30  mov x0,x20
02ca1d34  mov x1,xzr
02ca1d38  mov x2,xzr
02ca1d3c  bl 0x057e14b4
02ca1d40  tbnz w0,#0x0,0x02ca1ef4
02ca1d44  cbz x20,0x02ca1f0c
02ca1d48  mov x0,x20
02ca1d4c  bl 0x02ca10fc
02ca1d50  ldr x0,[x22]
02ca1d54  fmov s8,s0
02ca1d58  ldr x21,[x19, #0x20]
02ca1d5c  ldr w8,[x0, #0xe4]
02ca1d60  cbnz w8,0x02ca1d68
02ca1d64  bl 0x029f5bd0
02ca1d68  mov x0,x21
02ca1d6c  mov x1,xzr
02ca1d70  mov x2,xzr
02ca1d74  bl 0x057dfa70
02ca1d78  tbz w0,#0x0,0x02ca1d90
02ca1d7c  ldr x0,[x19, #0x20]
02ca1d80  cbz x0,0x02ca1f0c
02ca1d84  fmov s0,s8
02ca1d88  mov x1,xzr
02ca1d8c  bl 0x02c28290
02ca1d90  ldr x0,[x22]
02ca1d94  ldr x21,[x19, #0x28]
02ca1d98  ldr w8,[x0, #0xe4]
02ca1d9c  cbnz w8,0x02ca1da4
02ca1da0  bl 0x029f5bd0
02ca1da4  mov x0,x21
02ca1da8  mov x1,xzr
02ca1dac  mov x2,xzr
02ca1db0  bl 0x057dfa70
02ca1db4  tbz w0,#0x0,0x02ca1e6c
02ca1db8  mov w9,#0x42c80000
02ca1dbc  adrp x23,0x625b000
02ca1dc0  ldr x21,[x19, #0x28]
02ca1dc4  fmov s9,w9
02ca1dc8  ldrb w8,[x23, #0xa65]
02ca1dcc  cbnz w8,0x02ca1de4
02ca1dd0  adrp x0,0x5e59000
02ca1dd4  ldr x0,[x0]
02ca1dd8  bl 0x029f5a50
02ca1ddc  mov w8,#0x1
02ca1de0  strb w8,[x23, #0xa65]
02ca1de4  adrp x8,0x5e59000
02ca1de8  fmul s8,s8,s9
02ca1dec  ldr x8,[x8]
02ca1df0  ldr x0,[x8]
02ca1df4  ldr w8,[x0, #0xe4]
02ca1df8  cbnz w8,0x02ca1e00
02ca1dfc  bl 0x029f5bd0
02ca1e00  frintm s0,s8
02ca1e04  mov w8,#0x7f800000
02ca1e08  fcvtms w9,s8
02ca1e0c  fmov s1,w8
02ca1e10  adrp x8,0x5e58000
02ca1e14  mov w10,#0x80000000
02ca1e18  ldr x8,[x8, #0xa10]
02ca1e1c  add x1,sp,#0xc
02ca1e20  fcmp s0,s1
02ca1e24  ldr x0,[x8, #0x48]
02ca1e28  csel w9,w10,w9,eq
02ca1e2c  str w9,[sp, #0xc]
02ca1e30  bl 0x029f5bd8
02ca1e34  adrp x8,0x5e63000
02ca1e38  mov x1,x0
02ca1e3c  mov x2,xzr
02ca1e40  ldr x8,[x8, #0x338]
02ca1e44  ldr x8,[x8]
02ca1e48  mov x0,x8
02ca1e4c  bl 0x046b6c0c
02ca1e50  cbz x21,0x02ca1f0c
02ca1e54  ldr x8,[x21]
02ca1e58  mov x1,x0
02ca1e5c  mov x0,x21
02ca1e60  ldr x9,[x8, #0x558]
02ca1e64  ldr x2,[x8, #0x560]
02ca1e68  blr x9
02ca1e6c  mov x0,x20
02ca1e70  bl 0x02ca11a4
02ca1e74  ldr x8,[x22]
02ca1e78  ldr x21,[x19, #0x30]
02ca1e7c  mov w20,w0
02ca1e80  ldr w9,[x8, #0xe4]
02ca1e84  cbnz w9,0x02ca1e90
02ca1e88  mov x0,x8
02ca1e8c  bl 0x029f5bd0
02ca1e90  mov x0,x21
02ca1e94  mov x1,xzr
02ca1e98  mov x2,xzr
02ca1e9c  bl 0x057dfa70
02ca1ea0  tbz w0,#0x0,0x02ca1eb8
02ca1ea4  ldr x0,[x19, #0x30]
02ca1ea8  cbz x0,0x02ca1f0c
02ca1eac  and w1,w20,#0x1
02ca1eb0  mov x2,xzr
02ca1eb4  bl 0x057dff3c
02ca1eb8  ldr x0,[x22]
02ca1ebc  ldr x21,[x19, #0x38]
02ca1ec0  ldr w8,[x0, #0xe4]
02ca1ec4  cbnz w8,0x02ca1ecc
02ca1ec8  bl 0x029f5bd0
02ca1ecc  mov x0,x21
02ca1ed0  mov x1,xzr
02ca1ed4  mov x2,xzr
02ca1ed8  bl 0x057dfa70
02ca1edc  tbz w0,#0x0,0x02ca1ef4
02ca1ee0  ldr x0,[x19, #0x38]
02ca1ee4  cbz x0,0x02ca1f0c
02ca1ee8  and w1,w20,#0x1
02ca1eec  mov x2,xzr
02ca1ef0  bl 0x057dff3c
02ca1ef4  ldp x20,x19,[sp, #0x40]
02ca1ef8  ldp x22,x21,[sp, #0x30]
02ca1efc  ldp x30,x23,[sp, #0x20]
02ca1f00  ldp d9,d8,[sp, #0x10]
02ca1f04  add sp,sp,#0x50
02ca1f08  ret
02ca1f0c  bl 0x029f5cfc
