02c531d8  str x30,[sp, #-0x40]!
02c531dc  stp x24,x23,[sp, #0x10]
02c531e0  stp x22,x21,[sp, #0x20]
02c531e4  stp x20,x19,[sp, #0x30]
02c531e8  adrp x19,0x625c000
02c531ec  mov w20,w1
02c531f0  mov x21,x0
02c531f4  ldrb w8,[x19, #0x17c]
02c531f8  tbnz w8,#0x0,0x02c53240
02c531fc  adrp x0,0x5e58000
02c53200  ldr x0,[x0, #0xf08]
02c53204  bl 0x029f5a50
02c53208  adrp x0,0x5e5d000
02c5320c  ldr x0,[x0, #0x338]
02c53210  bl 0x029f5a50
02c53214  adrp x0,0x5e59000
02c53218  ldr x0,[x0, #0x1c0]
02c5321c  bl 0x029f5a50
02c53220  adrp x0,0x5e5e000
02c53224  ldr x0,[x0, #0x68]
02c53228  bl 0x029f5a50
02c5322c  adrp x0,0x5e63000
02c53230  ldr x0,[x0, #0x5d8]
02c53234  bl 0x029f5a50
02c53238  mov w8,#0x1
02c5323c  strb w8,[x19, #0x17c]
02c53240  adrp x23,0x5e59000
02c53244  mov x0,x21
02c53248  mov w1,w20
02c5324c  ldr x23,[x23, #0x1c0]
02c53250  bl 0x02c53078
02c53254  mov w19,w0
02c53258  cmp w0,#0x1
02c5325c  b.ne 0x02c53444
02c53260  ldr x8,[x21, #0x38]
02c53264  cbz x8,0x02c534f8
02c53268  ldr w9,[x8, #0x18]
02c5326c  cmp w9,w20
02c53270  b.ls 0x02c534fc
02c53274  sxtw x24,w20
02c53278  ldr x9,[x21, #0x20]
02c5327c  mov w10,#0x1
02c53280  add x8,x8,x24
02c53284  strb w10,[x8, #0x20]
02c53288  cbz x9,0x02c534f8
02c5328c  ldr w8,[x9, #0x18]
02c53290  cmp w8,w20
02c53294  b.ls 0x02c534fc
02c53298  add x8,x9,x24, LSL #0x3
02c5329c  ldr x8,[x8, #0x20]
02c532a0  cbz x8,0x02c534f8
02c532a4  adrp x9,0x5e5d000
02c532a8  ldr x9,[x9, #0x338]
02c532ac  ldr w22,[x8, #0x18]
02c532b0  ldr x0,[x9]
02c532b4  ldr w9,[x0, #0xe4]
02c532b8  cbnz w9,0x02c532c0
02c532bc  bl 0x029f5bd0
02c532c0  mov w0,w22
02c532c4  mov x1,xzr
02c532c8  bl 0x02b7f834
02c532cc  mov x0,x21
02c532d0  mov w1,w20
02c532d4  mov w2,wzr
02c532d8  bl 0x02c549f0
02c532dc  mov x0,xzr
02c532e0  bl 0x02c0faf8
02c532e4  adrp x22,0x5e58000
02c532e8  add x1,sp,#0xc
02c532ec  ldr x22,[x22, #0xa10]
02c532f0  str w20,[sp, #0xc]
02c532f4  ldr x0,[x22, #0x48]
02c532f8  bl 0x029f5bd8
02c532fc  ldr x8,[x21, #0x20]
02c53300  cbz x8,0x02c534f8
02c53304  ldr w9,[x8, #0x18]
02c53308  cmp w9,w20
02c5330c  b.ls 0x02c534fc
02c53310  add x8,x8,x24, LSL #0x3
02c53314  ldr x8,[x8, #0x20]
02c53318  cbz x8,0x02c534f8
02c5331c  mov x21,x0
02c53320  ldr w8,[x8, #0x18]
02c53324  ldr x0,[x22, #0x48]
02c53328  add x1,sp,#0x8
02c5332c  str w8,[sp, #0x8]
02c53330  bl 0x029f5bd8
02c53334  adrp x8,0x5e63000
02c53338  mov x2,x0
02c5333c  mov x1,x21
02c53340  ldr x8,[x8, #0x5d8]
02c53344  mov x3,xzr
02c53348  ldr x8,[x8]
02c5334c  mov x0,x8
02c53350  bl 0x046c1d14
02c53354  adrp x8,0x5e58000
02c53358  mov x20,x0
02c5335c  ldr x8,[x8, #0xf08]
02c53360  ldr x8,[x8]
02c53364  ldr w9,[x8, #0xe4]
02c53368  cbnz w9,0x02c53374
02c5336c  mov x0,x8
02c53370  bl 0x029f5bd0
02c53374  mov x0,x20
02c53378  mov x1,xzr
02c5337c  bl 0x05799e30
02c53380  adrp x21,0x625b000
02c53384  ldrb w8,[x21, #0xa57]
02c53388  cbnz w8,0x02c533a0
02c5338c  adrp x0,0x5e5d000
02c53390  ldr x0,[x0, #0xd70]
02c53394  bl 0x029f5a50
02c53398  mov w8,#0x1
02c5339c  strb w8,[x21, #0xa57]
02c533a0  adrp x22,0x5e5d000
02c533a4  ldr x22,[x22, #0xd70]
02c533a8  ldr x0,[x23]
02c533ac  ldr x8,[x22]
02c533b0  ldr w9,[x0, #0xe4]
02c533b4  ldr x8,[x8, #0xb8]
02c533b8  ldr x20,[x8]
02c533bc  cbnz w9,0x02c533c4
02c533c0  bl 0x029f5bd0
02c533c4  mov x0,x20
02c533c8  mov x1,xzr
02c533cc  mov x2,xzr
02c533d0  bl 0x057dfa70
02c533d4  tbz w0,#0x0,0x02c53418
02c533d8  ldrb w8,[x21, #0xa57]
02c533dc  cbnz w8,0x02c533f4
02c533e0  adrp x0,0x5e5d000
02c533e4  ldr x0,[x0, #0xd70]
02c533e8  bl 0x029f5a50
02c533ec  mov w8,#0x1
02c533f0  strb w8,[x21, #0xa57]
02c533f4  ldr x8,[x22]
02c533f8  ldr x8,[x8, #0xb8]
02c533fc  ldr x0,[x8]
02c53400  cbz x0,0x02c534f8
02c53404  fmov s0,0x3f800000
02c53408  mov w1,#0x7
02c5340c  mov x2,xzr
02c53410  mov x3,xzr
02c53414  bl 0x02c1f10c
02c53418  adrp x8,0x5e5e000
02c5341c  ldr x8,[x8, #0x68]
02c53420  ldr x8,[x8]
02c53424  ldr x8,[x8, #0xb8]
02c53428  ldr x8,[x8, #0x8]
02c5342c  cbz x8,0x02c534dc
02c53430  ldr x9,[x8, #0x18]
02c53434  ldr x0,[x8, #0x40]
02c53438  ldr x1,[x8, #0x28]
02c5343c  blr x9
02c53440  b 0x02c534dc
02c53444  adrp x21,0x625b000
02c53448  ldrb w8,[x21, #0xa57]
02c5344c  cbnz w8,0x02c53464
02c53450  adrp x0,0x5e5d000
02c53454  ldr x0,[x0, #0xd70]
02c53458  bl 0x029f5a50
02c5345c  mov w8,#0x1
02c53460  strb w8,[x21, #0xa57]
02c53464  adrp x22,0x5e5d000
02c53468  ldr x22,[x22, #0xd70]
02c5346c  ldr x0,[x23]
02c53470  ldr x8,[x22]
02c53474  ldr w9,[x0, #0xe4]
02c53478  ldr x8,[x8, #0xb8]
02c5347c  ldr x20,[x8]
02c53480  cbnz w9,0x02c53488
02c53484  bl 0x029f5bd0
02c53488  mov x0,x20
02c5348c  mov x1,xzr
02c53490  mov x2,xzr
02c53494  bl 0x057dfa70
02c53498  tbz w0,#0x0,0x02c534dc
02c5349c  ldrb w8,[x21, #0xa57]
02c534a0  cbnz w8,0x02c534b8
02c534a4  adrp x0,0x5e5d000
02c534a8  ldr x0,[x0, #0xd70]
02c534ac  bl 0x029f5a50
02c534b0  mov w8,#0x1
02c534b4  strb w8,[x21, #0xa57]
02c534b8  ldr x8,[x22]
02c534bc  ldr x8,[x8, #0xb8]
02c534c0  ldr x0,[x8]
02c534c4  cbz x0,0x02c534f8
02c534c8  fmov s0,0x3f800000
02c534cc  mov w1,#0x5
02c534d0  mov x2,xzr
02c534d4  mov x3,xzr
02c534d8  bl 0x02c1f10c
02c534dc  cmp w19,#0x1
02c534e0  ldp x20,x19,[sp, #0x30]
02c534e4  ldp x22,x21,[sp, #0x20]
02c534e8  cset w0,eq
02c534ec  ldp x24,x23,[sp, #0x10]
02c534f0  ldr x30,[sp], #0x40
02c534f4  ret
02c534f8  bl 0x029f5cfc
02c534fc  bl 0x029f5d04
