02c6e8ac  str x30,[sp, #-0x30]!
02c6e8b0  stp x22,x21,[sp, #0x10]
02c6e8b4  stp x20,x19,[sp, #0x20]
02c6e8b8  adrp x21,0x625c000
02c6e8bc  adrp x22,0x5e5d000
02c6e8c0  adrp x19,0x5e63000
02c6e8c4  adrp x20,0x5e5e000
02c6e8c8  ldr x22,[x22, #0x790]
02c6e8cc  ldrb w8,[x21, #0x2b3]
02c6e8d0  ldr x19,[x19, #0xb40]
02c6e8d4  ldr x20,[x20, #0x58]
02c6e8d8  tbnz w8,#0x0,0x02c6e908
02c6e8dc  adrp x0,0x5e5d000
02c6e8e0  ldr x0,[x0, #0x790]
02c6e8e4  bl 0x029f5a50
02c6e8e8  adrp x0,0x5e5e000
02c6e8ec  ldr x0,[x0, #0x58]
02c6e8f0  bl 0x029f5a50
02c6e8f4  adrp x0,0x5e63000
02c6e8f8  ldr x0,[x0, #0xb40]
02c6e8fc  bl 0x029f5a50
02c6e900  mov w8,#0x1
02c6e904  strb w8,[x21, #0x2b3]
02c6e908  ldr x0,[x22]
02c6e90c  mov w1,#0x14
02c6e910  bl 0x029f5b40
02c6e914  ldr x1,[x19]
02c6e918  mov x2,xzr
02c6e91c  mov x19,x0
02c6e920  bl 0x047779e0
02c6e924  ldr x8,[x20]
02c6e928  mov x1,x19
02c6e92c  ldp x22,x21,[sp, #0x10]
02c6e930  ldr x0,[x8, #0xb8]
02c6e934  str x19,[x0, #0x10]!
02c6e938  ldp x20,x19,[sp, #0x20]
02c6e93c  ldr x30,[sp], #0x30
02c6e940  b 0x029f59f4
