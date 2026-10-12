02c4da8c  stp x30,x21,[sp, #-0x20]!
02c4da90  stp x20,x19,[sp, #0x10]
02c4da94  adrp x21,0x625c000
02c4da98  adrp x20,0x5e5d000
02c4da9c  mov x19,x0
02c4daa0  ldrb w8,[x21, #0x13a]
02c4daa4  ldr x20,[x20, #0x338]
02c4daa8  tbnz w8,#0x0,0x02c4dac0
02c4daac  adrp x0,0x5e5d000
02c4dab0  ldr x0,[x0, #0x338]
02c4dab4  bl 0x029f5a50
02c4dab8  mov w8,#0x1
02c4dabc  strb w8,[x21, #0x13a]
02c4dac0  ldr x0,[x20]
02c4dac4  ldr w8,[x0, #0xe4]
02c4dac8  cbnz w8,0x02c4dad4
02c4dacc  bl 0x029f5bd0
02c4dad0  ldr x0,[x20]
02c4dad4  ldr x8,[x0, #0xb8]
02c4dad8  mov x0,x19
02c4dadc  mov w9,#0x1
02c4dae0  ldp x20,x19,[sp, #0x10]
02c4dae4  strb w9,[x8]
02c4dae8  ldp x30,x21,[sp], #0x20
02c4daec  b 0x02c4daf0
