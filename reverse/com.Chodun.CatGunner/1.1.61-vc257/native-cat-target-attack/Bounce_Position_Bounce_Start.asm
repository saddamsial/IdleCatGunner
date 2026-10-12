02b9c250  str x30,[sp, #-0x20]!
02b9c254  stp x20,x19,[sp, #0x10]
02b9c258  adrp x20,0x625b000
02b9c25c  mov x19,x0
02b9c260  ldrb w8,[x20, #0x9bb]
02b9c264  tbnz w8,#0x0,0x02b9c27c
02b9c268  adrp x0,0x5e5e000
02b9c26c  ldr x0,[x0, #0x368]
02b9c270  bl 0x029f5a50
02b9c274  mov w8,#0x1
02b9c278  strb w8,[x20, #0x9bb]
02b9c27c  ldrb w8,[x19, #0x38]
02b9c280  str wzr,[x19, #0x20]
02b9c284  cbnz w8,0x02b9c2cc
02b9c288  mov w8,#0x1
02b9c28c  mov x0,x19
02b9c290  mov x1,xzr
02b9c294  strb w8,[x19, #0x38]
02b9c298  bl 0x057dc1c8
02b9c29c  cbz x0,0x02b9c2d8
02b9c2a0  mov x1,xzr
02b9c2a4  bl 0x057e00b4
02b9c2a8  tbz w0,#0x0,0x02b9c2cc
02b9c2ac  adrp x8,0x5e5e000
02b9c2b0  mov x0,x19
02b9c2b4  mov x2,xzr
02b9c2b8  ldr x8,[x8, #0x368]
02b9c2bc  ldp x20,x19,[sp, #0x10]
02b9c2c0  ldr x1,[x8]
02b9c2c4  ldr x30,[sp], #0x20
02b9c2c8  b 0x057e1df4
02b9c2cc  ldp x20,x19,[sp, #0x10]
02b9c2d0  ldr x30,[sp], #0x20
02b9c2d4  ret
02b9c2d8  bl 0x029f5cfc
