02c9fa6c  str x30,[sp, #-0x20]!
02c9fa70  stp x20,x19,[sp, #0x10]
02c9fa74  adrp x20,0x625c000
02c9fa78  adrp x19,0x5e64000
02c9fa7c  ldrb w8,[x20, #0x476]
02c9fa80  ldr x19,[x19, #0x440]
02c9fa84  str w0,[sp, #0xc]
02c9fa88  tbnz w8,#0x0,0x02c9faa0
02c9fa8c  adrp x0,0x5e64000
02c9fa90  ldr x0,[x0, #0x440]
02c9fa94  bl 0x029f5a50
02c9fa98  mov w8,#0x1
02c9fa9c  strb w8,[x20, #0x476]
02c9faa0  add x0,sp,#0xc
02c9faa4  mov x1,xzr
02c9faa8  bl 0x0484e6a4
02c9faac  ldr x8,[x19]
02c9fab0  mov x1,x0
02c9fab4  mov x2,xzr
02c9fab8  mov x0,x8
02c9fabc  bl 0x046b2d44
02c9fac0  ldp x20,x19,[sp, #0x10]
02c9fac4  ldr x30,[sp], #0x20
02c9fac8  ret
