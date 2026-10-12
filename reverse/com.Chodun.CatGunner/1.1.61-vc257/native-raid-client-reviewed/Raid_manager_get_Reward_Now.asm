02c570d8  stp x30,x21,[sp, #-0x20]!
02c570dc  stp x20,x19,[sp, #0x10]
02c570e0  adrp x21,0x625c000
02c570e4  adrp x20,0x5e5e000
02c570e8  mov x19,x0
02c570ec  ldrb w8,[x21, #0x19e]
02c570f0  ldr x20,[x20, #0x70]
02c570f4  tbnz w8,#0x0,0x02c5710c
02c570f8  adrp x0,0x5e5e000
02c570fc  ldr x0,[x0, #0x70]
02c57100  bl 0x029f5a50
02c57104  mov w8,#0x1
02c57108  strb w8,[x21, #0x19e]
02c5710c  ldr x0,[x20]
02c57110  ldr w19,[x19, #0xb0]
02c57114  ldr w8,[x0, #0xe4]
02c57118  cbnz w8,0x02c57120
02c5711c  bl 0x029f5bd0
02c57120  mov w0,w19
02c57124  ldp x20,x19,[sp, #0x10]
02c57128  ldp x30,x21,[sp], #0x20
02c5712c  b 0x02c5704c
