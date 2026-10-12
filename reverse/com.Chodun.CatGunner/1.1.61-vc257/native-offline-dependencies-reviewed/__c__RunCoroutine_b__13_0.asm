02c0a2d4  sub sp,sp,#0x30
02c0a2d8  stp x30,x19,[sp, #0x20]
02c0a2dc  mov x19,x8
02c0a2e0  mov x8,sp
02c0a2e4  mov x0,xzr
02c0a2e8  bl 0x02c87364
02c0a2ec  ldp q0,q1,[sp]
02c0a2f0  stp q0,q1,[x19]
02c0a2f4  ldp x30,x19,[sp, #0x20]
02c0a2f8  add sp,sp,#0x30
02c0a2fc  ret
