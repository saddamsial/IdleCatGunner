02c44f54  stp x30,x21,[sp, #-0x20]!
02c44f58  stp x20,x19,[sp, #0x10]
02c44f5c  adrp x21,0x625c000
02c44f60  adrp x20,0x5e5d000
02c44f64  mov x19,x0
02c44f68  ldrb w8,[x21, #0xed]
02c44f6c  ldr x20,[x20, #0x338]
02c44f70  tbnz w8,#0x0,0x02c44f88
02c44f74  adrp x0,0x5e5d000
02c44f78  ldr x0,[x0, #0x338]
02c44f7c  bl 0x029f5a50
02c44f80  mov w8,#0x1
02c44f84  strb w8,[x21, #0xed]
02c44f88  ldr x0,[x20]
02c44f8c  ldr w8,[x0, #0xe4]
02c44f90  cbnz w8,0x02c44f9c
02c44f94  bl 0x029f5bd0
02c44f98  ldr x0,[x20]
02c44f9c  ldr x8,[x0, #0xb8]
02c44fa0  ldrb w8,[x8]
02c44fa4  cbz w8,0x02c44fb8
02c44fa8  mov x0,x19
02c44fac  ldp x20,x19,[sp, #0x10]
02c44fb0  ldp x30,x21,[sp], #0x20
02c44fb4  b 0x02c46618
02c44fb8  ldp x20,x19,[sp, #0x10]
02c44fbc  ldp x30,x21,[sp], #0x20
02c44fc0  ret
