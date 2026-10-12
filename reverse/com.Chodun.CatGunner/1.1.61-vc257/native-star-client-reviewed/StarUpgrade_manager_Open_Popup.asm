02c6e578  stp x30,x23,[sp, #-0x30]!
02c6e57c  stp x22,x21,[sp, #0x10]
02c6e580  stp x20,x19,[sp, #0x20]
02c6e584  adrp x23,0x625c000
02c6e588  adrp x22,0x5e59000
02c6e58c  mov w20,w2
02c6e590  ldrb w8,[x23, #0x2b0]
02c6e594  ldr x22,[x22, #0x1c0]
02c6e598  mov w19,w1
02c6e59c  mov x21,x0
02c6e5a0  tbnz w8,#0x0,0x02c6e5d0
02c6e5a4  adrp x0,0x5e58000
02c6e5a8  ldr x0,[x0, #0xf08]
02c6e5ac  bl 0x029f5a50
02c6e5b0  adrp x0,0x5e59000
02c6e5b4  ldr x0,[x0, #0x1c0]
02c6e5b8  bl 0x029f5a50
02c6e5bc  adrp x0,0x5e63000
02c6e5c0  ldr x0,[x0, #0xb38]
02c6e5c4  bl 0x029f5a50
02c6e5c8  mov w8,#0x1
02c6e5cc  strb w8,[x23, #0x2b0]
02c6e5d0  ldr x0,[x22]
02c6e5d4  ldr x22,[x21, #0x28]
02c6e5d8  ldr w8,[x0, #0xe4]
02c6e5dc  cbnz w8,0x02c6e5e4
02c6e5e0  bl 0x029f5bd0
02c6e5e4  mov x0,x22
02c6e5e8  mov x1,xzr
02c6e5ec  mov x2,xzr
02c6e5f0  bl 0x057e14b4
02c6e5f4  tbz w0,#0x0,0x02c6e630
02c6e5f8  adrp x8,0x5e58000
02c6e5fc  adrp x19,0x5e63000
02c6e600  ldr x8,[x8, #0xf08]
02c6e604  ldr x0,[x8]
02c6e608  ldr w8,[x0, #0xe4]
02c6e60c  ldr x19,[x19, #0xb38]
02c6e610  cbnz w8,0x02c6e618
02c6e614  bl 0x029f5bd0
02c6e618  ldr x0,[x19]
02c6e61c  ldp x20,x19,[sp, #0x20]
02c6e620  ldp x22,x21,[sp, #0x10]
02c6e624  mov x1,xzr
02c6e628  ldp x30,x23,[sp], #0x30
02c6e62c  b 0x0579a8d0
02c6e630  ldr x0,[x21, #0x28]
02c6e634  cbz x0,0x02c6e650
02c6e638  and w2,w20,#0x1
02c6e63c  mov w1,w19
02c6e640  ldp x20,x19,[sp, #0x20]
02c6e644  ldp x22,x21,[sp, #0x10]
02c6e648  ldp x30,x23,[sp], #0x30
02c6e64c  b 0x02c6e654
02c6e650  bl 0x029f5cfc
