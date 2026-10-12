02c31f28  stp x30,x21,[sp, #-0x20]!
02c31f2c  stp x20,x19,[sp, #0x10]
02c31f30  adrp x21,0x625c000
02c31f34  adrp x20,0x5e5d000
02c31f38  mov x19,x0
02c31f3c  ldrb w8,[x21, #0x3e]
02c31f40  ldr x20,[x20, #0x4d8]
02c31f44  tbnz w8,#0x0,0x02c31f5c
02c31f48  adrp x0,0x5e5d000
02c31f4c  ldr x0,[x0, #0x4d8]
02c31f50  bl 0x029f5a50
02c31f54  mov w8,#0x1
02c31f58  strb w8,[x21, #0x3e]
02c31f5c  ldr x0,[x20]
02c31f60  ldr w8,[x0, #0xe4]
02c31f64  cbnz w8,0x02c31f70
02c31f68  bl 0x029f5bd0
02c31f6c  ldr x0,[x20]
02c31f70  ldr x0,[x0, #0xb8]
02c31f74  mov x1,x19
02c31f78  str x19,[x0, #0x70]!
02c31f7c  ldp x20,x19,[sp, #0x10]
02c31f80  ldp x30,x21,[sp], #0x20
02c31f84  b 0x029f59f4
