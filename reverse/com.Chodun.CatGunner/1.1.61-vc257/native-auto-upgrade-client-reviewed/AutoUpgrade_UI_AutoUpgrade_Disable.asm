02c1da8c  stp x30,x21,[sp, #-0x20]!
02c1da90  stp x20,x19,[sp, #0x10]
02c1da94  adrp x20,0x625b000
02c1da98  adrp x21,0x5e62000
02c1da9c  mov x19,x0
02c1daa0  ldrb w8,[x20, #0xf38]
02c1daa4  ldr x21,[x21, #0x670]
02c1daa8  tbnz w8,#0x0,0x02c1dac0
02c1daac  adrp x0,0x5e62000
02c1dab0  ldr x0,[x0, #0x670]
02c1dab4  bl 0x029f5a50
02c1dab8  mov w8,#0x1
02c1dabc  strb w8,[x20, #0xf38]
02c1dac0  ldr x8,[x21]
02c1dac4  mov x0,x19
02c1dac8  mov w9,#0x1
02c1dacc  ldp x20,x19,[sp, #0x10]
02c1dad0  ldr x8,[x8, #0xb8]
02c1dad4  strb w9,[x8]
02c1dad8  ldp x30,x21,[sp], #0x20
02c1dadc  b 0x02c1d4b0
