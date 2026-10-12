02c2c91c  stp x30,x21,[sp, #-0x20]!
02c2c920  stp x20,x19,[sp, #0x10]
02c2c924  adrp x20,0x625b000
02c2c928  adrp x21,0x5e62000
02c2c92c  mov x19,x0
02c2c930  ldrb w8,[x20, #0xff8]
02c2c934  ldr x21,[x21, #0xf98]
02c2c938  tbnz w8,#0x0,0x02c2c950
02c2c93c  adrp x0,0x5e62000
02c2c940  ldr x0,[x0, #0xf98]
02c2c944  bl 0x029f5a50
02c2c948  mov w8,#0x1
02c2c94c  strb w8,[x20, #0xff8]
02c2c950  mov x0,x19
02c2c954  ldp x20,x19,[sp, #0x10]
02c2c958  ldr x1,[x21]
02c2c95c  fmov s0,0x3f800000
02c2c960  fmov s1,0x41200000
02c2c964  mov x2,xzr
02c2c968  ldp x30,x21,[sp], #0x20
02c2c96c  b 0x057e1964
