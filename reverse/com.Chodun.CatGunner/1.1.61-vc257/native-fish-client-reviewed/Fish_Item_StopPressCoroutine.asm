02c60fe0  str x30,[sp, #-0x20]!
02c60fe4  stp x20,x19,[sp, #0x10]
02c60fe8  mov x20,x0
02c60fec  ldr x1,[x20, #0xa8]!
02c60ff0  cbz x1,0x02c61018
02c60ff4  mov x2,xzr
02c60ff8  mov x19,x0
02c60ffc  bl 0x057e237c
02c61000  mov x0,x20
02c61004  str xzr,[x19, #0xa8]
02c61008  mov x1,xzr
02c6100c  ldp x20,x19,[sp, #0x10]
02c61010  ldr x30,[sp], #0x20
02c61014  b 0x029f59f4
02c61018  ldp x20,x19,[sp, #0x10]
02c6101c  ldr x30,[sp], #0x20
02c61020  ret
