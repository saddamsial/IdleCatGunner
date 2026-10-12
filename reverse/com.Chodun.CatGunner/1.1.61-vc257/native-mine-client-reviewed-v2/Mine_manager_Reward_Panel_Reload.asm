02c49d80  sub sp,sp,#0x40
02c49d84  stp x30,x23,[sp, #0x10]
02c49d88  stp x22,x21,[sp, #0x20]
02c49d8c  stp x20,x19,[sp, #0x30]
02c49d90  adrp x20,0x625c000
02c49d94  mov x19,x0
02c49d98  ldrb w8,[x20, #0x110]
02c49d9c  tbnz w8,#0x0,0x02c49dcc
02c49da0  adrp x0,0x5e5d000
02c49da4  ldr x0,[x0, #0x338]
02c49da8  bl 0x029f5a50
02c49dac  adrp x0,0x5e5e000
02c49db0  ldr x0,[x0, #0xb8]
02c49db4  bl 0x029f5a50
02c49db8  adrp x0,0x5e5d000
02c49dbc  ldr x0,[x0, #0x920]
02c49dc0  bl 0x029f5a50
02c49dc4  mov w8,#0x1
02c49dc8  strb w8,[x20, #0x110]
02c49dcc  ldp w10,w8,[x19, #0x60]
02c49dd0  mov w9,#0x6667
02c49dd4  sxtw x8,w8
02c49dd8  movk w9,#0x6666, LSL #16
02c49ddc  smull x8,w8,w9
02c49de0  lsr x9,x8,#0x3f
02c49de4  asr x8,x8,#0x22
02c49de8  add w20,w8,w9
02c49dec  adrp x8,0x5e5e000
02c49df0  ldr x8,[x8, #0xb8]
02c49df4  cmp w20,w10
02c49df8  str wzr,[sp, #0xc]
02c49dfc  b.le 0x02c49e04
02c49e00  str w20,[x19, #0x60]
02c49e04  ldr x0,[x8]
02c49e08  ldr w8,[x0, #0xe4]
02c49e0c  cbnz w8,0x02c49e14
02c49e10  bl 0x029f5bd0
02c49e14  mov x0,xzr
02c49e18  bl 0x02c90914
02c49e1c  scvtf s1,w20
02c49e20  mov w8,#0x7f800000
02c49e24  mov x20,x19
02c49e28  mov x1,xzr
02c49e2c  fmul s0,s0,s1
02c49e30  fmov s1,w8
02c49e34  mov w8,#0x80000000
02c49e38  fcvtzs w9,s0
02c49e3c  fcmp s0,s1
02c49e40  csel w8,w8,w9,eq
02c49e44  lsl w9,w8,#0x2
02c49e48  str w8,[x20, #0xd0]!
02c49e4c  ldur x21,[x20, #-0x28]
02c49e50  mov x0,x20
02c49e54  str w9,[sp, #0xc]
02c49e58  bl 0x0484e6a4
02c49e5c  cbz x21,0x02c49f54
02c49e60  ldr x8,[x21]
02c49e64  mov x1,x0
02c49e68  mov x0,x21
02c49e6c  ldr x9,[x8, #0x558]
02c49e70  ldr x2,[x8, #0x560]
02c49e74  blr x9
02c49e78  ldr x21,[x19, #0xb0]
02c49e7c  add x0,sp,#0xc
02c49e80  mov x1,xzr
02c49e84  bl 0x0484e6a4
02c49e88  cbz x21,0x02c49f54
02c49e8c  adrp x23,0x5e5d000
02c49e90  adrp x22,0x5e5d000
02c49e94  mov x1,x0
02c49e98  ldr x23,[x23, #0x920]
02c49e9c  ldr x8,[x21]
02c49ea0  ldr x22,[x22, #0x338]
02c49ea4  mov x0,x21
02c49ea8  ldr x9,[x8, #0x558]
02c49eac  ldr x2,[x8, #0x560]
02c49eb0  blr x9
02c49eb4  ldr x0,[x23]
02c49eb8  ldr w8,[x0, #0xe4]
02c49ebc  cbnz w8,0x02c49ec4
02c49ec0  bl 0x029f5bd0
02c49ec4  mov x0,xzr
02c49ec8  bl 0x02c92704
02c49ecc  mov w21,w0
02c49ed0  ldr x0,[x22]
02c49ed4  ldr w8,[x0, #0xe4]
02c49ed8  tbz w21,#0x0,0x02c49ee8
02c49edc  ldr w20,[sp, #0xc]
02c49ee0  cbnz w8,0x02c49ef4
02c49ee4  b 0x02c49ef0
02c49ee8  ldr w20,[x20]
02c49eec  cbnz w8,0x02c49ef4
02c49ef0  bl 0x029f5bd0
02c49ef4  mov w0,w20
02c49ef8  mov x1,xzr
02c49efc  bl 0x02b7ed10
02c49f00  ldr x0,[x19, #0xc8]
02c49f04  cbz x0,0x02c49f54
02c49f08  eor w20,w21,#0x1
02c49f0c  mov x2,xzr
02c49f10  and w1,w20,#0x1
02c49f14  bl 0x057dff3c
02c49f18  ldr x0,[x19, #0xb8]
02c49f1c  cbz x0,0x02c49f54
02c49f20  and w1,w20,#0x1
02c49f24  mov x2,xzr
02c49f28  bl 0x057dff3c
02c49f2c  ldr x0,[x19, #0xc0]
02c49f30  cbz x0,0x02c49f54
02c49f34  and w1,w21,#0x1
02c49f38  mov x2,xzr
02c49f3c  bl 0x057dff3c
02c49f40  ldp x20,x19,[sp, #0x30]
02c49f44  ldp x22,x21,[sp, #0x20]
02c49f48  ldp x30,x23,[sp, #0x10]
02c49f4c  add sp,sp,#0x40
02c49f50  ret
02c49f54  bl 0x029f5cfc
