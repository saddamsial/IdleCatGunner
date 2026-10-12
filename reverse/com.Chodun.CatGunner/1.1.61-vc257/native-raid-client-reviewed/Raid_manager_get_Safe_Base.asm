02c57f04  stp x30,x21,[sp, #-0x20]!
02c57f08  stp x20,x19,[sp, #0x10]
02c57f0c  adrp x21,0x625c000
02c57f10  adrp x20,0x5e5d000
02c57f14  adrp x19,0x5e59000
02c57f18  ldrb w8,[x21, #0x1a8]
02c57f1c  ldr x20,[x20, #0xd40]
02c57f20  ldr x19,[x19, #0x1c0]
02c57f24  tbnz w8,#0x0,0x02c57f48
02c57f28  adrp x0,0x5e5d000
02c57f2c  ldr x0,[x0, #0xd40]
02c57f30  bl 0x029f5a50
02c57f34  adrp x0,0x5e59000
02c57f38  ldr x0,[x0, #0x1c0]
02c57f3c  bl 0x029f5a50
02c57f40  mov w8,#0x1
02c57f44  strb w8,[x21, #0x1a8]
02c57f48  ldr x8,[x20]
02c57f4c  ldr x0,[x19]
02c57f50  ldr x8,[x8, #0xb8]
02c57f54  ldr w9,[x0, #0xe4]
02c57f58  ldr x19,[x8]
02c57f5c  cbnz w9,0x02c57f64
02c57f60  bl 0x029f5bd0
02c57f64  mov x0,x19
02c57f68  mov x1,xzr
02c57f6c  mov x2,xzr
02c57f70  bl 0x057dfa70
02c57f74  tbz w0,#0x0,0x02c57f9c
02c57f78  ldr x8,[x20]
02c57f7c  ldr x8,[x8, #0xb8]
02c57f80  ldr x8,[x8]
02c57f84  cbz x8,0x02c57fac
02c57f88  ldr x8,[x8, #0x40]
02c57f8c  cbz x8,0x02c57fac
02c57f90  ldr w8,[x8, #0x18]
02c57f94  add w0,w8,#0x3
02c57f98  b 0x02c57fa0
02c57f9c  mov w0,#0x13
02c57fa0  ldp x20,x19,[sp, #0x10]
02c57fa4  ldp x30,x21,[sp], #0x20
02c57fa8  ret
02c57fac  bl 0x029f5cfc
