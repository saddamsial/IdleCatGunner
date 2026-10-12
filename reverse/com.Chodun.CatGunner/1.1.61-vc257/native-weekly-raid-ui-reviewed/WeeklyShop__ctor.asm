02ca74a8  stp x30,x21,[sp, #-0x20]!
02ca74ac  stp x20,x19,[sp, #0x10]
02ca74b0  adrp x20,0x625c000
02ca74b4  adrp x21,0x5e5d000
02ca74b8  mov x19,x0
02ca74bc  ldrb w8,[x20, #0x4e0]
02ca74c0  ldr x21,[x21, #0x958]
02ca74c4  tbnz w8,#0x0,0x02ca74dc
02ca74c8  adrp x0,0x5e5d000
02ca74cc  ldr x0,[x0, #0x958]
02ca74d0  bl 0x029f5a50
02ca74d4  mov w8,#0x1
02ca74d8  strb w8,[x20, #0x4e0]
02ca74dc  ldr x1,[x21]
02ca74e0  mov x0,x19
02ca74e4  str x1,[x0, #0x20]!
02ca74e8  bl 0x029f59f4
02ca74ec  mov x0,x19
02ca74f0  ldp x20,x19,[sp, #0x10]
02ca74f4  mov x1,xzr
02ca74f8  ldp x30,x21,[sp], #0x20
02ca74fc  b 0x057e2ee0
