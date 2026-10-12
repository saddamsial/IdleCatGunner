02c51e8c  str x30,[sp, #-0x20]!
02c51e90  stp x20,x19,[sp, #0x10]
02c51e94  adrp x19,0x625c000
02c51e98  adrp x20,0x5e5e000
02c51e9c  ldrb w8,[x19, #0x162]
02c51ea0  ldr x20,[x20, #0x70]
02c51ea4  tbnz w8,#0x0,0x02c51ec8
02c51ea8  adrp x0,0x5e59000
02c51eac  ldr x0,[x0, #0x1c0]
02c51eb0  bl 0x029f5a50
02c51eb4  adrp x0,0x5e5e000
02c51eb8  ldr x0,[x0, #0x70]
02c51ebc  bl 0x029f5a50
02c51ec0  mov w8,#0x1
02c51ec4  strb w8,[x19, #0x162]
02c51ec8  ldr x0,[x20]
02c51ecc  adrp x19,0x5e59000
02c51ed0  ldr w8,[x0, #0xe4]
02c51ed4  ldr x19,[x19, #0x1c0]
02c51ed8  cbnz w8,0x02c51ee4
02c51edc  bl 0x029f5bd0
02c51ee0  ldr x0,[x20]
02c51ee4  ldr x8,[x19]
02c51ee8  ldr x9,[x0, #0xb8]
02c51eec  ldr w10,[x8, #0xe4]
02c51ef0  ldr x19,[x9]
02c51ef4  cbnz w10,0x02c51f00
02c51ef8  mov x0,x8
02c51efc  bl 0x029f5bd0
02c51f00  mov x0,x19
02c51f04  mov x1,xzr
02c51f08  mov x2,xzr
02c51f0c  bl 0x057e14b4
02c51f10  tbnz w0,#0x0,0x02c51f3c
02c51f14  ldr x0,[x20]
02c51f18  ldr w8,[x0, #0xe4]
02c51f1c  cbnz w8,0x02c51f28
02c51f20  bl 0x029f5bd0
02c51f24  ldr x0,[x20]
02c51f28  ldr x8,[x0, #0xb8]
02c51f2c  ldr x0,[x8]
02c51f30  cbz x0,0x02c51fc0
02c51f34  bl 0x02c444d8
02c51f38  tbz w0,#0x0,0x02c51f48
02c51f3c  ldp x20,x19,[sp, #0x10]
02c51f40  ldr x30,[sp], #0x20
02c51f44  ret
02c51f48  adrp x19,0x625b000
02c51f4c  ldrb w8,[x19, #0xa57]
02c51f50  cbnz w8,0x02c51f68
02c51f54  adrp x0,0x5e5d000
02c51f58  ldr x0,[x0, #0xd70]
02c51f5c  bl 0x029f5a50
02c51f60  mov w8,#0x1
02c51f64  strb w8,[x19, #0xa57]
02c51f68  adrp x8,0x5e5d000
02c51f6c  ldr x8,[x8, #0xd70]
02c51f70  ldr x8,[x8]
02c51f74  ldr x8,[x8, #0xb8]
02c51f78  ldr x0,[x8]
02c51f7c  cbz x0,0x02c51fc0
02c51f80  fmov s0,0x3f800000
02c51f84  mov w1,#0x1
02c51f88  mov x2,xzr
02c51f8c  mov x3,xzr
02c51f90  bl 0x02c1f10c
02c51f94  ldr x0,[x20]
02c51f98  ldr w8,[x0, #0xe4]
02c51f9c  cbnz w8,0x02c51fa8
02c51fa0  bl 0x029f5bd0
02c51fa4  ldr x0,[x20]
02c51fa8  ldr x8,[x0, #0xb8]
02c51fac  ldr x0,[x8]
02c51fb0  cbz x0,0x02c51fc0
02c51fb4  ldp x20,x19,[sp, #0x10]
02c51fb8  ldr x30,[sp], #0x20
02c51fbc  b 0x02c51fc4
02c51fc0  bl 0x029f5cfc
