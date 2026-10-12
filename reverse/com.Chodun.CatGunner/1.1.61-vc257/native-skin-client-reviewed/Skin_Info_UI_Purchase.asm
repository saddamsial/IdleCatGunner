02ca854c  stp x30,x21,[sp, #-0x20]!
02ca8550  stp x20,x19,[sp, #0x10]
02ca8554  adrp x20,0x625c000
02ca8558  adrp x21,0x5e5d000
02ca855c  mov x19,x0
02ca8560  ldrb w8,[x20, #0x4e9]
02ca8564  ldr x21,[x21, #0x4e0]
02ca8568  tbnz w8,#0x0,0x02ca8580
02ca856c  adrp x0,0x5e5d000
02ca8570  ldr x0,[x0, #0x4e0]
02ca8574  bl 0x029f5a50
02ca8578  mov w8,#0x1
02ca857c  strb w8,[x20, #0x4e9]
02ca8580  ldr x8,[x21]
02ca8584  ldr x8,[x8, #0xb8]
02ca8588  ldr x0,[x8, #0x10]
02ca858c  cbz x0,0x02ca85a0
02ca8590  ldr w1,[x19, #0x20]
02ca8594  ldp x20,x19,[sp, #0x10]
02ca8598  ldp x30,x21,[sp], #0x20
02ca859c  b 0x02ca7934
02ca85a0  bl 0x029f5cfc
