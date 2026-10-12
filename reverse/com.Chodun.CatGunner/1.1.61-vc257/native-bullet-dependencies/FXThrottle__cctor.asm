02c673e0  stp x30,x21,[sp, #-0x20]!
02c673e4  stp x20,x19,[sp, #0x10]
02c673e8  adrp x20,0x625c000
02c673ec  adrp x21,0x5e63000
02c673f0  adrp x19,0x5e63000
02c673f4  ldrb w8,[x20, #0x259]
02c673f8  ldr x21,[x21, #0xa40]
02c673fc  ldr x19,[x19, #0x9f0]
02c67400  tbnz w8,#0x0,0x02c67424
02c67404  adrp x0,0x5e63000
02c67408  ldr x0,[x0, #0x9f0]
02c6740c  bl 0x029f5a50
02c67410  adrp x0,0x5e63000
02c67414  ldr x0,[x0, #0xa40]
02c67418  bl 0x029f5a50
02c6741c  mov w8,#0x1
02c67420  strb w8,[x20, #0x259]
02c67424  ldr x0,[x21]
02c67428  mov w1,#0x41
02c6742c  bl 0x029f5b40
02c67430  ldr x8,[x19]
02c67434  mov x1,x0
02c67438  ldr x8,[x8, #0xb8]
02c6743c  str x0,[x8]
02c67440  ldr x8,[x19]
02c67444  ldp x20,x19,[sp, #0x10]
02c67448  ldr x0,[x8, #0xb8]
02c6744c  ldp x30,x21,[sp], #0x20
02c67450  b 0x029f59f4
