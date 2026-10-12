02c5dcbc  stp x30,x21,[sp, #-0x20]!
02c5dcc0  stp x20,x19,[sp, #0x10]
02c5dcc4  adrp x21,0x625c000
02c5dcc8  adrp x20,0x5e59000
02c5dccc  mov x19,x0
02c5dcd0  ldrb w8,[x21, #0x202]
02c5dcd4  ldr x20,[x20, #0x1c0]
02c5dcd8  tbnz w8,#0x0,0x02c5dcf0
02c5dcdc  adrp x0,0x5e59000
02c5dce0  ldr x0,[x0, #0x1c0]
02c5dce4  bl 0x029f5a50
02c5dce8  mov w8,#0x1
02c5dcec  strb w8,[x21, #0x202]
02c5dcf0  ldr x0,[x20]
02c5dcf4  ldr x20,[x19, #0xa0]
02c5dcf8  ldr w8,[x0, #0xe4]
02c5dcfc  cbnz w8,0x02c5dd04
02c5dd00  bl 0x029f5bd0
02c5dd04  mov x0,x20
02c5dd08  mov x1,xzr
02c5dd0c  mov x2,xzr
02c5dd10  bl 0x057dfa70
02c5dd14  tbz w0,#0x0,0x02c5dd2c
02c5dd18  ldr x0,[x19, #0xa0]
02c5dd1c  cbz x0,0x02c5dd38
02c5dd20  ldp x20,x19,[sp, #0x10]
02c5dd24  ldp x30,x21,[sp], #0x20
02c5dd28  b 0x02c5e45c
02c5dd2c  ldp x20,x19,[sp, #0x10]
02c5dd30  ldp x30,x21,[sp], #0x20
02c5dd34  ret
02c5dd38  bl 0x029f5cfc
