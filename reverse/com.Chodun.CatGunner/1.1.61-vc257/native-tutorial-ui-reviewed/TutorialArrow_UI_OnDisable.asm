02cae6c8  str x30,[sp, #-0x20]!
02cae6cc  stp x20,x19,[sp, #0x10]
02cae6d0  mov x20,x0
02cae6d4  ldr x1,[x20, #0x50]!
02cae6d8  cbz x1,0x02cae700
02cae6dc  mov x2,xzr
02cae6e0  mov x19,x0
02cae6e4  bl 0x057e237c
02cae6e8  mov x0,x20
02cae6ec  str xzr,[x19, #0x50]
02cae6f0  mov x1,xzr
02cae6f4  ldp x20,x19,[sp, #0x10]
02cae6f8  ldr x30,[sp], #0x20
02cae6fc  b 0x029f59f4
02cae700  ldp x20,x19,[sp, #0x10]
02cae704  ldr x30,[sp], #0x20
02cae708  ret
