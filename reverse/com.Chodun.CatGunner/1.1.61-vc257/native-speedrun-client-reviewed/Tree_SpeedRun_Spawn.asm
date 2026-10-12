02cab994  sub sp,sp,#0x60
02cab998  str x30,[sp, #0x40]
02cab99c  stp x20,x19,[sp, #0x50]
02cab9a0  mov x20,x0
02cab9a4  ldr x0,[x0, #0x20]
02cab9a8  cbz x0,0x02cab9f4
02cab9ac  ldp q0,q1,[x1]
02cab9b0  mov x19,x3
02cab9b4  add x1,sp,#0x20
02cab9b8  mov x3,xzr
02cab9bc  stp q0,q1,[sp, #0x20]
02cab9c0  ldp q0,q2,[x2]
02cab9c4  mov x2,sp
02cab9c8  stp q0,q2,[sp]
02cab9cc  bl 0x02c5c998
02cab9d0  ldr x0,[x20, #0x28]
02cab9d4  cbz x0,0x02cab9f4
02cab9d8  mov x1,x19
02cab9dc  mov x2,xzr
02cab9e0  bl 0x0578eb10
02cab9e4  ldp x20,x19,[sp, #0x50]
02cab9e8  ldr x30,[sp, #0x40]
02cab9ec  add sp,sp,#0x60
02cab9f0  ret
02cab9f4  bl 0x029f5cfc
