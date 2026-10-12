02c3644c  str x30,[sp, #-0x40]!
02c36450  stp x24,x23,[sp, #0x10]
02c36454  stp x22,x21,[sp, #0x20]
02c36458  stp x20,x19,[sp, #0x30]
02c3645c  adrp x23,0x625c000
02c36460  adrp x24,0x5e63000
02c36464  mov w19,w3
02c36468  ldrb w8,[x23, #0x6b]
02c3646c  ldr x24,[x24, #0x150]
02c36470  mov w20,w2
02c36474  mov w21,w1
02c36478  mov x22,x0
02c3647c  tbnz w8,#0x0,0x02c36494
02c36480  adrp x0,0x5e63000
02c36484  ldr x0,[x0, #0x150]
02c36488  bl 0x029f5a50
02c3648c  mov w8,#0x1
02c36490  strb w8,[x23, #0x6b]
02c36494  ldr x0,[x24]
02c36498  bl 0x029f5cec
02c3649c  mov x1,xzr
02c364a0  mov x23,x0
02c364a4  bl 0x04893238
02c364a8  mov x0,x23
02c364ac  mov x1,x22
02c364b0  str wzr,[x23, #0x10]
02c364b4  str x22,[x0, #0x20]!
02c364b8  bl 0x029f59f4
02c364bc  stp w21,w20,[x23, #0x28]
02c364c0  mov x0,x23
02c364c4  str w19,[x23, #0x30]
02c364c8  ldp x20,x19,[sp, #0x30]
02c364cc  ldp x22,x21,[sp, #0x20]
02c364d0  ldp x24,x23,[sp, #0x10]
02c364d4  ldr x30,[sp], #0x40
02c364d8  ret
