02c563f0  sub sp,sp,#0x60
02c563f4  str x30,[sp, #0x40]
02c563f8  stp x20,x19,[sp, #0x50]
02c563fc  movi v0.2D,#0x0
02c56400  mov x19,x1
02c56404  mov x20,x0
02c56408  mov x8,sp
02c5640c  mov x0,x1
02c56410  mov x1,x2
02c56414  mov x2,xzr
02c56418  stp q0,q0,[sp, #0x20]
02c5641c  bl 0x046587e8
02c56420  ldp q0,q1,[sp]
02c56424  add x0,sp,#0x20
02c56428  mov x1,xzr
02c5642c  stp q0,q1,[sp, #0x20]
02c56430  bl 0x046572f8
02c56434  ldr x0,[x20, #0x50]
02c56438  cbz x0,0x02c56498
02c5643c  fmov s1,0x3f800000
02c56440  movi d2,#0x0
02c56444  mov x1,xzr
02c56448  fcmp s0,s1
02c5644c  fcsel s1,s1,s0,gt
02c56450  fcmp s0,#0.0
02c56454  fcsel s0,s2,s1,mi
02c56458  bl 0x02c28290
02c5645c  ldr x20,[x20, #0x30]
02c56460  mov x0,x19
02c56464  mov x1,xzr
02c56468  bl 0x0465bddc
02c5646c  cbz x20,0x02c56498
02c56470  ldr x8,[x20]
02c56474  mov x1,x0
02c56478  mov x0,x20
02c5647c  ldr x9,[x8, #0x558]
02c56480  ldr x2,[x8, #0x560]
02c56484  blr x9
02c56488  ldp x20,x19,[sp, #0x50]
02c5648c  ldr x30,[sp, #0x40]
02c56490  add sp,sp,#0x60
02c56494  ret
02c56498  bl 0x029f5cfc
