02c43f0c  stp x30,x21,[sp, #-0x20]!
02c43f10  stp x20,x19,[sp, #0x10]
02c43f14  adrp x21,0x625c000
02c43f18  adrp x20,0x5e59000
02c43f1c  mov x19,x0
02c43f20  ldrb w8,[x21, #0xc2]
02c43f24  ldr x20,[x20, #0x1c0]
02c43f28  tbnz w8,#0x0,0x02c43f40
02c43f2c  adrp x0,0x5e59000
02c43f30  ldr x0,[x0, #0x1c0]
02c43f34  bl 0x029f5a50
02c43f38  mov w8,#0x1
02c43f3c  strb w8,[x21, #0xc2]
02c43f40  ldr x0,[x20]
02c43f44  ldr x20,[x19, #0x28]
02c43f48  ldr w8,[x0, #0xe4]
02c43f4c  cbnz w8,0x02c43f54
02c43f50  bl 0x029f5bd0
02c43f54  mov x0,x20
02c43f58  mov x1,xzr
02c43f5c  mov x2,xzr
02c43f60  bl 0x057dfa70
02c43f64  tbz w0,#0x0,0x02c43f8c
02c43f68  ldr x0,[x19, #0x28]
02c43f6c  cbz x0,0x02c43f9c
02c43f70  mov x1,xzr
02c43f74  bl 0x057dc1c8
02c43f78  cbz x0,0x02c43f9c
02c43f7c  ldp x20,x19,[sp, #0x10]
02c43f80  mov x1,xzr
02c43f84  ldp x30,x21,[sp], #0x20
02c43f88  b 0x057e0000
02c43f8c  ldp x20,x19,[sp, #0x10]
02c43f90  mov w0,wzr
02c43f94  ldp x30,x21,[sp], #0x20
02c43f98  ret
02c43f9c  bl 0x029f5cfc
