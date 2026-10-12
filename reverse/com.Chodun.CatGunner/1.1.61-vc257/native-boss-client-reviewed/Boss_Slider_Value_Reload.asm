02c4692c  sub sp,sp,#0x60
02c46930  str x30,[sp, #0x40]
02c46934  stp x20,x19,[sp, #0x50]
02c46938  movi v0.2D,#0x0
02c4693c  mov x19,x1
02c46940  mov x20,x0
02c46944  mov x8,sp
02c46948  mov x0,x1
02c4694c  mov x1,x2
02c46950  mov x2,xzr
02c46954  stp q0,q0,[sp, #0x20]
02c46958  bl 0x046587e8
02c4695c  ldp q0,q1,[sp]
02c46960  add x0,sp,#0x20
02c46964  mov x1,xzr
02c46968  stp q0,q1,[sp, #0x20]
02c4696c  bl 0x046572f8
02c46970  ldr x0,[x20, #0x20]
02c46974  cbz x0,0x02c469bc
02c46978  mov x1,xzr
02c4697c  bl 0x02c28290
02c46980  ldr x20,[x20, #0x30]
02c46984  mov x0,x19
02c46988  mov x1,xzr
02c4698c  bl 0x0465bddc
02c46990  cbz x20,0x02c469bc
02c46994  ldr x8,[x20]
02c46998  mov x1,x0
02c4699c  mov x0,x20
02c469a0  ldr x9,[x8, #0x558]
02c469a4  ldr x2,[x8, #0x560]
02c469a8  blr x9
02c469ac  ldp x20,x19,[sp, #0x50]
02c469b0  ldr x30,[sp, #0x40]
02c469b4  add sp,sp,#0x60
02c469b8  ret
02c469bc  bl 0x029f5cfc
