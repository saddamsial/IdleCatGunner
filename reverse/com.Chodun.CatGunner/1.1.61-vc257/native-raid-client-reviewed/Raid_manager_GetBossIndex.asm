02c58974  str x30,[sp, #-0x20]!
02c58978  stp x20,x19,[sp, #0x10]
02c5897c  adrp x19,0x625c000
02c58980  adrp x20,0x5e62000
02c58984  ldrb w8,[x19, #0x1bb]
02c58988  ldr x20,[x20, #0x660]
02c5898c  tbnz w8,#0x0,0x02c589a4
02c58990  adrp x0,0x5e62000
02c58994  ldr x0,[x0, #0x660]
02c58998  bl 0x029f5a50
02c5899c  mov w8,#0x1
02c589a0  strb w8,[x19, #0x1bb]
02c589a4  ldr x0,[x20]
02c589a8  ldr w8,[x0, #0xe4]
02c589ac  cbnz w8,0x02c589b4
02c589b0  bl 0x029f5bd0
02c589b4  ldp x20,x19,[sp, #0x10]
02c589b8  mov x0,xzr
02c589bc  ldr x30,[sp], #0x20
02c589c0  b 0x02c8b1c0
