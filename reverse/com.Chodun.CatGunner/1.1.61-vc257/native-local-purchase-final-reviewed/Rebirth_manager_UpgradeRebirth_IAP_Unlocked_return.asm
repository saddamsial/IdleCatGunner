02c88410  str x30,[sp, #-0x20]!
02c88414  stp x20,x19,[sp, #0x10]
02c88418  adrp x19,0x625c000
02c8841c  adrp x20,0x5e5d000
02c88420  ldrb w8,[x19, #0x389]
02c88424  ldr x20,[x20, #0xc20]
02c88428  tbnz w8,#0x0,0x02c8844c
02c8842c  adrp x0,0x5e59000
02c88430  ldr x0,[x0, #0x1c0]
02c88434  bl 0x029f5a50
02c88438  adrp x0,0x5e5d000
02c8843c  ldr x0,[x0, #0xc20]
02c88440  bl 0x029f5a50
02c88444  mov w8,#0x1
02c88448  strb w8,[x19, #0x389]
02c8844c  ldr x0,[x20]
02c88450  adrp x19,0x5e59000
02c88454  ldr w8,[x0, #0xe4]
02c88458  ldr x19,[x19, #0x1c0]
02c8845c  cbnz w8,0x02c88468
02c88460  bl 0x029f5bd0
02c88464  ldr x0,[x20]
02c88468  ldr x8,[x19]
02c8846c  ldr x9,[x0, #0xb8]
02c88470  ldr w10,[x8, #0xe4]
02c88474  ldr x19,[x9, #0x10]
02c88478  cbnz w10,0x02c88484
02c8847c  mov x0,x8
02c88480  bl 0x029f5bd0
02c88484  mov x0,x19
02c88488  mov x1,xzr
02c8848c  mov x2,xzr
02c88490  bl 0x057e14b4
02c88494  tbz w0,#0x0,0x02c884a0
02c88498  mov w0,wzr
02c8849c  b 0x02c884cc
02c884a0  ldr x0,[x20]
02c884a4  ldr w8,[x0, #0xe4]
02c884a8  cbnz w8,0x02c884b4
02c884ac  bl 0x029f5bd0
02c884b0  ldr x0,[x20]
02c884b4  ldr x8,[x0, #0xb8]
02c884b8  ldr x8,[x8, #0x10]
02c884bc  cbz x8,0x02c884d8
02c884c0  ldr w8,[x8, #0x30]
02c884c4  cmp w8,#0x3dd
02c884c8  cset w0,gt
02c884cc  ldp x20,x19,[sp, #0x10]
02c884d0  ldr x30,[sp], #0x20
02c884d4  ret
02c884d8  bl 0x029f5cfc
