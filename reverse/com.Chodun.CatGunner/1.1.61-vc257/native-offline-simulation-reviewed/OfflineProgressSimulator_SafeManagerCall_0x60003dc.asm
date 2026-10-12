02c09f58  sub sp,sp,#0x80
02c09f5c  str x30,[sp, #0x50]
02c09f60  stp x22,x21,[sp, #0x60]
02c09f64  stp x20,x19,[sp, #0x70]
02c09f68  movi v0.2D,#0x0
02c09f6c  mov x20,x1
02c09f70  mov x19,x8
02c09f74  str wzr,[sp, #0x28]
02c09f78  stp q0,q0,[sp, #0x30]
02c09f7c  cbz x0,0x02c09fbc
02c09f80  ldr x1,[x0, #0x28]
02c09f84  ldr x10,[x0, #0x18]
02c09f88  ldr x9,[x0, #0x40]
02c09f8c  mov x8,sp
02c09f90  mov x0,x9
02c09f94  blr x10
02c09f98  ldp q0,q1,[sp]
02c09f9c  stp q0,q1,[sp, #0x30]
02c09fa0  ldp q0,q1,[sp, #0x30]
02c09fa4  ldr x30,[sp, #0x50]
02c09fa8  ldp x22,x21,[sp, #0x60]
02c09fac  stp q0,q1,[x19]
02c09fb0  ldp x20,x19,[sp, #0x70]
02c09fb4  add sp,sp,#0x80
02c09fb8  ret
02c09fbc  bl 0x029f5cfc
