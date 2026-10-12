02ca43f8  str x30,[sp, #-0x20]!
02ca43fc  stp x20,x19,[sp, #0x10]
02ca4400  adrp x20,0x625c000
02ca4404  adrp x19,0x5e5e000
02ca4408  ldrb w8,[x20, #0x4ac]
02ca440c  ldr x19,[x19, #0x4b8]
02ca4410  tbnz w8,#0x0,0x02ca4434
02ca4414  adrp x0,0x5e5e000
02ca4418  ldr x0,[x0, #0x4b8]
02ca441c  bl 0x029f5a50
02ca4420  adrp x0,0x5e5d000
02ca4424  ldr x0,[x0, #0x958]
02ca4428  bl 0x029f5a50
02ca442c  mov w8,#0x1
02ca4430  strb w8,[x20, #0x4ac]
02ca4434  ldr x0,[x19]
02ca4438  ldr w8,[x0, #0xe4]
02ca443c  cbnz w8,0x02ca4448
02ca4440  bl 0x029f5bd0
02ca4444  ldr x0,[x19]
02ca4448  ldr x8,[x0, #0xb8]
02ca444c  ldr x0,[x8]
02ca4450  cbz x0,0x02ca446c
02ca4454  adrp x8,0x5e5d000
02ca4458  ldr x8,[x8, #0x958]
02ca445c  ldp x20,x19,[sp, #0x10]
02ca4460  ldr x1,[x8]
02ca4464  ldr x30,[sp], #0x20
02ca4468  b 0x02ca3414
02ca446c  bl 0x029f5cfc
