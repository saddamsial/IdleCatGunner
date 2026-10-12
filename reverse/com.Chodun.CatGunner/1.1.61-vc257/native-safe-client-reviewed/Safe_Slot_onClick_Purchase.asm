02c6cdf0  stp x30,x21,[sp, #-0x20]!
02c6cdf4  stp x20,x19,[sp, #0x10]
02c6cdf8  adrp x20,0x625c000
02c6cdfc  mov x19,x0
02c6ce00  ldrb w8,[x20, #0x29e]
02c6ce04  tbnz w8,#0x0,0x02c6ce28
02c6ce08  adrp x0,0x5e59000
02c6ce0c  ldr x0,[x0, #0x1c0]
02c6ce10  bl 0x029f5a50
02c6ce14  adrp x0,0x5e62000
02c6ce18  ldr x0,[x0, #0x648]
02c6ce1c  bl 0x029f5a50
02c6ce20  mov w8,#0x1
02c6ce24  strb w8,[x20, #0x29e]
02c6ce28  ldr w8,[x19, #0x78]
02c6ce2c  cmp w8,#0x1
02c6ce30  b.ne 0x02c6ce74
02c6ce34  adrp x21,0x5e62000
02c6ce38  adrp x8,0x5e59000
02c6ce3c  ldr x21,[x21, #0x648]
02c6ce40  ldr x8,[x8, #0x1c0]
02c6ce44  ldr x9,[x21]
02c6ce48  ldr x0,[x8]
02c6ce4c  ldr x8,[x9, #0xb8]
02c6ce50  ldr w9,[x0, #0xe4]
02c6ce54  ldr x20,[x8]
02c6ce58  cbnz w9,0x02c6ce60
02c6ce5c  bl 0x029f5bd0
02c6ce60  mov x0,x20
02c6ce64  mov x1,xzr
02c6ce68  mov x2,xzr
02c6ce6c  bl 0x057e14b4
02c6ce70  tbz w0,#0x0,0x02c6ce80
02c6ce74  ldp x20,x19,[sp, #0x10]
02c6ce78  ldp x30,x21,[sp], #0x20
02c6ce7c  ret
02c6ce80  ldr x8,[x21]
02c6ce84  ldr x8,[x8, #0xb8]
02c6ce88  ldr x0,[x8]
02c6ce8c  cbz x0,0x02c6cea0
02c6ce90  ldr w1,[x19, #0x20]
02c6ce94  ldp x20,x19,[sp, #0x10]
02c6ce98  ldp x30,x21,[sp], #0x20
02c6ce9c  b 0x02c6c408
02c6cea0  bl 0x029f5cfc
