02c7aa70  stp x30,x19,[sp, #-0x10]!
02c7aa74  adrp x8,0x5e58000
02c7aa78  mov x19,x0
02c7aa7c  ldr x8,[x8, #0xa10]
02c7aa80  ldr x8,[x8, #0x90]
02c7aa84  ldr x8,[x8, #0xb8]
02c7aa88  ldr x1,[x8]
02c7aa8c  str x1,[x0, #0x68]!
02c7aa90  bl 0x029f59f4
02c7aa94  mov x0,x19
02c7aa98  mov x1,xzr
02c7aa9c  ldp x30,x19,[sp], #0x10
02c7aaa0  b 0x057e2ee0
