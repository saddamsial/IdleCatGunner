02c17b80  str x30,[sp, #-0x10]!
02c17b84  ldr x8,[x0, #0x20]
02c17b88  cbz x8,0x02c17bac
02c17b8c  ldr w9,[x8, #0x18]
02c17b90  cmp w9,w1
02c17b94  b.ls 0x02c17bb0
02c17b98  mov w9,#0x18
02c17b9c  smaddl x8,w1,w9,x8
02c17ba0  add x0,x8,#0x20
02c17ba4  ldr x30,[sp], #0x10
02c17ba8  b 0x02c17bb4
02c17bac  bl 0x029f5cfc
02c17bb0  bl 0x029f5d04
