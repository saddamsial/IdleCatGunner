02c97f0c  stp x30,x21,[sp, #-0x20]!
02c97f10  stp x20,x19,[sp, #0x10]
02c97f14  adrp x21,0x625c000
02c97f18  adrp x20,0x5e5d000
02c97f1c  adrp x19,0x5e59000
02c97f20  ldrb w8,[x21, #0x44f]
02c97f24  ldr x20,[x20, #0xd60]
02c97f28  ldr x19,[x19, #0x1c0]
02c97f2c  tbnz w8,#0x0,0x02c97f68
02c97f30  adrp x0,0x5e58000
02c97f34  ldr x0,[x0, #0xf08]
02c97f38  bl 0x029f5a50
02c97f3c  adrp x0,0x5e59000
02c97f40  ldr x0,[x0, #0x1c0]
02c97f44  bl 0x029f5a50
02c97f48  adrp x0,0x5e5d000
02c97f4c  ldr x0,[x0, #0xd60]
02c97f50  bl 0x029f5a50
02c97f54  adrp x0,0x5e64000
02c97f58  ldr x0,[x0, #0x458]
02c97f5c  bl 0x029f5a50
02c97f60  mov w8,#0x1
02c97f64  strb w8,[x21, #0x44f]
02c97f68  ldr x8,[x20]
02c97f6c  ldr x0,[x19]
02c97f70  ldr x8,[x8, #0xb8]
02c97f74  ldr w9,[x0, #0xe4]
02c97f78  ldr x19,[x8]
02c97f7c  cbnz w9,0x02c97f84
02c97f80  bl 0x029f5bd0
02c97f84  mov x0,x19
02c97f88  mov x1,xzr
02c97f8c  mov x2,xzr
02c97f90  bl 0x057e14b4
02c97f94  mov w19,w0
02c97f98  tbz w0,#0x0,0x02c97fcc
02c97f9c  adrp x8,0x5e58000
02c97fa0  adrp x20,0x5e64000
02c97fa4  ldr x8,[x8, #0xf08]
02c97fa8  ldr x0,[x8]
02c97fac  ldr w8,[x0, #0xe4]
02c97fb0  ldr x20,[x20, #0x458]
02c97fb4  cbnz w8,0x02c97fbc
02c97fb8  bl 0x029f5bd0
02c97fbc  ldr x0,[x20]
02c97fc0  mov x1,xzr
02c97fc4  bl 0x0579a8d0
02c97fc8  b 0x02c97fe0
02c97fcc  ldr x8,[x20]
02c97fd0  ldr x8,[x8, #0xb8]
02c97fd4  ldr x0,[x8]
02c97fd8  cbz x0,0x02c97ff4
02c97fdc  bl 0x02c88594
02c97fe0  mov w8,#0x1
02c97fe4  bic w0,w8,w19
02c97fe8  ldp x20,x19,[sp, #0x10]
02c97fec  ldp x30,x21,[sp], #0x20
02c97ff0  ret
02c97ff4  bl 0x029f5cfc
