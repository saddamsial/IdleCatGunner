02ba3f20  stp x30,x21,[sp, #-0x20]!
02ba3f24  stp x20,x19,[sp, #0x10]
02ba3f28  adrp x21,0x625b000
02ba3f2c  adrp x20,0x5e59000
02ba3f30  mov x19,x0
02ba3f34  ldrb w8,[x21, #0xa41]
02ba3f38  ldr x20,[x20, #0x7d0]
02ba3f3c  tbnz w8,#0x0,0x02ba3f6c
02ba3f40  adrp x0,0x5e59000
02ba3f44  ldr x0,[x0, #0x7d0]
02ba3f48  bl 0x029f5a50
02ba3f4c  adrp x0,0x5e5d000
02ba3f50  ldr x0,[x0, #0x3c0]
02ba3f54  bl 0x029f5a50
02ba3f58  adrp x0,0x5e5e000
02ba3f5c  ldr x0,[x0, #0x6e8]
02ba3f60  bl 0x029f5a50
02ba3f64  mov w8,#0x1
02ba3f68  strb w8,[x21, #0xa41]
02ba3f6c  ldr x0,[x20]
02ba3f70  adrp x21,0x5e5d000
02ba3f74  ldr w8,[x0, #0xe4]
02ba3f78  ldr x21,[x21, #0x3c0]
02ba3f7c  cbnz w8,0x02ba3f84
02ba3f80  bl 0x029f5bd0
02ba3f84  add x0,x19,#0x70
02ba3f88  mov x1,xzr
02ba3f8c  bl 0x04830b04
02ba3f90  ldr x8,[x21]
02ba3f94  mov x20,x0
02ba3f98  ldr w9,[x8, #0xe4]
02ba3f9c  cbnz w9,0x02ba3fa8
02ba3fa0  mov x0,x8
02ba3fa4  bl 0x029f5bd0
02ba3fa8  mov x0,xzr
02ba3fac  bl 0x02c25c90
02ba3fb0  mov x1,x0
02ba3fb4  mov x0,x20
02ba3fb8  mov x2,xzr
02ba3fbc  bl 0x0483334c
02ba3fc0  tbnz w0,#0x0,0x02ba401c
02ba3fc4  ldr x0,[x21]
02ba3fc8  adrp x20,0x5e5e000
02ba3fcc  ldr w8,[x0, #0xe4]
02ba3fd0  ldr x20,[x20, #0x6e8]
02ba3fd4  cbnz w8,0x02ba3fdc
02ba3fd8  bl 0x029f5bd0
02ba3fdc  ldr x0,[x20]
02ba3fe0  mov w1,#0x3
02ba3fe4  mov x2,xzr
02ba3fe8  bl 0x02c23998
02ba3fec  tbz w0,#0x0,0x02ba401c
02ba3ff0  ldr x0,[x21]
02ba3ff4  ldr w8,[x0, #0xe4]
02ba3ff8  cbnz w8,0x02ba4000
02ba3ffc  bl 0x029f5bd0
02ba4000  ldr x0,[x20]
02ba4004  mov x1,xzr
02ba4008  bl 0x02c25580
02ba400c  mov x0,x19
02ba4010  ldp x20,x19,[sp, #0x10]
02ba4014  ldp x30,x21,[sp], #0x20
02ba4018  b 0x02ba4ba8
02ba401c  ldp x20,x19,[sp, #0x10]
02ba4020  ldp x30,x21,[sp], #0x20
02ba4024  ret
