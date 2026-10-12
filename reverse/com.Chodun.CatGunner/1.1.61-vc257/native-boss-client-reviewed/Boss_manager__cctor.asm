02c47900  str x30,[sp, #-0x20]!
02c47904  stp x20,x19,[sp, #0x10]
02c47908  adrp x19,0x625c000
02c4790c  adrp x20,0x5e5d000
02c47910  ldrb w8,[x19, #0xee]
02c47914  ldr x20,[x20, #0xd30]
02c47918  tbnz w8,#0x0,0x02c47930
02c4791c  adrp x0,0x5e5d000
02c47920  ldr x0,[x0, #0xd30]
02c47924  bl 0x029f5a50
02c47928  mov w8,#0x1
02c4792c  strb w8,[x19, #0xee]
02c47930  ldr x8,[x20]
02c47934  ldp x20,x19,[sp, #0x10]
02c47938  mov w9,#0x96
02c4793c  ldr x8,[x8, #0xb8]
02c47940  str w9,[x8]
02c47944  ldr x30,[sp], #0x20
02c47948  ret
