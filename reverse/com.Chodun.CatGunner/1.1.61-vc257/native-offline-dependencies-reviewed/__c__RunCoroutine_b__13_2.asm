02c0a32c  sub sp,sp,#0x30
02c0a330  stp x30,x19,[sp, #0x20]
02c0a334  mov x19,x8
02c0a338  mov x8,sp
02c0a33c  mov x0,xzr
02c0a340  bl 0x02c87564
02c0a344  ldp q0,q1,[sp]
02c0a348  stp q0,q1,[x19]
02c0a34c  ldp x30,x19,[sp, #0x20]
02c0a350  add sp,sp,#0x30
02c0a354  ret
