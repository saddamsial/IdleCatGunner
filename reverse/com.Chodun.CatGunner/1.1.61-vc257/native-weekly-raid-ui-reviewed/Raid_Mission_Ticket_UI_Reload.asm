02c552ec  str x30,[sp, #-0x30]!
02c552f0  stp x22,x21,[sp, #0x10]
02c552f4  stp x20,x19,[sp, #0x20]
02c552f8  adrp x21,0x625c000
02c552fc  adrp x20,0x5e5e000
02c55300  adrp x22,0x5e59000
02c55304  ldrb w8,[x21, #0x188]
02c55308  ldr x20,[x20, #0x68]
02c5530c  ldr x22,[x22, #0x1c0]
02c55310  mov x19,x0
02c55314  tbnz w8,#0x0,0x02c55338
02c55318  adrp x0,0x5e59000
02c5531c  ldr x0,[x0, #0x1c0]
02c55320  bl 0x029f5a50
02c55324  adrp x0,0x5e5e000
02c55328  ldr x0,[x0, #0x68]
02c5532c  bl 0x029f5a50
02c55330  mov w8,#0x1
02c55334  strb w8,[x21, #0x188]
02c55338  ldr x8,[x20]
02c5533c  ldr x0,[x22]
02c55340  str wzr,[sp, #0xc]
02c55344  ldr x8,[x8, #0xb8]
02c55348  ldr w9,[x0, #0xe4]
02c5534c  ldr x20,[x8]
02c55350  cbnz w9,0x02c55358
02c55354  bl 0x029f5bd0
02c55358  mov x0,x20
02c5535c  mov x1,xzr
02c55360  mov x2,xzr
02c55364  bl 0x057e14b4
02c55368  tbnz w0,#0x0,0x02c5545c
02c5536c  ldr x0,[x22]
02c55370  ldr x21,[x19, #0x20]
02c55374  ldr w8,[x0, #0xe4]
02c55378  cbnz w8,0x02c55380
02c5537c  bl 0x029f5bd0
02c55380  mov x0,x21
02c55384  mov x1,xzr
02c55388  mov x2,xzr
02c5538c  bl 0x057dfa70
02c55390  tbz w0,#0x0,0x02c553d4
02c55394  cbz x20,0x02c5546c
02c55398  ldr x21,[x19, #0x20]
02c5539c  mov x0,x20
02c553a0  bl 0x02c54698
02c553a4  str w0,[sp, #0xc]
02c553a8  add x0,sp,#0xc
02c553ac  mov x1,xzr
02c553b0  bl 0x0484e6a4
02c553b4  cbz x21,0x02c5546c
02c553b8  ldr x8,[x21]
02c553bc  mov x1,x0
02c553c0  mov x0,x21
02c553c4  ldr x9,[x8, #0x558]
02c553c8  ldr x2,[x8, #0x560]
02c553cc  blr x9
02c553d0  b 0x02c553d8
02c553d4  cbz x20,0x02c5546c
02c553d8  ldr x0,[x22]
02c553dc  ldrb w21,[x20, #0x48]
02c553e0  ldr x20,[x19, #0x28]
02c553e4  ldr w8,[x0, #0xe4]
02c553e8  cbnz w8,0x02c553f0
02c553ec  bl 0x029f5bd0
02c553f0  mov x0,x20
02c553f4  mov x1,xzr
02c553f8  mov x2,xzr
02c553fc  bl 0x057dfa70
02c55400  tbz w0,#0x0,0x02c5541c
02c55404  ldr x0,[x19, #0x28]
02c55408  cbz x0,0x02c5546c
02c5540c  cmp w21,#0x0
02c55410  mov x2,xzr
02c55414  cset w1,eq
02c55418  bl 0x057dff3c
02c5541c  ldr x0,[x22]
02c55420  ldr x20,[x19, #0x30]
02c55424  ldr w8,[x0, #0xe4]
02c55428  cbnz w8,0x02c55430
02c5542c  bl 0x029f5bd0
02c55430  mov x0,x20
02c55434  mov x1,xzr
02c55438  mov x2,xzr
02c5543c  bl 0x057dfa70
02c55440  tbz w0,#0x0,0x02c5545c
02c55444  ldr x0,[x19, #0x30]
02c55448  cbz x0,0x02c5546c
02c5544c  cmp w21,#0x0
02c55450  mov x2,xzr
02c55454  cset w1,ne
02c55458  bl 0x057dff3c
02c5545c  ldp x20,x19,[sp, #0x20]
02c55460  ldp x22,x21,[sp, #0x10]
02c55464  ldr x30,[sp], #0x30
02c55468  ret
02c5546c  bl 0x029f5cfc
