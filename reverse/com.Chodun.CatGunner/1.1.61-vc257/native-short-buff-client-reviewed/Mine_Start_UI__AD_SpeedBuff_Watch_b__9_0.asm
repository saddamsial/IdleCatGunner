02c4c154  stp x30,x21,[sp, #-0x20]!
02c4c158  stp x20,x19,[sp, #0x10]
02c4c15c  adrp x21,0x625c000
02c4c160  adrp x20,0x5e5d000
02c4c164  mov x19,x0
02c4c168  ldrb w8,[x21, #0x12a]
02c4c16c  ldr x20,[x20, #0xd48]
02c4c170  tbnz w8,#0x0,0x02c4c188
02c4c174  adrp x0,0x5e5d000
02c4c178  ldr x0,[x0, #0xd48]
02c4c17c  bl 0x029f5a50
02c4c180  mov w8,#0x1
02c4c184  strb w8,[x21, #0x12a]
02c4c188  mov x0,x19
02c4c18c  bl 0x02c4bd28
02c4c190  ldr x8,[x20]
02c4c194  ldr x8,[x8, #0xb8]
02c4c198  ldr x0,[x8]
02c4c19c  cbz x0,0x02c4c1ac
02c4c1a0  ldp x20,x19,[sp, #0x10]
02c4c1a4  ldp x30,x21,[sp], #0x20
02c4c1a8  b 0x02c49908
02c4c1ac  bl 0x029f5cfc
