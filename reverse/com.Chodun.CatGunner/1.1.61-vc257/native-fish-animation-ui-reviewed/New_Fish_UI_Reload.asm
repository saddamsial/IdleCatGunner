02c5f1b0  str x30,[sp, #-0x30]!
02c5f1b4  stp x22,x21,[sp, #0x10]
02c5f1b8  stp x20,x19,[sp, #0x20]
02c5f1bc  adrp x21,0x625c000
02c5f1c0  adrp x22,0x5e5d000
02c5f1c4  mov w20,w1
02c5f1c8  ldrb w8,[x21, #0x244]
02c5f1cc  ldr x22,[x22, #0xd38]
02c5f1d0  mov x19,x0
02c5f1d4  tbnz w8,#0x0,0x02c5f1ec
02c5f1d8  adrp x0,0x5e5d000
02c5f1dc  ldr x0,[x0, #0xd38]
02c5f1e0  bl 0x029f5a50
02c5f1e4  mov w8,#0x1
02c5f1e8  strb w8,[x21, #0x244]
02c5f1ec  ldr x8,[x22]
02c5f1f0  ldr x8,[x8, #0xb8]
02c5f1f4  ldr x8,[x8]
02c5f1f8  cbz x8,0x02c5f274
02c5f1fc  ldr x8,[x8, #0x28]
02c5f200  cbz x8,0x02c5f274
02c5f204  ldr w9,[x8, #0x18]
02c5f208  cmp w9,w20
02c5f20c  b.ls 0x02c5f2a0
02c5f210  ldr x0,[x19, #0x20]
02c5f214  cbz x0,0x02c5f274
02c5f218  add x8,x8,w20, SXTW  #0x3
02c5f21c  mov x2,xzr
02c5f220  ldr x1,[x8, #0x20]
02c5f224  bl 0x058d34cc
02c5f228  ldr x8,[x19, #0x28]
02c5f22c  cbz x8,0x02c5f274
02c5f230  mov x21,xzr
02c5f234  mov w20,w20
02c5f238  ldr w9,[x8, #0x18]
02c5f23c  cmp w21,w9
02c5f240  b.ge 0x02c5f278
02c5f244  cmp w21,w9
02c5f248  b.cs 0x02c5f2a0
02c5f24c  add x8,x8,x21, LSL #0x3
02c5f250  ldr x0,[x8, #0x20]
02c5f254  cbz x0,0x02c5f274
02c5f258  cmp w20,w21
02c5f25c  mov x2,xzr
02c5f260  cset w1,eq
02c5f264  bl 0x057dff3c
02c5f268  ldr x8,[x19, #0x28]
02c5f26c  add x21,x21,#0x1
02c5f270  cbnz x8,0x02c5f238
02c5f274  bl 0x029f5cfc
02c5f278  mov x0,x19
02c5f27c  mov x1,xzr
02c5f280  bl 0x057dc1c8
02c5f284  cbz x0,0x02c5f274
02c5f288  ldp x20,x19,[sp, #0x20]
02c5f28c  mov w1,#0x1
02c5f290  ldp x22,x21,[sp, #0x10]
02c5f294  mov x2,xzr
02c5f298  ldr x30,[sp], #0x30
02c5f29c  b 0x057dff3c
02c5f2a0  bl 0x029f5d04
