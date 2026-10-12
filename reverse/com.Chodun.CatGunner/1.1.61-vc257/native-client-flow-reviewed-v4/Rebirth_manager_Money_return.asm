02c87564  sub sp,sp,#0xc0
02c87568  stp x30,x21,[sp, #0xa0]
02c8756c  stp x20,x19,[sp, #0xb0]
02c87570  adrp x21,0x625c000
02c87574  adrp x20,0x5e5d000
02c87578  mov x19,x8
02c8757c  ldrb w9,[x21, #0x383]
02c87580  ldr x20,[x20, #0xd60]
02c87584  tbnz w9,#0x0,0x02c8759c
02c87588  adrp x0,0x5e5d000
02c8758c  ldr x0,[x0, #0xd60]
02c87590  bl 0x029f5a50
02c87594  mov w8,#0x1
02c87598  strb w8,[x21, #0x383]
02c8759c  movi v0.2D,#0x0
02c875a0  ldr x8,[x20]
02c875a4  ldr x8,[x8, #0xb8]
02c875a8  stp q0,q0,[sp, #0x60]
02c875ac  stp q0,q0,[sp, #0x80]
02c875b0  ldr x8,[x8]
02c875b4  cbz x8,0x02c87628
02c875b8  ldr x8,[x8, #0x20]
02c875bc  cbz x8,0x02c87628
02c875c0  ldr w9,[x8, #0x18]
02c875c4  cmp w9,#0x2
02c875c8  b.ls 0x02c8762c
02c875cc  ldr x0,[x8, #0x30]
02c875d0  cbz x0,0x02c87628
02c875d4  add x8,sp,#0x40
02c875d8  bl 0x02c8742c
02c875dc  ldp q0,q1,[sp, #0x40]
02c875e0  add x8,sp,#0x20
02c875e4  mov w0,#0x64
02c875e8  mov x1,xzr
02c875ec  stp q0,q1,[sp, #0x80]
02c875f0  bl 0x046544b8
02c875f4  ldp q0,q1,[sp, #0x20]
02c875f8  mov x8,sp
02c875fc  add x0,sp,#0x80
02c87600  add x1,sp,#0x60
02c87604  mov x2,xzr
02c87608  stp q0,q1,[sp, #0x60]
02c8760c  bl 0x04658020
02c87610  ldp q0,q1,[sp]
02c87614  ldp x30,x21,[sp, #0xa0]
02c87618  stp q0,q1,[x19]
02c8761c  ldp x20,x19,[sp, #0xb0]
02c87620  add sp,sp,#0xc0
02c87624  ret
02c87628  bl 0x029f5cfc
02c8762c  bl 0x029f5d04
