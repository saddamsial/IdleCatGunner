02c2e664  sub sp,sp,#0x30
02c2e668  stp x30,x21,[sp, #0x10]
02c2e66c  stp x20,x19,[sp, #0x20]
02c2e670  adrp x21,0x625c000
02c2e674  adrp x20,0x5e5d000
02c2e678  mov w19,w0
02c2e67c  ldrb w8,[x21, #0xe]
02c2e680  ldr x20,[x20, #0x3c0]
02c2e684  tbnz w8,#0x0,0x02c2e6b4
02c2e688  adrp x0,0x5e5d000
02c2e68c  ldr x0,[x0, #0xd28]
02c2e690  bl 0x029f5a50
02c2e694  adrp x0,0x5e59000
02c2e698  ldr x0,[x0, #0x7d0]
02c2e69c  bl 0x029f5a50
02c2e6a0  adrp x0,0x5e5d000
02c2e6a4  ldr x0,[x0, #0x3c0]
02c2e6a8  bl 0x029f5a50
02c2e6ac  mov w8,#0x1
02c2e6b0  strb w8,[x21, #0xe]
02c2e6b4  ldr x0,[x20]
02c2e6b8  adrp x21,0x5e59000
02c2e6bc  ldr w8,[x0, #0xe4]
02c2e6c0  ldr x21,[x21, #0x7d0]
02c2e6c4  str xzr,[sp, #0x8]
02c2e6c8  cbnz w8,0x02c2e6d0
02c2e6cc  bl 0x029f5bd0
02c2e6d0  adrp x20,0x5e5d000
02c2e6d4  ldr x20,[x20, #0xd28]
02c2e6d8  bl 0x02c25b48
02c2e6dc  ldr x8,[x21]
02c2e6e0  str x0,[sp, #0x8]
02c2e6e4  ldr w9,[x8, #0xe4]
02c2e6e8  cbnz w9,0x02c2e6f4
02c2e6ec  mov x0,x8
02c2e6f0  bl 0x029f5bd0
02c2e6f4  add x0,sp,#0x8
02c2e6f8  mov x1,xzr
02c2e6fc  bl 0x04830de8
02c2e700  ldr x8,[x20]
02c2e704  mov w20,w0
02c2e708  ldr w9,[x8, #0xe4]
02c2e70c  cbnz w9,0x02c2e718
02c2e710  mov x0,x8
02c2e714  bl 0x029f5bd0
02c2e718  cmp w19,#0x2
02c2e71c  b.eq 0x02c2e74c
02c2e720  cmp w19,#0x1
02c2e724  b.eq 0x02c2e73c
02c2e728  cbnz w19,0x02c2e764
02c2e72c  cmp w20,#0x5
02c2e730  b.cs 0x02c2e764
02c2e734  mov w8,#0x13
02c2e738  b 0x02c2e758
02c2e73c  cmp w20,#0x6
02c2e740  b.cs 0x02c2e764
02c2e744  mov w8,#0x25
02c2e748  b 0x02c2e758
02c2e74c  cmp w20,#0x7
02c2e750  b.cs 0x02c2e764
02c2e754  mov w8,#0x49
02c2e758  lsr w8,w8,w20
02c2e75c  and w0,w8,#0x1
02c2e760  b 0x02c2e768
02c2e764  mov w0,wzr
02c2e768  ldp x20,x19,[sp, #0x20]
02c2e76c  ldp x30,x21,[sp, #0x10]
02c2e770  add sp,sp,#0x30
02c2e774  ret
