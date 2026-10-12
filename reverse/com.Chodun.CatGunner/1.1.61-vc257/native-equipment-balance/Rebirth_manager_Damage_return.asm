02c87364  sub sp,sp,#0xc0
02c87368  stp x30,x21,[sp, #0xa0]
02c8736c  stp x20,x19,[sp, #0xb0]
02c87370  adrp x21,0x625c000
02c87374  adrp x20,0x5e5d000
02c87378  mov x19,x8
02c8737c  ldrb w9,[x21, #0x381]
02c87380  ldr x20,[x20, #0xd60]
02c87384  tbnz w9,#0x0,0x02c8739c
02c87388  adrp x0,0x5e5d000
02c8738c  ldr x0,[x0, #0xd60]
02c87390  bl 0x029f5a50
02c87394  mov w8,#0x1
02c87398  strb w8,[x21, #0x381]
02c8739c  movi v0.2D,#0x0
02c873a0  ldr x8,[x20]
02c873a4  ldr x8,[x8, #0xb8]
02c873a8  stp q0,q0,[sp, #0x60]
02c873ac  stp q0,q0,[sp, #0x80]
02c873b0  ldr x8,[x8]
02c873b4  cbz x8,0x02c87424
02c873b8  ldr x8,[x8, #0x20]
02c873bc  cbz x8,0x02c87424
02c873c0  ldr w9,[x8, #0x18]
02c873c4  cbz w9,0x02c87428
02c873c8  ldr x0,[x8, #0x20]
02c873cc  cbz x0,0x02c87424
02c873d0  add x8,sp,#0x40
02c873d4  bl 0x02c8742c
02c873d8  ldp q0,q1,[sp, #0x40]
02c873dc  add x8,sp,#0x20
02c873e0  mov w0,#0x64
02c873e4  mov x1,xzr
02c873e8  stp q0,q1,[sp, #0x80]
02c873ec  bl 0x046544b8
02c873f0  ldp q0,q1,[sp, #0x20]
02c873f4  mov x8,sp
02c873f8  add x0,sp,#0x80
02c873fc  add x1,sp,#0x60
02c87400  mov x2,xzr
02c87404  stp q0,q1,[sp, #0x60]
02c87408  bl 0x04658020
02c8740c  ldp q0,q1,[sp]
02c87410  ldp x30,x21,[sp, #0xa0]
02c87414  stp q0,q1,[x19]
02c87418  ldp x20,x19,[sp, #0xb0]
02c8741c  add sp,sp,#0xc0
02c87420  ret
02c87424  bl 0x029f5cfc
02c87428  bl 0x029f5d04
