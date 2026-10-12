02c4e5b8  sub sp,sp,#0x70
02c4e5bc  stp x30,x23,[sp, #0x40]
02c4e5c0  stp x22,x21,[sp, #0x50]
02c4e5c4  stp x20,x19,[sp, #0x60]
02c4e5c8  adrp x21,0x625c000
02c4e5cc  adrp x20,0x5e5d000
02c4e5d0  mov x19,x0
02c4e5d4  ldrb w8,[x21, #0x140]
02c4e5d8  ldr x20,[x20, #0x338]
02c4e5dc  tbnz w8,#0x0,0x02c4e630
02c4e5e0  adrp x0,0x5e63000
02c4e5e4  ldr x0,[x0, #0x4f8]
02c4e5e8  bl 0x029f5a50
02c4e5ec  adrp x0,0x5e63000
02c4e5f0  ldr x0,[x0, #0x500]
02c4e5f4  bl 0x029f5a50
02c4e5f8  adrp x0,0x5e63000
02c4e5fc  ldr x0,[x0, #0x508]
02c4e600  bl 0x029f5a50
02c4e604  adrp x0,0x5e5d000
02c4e608  ldr x0,[x0, #0x338]
02c4e60c  bl 0x029f5a50
02c4e610  adrp x0,0x5e63000
02c4e614  ldr x0,[x0, #0x518]
02c4e618  bl 0x029f5a50
02c4e61c  adrp x0,0x5e59000
02c4e620  ldr x0,[x0, #0x1c0]
02c4e624  bl 0x029f5a50
02c4e628  mov w8,#0x1
02c4e62c  strb w8,[x21, #0x140]
02c4e630  ldr x0,[x20]
02c4e634  stp xzr,xzr,[sp, #0x20]
02c4e638  str xzr,[sp, #0x30]
02c4e63c  ldr w8,[x0, #0xe4]
02c4e640  cbnz w8,0x02c4e64c
02c4e644  bl 0x029f5bd0
02c4e648  ldr x0,[x20]
02c4e64c  ldr x8,[x0, #0xb8]
02c4e650  ldrb w9,[x8]
02c4e654  cbz w9,0x02c4e794
02c4e658  ldr w9,[x0, #0xe4]
02c4e65c  cbnz w9,0x02c4e66c
02c4e660  bl 0x029f5bd0
02c4e664  ldr x8,[x20]
02c4e668  ldr x8,[x8, #0xb8]
02c4e66c  mov x0,x19
02c4e670  mov w1,#0x1
02c4e674  strb wzr,[x8]
02c4e678  bl 0x02c4d578
02c4e67c  mov x0,x19
02c4e680  bl 0x02c4e0f0
02c4e684  ldr x0,[x19, #0x178]
02c4e688  cbz x0,0x02c4e7ac
02c4e68c  adrp x8,0x5e63000
02c4e690  adrp x22,0x5e63000
02c4e694  adrp x23,0x5e59000
02c4e698  ldr x8,[x8, #0x518]
02c4e69c  adrp x21,0x5e63000
02c4e6a0  ldr x22,[x22, #0x500]
02c4e6a4  ldr x23,[x23, #0x1c0]
02c4e6a8  ldr x21,[x21, #0x4f8]
02c4e6ac  ldr x1,[x8]
02c4e6b0  add x8,sp,#0x8
02c4e6b4  bl 0x0452d690
02c4e6b8  ldr x8,[sp, #0x18]
02c4e6bc  ldur q0,[sp, #0x8]
02c4e6c0  str x8,[sp, #0x30]
02c4e6c4  add x8,sp,#0x20
02c4e6c8  str q0,[sp, #0x20]
02c4e6cc  stp xzr,x8,[sp, #0x8]
02c4e6d0  ldr x1,[x22]
02c4e6d4  add x0,sp,#0x20
02c4e6d8  bl 0x03fa4e10
02c4e6dc  tbz w0,#0x0,0x02c4e718
02c4e6e0  ldr x0,[x23]
02c4e6e4  ldr x20,[sp, #0x30]
02c4e6e8  ldr w8,[x0, #0xe4]
02c4e6ec  cbnz w8,0x02c4e6f4
02c4e6f0  bl 0x029f5bd0
02c4e6f4  mov x0,x20
02c4e6f8  mov x1,xzr
02c4e6fc  mov x2,xzr
02c4e700  bl 0x057dfa70
02c4e704  tbz w0,#0x0,0x02c4e6d0
02c4e708  cbz x20,0x02c4e7a8
02c4e70c  mov x0,x20
02c4e710  bl 0x02c4cdb8
02c4e714  b 0x02c4e6d0
02c4e718  ldr x1,[x21]
02c4e71c  add x0,sp,#0x20
02c4e720  bl 0x03fa4e0c
02c4e724  mov x0,x19
02c4e728  bl 0x02c4e810
02c4e72c  ldr x0,[x19, #0x28]
02c4e730  mov w8,#0x1
02c4e734  strb w8,[x19, #0xb9]
02c4e738  cbz x0,0x02c4e7ac
02c4e73c  mov w1,#0x1
02c4e740  mov x2,xzr
02c4e744  mov w19,#0x1
02c4e748  bl 0x057dff3c
02c4e74c  adrp x20,0x625b000
02c4e750  ldrb w8,[x20, #0xa57]
02c4e754  cbnz w8,0x02c4e768
02c4e758  adrp x0,0x5e5d000
02c4e75c  ldr x0,[x0, #0xd70]
02c4e760  bl 0x029f5a50
02c4e764  strb w19,[x20, #0xa57]
02c4e768  adrp x8,0x5e5d000
02c4e76c  ldr x8,[x8, #0xd70]
02c4e770  ldr x8,[x8]
02c4e774  ldr x8,[x8, #0xb8]
02c4e778  ldr x0,[x8]
02c4e77c  cbz x0,0x02c4e7ac
02c4e780  fmov s0,0x3f800000
02c4e784  mov w1,#0xc
02c4e788  mov x2,xzr
02c4e78c  mov x3,xzr
02c4e790  bl 0x02c1f10c
02c4e794  ldp x20,x19,[sp, #0x60]
02c4e798  ldp x22,x21,[sp, #0x50]
02c4e79c  ldp x30,x23,[sp, #0x40]
02c4e7a0  add sp,sp,#0x70
02c4e7a4  ret
02c4e7a8  bl 0x029f5cfc
02c4e7ac  bl 0x029f5cfc
