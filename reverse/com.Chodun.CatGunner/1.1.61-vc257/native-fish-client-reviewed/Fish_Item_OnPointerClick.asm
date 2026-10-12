02c61ebc  str x30,[sp, #-0x30]!
02c61ec0  stp x22,x21,[sp, #0x10]
02c61ec4  stp x20,x19,[sp, #0x20]
02c61ec8  adrp x20,0x625c000
02c61ecc  mov x19,x0
02c61ed0  ldrb w8,[x20, #0x229]
02c61ed4  tbnz w8,#0x0,0x02c61ef8
02c61ed8  adrp x0,0x5e5d000
02c61edc  ldr x0,[x0, #0xd38]
02c61ee0  bl 0x029f5a50
02c61ee4  adrp x0,0x5e59000
02c61ee8  ldr x0,[x0, #0x1c0]
02c61eec  bl 0x029f5a50
02c61ef0  mov w8,#0x1
02c61ef4  strb w8,[x20, #0x229]
02c61ef8  ldrb w8,[x19, #0x86]
02c61efc  cbnz w8,0x02c61f08
02c61f00  ldrb w8,[x19, #0x85]
02c61f04  cbz w8,0x02c61f1c
02c61f08  strb wzr,[x19, #0x85]
02c61f0c  ldp x20,x19,[sp, #0x20]
02c61f10  ldp x22,x21,[sp, #0x10]
02c61f14  ldr x30,[sp], #0x30
02c61f18  ret
02c61f1c  ldrb w8,[x19, #0x48]
02c61f20  cbz w8,0x02c61f0c
02c61f24  ldr w8,[x19, #0x40]
02c61f28  tbnz w8,#0x1f,0x02c61f0c
02c61f2c  adrp x21,0x5e5d000
02c61f30  adrp x22,0x5e59000
02c61f34  ldr x21,[x21, #0xd38]
02c61f38  ldr x22,[x22, #0x1c0]
02c61f3c  ldr x8,[x21]
02c61f40  ldr x0,[x22]
02c61f44  ldr x8,[x8, #0xb8]
02c61f48  ldr w9,[x0, #0xe4]
02c61f4c  ldr x20,[x8]
02c61f50  cbnz w9,0x02c61f58
02c61f54  bl 0x029f5bd0
02c61f58  mov x0,x20
02c61f5c  mov x1,xzr
02c61f60  mov x2,xzr
02c61f64  bl 0x057dfa70
02c61f68  tbz w0,#0x0,0x02c61f0c
02c61f6c  ldr x8,[x21]
02c61f70  ldr x8,[x8, #0xb8]
02c61f74  ldr x8,[x8]
02c61f78  cbz x8,0x02c61fd0
02c61f7c  ldr x0,[x22]
02c61f80  ldr x20,[x8, #0x50]
02c61f84  ldr w9,[x0, #0xe4]
02c61f88  cbnz w9,0x02c61f90
02c61f8c  bl 0x029f5bd0
02c61f90  mov x0,x20
02c61f94  mov x1,xzr
02c61f98  mov x2,xzr
02c61f9c  bl 0x057dfa70
02c61fa0  tbz w0,#0x0,0x02c61f0c
02c61fa4  ldr x8,[x21]
02c61fa8  ldr x8,[x8, #0xb8]
02c61fac  ldr x8,[x8]
02c61fb0  cbz x8,0x02c61fd0
02c61fb4  ldr x0,[x8, #0x50]
02c61fb8  cbz x0,0x02c61fd0
02c61fbc  ldr w1,[x19, #0x40]
02c61fc0  ldp x20,x19,[sp, #0x20]
02c61fc4  ldp x22,x21,[sp, #0x10]
02c61fc8  ldr x30,[sp], #0x30
02c61fcc  b 0x02c604c8
02c61fd0  bl 0x029f5cfc
