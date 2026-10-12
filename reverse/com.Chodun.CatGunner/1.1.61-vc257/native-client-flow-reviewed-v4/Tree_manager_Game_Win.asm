02cad174  sub sp,sp,#0x60
02cad178  str d8,[sp, #0x10]
02cad17c  str x30,[sp, #0x18]
02cad180  stp x26,x25,[sp, #0x20]
02cad184  stp x24,x23,[sp, #0x30]
02cad188  stp x22,x21,[sp, #0x40]
02cad18c  stp x20,x19,[sp, #0x50]
02cad190  adrp x20,0x625c000
02cad194  adrp x22,0x5e5d000
02cad198  mov x19,x0
02cad19c  ldrb w8,[x20, #0x520]
02cad1a0  ldr x22,[x22, #0x338]
02cad1a4  tbnz w8,#0x0,0x02cad1f8
02cad1a8  adrp x0,0x5e5d000
02cad1ac  ldr x0,[x0, #0x540]
02cad1b0  bl 0x029f5a50
02cad1b4  adrp x0,0x5e5d000
02cad1b8  ldr x0,[x0, #0x338]
02cad1bc  bl 0x029f5a50
02cad1c0  adrp x0,0x5e5d000
02cad1c4  ldr x0,[x0, #0xd50]
02cad1c8  bl 0x029f5a50
02cad1cc  adrp x0,0x5e5d000
02cad1d0  ldr x0,[x0, #0x498]
02cad1d4  bl 0x029f5a50
02cad1d8  adrp x0,0x5e5d000
02cad1dc  ldr x0,[x0, #0x4d8]
02cad1e0  bl 0x029f5a50
02cad1e4  adrp x0,0x5e5d000
02cad1e8  ldr x0,[x0, #0xc20]
02cad1ec  bl 0x029f5a50
02cad1f0  mov w8,#0x1
02cad1f4  strb w8,[x20, #0x520]
02cad1f8  ldr x0,[x22]
02cad1fc  str xzr,[sp, #0x8]
02cad200  ldr w8,[x0, #0xe4]
02cad204  cbnz w8,0x02cad210
02cad208  bl 0x029f5bd0
02cad20c  ldr x0,[x22]
02cad210  ldr x8,[x0, #0xb8]
02cad214  ldrb w9,[x8]
02cad218  cbz w9,0x02cad348
02cad21c  ldr w9,[x0, #0xe4]
02cad220  cbnz w9,0x02cad230
02cad224  bl 0x029f5bd0
02cad228  ldr x8,[x22]
02cad22c  ldr x8,[x8, #0xb8]
02cad230  mov x0,xzr
02cad234  strb wzr,[x8]
02cad238  bl 0x057e85b4
02cad23c  ldp s1,s2,[x19, #0x38]
02cad240  ldr x0,[x19, #0xa0]
02cad244  fsub s0,s0,s1
02cad248  fadd s0,s2,s0
02cad24c  str s0,[x19, #0x3c]
02cad250  cbz x0,0x02cad544
02cad254  fmov s0,0x3f800000
02cad258  adrp x25,0x5e5d000
02cad25c  mov x1,xzr
02cad260  ldr x25,[x25, #0xc20]
02cad264  bl 0x02c7a4f0
02cad268  mov x23,x19
02cad26c  ldr x0,[x25]
02cad270  ldr w20,[x23, #0x28]!
02cad274  mov x24,x23
02cad278  ldr w21,[x24, #0x4]!
02cad27c  ldr w9,[x0, #0xe4]
02cad280  mov w8,w21
02cad284  cbnz w9,0x02cad290
02cad288  bl 0x029f5bd0
02cad28c  ldr w8,[x24]
02cad290  adrp x26,0x5e5d000
02cad294  cmp w8,#0x4
02cad298  mov x9,x24
02cad29c  ldr x26,[x26, #0x4d8]
02cad2a0  b.lt 0x02cad2b0
02cad2a4  ldr w8,[x23]
02cad2a8  mov x9,x23
02cad2ac  str wzr,[x24]
02cad2b0  add w8,w8,#0x1
02cad2b4  ldr x0,[x26]
02cad2b8  str w8,[x9]
02cad2bc  ldr w8,[x0, #0xe4]
02cad2c0  cbnz w8,0x02cad2cc
02cad2c4  bl 0x029f5bd0
02cad2c8  ldr x0,[x26]
02cad2cc  ldr x8,[x0, #0xb8]
02cad2d0  ldr w8,[x8, #0x6c]
02cad2d4  cmp w8,#0x1
02cad2d8  b.lt 0x02cad3a4
02cad2dc  mov x0,xzr
02cad2e0  bl 0x057d569c
02cad2e4  ldr x0,[x26]
02cad2e8  fmov s8,s0
02cad2ec  ldr w8,[x0, #0xe4]
02cad2f0  cbnz w8,0x02cad2fc
02cad2f4  bl 0x029f5bd0
02cad2f8  ldr x0,[x26]
02cad2fc  ldr x8,[x0, #0xb8]
02cad300  mov w9,#0x42c80000
02cad304  fmov s1,w9
02cad308  ldr s0,[x8, #0x6c]
02cad30c  fmul s1,s8,s1
02cad310  scvtf s0,s0
02cad314  fcmp s1,s0
02cad318  b.pl 0x02cad3a4
02cad31c  ldr x0,[x25]
02cad320  ldr w26,[x23]
02cad324  ldr w25,[x24]
02cad328  ldr w8,[x0, #0xe4]
02cad32c  stp w25,w26,[sp, #0x8]
02cad330  cbnz w8,0x02cad338
02cad334  bl 0x029f5bd0
02cad338  cmp w25,#0x4
02cad33c  b.ge 0x02cad368
02cad340  add x8,sp,#0x8
02cad344  b 0x02cad374
02cad348  ldp x20,x19,[sp, #0x50]
02cad34c  ldr x30,[sp, #0x18]
02cad350  ldp x22,x21,[sp, #0x40]
02cad354  ldr d8,[sp, #0x10]
02cad358  ldp x24,x23,[sp, #0x30]
02cad35c  ldp x26,x25,[sp, #0x20]
02cad360  add sp,sp,#0x60
02cad364  ret
02cad368  add x8,sp,#0xc
02cad36c  mov w25,w26
02cad370  str wzr,[sp, #0x8]
02cad374  add w9,w25,#0x1
02cad378  mov w10,#0xa
02cad37c  ldr w11,[x19, #0x30]
02cad380  str w9,[x8]
02cad384  ldp w9,w8,[sp, #0x8]
02cad388  madd w10,w8,w10,w9
02cad38c  cmp w10,w11
02cad390  b.ge 0x02cad3a4
02cad394  str w8,[x23]
02cad398  mov w23,#0x1
02cad39c  str w9,[x24]
02cad3a0  b 0x02cad3a8
02cad3a4  mov w23,wzr
02cad3a8  ldp w8,w10,[x19, #0x28]
02cad3ac  mov w9,#0xa
02cad3b0  madd w8,w8,w9,w10
02cad3b4  ldr w9,[x19, #0x30]
02cad3b8  cmp w8,w9
02cad3bc  b.lt 0x02cad464
02cad3c0  ldr x0,[x22]
02cad3c4  str w8,[x19, #0x30]
02cad3c8  ldr w9,[x0, #0xe4]
02cad3cc  cbnz w9,0x02cad3d4
02cad3d0  bl 0x029f5bd0
02cad3d4  mov x0,xzr
02cad3d8  bl 0x02b7f96c
02cad3dc  tbnz w0,#0x0,0x02cad408
02cad3e0  adrp x8,0x5e5d000
02cad3e4  ldr x8,[x8, #0x498]
02cad3e8  ldr x8,[x8]
02cad3ec  ldr x8,[x8, #0xb8]
02cad3f0  ldr x0,[x8]
02cad3f4  cbz x0,0x02cad544
02cad3f8  mov w1,wzr
02cad3fc  mov x2,xzr
02cad400  mov x3,xzr
02cad404  bl 0x02c0db60
02cad408  bl 0x02cac9cc
02cad40c  adrp x24,0x5e5d000
02cad410  ldr x24,[x24, #0x540]
02cad414  ldr x0,[x24]
02cad418  ldr w8,[x0, #0xe4]
02cad41c  cbnz w8,0x02cad424
02cad420  bl 0x029f5bd0
02cad424  mov w0,w20
02cad428  mov w1,w21
02cad42c  mov x2,xzr
02cad430  bl 0x02b973d0
02cad434  cmp w21,#0x4
02cad438  b.ne 0x02cad464
02cad43c  ldr x0,[x24]
02cad440  ldr w21,[x19, #0x40]
02cad444  ldr w8,[x0, #0xe4]
02cad448  cbnz w8,0x02cad450
02cad44c  bl 0x029f5bd0
02cad450  mov w0,w20
02cad454  mov w1,#0x4
02cad458  mov w2,w21
02cad45c  mov x3,xzr
02cad460  bl 0x02b970f4
02cad464  adrp x20,0x625b000
02cad468  strb w23,[x19, #0x50]
02cad46c  ldrb w8,[x20, #0xa57]
02cad470  cbnz w8,0x02cad488
02cad474  adrp x0,0x5e5d000
02cad478  ldr x0,[x0, #0xd70]
02cad47c  bl 0x029f5a50
02cad480  mov w8,#0x1
02cad484  strb w8,[x20, #0xa57]
02cad488  adrp x8,0x5e5d000
02cad48c  ldr x8,[x8, #0xd70]
02cad490  ldr x8,[x8]
02cad494  ldr x8,[x8, #0xb8]
02cad498  ldr x0,[x8]
02cad49c  cbz x0,0x02cad544
02cad4a0  fmov s0,0x3f800000
02cad4a4  adrp x20,0x5e5d000
02cad4a8  mov w1,#0xb
02cad4ac  ldr x20,[x20, #0xd50]
02cad4b0  mov x2,xzr
02cad4b4  mov x3,xzr
02cad4b8  bl 0x02c1f10c
02cad4bc  ldr x0,[x20]
02cad4c0  ldr w8,[x0, #0xe4]
02cad4c4  cbnz w8,0x02cad4d0
02cad4c8  bl 0x029f5bd0
02cad4cc  ldr x0,[x20]
02cad4d0  ldr x8,[x0, #0xb8]
02cad4d4  ldr x0,[x8, #0x8]
02cad4d8  cbz x0,0x02cad544
02cad4dc  mov w1,#0x1
02cad4e0  mov x2,xzr
02cad4e4  bl 0x02ba6a18
02cad4e8  ldr x0,[x19, #0x58]
02cad4ec  cbz x0,0x02cad544
02cad4f0  mov w1,#0x1
02cad4f4  mov x2,xzr
02cad4f8  bl 0x057dff3c
02cad4fc  mov x0,x19
02cad500  bl 0x02cad6d4
02cad504  mov x20,x19
02cad508  mov x1,x0
02cad50c  str x0,[x20, #0xc8]!
02cad510  mov x0,x20
02cad514  bl 0x029f59f4
02cad518  ldr x1,[x20]
02cad51c  mov x0,x19
02cad520  ldr x30,[sp, #0x18]
02cad524  ldp x20,x19,[sp, #0x50]
02cad528  mov x2,xzr
02cad52c  ldp x22,x21,[sp, #0x40]
02cad530  ldr d8,[sp, #0x10]
02cad534  ldp x24,x23,[sp, #0x30]
02cad538  ldp x26,x25,[sp, #0x20]
02cad53c  add sp,sp,#0x60
02cad540  b 0x057e2120
02cad544  bl 0x029f5cfc
