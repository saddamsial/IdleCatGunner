02c46ef8  sub sp,sp,#0x80
02c46efc  stp x30,x21,[sp, #0x60]
02c46f00  stp x20,x19,[sp, #0x70]
02c46f04  adrp x21,0x625c000
02c46f08  adrp x20,0x5e5d000
02c46f0c  mov x19,x0
02c46f10  ldrb w8,[x21, #0xe7]
02c46f14  ldr x20,[x20, #0x338]
02c46f18  tbnz w8,#0x0,0x02c46f30
02c46f1c  adrp x0,0x5e5d000
02c46f20  ldr x0,[x0, #0x338]
02c46f24  bl 0x029f5a50
02c46f28  mov w8,#0x1
02c46f2c  strb w8,[x21, #0xe7]
02c46f30  movi v0.2D,#0x0
02c46f34  ldr x0,[x20]
02c46f38  ldr w8,[x0, #0xe4]
02c46f3c  stp q0,q0,[sp, #0x20]
02c46f40  stp q0,q0,[sp, #0x40]
02c46f44  cbnz w8,0x02c46f4c
02c46f48  bl 0x029f5bd0
02c46f4c  mov x8,sp
02c46f50  mov x0,xzr
02c46f54  bl 0x02b80d74
02c46f58  ldp q0,q1,[sp]
02c46f5c  add x8,sp,#0x20
02c46f60  ldr w1,[x19, #0x20]
02c46f64  mov x0,x19
02c46f68  stp q0,q1,[sp, #0x40]
02c46f6c  bl 0x02c46c8c
02c46f70  add x0,sp,#0x40
02c46f74  add x1,sp,#0x20
02c46f78  mov x2,xzr
02c46f7c  bl 0x04654530
02c46f80  ldp x20,x19,[sp, #0x70]
02c46f84  and w0,w0,#0x1
02c46f88  ldp x30,x21,[sp, #0x60]
02c46f8c  add sp,sp,#0x80
02c46f90  ret
