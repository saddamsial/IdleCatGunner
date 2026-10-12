02c59868  str x30,[sp, #-0x20]!
02c5986c  stp x20,x19,[sp, #0x10]
02c59870  adrp x19,0x625c000
02c59874  adrp x20,0x5e5e000
02c59878  ldrb w8,[x19, #0x1bf]
02c5987c  ldr x20,[x20, #0x70]
02c59880  tbnz w8,#0x0,0x02c59898
02c59884  adrp x0,0x5e5e000
02c59888  ldr x0,[x0, #0x70]
02c5988c  bl 0x029f5a50
02c59890  mov w8,#0x1
02c59894  strb w8,[x19, #0x1bf]
02c59898  ldr x0,[x20]
02c5989c  ldr w8,[x0, #0xe4]
02c598a0  cbnz w8,0x02c598a8
02c598a4  bl 0x029f5bd0
02c598a8  bl 0x02c58974
02c598ac  ldp x20,x19,[sp, #0x10]
02c598b0  ldr x30,[sp], #0x20
02c598b4  b 0x02c5971c
