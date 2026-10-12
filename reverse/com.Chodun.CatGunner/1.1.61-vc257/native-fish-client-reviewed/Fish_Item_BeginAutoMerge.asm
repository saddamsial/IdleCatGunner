02c615e0  stp x30,x21,[sp, #-0x20]!
02c615e4  stp x20,x19,[sp, #0x10]
02c615e8  adrp x21,0x625c000
02c615ec  mov x19,x0
02c615f0  and w20,w1,#0x1
02c615f4  ldrb w8,[x21, #0x220]
02c615f8  tbnz w8,#0x0,0x02c61610
02c615fc  adrp x0,0x5e59000
02c61600  ldr x0,[x0, #0x1c0]
02c61604  bl 0x029f5a50
02c61608  mov w8,#0x1
02c6160c  strb w8,[x21, #0x220]
02c61610  mov w8,#0x1
02c61614  mov x0,x19
02c61618  strb w20,[x19, #0x87]
02c6161c  strb w8,[x19, #0x86]
02c61620  strb wzr,[x19, #0xb0]
02c61624  bl 0x02c60fe0
02c61628  ldrb w8,[x19, #0x84]
02c6162c  cbz w8,0x02c61638
02c61630  mov x0,x19
02c61634  bl 0x02c60f18
02c61638  mov x0,x19
02c6163c  mov x1,xzr
02c61640  bl 0x057dc0f8
02c61644  cbz x0,0x02c616f0
02c61648  adrp x21,0x5e59000
02c6164c  mov x1,xzr
02c61650  ldr x21,[x21, #0x1c0]
02c61654  ldp s1,s2,[x19, #0xa0]
02c61658  ldr s0,[x19, #0x9c]
02c6165c  bl 0x057ef654
02c61660  mov x0,x19
02c61664  bl 0x02c613b8
02c61668  ldr x0,[x21]
02c6166c  ldr x20,[x19, #0x38]
02c61670  ldr w8,[x0, #0xe4]
02c61674  cbnz w8,0x02c6167c
02c61678  bl 0x029f5bd0
02c6167c  mov x0,x20
02c61680  mov x1,xzr
02c61684  mov x2,xzr
02c61688  bl 0x057dfa70
02c6168c  tbz w0,#0x0,0x02c616a4
02c61690  ldr x0,[x19, #0x38]
02c61694  cbz x0,0x02c616f0
02c61698  mov w1,#0x1
02c6169c  mov x2,xzr
02c616a0  bl 0x057dff3c
02c616a4  ldr x0,[x21]
02c616a8  ldr x20,[x19, #0x68]
02c616ac  ldr w8,[x0, #0xe4]
02c616b0  cbnz w8,0x02c616b8
02c616b4  bl 0x029f5bd0
02c616b8  mov x0,x20
02c616bc  mov x1,xzr
02c616c0  mov x2,xzr
02c616c4  bl 0x057dfa70
02c616c8  tbz w0,#0x0,0x02c616e0
02c616cc  ldr x0,[x19, #0x68]
02c616d0  cbz x0,0x02c616f0
02c616d4  mov w1,wzr
02c616d8  mov x2,xzr
02c616dc  bl 0x05a9f1dc
02c616e0  mov x0,x19
02c616e4  ldp x20,x19,[sp, #0x10]
02c616e8  ldp x30,x21,[sp], #0x20
02c616ec  b 0x02c613e4
02c616f0  bl 0x029f5cfc
