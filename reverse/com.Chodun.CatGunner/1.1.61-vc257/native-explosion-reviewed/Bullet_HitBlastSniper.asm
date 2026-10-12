02c66c64  str d10,[sp, #-0x50]!
02c66c68  stp d9,d8,[sp, #0x10]
02c66c6c  stp x30,x23,[sp, #0x20]
02c66c70  stp x22,x21,[sp, #0x30]
02c66c74  stp x20,x19,[sp, #0x40]
02c66c78  fmov s8,s2
02c66c7c  fmov s9,s1
02c66c80  adrp x23,0x625c000
02c66c84  fmov s10,s0
02c66c88  ldrb w8,[x23, #0x251]
02c66c8c  mov w21,w3
02c66c90  mov w22,w2
02c66c94  mov x20,x1
02c66c98  mov x19,x0
02c66c9c  tbnz w8,#0x0,0x02c66cc0
02c66ca0  adrp x0,0x5e5d000
02c66ca4  ldr x0,[x0, #0x560]
02c66ca8  bl 0x029f5a50
02c66cac  adrp x0,0x5e59000
02c66cb0  ldr x0,[x0, #0x1c0]
02c66cb4  bl 0x029f5a50
02c66cb8  mov w8,#0x1
02c66cbc  strb w8,[x23, #0x251]
02c66cc0  ldrb w8,[x19, #0xcc]
02c66cc4  cbz w8,0x02c66cfc
02c66cc8  and w2,w22,#0x1
02c66ccc  mov x0,x19
02c66cd0  mov x1,x20
02c66cd4  fmov s1,s9
02c66cd8  fmov s2,s8
02c66cdc  mov w3,w21
02c66ce0  ldp x20,x19,[sp, #0x40]
02c66ce4  fmov s0,s10
02c66ce8  ldp x22,x21,[sp, #0x30]
02c66cec  ldp x30,x23,[sp, #0x20]
02c66cf0  ldp d9,d8,[sp, #0x10]
02c66cf4  ldr d10,[sp], #0x50
02c66cf8  b 0x02c66980
02c66cfc  mov w21,#0x1
02c66d00  strb w21,[x19, #0xcc]
02c66d04  tbz w22,#0x0,0x02c66d94
02c66d08  cbz x20,0x02c66e20
02c66d0c  adrp x8,0x5e5d000
02c66d10  mov x0,x20
02c66d14  ldr x8,[x8, #0x560]
02c66d18  ldr x1,[x8]
02c66d1c  bl 0x02fe5f2c
02c66d20  adrp x21,0x5e59000
02c66d24  mov x20,x0
02c66d28  ldr x21,[x21, #0x1c0]
02c66d2c  ldr x8,[x21]
02c66d30  ldr w9,[x8, #0xe4]
02c66d34  cbnz w9,0x02c66d40
02c66d38  mov x0,x8
02c66d3c  bl 0x029f5bd0
02c66d40  mov x0,x20
02c66d44  mov x1,xzr
02c66d48  mov x2,xzr
02c66d4c  bl 0x057dfa70
02c66d50  tbz w0,#0x0,0x02c66d90
02c66d54  cbz x20,0x02c66e20
02c66d58  ldr x0,[x21]
02c66d5c  ldr x21,[x20, #0x20]
02c66d60  ldr w8,[x0, #0xe4]
02c66d64  cbnz w8,0x02c66d6c
02c66d68  bl 0x029f5bd0
02c66d6c  mov x0,x21
02c66d70  mov x1,xzr
02c66d74  mov x2,xzr
02c66d78  bl 0x057dfa70
02c66d7c  tbz w0,#0x0,0x02c66d90
02c66d80  ldr x8,[x20, #0x20]
02c66d84  cbz x8,0x02c66e20
02c66d88  ldrb w9,[x8, #0x24]
02c66d8c  cbz w9,0x02c66e08
02c66d90  mov w21,#0x1
02c66d94  fmov s0,s10
02c66d98  fmov s1,s9
02c66d9c  mov x0,x19
02c66da0  fmov s2,s8
02c66da4  bl 0x02c65edc
02c66da8  ldrb w8,[x19, #0xdc]
02c66dac  cbz w8,0x02c66dd0
02c66db0  tbz w21,#0x0,0x02c66df0
02c66db4  mov x0,x19
02c66db8  ldp x20,x19,[sp, #0x40]
02c66dbc  ldp x22,x21,[sp, #0x30]
02c66dc0  ldp x30,x23,[sp, #0x20]
02c66dc4  ldp d9,d8,[sp, #0x10]
02c66dc8  ldr d10,[sp], #0x50
02c66dcc  b 0x02c66330
02c66dd0  fmov s0,s10
02c66dd4  fmov s1,s9
02c66dd8  mov w8,#0x1
02c66ddc  fmov s2,s8
02c66de0  mov x0,x19
02c66de4  strb w8,[x19, #0xdc]
02c66de8  bl 0x02c66180
02c66dec  tbnz w21,#0x0,0x02c66db4
02c66df0  ldp x20,x19,[sp, #0x40]
02c66df4  ldp x22,x21,[sp, #0x30]
02c66df8  ldp x30,x23,[sp, #0x20]
02c66dfc  ldp d9,d8,[sp, #0x10]
02c66e00  ldr d10,[sp], #0x50
02c66e04  ret
02c66e08  add x0,x19,#0x28
02c66e0c  add x1,x8,#0x28
02c66e10  mov x2,xzr
02c66e14  bl 0x04654530
02c66e18  eor w21,w0,#0x1
02c66e1c  b 0x02c66d94
02c66e20  bl 0x029f5cfc
