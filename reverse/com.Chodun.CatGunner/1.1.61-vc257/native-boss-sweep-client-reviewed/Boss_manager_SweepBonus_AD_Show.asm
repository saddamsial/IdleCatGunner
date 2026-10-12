02c47730  str x30,[sp, #-0x20]!
02c47734  stp x20,x19,[sp, #0x10]
02c47738  adrp x19,0x625c000
02c4773c  adrp x20,0x5e5d000
02c47740  ldrb w8,[x19, #0xea]
02c47744  ldr x20,[x20, #0x910]
02c47748  tbnz w8,#0x0,0x02c47760
02c4774c  adrp x0,0x5e5d000
02c47750  ldr x0,[x0, #0x910]
02c47754  bl 0x029f5a50
02c47758  mov w8,#0x1
02c4775c  strb w8,[x19, #0xea]
02c47760  ldr x8,[x20]
02c47764  ldr x8,[x8, #0xb8]
02c47768  ldr x0,[x8]
02c4776c  cbz x0,0x02c47784
02c47770  ldp x20,x19,[sp, #0x10]
02c47774  mov w1,#0x4
02c47778  mov x2,xzr
02c4777c  ldr x30,[sp], #0x20
02c47780  b 0x02b89ab0
02c47784  bl 0x029f5cfc
