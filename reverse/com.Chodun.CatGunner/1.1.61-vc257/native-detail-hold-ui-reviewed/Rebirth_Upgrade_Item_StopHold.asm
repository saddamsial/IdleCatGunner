02c89600  str x30,[sp, #-0x20]!
02c89604  stp x20,x19,[sp, #0x10]
02c89608  mov x20,x0
02c8960c  ldr x1,[x20, #0x60]!
02c89610  cbz x1,0x02c89638
02c89614  mov x2,xzr
02c89618  mov x19,x0
02c8961c  bl 0x057e237c
02c89620  mov x0,x20
02c89624  str xzr,[x19, #0x60]
02c89628  mov x1,xzr
02c8962c  ldp x20,x19,[sp, #0x10]
02c89630  ldr x30,[sp], #0x20
02c89634  b 0x029f59f4
02c89638  ldp x20,x19,[sp, #0x10]
02c8963c  ldr x30,[sp], #0x20
02c89640  ret
