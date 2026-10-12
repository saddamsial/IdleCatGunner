02c70278  stp x30,x21,[sp, #-0x20]!
02c7027c  stp x20,x19,[sp, #0x10]
02c70280  adrp x20,0x625c000
02c70284  mov x19,x0
02c70288  ldrb w8,[x20, #0x2c0]
02c7028c  tbnz w8,#0x0,0x02c702b0
02c70290  adrp x0,0x5e59000
02c70294  ldr x0,[x0, #0x1c0]
02c70298  bl 0x029f5a50
02c7029c  adrp x0,0x5e62000
02c702a0  ldr x0,[x0, #0x648]
02c702a4  bl 0x029f5a50
02c702a8  mov w8,#0x1
02c702ac  strb w8,[x20, #0x2c0]
02c702b0  ldr w8,[x19, #0x88]
02c702b4  cmp w8,#0x3
02c702b8  b.ne 0x02c7032c
02c702bc  mov x0,x19
02c702c0  bl 0x02c7008c
02c702c4  tbz w0,#0x0,0x02c7032c
02c702c8  adrp x21,0x5e62000
02c702cc  adrp x8,0x5e59000
02c702d0  ldr x21,[x21, #0x648]
02c702d4  ldr x8,[x8, #0x1c0]
02c702d8  ldr x9,[x21]
02c702dc  ldr x0,[x8]
02c702e0  ldr x8,[x9, #0xb8]
02c702e4  ldr w9,[x0, #0xe4]
02c702e8  ldr x20,[x8]
02c702ec  cbnz w9,0x02c702f4
02c702f0  bl 0x029f5bd0
02c702f4  mov x0,x20
02c702f8  mov x1,xzr
02c702fc  mov x2,xzr
02c70300  bl 0x057e14b4
02c70304  tbnz w0,#0x0,0x02c7032c
02c70308  ldr x8,[x21]
02c7030c  ldr x8,[x8, #0xb8]
02c70310  ldr x0,[x8]
02c70314  cbz x0,0x02c70348
02c70318  ldr w1,[x19, #0x90]
02c7031c  mov x2,xzr
02c70320  bl 0x02c6c118
02c70324  cmn w0,#0x1
02c70328  b.eq 0x02c7033c
02c7032c  mov x0,x19
02c70330  ldp x20,x19,[sp, #0x10]
02c70334  ldp x30,x21,[sp], #0x20
02c70338  b 0x02c7034c
02c7033c  ldp x20,x19,[sp, #0x10]
02c70340  ldp x30,x21,[sp], #0x20
02c70344  ret
02c70348  bl 0x029f5cfc
