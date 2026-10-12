02c6dc64  stp x30,x21,[sp, #-0x20]!
02c6dc68  stp x20,x19,[sp, #0x10]
02c6dc6c  adrp x21,0x625c000
02c6dc70  mov w19,w1
02c6dc74  mov x20,x0
02c6dc78  ldrb w8,[x21, #0x2ad]
02c6dc7c  tbnz w8,#0x0,0x02c6dc94
02c6dc80  adrp x0,0x5e5e000
02c6dc84  ldr x0,[x0, #0x58]
02c6dc88  bl 0x029f5a50
02c6dc8c  mov w8,#0x1
02c6dc90  strb w8,[x21, #0x2ad]
02c6dc94  tbnz w19,#0x1f,0x02c6dcc4
02c6dc98  ldr x8,[x20, #0x30]
02c6dc9c  cbz x8,0x02c6dcc4
02c6dca0  ldr w9,[x8, #0x18]
02c6dca4  cmp w9,w19
02c6dca8  b.le 0x02c6dcc4
02c6dcac  add x8,x8,w19, UXTW  #0x2
02c6dcb0  ldr w8,[x8, #0x20]
02c6dcb4  cmp w8,#0x13
02c6dcb8  b.le 0x02c6dcc4
02c6dcbc  mov w0,wzr
02c6dcc0  b 0x02c6dd34
02c6dcc4  adrp x21,0x5e5e000
02c6dcc8  ldr x21,[x21, #0x58]
02c6dccc  ldr x0,[x21]
02c6dcd0  ldr w8,[x0, #0xe4]
02c6dcd4  cbnz w8,0x02c6dcdc
02c6dcd8  bl 0x029f5bd0
02c6dcdc  bl 0x02c6d36c
02c6dce0  ldr x8,[x21]
02c6dce4  mov w9,#0x1
02c6dce8  ldr x8,[x8, #0xb8]
02c6dcec  ldr x8,[x8, #0x28]
02c6dcf0  tbnz w19,#0x1f,0x02c6dd1c
02c6dcf4  ldr x10,[x20, #0x30]
02c6dcf8  cbz x10,0x02c6dd1c
02c6dcfc  ldr w9,[x10, #0x18]
02c6dd00  cmp w9,w19
02c6dd04  b.le 0x02c6dd18
02c6dd08  add x9,x10,w19, UXTW  #0x2
02c6dd0c  ldr w9,[x9, #0x20]
02c6dd10  add w9,w9,#0x1
02c6dd14  b 0x02c6dd1c
02c6dd18  mov w9,#0x1
02c6dd1c  cbz x8,0x02c6dd40
02c6dd20  ldr w10,[x8, #0x18]
02c6dd24  cmp w9,w10
02c6dd28  b.cs 0x02c6dd44
02c6dd2c  add x8,x8,w9, SXTW  #0x2
02c6dd30  ldr w0,[x8, #0x20]
02c6dd34  ldp x20,x19,[sp, #0x10]
02c6dd38  ldp x30,x21,[sp], #0x20
02c6dd3c  ret
02c6dd40  bl 0x029f5cfc
02c6dd44  bl 0x029f5d04
