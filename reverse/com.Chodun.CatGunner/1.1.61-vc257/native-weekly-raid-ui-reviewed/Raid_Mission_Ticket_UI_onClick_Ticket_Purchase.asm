02c554ec  str x30,[sp, #-0x30]!
02c554f0  stp x22,x21,[sp, #0x10]
02c554f4  stp x20,x19,[sp, #0x20]
02c554f8  adrp x22,0x625c000
02c554fc  adrp x21,0x5e5e000
02c55500  adrp x20,0x5e59000
02c55504  ldrb w8,[x22, #0x189]
02c55508  ldr x21,[x21, #0x68]
02c5550c  ldr x20,[x20, #0x1c0]
02c55510  mov x19,x0
02c55514  tbnz w8,#0x0,0x02c55544
02c55518  adrp x0,0x5e59000
02c5551c  ldr x0,[x0, #0x1c0]
02c55520  bl 0x029f5a50
02c55524  adrp x0,0x5e5e000
02c55528  ldr x0,[x0, #0x68]
02c5552c  bl 0x029f5a50
02c55530  adrp x0,0x5e59000
02c55534  ldr x0,[x0, #0x50]
02c55538  bl 0x029f5a50
02c5553c  mov w8,#0x1
02c55540  strb w8,[x22, #0x189]
02c55544  ldr x8,[x21]
02c55548  ldr x0,[x20]
02c5554c  ldr x8,[x8, #0xb8]
02c55550  ldr w9,[x0, #0xe4]
02c55554  ldr x20,[x8]
02c55558  cbnz w9,0x02c55560
02c5555c  bl 0x029f5bd0
02c55560  mov x0,x20
02c55564  mov x1,xzr
02c55568  mov x2,xzr
02c5556c  bl 0x057e14b4
02c55570  tbz w0,#0x0,0x02c55584
02c55574  ldp x20,x19,[sp, #0x20]
02c55578  ldp x22,x21,[sp, #0x10]
02c5557c  ldr x30,[sp], #0x30
02c55580  ret
02c55584  ldr x0,[x19, #0x38]!
02c55588  mov x1,xzr
02c5558c  bl 0x046c0604
02c55590  ldr x8,[x21]
02c55594  ldr x8,[x8, #0xb8]
02c55598  ldr x8,[x8]
02c5559c  cbz x8,0x02c555c8
02c555a0  adrp x9,0x5e59000
02c555a4  tst w0,#0x1
02c555a8  mov x0,x8
02c555ac  ldr x9,[x9, #0x50]
02c555b0  ldp x22,x21,[sp, #0x10]
02c555b4  csel x9,x9,x19,ne
02c555b8  ldp x20,x19,[sp, #0x20]
02c555bc  ldr x1,[x9]
02c555c0  ldr x30,[sp], #0x30
02c555c4  b 0x02c54b9c
02c555c8  bl 0x029f5cfc
