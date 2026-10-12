02c69f50  str x30,[sp, #-0x20]!
02c69f54  stp x20,x19,[sp, #0x10]
02c69f58  adrp x20,0x625c000
02c69f5c  adrp x19,0x5e5d000
02c69f60  ldrb w8,[x20, #0x272]
02c69f64  ldr x19,[x19, #0x3c0]
02c69f68  tbnz w8,#0x0,0x02c69f8c
02c69f6c  adrp x0,0x5e5d000
02c69f70  ldr x0,[x0, #0x3c0]
02c69f74  bl 0x029f5a50
02c69f78  adrp x0,0x5e5d000
02c69f7c  ldr x0,[x0, #0x3e0]
02c69f80  bl 0x029f5a50
02c69f84  mov w8,#0x1
02c69f88  strb w8,[x20, #0x272]
02c69f8c  ldr x0,[x19]
02c69f90  adrp x19,0x5e5d000
02c69f94  ldr w8,[x0, #0xe4]
02c69f98  ldr x19,[x19, #0x3e0]
02c69f9c  cbnz w8,0x02c69fa4
02c69fa0  bl 0x029f5bd0
02c69fa4  mov x0,xzr
02c69fa8  bl 0x02c25b48
02c69fac  ldr x1,[x19]
02c69fb0  ldp x20,x19,[sp, #0x10]
02c69fb4  mov x2,xzr
02c69fb8  ldr x30,[sp], #0x20
02c69fbc  b 0x02c1485c
