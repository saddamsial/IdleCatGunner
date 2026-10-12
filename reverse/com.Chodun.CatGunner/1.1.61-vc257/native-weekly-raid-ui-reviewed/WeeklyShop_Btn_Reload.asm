02ca6f08  str x30,[sp, #-0x30]!
02ca6f0c  stp x22,x21,[sp, #0x10]
02ca6f10  stp x20,x19,[sp, #0x20]
02ca6f14  adrp x20,0x625c000
02ca6f18  adrp x21,0x5e59000
02ca6f1c  mov x19,x0
02ca6f20  ldrb w8,[x20, #0x4da]
02ca6f24  ldr x21,[x21, #0x1c0]
02ca6f28  tbnz w8,#0x0,0x02ca6f4c
02ca6f2c  adrp x0,0x5e5d000
02ca6f30  ldr x0,[x0, #0xd40]
02ca6f34  bl 0x029f5a50
02ca6f38  adrp x0,0x5e59000
02ca6f3c  ldr x0,[x0, #0x1c0]
02ca6f40  bl 0x029f5a50
02ca6f44  mov w8,#0x1
02ca6f48  strb w8,[x20, #0x4da]
02ca6f4c  ldr x0,[x21]
02ca6f50  ldr x20,[x19, #0x40]
02ca6f54  ldr w8,[x0, #0xe4]
02ca6f58  cbnz w8,0x02ca6f60
02ca6f5c  bl 0x029f5bd0
02ca6f60  mov x0,x20
02ca6f64  mov x1,xzr
02ca6f68  mov x2,xzr
02ca6f6c  bl 0x057e14b4
02ca6f70  tbz w0,#0x0,0x02ca6f84
02ca6f74  ldp x20,x19,[sp, #0x20]
02ca6f78  ldp x22,x21,[sp, #0x10]
02ca6f7c  ldr x30,[sp], #0x30
02ca6f80  ret
02ca6f84  adrp x22,0x5e5d000
02ca6f88  ldr x22,[x22, #0xd40]
02ca6f8c  ldr x0,[x21]
02ca6f90  ldr x8,[x22]
02ca6f94  ldr w9,[x0, #0xe4]
02ca6f98  ldr x8,[x8, #0xb8]
02ca6f9c  ldr x20,[x8]
02ca6fa0  cbnz w9,0x02ca6fa8
02ca6fa4  bl 0x029f5bd0
02ca6fa8  mov x0,x20
02ca6fac  mov x1,xzr
02ca6fb0  mov x2,xzr
02ca6fb4  bl 0x057dfa70
02ca6fb8  tbz w0,#0x0,0x02ca6fdc
02ca6fbc  ldr x8,[x22]
02ca6fc0  ldr x8,[x8, #0xb8]
02ca6fc4  ldr x0,[x8]
02ca6fc8  cbz x0,0x02ca7004
02ca6fcc  mov w1,#0x3
02ca6fd0  mov x2,xzr
02ca6fd4  bl 0x02c6a65c
02ca6fd8  b 0x02ca6fe0
02ca6fdc  mov w0,wzr
02ca6fe0  ldr x8,[x19, #0x40]
02ca6fe4  cbz x8,0x02ca7004
02ca6fe8  ldp x20,x19,[sp, #0x20]
02ca6fec  and w1,w0,#0x1
02ca6ff0  ldp x22,x21,[sp, #0x10]
02ca6ff4  mov x0,x8
02ca6ff8  mov x2,xzr
02ca6ffc  ldr x30,[sp], #0x30
02ca7000  b 0x057dff3c
02ca7004  bl 0x029f5cfc
