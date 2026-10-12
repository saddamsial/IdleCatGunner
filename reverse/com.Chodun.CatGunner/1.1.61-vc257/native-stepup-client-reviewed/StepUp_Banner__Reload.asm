02ca2d98  sub sp,sp,#0x50
02ca2d9c  stp x30,x25,[sp, #0x10]
02ca2da0  stp x24,x23,[sp, #0x20]
02ca2da4  stp x22,x21,[sp, #0x30]
02ca2da8  stp x20,x19,[sp, #0x40]
02ca2dac  adrp x20,0x625c000
02ca2db0  mov x19,x0
02ca2db4  ldrb w8,[x20, #0x4a3]
02ca2db8  tbnz w8,#0x0,0x02ca2df4
02ca2dbc  adrp x0,0x5e5e000
02ca2dc0  ldr x0,[x0, #0x528]
02ca2dc4  bl 0x029f5a50
02ca2dc8  adrp x0,0x5e59000
02ca2dcc  ldr x0,[x0, #0x1c0]
02ca2dd0  bl 0x029f5a50
02ca2dd4  adrp x0,0x5e5e000
02ca2dd8  ldr x0,[x0, #0x4b8]
02ca2ddc  bl 0x029f5a50
02ca2de0  adrp x0,0x5e64000
02ca2de4  ldr x0,[x0, #0x198]
02ca2de8  bl 0x029f5a50
02ca2dec  mov w8,#0x1
02ca2df0  strb w8,[x20, #0x4a3]
02ca2df4  mov x0,x19
02ca2df8  mov x1,xzr
02ca2dfc  bl 0x057dc1c8
02ca2e00  cbz x0,0x02ca3004
02ca2e04  adrp x22,0x5e5e000
02ca2e08  adrp x23,0x5e59000
02ca2e0c  mov w1,#0x1
02ca2e10  ldr x22,[x22, #0x4b8]
02ca2e14  ldr x23,[x23, #0x1c0]
02ca2e18  mov x2,xzr
02ca2e1c  bl 0x057dff3c
02ca2e20  ldr x0,[x22]
02ca2e24  ldr w8,[x0, #0xe4]
02ca2e28  cbnz w8,0x02ca2e34
02ca2e2c  bl 0x029f5bd0
02ca2e30  ldr x0,[x22]
02ca2e34  ldr x8,[x23]
02ca2e38  ldr x9,[x0, #0xb8]
02ca2e3c  ldr w10,[x8, #0xe4]
02ca2e40  ldr x20,[x9]
02ca2e44  cbnz w10,0x02ca2e50
02ca2e48  mov x0,x8
02ca2e4c  bl 0x029f5bd0
02ca2e50  mov x0,x20
02ca2e54  mov x1,xzr
02ca2e58  mov x2,xzr
02ca2e5c  bl 0x057dfa70
02ca2e60  tbz w0,#0x0,0x02ca2e88
02ca2e64  ldr x0,[x22]
02ca2e68  ldr w8,[x0, #0xe4]
02ca2e6c  cbnz w8,0x02ca2e78
02ca2e70  bl 0x029f5bd0
02ca2e74  ldr x0,[x22]
02ca2e78  ldr x8,[x0, #0xb8]
02ca2e7c  ldr x0,[x8]
02ca2e80  cbz x0,0x02ca3004
02ca2e84  bl 0x02ca284c
02ca2e88  ldr x0,[x22]
02ca2e8c  ldr w8,[x0, #0xe4]
02ca2e90  cbnz w8,0x02ca2e9c
02ca2e94  bl 0x029f5bd0
02ca2e98  ldr x0,[x22]
02ca2e9c  ldr x8,[x0, #0xb8]
02ca2ea0  ldr x21,[x8]
02ca2ea4  cbz x21,0x02ca3004
02ca2ea8  adrp x25,0x5e5e000
02ca2eac  adrp x24,0x5e64000
02ca2eb0  mov x20,xzr
02ca2eb4  ldr x25,[x25, #0x528]
02ca2eb8  ldr x24,[x24, #0x198]
02ca2ebc  mov x0,x21
02ca2ec0  mov w1,w20
02ca2ec4  bl 0x02ca2a94
02ca2ec8  tbnz w0,#0x0,0x02ca2ee0
02ca2ecc  add x20,x20,#0x1
02ca2ed0  cmp w20,#0x5
02ca2ed4  b.ne 0x02ca2ebc
02ca2ed8  mov w20,#0xffffffff
02ca2edc  b 0x02ca2f50
02ca2ee0  ldr x0,[x23]
02ca2ee4  ldr x21,[x19, #0x28]
02ca2ee8  ldr w8,[x0, #0xe4]
02ca2eec  cbnz w8,0x02ca2ef4
02ca2ef0  bl 0x029f5bd0
02ca2ef4  mov x0,x21
02ca2ef8  mov x1,xzr
02ca2efc  mov x2,xzr
02ca2f00  bl 0x057dfa70
02ca2f04  tbz w0,#0x0,0x02ca2f50
02ca2f08  ldr x0,[x22]
02ca2f0c  ldr x21,[x19, #0x28]
02ca2f10  ldr w8,[x0, #0xe4]
02ca2f14  cbnz w8,0x02ca2f20
02ca2f18  bl 0x029f5bd0
02ca2f1c  ldr x0,[x22]
02ca2f20  ldr x8,[x0, #0xb8]
02ca2f24  ldr x8,[x8, #0x8]
02ca2f28  cbz x8,0x02ca3004
02ca2f2c  ldr w9,[x8, #0x18]
02ca2f30  cmp w20,w9
02ca2f34  b.cs 0x02ca3008
02ca2f38  cbz x21,0x02ca3004
02ca2f3c  add x8,x8,x20, LSL #0x2
02ca2f40  mov x0,x21
02ca2f44  mov x2,xzr
02ca2f48  ldr w1,[x8, #0x20]
02ca2f4c  bl 0x02c75ad0
02ca2f50  ldr x0,[x25]
02ca2f54  ldr x21,[x19, #0x30]
02ca2f58  ldr w8,[x0, #0xe4]
02ca2f5c  cbnz w8,0x02ca2f64
02ca2f60  bl 0x029f5bd0
02ca2f64  ldr x0,[x24]
02ca2f68  mov w1,#0x1
02ca2f6c  mov w2,wzr
02ca2f70  mov w3,#0x1
02ca2f74  mov w4,wzr
02ca2f78  mov x5,xzr
02ca2f7c  mov x6,xzr
02ca2f80  mov w7,#0x1
02ca2f84  str xzr,[sp]
02ca2f88  bl 0x02bccb00
02ca2f8c  adrp x8,0x5e58000
02ca2f90  mov x22,x0
02ca2f94  cmp w20,#0x0
02ca2f98  ldr x8,[x8, #0xa10]
02ca2f9c  mov w9,#0x5
02ca2fa0  mov w10,#0xc
02ca2fa4  csel w9,w10,w9,eq
02ca2fa8  add x1,sp,#0xc
02ca2fac  ldr x0,[x8, #0x48]
02ca2fb0  str w9,[sp, #0xc]
02ca2fb4  bl 0x029f5bd8
02ca2fb8  mov x1,x0
02ca2fbc  mov x0,x22
02ca2fc0  mov x2,xzr
02ca2fc4  bl 0x046b6c0c
02ca2fc8  cbz x21,0x02ca3004
02ca2fcc  ldr x8,[x21]
02ca2fd0  mov x1,x0
02ca2fd4  mov x0,x21
02ca2fd8  ldr x9,[x8, #0x558]
02ca2fdc  ldr x2,[x8, #0x560]
02ca2fe0  blr x9
02ca2fe4  mov x0,x19
02ca2fe8  bl 0x02ca3c48
02ca2fec  ldp x20,x19,[sp, #0x40]
02ca2ff0  ldp x22,x21,[sp, #0x30]
02ca2ff4  ldp x24,x23,[sp, #0x20]
02ca2ff8  ldp x30,x25,[sp, #0x10]
02ca2ffc  add sp,sp,#0x50
02ca3000  ret
02ca3004  bl 0x029f5cfc
02ca3008  bl 0x029f5d04
