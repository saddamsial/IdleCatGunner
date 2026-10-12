02c2f664  stp x30,x19,[sp, #-0x10]!
02c2f668  mov x19,x0
02c2f66c  ldr x1,[x19, #0x30]!
02c2f670  cbz x1,0x02c2f67c
02c2f674  mov x2,xzr
02c2f678  bl 0x057e237c
02c2f67c  mov x0,x19
02c2f680  mov x1,xzr
02c2f684  str xzr,[x19]
02c2f688  ldp x30,x19,[sp], #0x10
02c2f68c  b 0x029f59f4
