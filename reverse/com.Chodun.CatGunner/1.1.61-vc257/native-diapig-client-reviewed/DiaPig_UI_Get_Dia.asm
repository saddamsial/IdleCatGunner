02c8dcb4  str x30,[sp, #-0x20]!
02c8dcb8  stp x20,x19,[sp, #0x10]
02c8dcbc  adrp x19,0x625c000
02c8dcc0  adrp x20,0x5e62000
02c8dcc4  ldrb w8,[x19, #0x3c3]
02c8dcc8  ldr x20,[x20, #0x668]
02c8dccc  tbnz w8,#0x0,0x02c8dce4
02c8dcd0  adrp x0,0x5e62000
02c8dcd4  ldr x0,[x0, #0x668]
02c8dcd8  bl 0x029f5a50
02c8dcdc  mov w8,#0x1
02c8dce0  strb w8,[x19, #0x3c3]
02c8dce4  ldr x8,[x20]
02c8dce8  ldr x8,[x8, #0xb8]
02c8dcec  ldr x0,[x8]
02c8dcf0  cbz x0,0x02c8dd00
02c8dcf4  ldp x20,x19,[sp, #0x10]
02c8dcf8  ldr x30,[sp], #0x20
02c8dcfc  b 0x02c8d4c4
02c8dd00  bl 0x029f5cfc
