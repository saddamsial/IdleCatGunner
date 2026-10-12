02c894e4  stp x30,x21,[sp, #-0x20]!
02c894e8  stp x20,x19,[sp, #0x10]
02c894ec  adrp x20,0x625c000
02c894f0  adrp x21,0x5e5d000
02c894f4  mov x19,x0
02c894f8  ldrb w8,[x20, #0x398]
02c894fc  ldr x21,[x21, #0xd60]
02c89500  tbnz w8,#0x0,0x02c89518
02c89504  adrp x0,0x5e5d000
02c89508  ldr x0,[x0, #0xd60]
02c8950c  bl 0x029f5a50
02c89510  mov w8,#0x1
02c89514  strb w8,[x20, #0x398]
02c89518  ldr x8,[x21]
02c8951c  ldr x8,[x8, #0xb8]
02c89520  ldr x0,[x8]
02c89524  cbz x0,0x02c89538
02c89528  ldr w1,[x19, #0x20]
02c8952c  ldp x20,x19,[sp, #0x10]
02c89530  ldp x30,x21,[sp], #0x20
02c89534  b 0x02c87630
02c89538  bl 0x029f5cfc
