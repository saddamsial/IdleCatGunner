02c549a0  str x30,[sp, #-0x20]!
02c549a4  stp x20,x19,[sp, #0x10]
02c549a8  adrp x19,0x625c000
02c549ac  adrp x20,0x5e62000
02c549b0  ldrb w8,[x19, #0x1ba]
02c549b4  ldr x20,[x20, #0x660]
02c549b8  tbnz w8,#0x0,0x02c549d0
02c549bc  adrp x0,0x5e62000
02c549c0  ldr x0,[x0, #0x660]
02c549c4  bl 0x029f5a50
02c549c8  mov w8,#0x1
02c549cc  strb w8,[x19, #0x1ba]
02c549d0  ldr x0,[x20]
02c549d4  ldr w8,[x0, #0xe4]
02c549d8  cbnz w8,0x02c549e0
02c549dc  bl 0x029f5bd0
02c549e0  ldp x20,x19,[sp, #0x10]
02c549e4  mov x0,xzr
02c549e8  ldr x30,[sp], #0x20
02c549ec  b 0x02c8b074
