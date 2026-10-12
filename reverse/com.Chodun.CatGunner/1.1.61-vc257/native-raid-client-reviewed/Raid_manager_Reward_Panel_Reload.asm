02c57578  sub sp,sp,#0x40
02c5757c  stp x30,x23,[sp, #0x10]
02c57580  stp x22,x21,[sp, #0x20]
02c57584  stp x20,x19,[sp, #0x30]
02c57588  adrp x21,0x625c000
02c5758c  adrp x19,0x5e5e000
02c57590  mov x20,x0
02c57594  ldrb w8,[x21, #0x1a1]
02c57598  ldr x19,[x19, #0x70]
02c5759c  tbnz w8,#0x0,0x02c575cc
02c575a0  adrp x0,0x5e5d000
02c575a4  ldr x0,[x0, #0x338]
02c575a8  bl 0x029f5a50
02c575ac  adrp x0,0x5e5e000
02c575b0  ldr x0,[x0, #0x70]
02c575b4  bl 0x029f5a50
02c575b8  adrp x0,0x5e61000
02c575bc  ldr x0,[x0, #0xf18]
02c575c0  bl 0x029f5a50
02c575c4  mov w8,#0x1
02c575c8  strb w8,[x21, #0x1a1]
02c575cc  ldr x0,[x19]
02c575d0  ldr w19,[x20, #0xb0]
02c575d4  ldr w8,[x0, #0xe4]
02c575d8  cbnz w8,0x02c575e0
02c575dc  bl 0x029f5bd0
02c575e0  mov w0,w19
02c575e4  bl 0x02c5704c
02c575e8  mov x19,x20
02c575ec  mov x1,xzr
02c575f0  str w0,[x19, #0x60]!
02c575f4  ldur x21,[x19, #-0x18]
02c575f8  mov x0,x19
02c575fc  bl 0x0484e6a4
02c57600  cbz x21,0x02c576f8
02c57604  ldr x8,[x21]
02c57608  adrp x22,0x5e61000
02c5760c  mov x1,x0
02c57610  ldr x22,[x22, #0xf18]
02c57614  mov x0,x21
02c57618  ldr x9,[x8, #0x558]
02c5761c  ldr x2,[x8, #0x560]
02c57620  blr x9
02c57624  adrp x23,0x5e58000
02c57628  add x1,sp,#0xc
02c5762c  ldr x23,[x23, #0xa10]
02c57630  ldr w8,[x20, #0xb0]
02c57634  ldr x21,[x20, #0x50]
02c57638  ldr x0,[x23, #0x48]
02c5763c  str w8,[sp, #0xc]
02c57640  bl 0x029f5bd8
02c57644  ldr x8,[x22]
02c57648  mov x1,x0
02c5764c  mov x2,xzr
02c57650  mov x0,x8
02c57654  bl 0x046b6c0c
02c57658  cbz x21,0x02c576f8
02c5765c  ldr x8,[x21]
02c57660  mov x1,x0
02c57664  mov x0,x21
02c57668  ldr x9,[x8, #0x558]
02c5766c  ldr x2,[x8, #0x560]
02c57670  blr x9
02c57674  ldr w8,[x20, #0x80]
02c57678  ldr x0,[x23, #0x48]
02c5767c  add x1,sp,#0x8
02c57680  ldr x20,[x20, #0x58]
02c57684  str w8,[sp, #0x8]
02c57688  bl 0x029f5bd8
02c5768c  ldr x8,[x22]
02c57690  mov x1,x0
02c57694  mov x2,xzr
02c57698  mov x0,x8
02c5769c  bl 0x046b6c0c
02c576a0  cbz x20,0x02c576f8
02c576a4  ldr x8,[x20]
02c576a8  adrp x21,0x5e5d000
02c576ac  mov x1,x0
02c576b0  ldr x21,[x21, #0x338]
02c576b4  mov x0,x20
02c576b8  ldr x9,[x8, #0x558]
02c576bc  ldr x2,[x8, #0x560]
02c576c0  blr x9
02c576c4  ldr x0,[x21]
02c576c8  ldr w19,[x19]
02c576cc  ldr w8,[x0, #0xe4]
02c576d0  cbnz w8,0x02c576d8
02c576d4  bl 0x029f5bd0
02c576d8  mov w0,w19
02c576dc  mov x1,xzr
02c576e0  bl 0x02b7f834
02c576e4  ldp x20,x19,[sp, #0x30]
02c576e8  ldp x22,x21,[sp, #0x20]
02c576ec  ldp x30,x23,[sp, #0x10]
02c576f0  add sp,sp,#0x40
02c576f4  ret
02c576f8  bl 0x029f5cfc
