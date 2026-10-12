02c67764  stp x30,x21,[sp, #-0x20]!
02c67768  stp x20,x19,[sp, #0x10]
02c6776c  adrp x21,0x625c000
02c67770  adrp x20,0x5e5d000
02c67774  mov x19,x0
02c67778  ldrb w8,[x21, #0x25e]
02c6777c  ldr x20,[x20, #0xd40]
02c67780  tbnz w8,#0x0,0x02c67798
02c67784  adrp x0,0x5e5d000
02c67788  ldr x0,[x0, #0xd40]
02c6778c  bl 0x029f5a50
02c67790  mov w8,#0x1
02c67794  strb w8,[x21, #0x25e]
02c67798  ldr x8,[x20]
02c6779c  mov x1,x19
02c677a0  ldr x8,[x8, #0xb8]
02c677a4  str x19,[x8]
02c677a8  ldr x8,[x20]
02c677ac  ldr x0,[x8, #0xb8]
02c677b0  bl 0x029f59f4
02c677b4  mov x0,x19
02c677b8  bl 0x02c677cc
02c677bc  mov x0,x19
02c677c0  ldp x20,x19,[sp, #0x10]
02c677c4  ldp x30,x21,[sp], #0x20
02c677c8  b 0x02c678d0
