02b9e6e8  str x30,[sp, #-0x20]!
02b9e6ec  stp x20,x19,[sp, #0x10]
02b9e6f0  adrp x19,0x625b000
02b9e6f4  adrp x20,0x5e5e000
02b9e6f8  ldrb w8,[x19, #0x9eb]
02b9e6fc  ldr x20,[x20, #0x4d0]
02b9e700  tbnz w8,#0x0,0x02b9e724
02b9e704  adrp x0,0x5e5e000
02b9e708  ldr x0,[x0, #0x4d0]
02b9e70c  bl 0x029f5a50
02b9e710  adrp x0,0x5e5d000
02b9e714  ldr x0,[x0, #0xd48]
02b9e718  bl 0x029f5a50
02b9e71c  mov w8,#0x1
02b9e720  strb w8,[x19, #0x9eb]
02b9e724  ldr x0,[x20]
02b9e728  ldr w8,[x0, #0xe4]
02b9e72c  cbnz w8,0x02b9e734
02b9e730  bl 0x029f5bd0
02b9e734  mov w0,#0x1
02b9e738  bl 0x02b9e588
02b9e73c  tbz w0,#0x0,0x02b9e7a0
02b9e740  adrp x19,0x5e5d000
02b9e744  ldr x19,[x19, #0xd48]
02b9e748  ldr x8,[x19]
02b9e74c  ldr x8,[x8, #0xb8]
02b9e750  ldr x8,[x8]
02b9e754  cbz x8,0x02b9e7ac
02b9e758  ldr x0,[x8, #0x28]
02b9e75c  cbz x0,0x02b9e7ac
02b9e760  mov x1,xzr
02b9e764  bl 0x02c49110
02b9e768  ldr x8,[x19]
02b9e76c  ldr x8,[x8, #0xb8]
02b9e770  ldr x8,[x8]
02b9e774  cbz x8,0x02b9e7ac
02b9e778  ldr x0,[x8, #0x28]
02b9e77c  cbz x0,0x02b9e7ac
02b9e780  mov x1,xzr
02b9e784  bl 0x057dc1c8
02b9e788  cbz x0,0x02b9e7ac
02b9e78c  ldp x20,x19,[sp, #0x10]
02b9e790  mov w1,#0x1
02b9e794  mov x2,xzr
02b9e798  ldr x30,[sp], #0x20
02b9e79c  b 0x057dff3c
02b9e7a0  ldp x20,x19,[sp, #0x10]
02b9e7a4  ldr x30,[sp], #0x20
02b9e7a8  ret
02b9e7ac  bl 0x029f5cfc
