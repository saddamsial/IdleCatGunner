02c0a300  sub sp,sp,#0x30
02c0a304  stp x30,x19,[sp, #0x20]
02c0a308  mov x19,x8
02c0a30c  mov x8,sp
02c0a310  mov x0,xzr
02c0a314  bl 0x02c87498
02c0a318  ldp q0,q1,[sp]
02c0a31c  stp q0,q1,[x19]
02c0a320  ldp x30,x19,[sp, #0x20]
02c0a324  add sp,sp,#0x30
02c0a328  ret
