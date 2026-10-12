02c560ec  sub sp,sp,#0x90
02c560f0  stp x30,x19,[sp, #0x80]
02c560f4  ldp q0,q1,[x1]
02c560f8  add x8,sp,#0x40
02c560fc  ldr x19,[x0, #0x20]
02c56100  mov w0,wzr
02c56104  mov x1,xzr
02c56108  stp q0,q1,[sp, #0x60]
02c5610c  bl 0x046544b8
02c56110  cbz x19,0x02c56144
02c56114  ldp q0,q1,[sp, #0x60]
02c56118  add x1,sp,#0x20
02c5611c  mov x2,sp
02c56120  mov x0,x19
02c56124  mov x3,xzr
02c56128  stp q0,q1,[sp, #0x20]
02c5612c  ldp q0,q2,[sp, #0x40]
02c56130  stp q0,q2,[sp]
02c56134  bl 0x02c5c998
02c56138  ldp x30,x19,[sp, #0x80]
02c5613c  add sp,sp,#0x90
02c56140  ret
02c56144  bl 0x029f5cfc
