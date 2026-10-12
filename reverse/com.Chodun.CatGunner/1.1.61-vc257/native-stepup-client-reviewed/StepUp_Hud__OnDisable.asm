02ca43b4  str x30,[sp, #-0x20]!
02ca43b8  stp x20,x19,[sp, #0x10]
02ca43bc  mov x20,x0
02ca43c0  ldr x1,[x20, #0x30]!
02ca43c4  cbz x1,0x02ca43ec
02ca43c8  mov x2,xzr
02ca43cc  mov x19,x0
02ca43d0  bl 0x057e237c
02ca43d4  mov x0,x20
02ca43d8  str xzr,[x19, #0x30]
02ca43dc  mov x1,xzr
02ca43e0  ldp x20,x19,[sp, #0x10]
02ca43e4  ldr x30,[sp], #0x20
02ca43e8  b 0x029f59f4
02ca43ec  ldp x20,x19,[sp, #0x10]
02ca43f0  ldr x30,[sp], #0x20
02ca43f4  ret
