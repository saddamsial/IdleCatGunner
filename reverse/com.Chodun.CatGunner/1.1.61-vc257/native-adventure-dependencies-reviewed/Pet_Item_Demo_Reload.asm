02c821e8  stp x30,x23,[sp, #-0x30]!
02c821ec  stp x22,x21,[sp, #0x10]
02c821f0  stp x20,x19,[sp, #0x20]
02c821f4  adrp x21,0x625c000
02c821f8  adrp x23,0x5e5d000
02c821fc  mov w20,w1
02c82200  ldrb w8,[x21, #0x35d]
02c82204  ldr x23,[x23, #0x4d0]
02c82208  mov x19,x0
02c8220c  tbnz w8,#0x0,0x02c82224
02c82210  adrp x0,0x5e5d000
02c82214  ldr x0,[x0, #0x4d0]
02c82218  bl 0x029f5a50
02c8221c  mov w8,#0x1
02c82220  strb w8,[x21, #0x35d]
02c82224  ldr x0,[x23]
02c82228  ldp x22,x21,[x19, #0x20]
02c8222c  ldr w8,[x0, #0xe4]
02c82230  cbnz w8,0x02c8223c
02c82234  bl 0x029f5bd0
02c82238  ldr x0,[x23]
02c8223c  ldr x8,[x0, #0xb8]
02c82240  ldr x8,[x8, #0x28]
02c82244  cbz x8,0x02c82330
02c82248  ldr x8,[x8, #0x58]
02c8224c  cbz x8,0x02c82330
02c82250  ldr w9,[x8, #0x18]
02c82254  cmp w9,w20
02c82258  b.ls 0x02c82344
02c8225c  cbz x22,0x02c82330
02c82260  add x8,x8,w20, SXTW  #0x3
02c82264  mov x0,x22
02c82268  mov x2,xzr
02c8226c  ldr x23,[x8, #0x20]
02c82270  mov x1,x23
02c82274  bl 0x058d34cc
02c82278  cbz x21,0x02c82330
02c8227c  mov x0,x21
02c82280  mov x1,x23
02c82284  mov x2,xzr
02c82288  bl 0x058d34cc
02c8228c  ldr x0,[x19, #0x28]
02c82290  cbz x0,0x02c82330
02c82294  ldr x8,[x0]
02c82298  ldr x9,[x8, #0x408]
02c8229c  ldr x1,[x8, #0x410]
02c822a0  blr x9
02c822a4  ldr x0,[x19, #0x20]
02c822a8  cbz x0,0x02c82330
02c822ac  ldr x8,[x0]
02c822b0  ldr x9,[x8, #0x408]
02c822b4  ldr x1,[x8, #0x410]
02c822b8  blr x9
02c822bc  ldr x21,[x19, #0x30]
02c822c0  mov w0,w20
02c822c4  mov x1,xzr
02c822c8  bl 0x02c7e324
02c822cc  cbz x21,0x02c82330
02c822d0  ldr x8,[x21]
02c822d4  mov x0,x21
02c822d8  ldr x9,[x8, #0x2a8]
02c822dc  ldr x1,[x8, #0x2b0]
02c822e0  blr x9
02c822e4  ldr x8,[x19, #0x38]
02c822e8  cbz x8,0x02c82330
02c822ec  mov x21,xzr
02c822f0  mov w20,w20
02c822f4  ldr w9,[x8, #0x18]
02c822f8  cmp w21,w9
02c822fc  b.ge 0x02c82334
02c82300  cmp w21,w9
02c82304  b.cs 0x02c82344
02c82308  add x8,x8,x21, LSL #0x3
02c8230c  ldr x0,[x8, #0x20]
02c82310  cbz x0,0x02c82330
02c82314  cmp w20,w21
02c82318  mov x2,xzr
02c8231c  cset w1,eq
02c82320  bl 0x057dff3c
02c82324  ldr x8,[x19, #0x38]
02c82328  add x21,x21,#0x1
02c8232c  cbnz x8,0x02c822f4
02c82330  bl 0x029f5cfc
02c82334  ldp x20,x19,[sp, #0x20]
02c82338  ldp x22,x21,[sp, #0x10]
02c8233c  ldp x30,x23,[sp], #0x30
02c82340  ret
02c82344  bl 0x029f5d04
