02c87498  sub sp,sp,#0xc0
02c8749c  stp x30,x21,[sp, #0xa0]
02c874a0  stp x20,x19,[sp, #0xb0]
02c874a4  adrp x21,0x625c000
02c874a8  adrp x20,0x5e5d000
02c874ac  mov x19,x8
02c874b0  ldrb w9,[x21, #0x382]
02c874b4  ldr x20,[x20, #0xd60]
02c874b8  tbnz w9,#0x0,0x02c874d0
02c874bc  adrp x0,0x5e5d000
02c874c0  ldr x0,[x0, #0xd60]
02c874c4  bl 0x029f5a50
02c874c8  mov w8,#0x1
02c874cc  strb w8,[x21, #0x382]
02c874d0  movi v0.2D,#0x0
02c874d4  ldr x8,[x20]
02c874d8  ldr x8,[x8, #0xb8]
02c874dc  stp q0,q0,[sp, #0x60]
02c874e0  stp q0,q0,[sp, #0x80]
02c874e4  ldr x8,[x8]
02c874e8  cbz x8,0x02c8755c
02c874ec  ldr x8,[x8, #0x20]
02c874f0  cbz x8,0x02c8755c
02c874f4  ldr w9,[x8, #0x18]
02c874f8  tst w9,#0xfffffffe
02c874fc  b.eq 0x02c87560
02c87500  ldr x0,[x8, #0x28]
02c87504  cbz x0,0x02c8755c
02c87508  add x8,sp,#0x40
02c8750c  bl 0x02c8742c
02c87510  ldp q0,q1,[sp, #0x40]
02c87514  add x8,sp,#0x20
02c87518  mov w0,#0x64
02c8751c  mov x1,xzr
02c87520  stp q0,q1,[sp, #0x80]
02c87524  bl 0x046544b8
02c87528  ldp q0,q1,[sp, #0x20]
02c8752c  mov x8,sp
02c87530  add x0,sp,#0x80
02c87534  add x1,sp,#0x60
02c87538  mov x2,xzr
02c8753c  stp q0,q1,[sp, #0x60]
02c87540  bl 0x04658020
02c87544  ldp q0,q1,[sp]
02c87548  ldp x30,x21,[sp, #0xa0]
02c8754c  stp q0,q1,[x19]
02c87550  ldp x20,x19,[sp, #0xb0]
02c87554  add sp,sp,#0xc0
02c87558  ret
02c8755c  bl 0x029f5cfc
02c87560  bl 0x029f5d04
