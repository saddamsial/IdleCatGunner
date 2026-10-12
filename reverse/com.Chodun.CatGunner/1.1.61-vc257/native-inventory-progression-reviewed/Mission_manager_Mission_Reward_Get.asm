02ba4c5c  str x30,[sp, #-0x30]!
02ba4c60  stp x22,x21,[sp, #0x10]
02ba4c64  stp x20,x19,[sp, #0x20]
02ba4c68  adrp x21,0x625b000
02ba4c6c  mov w19,w1
02ba4c70  mov x20,x0
02ba4c74  ldrb w8,[x21, #0xa43]
02ba4c78  tbnz w8,#0x0,0x02ba4c9c
02ba4c7c  adrp x0,0x5e5d000
02ba4c80  ldr x0,[x0, #0x540]
02ba4c84  bl 0x029f5a50
02ba4c88  adrp x0,0x5e5d000
02ba4c8c  ldr x0,[x0, #0xd50]
02ba4c90  bl 0x029f5a50
02ba4c94  mov w8,#0x1
02ba4c98  strb w8,[x21, #0xa43]
02ba4c9c  ldr x8,[x20, #0x20]
02ba4ca0  cbz x8,0x02ba4f0c
02ba4ca4  ldr w9,[x8, #0x18]
02ba4ca8  cmp w9,w19
02ba4cac  b.ls 0x02ba4f10
02ba4cb0  add x8,x8,w19, SXTW  #0x3
02ba4cb4  ldr x21,[x8, #0x20]
02ba4cb8  cbz x21,0x02ba4f0c
02ba4cbc  ldrb w8,[x21, #0x24]
02ba4cc0  cbz w8,0x02ba4cd4
02ba4cc4  ldp x20,x19,[sp, #0x20]
02ba4cc8  ldp x22,x21,[sp, #0x10]
02ba4ccc  ldr x30,[sp], #0x30
02ba4cd0  ret
02ba4cd4  ldrb w8,[x21, #0x26]
02ba4cd8  cbz w8,0x02ba4d04
02ba4cdc  adrp x22,0x5e5d000
02ba4ce0  ldr x22,[x22, #0xd50]
02ba4ce4  ldr x0,[x22]
02ba4ce8  ldr w8,[x0, #0xe4]
02ba4cec  cbnz w8,0x02ba4cf8
02ba4cf0  bl 0x029f5bd0
02ba4cf4  ldr x0,[x22]
02ba4cf8  ldr x8,[x0, #0xb8]
02ba4cfc  ldrb w8,[x8]
02ba4d00  cbz w8,0x02ba4d40
02ba4d04  ldr w9,[x21, #0x18]
02ba4d08  mov w8,wzr
02ba4d0c  cmp w9,#0x1
02ba4d10  b.gt 0x02ba4d28
02ba4d14  cbz w9,0x02ba4dac
02ba4d18  cmp w9,#0x1
02ba4d1c  b.ne 0x02ba4db8
02ba4d20  ldr w8,[x20, #0x54]
02ba4d24  b 0x02ba4db8
02ba4d28  cmp w9,#0x2
02ba4d2c  b.eq 0x02ba4db4
02ba4d30  cmp w9,#0x3
02ba4d34  b.ne 0x02ba4db8
02ba4d38  ldr w8,[x20, #0x5c]
02ba4d3c  b 0x02ba4db8
02ba4d40  ldr x0,[x20, #0xa8]
02ba4d44  cbz x0,0x02ba4f0c
02ba4d48  mov w1,#0x1
02ba4d4c  mov x2,xzr
02ba4d50  mov w19,#0x1
02ba4d54  bl 0x057dff3c
02ba4d58  adrp x20,0x625b000
02ba4d5c  ldrb w8,[x20, #0xa57]
02ba4d60  cbnz w8,0x02ba4d74
02ba4d64  adrp x0,0x5e5d000
02ba4d68  ldr x0,[x0, #0xd70]
02ba4d6c  bl 0x029f5a50
02ba4d70  strb w19,[x20, #0xa57]
02ba4d74  adrp x8,0x5e5d000
02ba4d78  ldr x8,[x8, #0xd70]
02ba4d7c  ldr x8,[x8]
02ba4d80  ldr x8,[x8, #0xb8]
02ba4d84  ldr x0,[x8]
02ba4d88  cbz x0,0x02ba4f0c
02ba4d8c  ldp x20,x19,[sp, #0x20]
02ba4d90  fmov s0,0x3f800000
02ba4d94  ldp x22,x21,[sp, #0x10]
02ba4d98  mov w1,#0x5
02ba4d9c  mov x2,xzr
02ba4da0  mov x3,xzr
02ba4da4  ldr x30,[sp], #0x30
02ba4da8  b 0x02c1f10c
02ba4dac  ldr w8,[x20, #0x50]
02ba4db0  b 0x02ba4db8
02ba4db4  ldr w8,[x20, #0x58]
02ba4db8  ldr w9,[x21, #0x1c]
02ba4dbc  cmp w8,w9
02ba4dc0  b.lt 0x02ba4cc4
02ba4dc4  ldr w1,[x21, #0x20]
02ba4dc8  mov w22,#0x1
02ba4dcc  mov x0,x20
02ba4dd0  strb w22,[x21, #0x24]
02ba4dd4  bl 0x02b9d264
02ba4dd8  adrp x21,0x625b000
02ba4ddc  ldrb w8,[x21, #0xa57]
02ba4de0  cbnz w8,0x02ba4df4
02ba4de4  adrp x0,0x5e5d000
02ba4de8  ldr x0,[x0, #0xd70]
02ba4dec  bl 0x029f5a50
02ba4df0  strb w22,[x21, #0xa57]
02ba4df4  adrp x8,0x5e5d000
02ba4df8  ldr x8,[x8, #0xd70]
02ba4dfc  ldr x8,[x8]
02ba4e00  ldr x8,[x8, #0xb8]
02ba4e04  ldr x0,[x8]
02ba4e08  cbz x0,0x02ba4f0c
02ba4e0c  fmov s0,0x3f800000
02ba4e10  mov w1,#0x7
02ba4e14  mov x2,xzr
02ba4e18  mov x3,xzr
02ba4e1c  bl 0x02c1f10c
02ba4e20  ldr x8,[x20, #0xa0]
02ba4e24  cbz x8,0x02ba4f0c
02ba4e28  ldr x0,[x8, #0x38]
02ba4e2c  cbz x0,0x02ba4f0c
02ba4e30  bl 0x02b9afe0
02ba4e34  mov x0,x20
02ba4e38  bl 0x02ba3bb0
02ba4e3c  ldr x8,[x20, #0x20]
02ba4e40  cbz x8,0x02ba4f0c
02ba4e44  ldr w9,[x8, #0x18]
02ba4e48  cmp w9,#0x1
02ba4e4c  b.lt 0x02ba4e88
02ba4e50  bic w11,w9,w9, ASR #0x1f
02ba4e54  mov w10,wzr
02ba4e58  mov w21,wzr
02ba4e5c  cmp w9,w10
02ba4e60  b.eq 0x02ba4f10
02ba4e64  add x12,x8,w10, SXTW  #0x3
02ba4e68  ldr x12,[x12, #0x20]
02ba4e6c  cbz x12,0x02ba4f0c
02ba4e70  ldrb w12,[x12, #0x24]
02ba4e74  add w10,w10,#0x1
02ba4e78  cmp w11,w10
02ba4e7c  add w21,w21,w12
02ba4e80  b.ne 0x02ba4e5c
02ba4e84  b 0x02ba4e8c
02ba4e88  mov w21,wzr
02ba4e8c  adrp x22,0x5e5d000
02ba4e90  ldr x22,[x22, #0xd50]
02ba4e94  ldr w20,[x20, #0x48]
02ba4e98  ldr x0,[x22]
02ba4e9c  ldr w8,[x0, #0xe4]
02ba4ea0  cbnz w8,0x02ba4eac
02ba4ea4  bl 0x029f5bd0
02ba4ea8  ldr x0,[x22]
02ba4eac  ldr x8,[x0, #0xb8]
02ba4eb0  ldrb w9,[x8, #0x1]
02ba4eb4  cbz w9,0x02ba4ec0
02ba4eb8  mov w22,#0x2
02ba4ebc  b 0x02ba4ed8
02ba4ec0  ldr w9,[x0, #0xe4]
02ba4ec4  cbnz w9,0x02ba4ed4
02ba4ec8  bl 0x029f5bd0
02ba4ecc  ldr x8,[x22]
02ba4ed0  ldr x8,[x8, #0xb8]
02ba4ed4  ldrb w22,[x8]
02ba4ed8  adrp x8,0x5e5d000
02ba4edc  ldr x8,[x8, #0x540]
02ba4ee0  ldr x0,[x8]
02ba4ee4  ldr w8,[x0, #0xe4]
02ba4ee8  cbnz w8,0x02ba4ef0
02ba4eec  bl 0x029f5bd0
02ba4ef0  mov w0,w19
02ba4ef4  mov w1,w21
02ba4ef8  mov w2,w20
02ba4efc  mov w3,w22
02ba4f00  mov w4,wzr
02ba4f04  bl 0x02b996c4
02ba4f08  b 0x02ba4cc4
02ba4f0c  bl 0x029f5cfc
02ba4f10  bl 0x029f5d04
