02c3ba74  str d8,[sp, #-0x20]!
02c3ba78  stp x30,x19,[sp, #0x10]
02c3ba7c  mov x19,x0
02c3ba80  ldr s8,[x0, #0x1dc]
02c3ba84  mov x0,xzr
02c3ba88  bl 0x057ebabc
02c3ba8c  fadd s0,s8,s0
02c3ba90  ldr s1,[x19, #0xa8]
02c3ba94  fcmp s0,s1
02c3ba98  str s0,[x19, #0x1dc]
02c3ba9c  b.pl 0x02c3baac
02c3baa0  ldp x30,x19,[sp, #0x10]
02c3baa4  ldr d8,[sp], #0x20
02c3baa8  ret
02c3baac  mov x0,x19
02c3bab0  str wzr,[x19, #0x1dc]
02c3bab4  bl 0x02c4126c
02c3bab8  mov x1,x0
02c3babc  add x0,x19,#0x1e0
02c3bac0  str x1,[x19, #0x1e0]
02c3bac4  ldp x30,x19,[sp, #0x10]
02c3bac8  ldr d8,[sp], #0x20
02c3bacc  b 0x029f59f4
