02c5e634  stp x30,x21,[sp, #-0x20]!
02c5e638  stp x20,x19,[sp, #0x10]
02c5e63c  adrp x20,0x625c000
02c5e640  mov x19,x0
02c5e644  ldrb w8,[x20, #0x206]
02c5e648  tbnz w8,#0x0,0x02c5e678
02c5e64c  adrp x0,0x5e63000
02c5e650  ldr x0,[x0, #0x108]
02c5e654  bl 0x029f5a50
02c5e658  adrp x0,0x5e62000
02c5e65c  ldr x0,[x0, #0xfe8]
02c5e660  bl 0x029f5a50
02c5e664  adrp x0,0x5e59000
02c5e668  ldr x0,[x0, #0x1c0]
02c5e66c  bl 0x029f5a50
02c5e670  mov w8,#0x1
02c5e674  strb w8,[x20, #0x206]
02c5e678  ldr x8,[x19, #0x90]
02c5e67c  cbz x8,0x02c5e7f8
02c5e680  ldr w8,[x8, #0x18]
02c5e684  cmp w8,#0x14
02c5e688  b.ge 0x02c5e6e8
02c5e68c  mov x0,x19
02c5e690  mov w1,wzr
02c5e694  bl 0x02c5e7fc
02c5e698  ldr x8,[x19, #0x90]
02c5e69c  cbz x8,0x02c5e7f8
02c5e6a0  adrp x10,0x5e63000
02c5e6a4  ldr x10,[x10, #0x108]
02c5e6a8  ldr w11,[x8, #0x1c]
02c5e6ac  ldr x9,[x8, #0x10]
02c5e6b0  ldr x10,[x10]
02c5e6b4  add w11,w11,#0x1
02c5e6b8  str w11,[x8, #0x1c]
02c5e6bc  cbz x9,0x02c5e7f8
02c5e6c0  ldrsw x11,[x8, #0x18]
02c5e6c4  ldr w12,[x9, #0x18]
02c5e6c8  mov w20,w0
02c5e6cc  cmp w11,w12
02c5e6d0  b.cs 0x02c5e700
02c5e6d4  add x9,x9,x11, LSL #0x2
02c5e6d8  add w10,w11,#0x1
02c5e6dc  str w10,[x8, #0x18]
02c5e6e0  str w20,[x9, #0x20]
02c5e6e4  b 0x02c5e718
02c5e6e8  mov x0,xzr
02c5e6ec  bl 0x02bdfae8
02c5e6f0  ldp x20,x19,[sp, #0x10]
02c5e6f4  mov x1,xzr
02c5e6f8  ldp x30,x21,[sp], #0x20
02c5e6fc  b 0x02c1dd54
02c5e700  ldr x9,[x10, #0x20]
02c5e704  mov x0,x8
02c5e708  mov w1,w20
02c5e70c  ldr x9,[x9, #0xc0]
02c5e710  ldr x2,[x9, #0x70]
02c5e714  bl 0x044f7a10
02c5e718  ldr x8,[x19, #0xa8]
02c5e71c  cbz x8,0x02c5e730
02c5e720  ldr x9,[x8, #0x18]
02c5e724  ldr x0,[x8, #0x40]
02c5e728  ldr x1,[x8, #0x28]
02c5e72c  blr x9
02c5e730  mov x0,x19
02c5e734  bl 0x02c5d820
02c5e738  bl 0x02c5e13c
02c5e73c  adrp x8,0x5e59000
02c5e740  ldr x8,[x8, #0x1c0]
02c5e744  ldr x21,[x19, #0xa0]
02c5e748  ldr x0,[x8]
02c5e74c  ldr w8,[x0, #0xe4]
02c5e750  cbnz w8,0x02c5e758
02c5e754  bl 0x029f5bd0
02c5e758  mov x0,x21
02c5e75c  mov x1,xzr
02c5e760  mov x2,xzr
02c5e764  bl 0x057dfa70
02c5e768  tbz w0,#0x0,0x02c5e77c
02c5e76c  ldr x0,[x19, #0xa0]
02c5e770  cbz x0,0x02c5e7f8
02c5e774  mov w1,w20
02c5e778  bl 0x02c5e88c
02c5e77c  mov x0,x19
02c5e780  mov w1,w20
02c5e784  bl 0x02c5ea14
02c5e788  adrp x20,0x625b000
02c5e78c  ldrb w8,[x20, #0xa57]
02c5e790  cbnz w8,0x02c5e7a8
02c5e794  adrp x0,0x5e5d000
02c5e798  ldr x0,[x0, #0xd70]
02c5e79c  bl 0x029f5a50
02c5e7a0  mov w8,#0x1
02c5e7a4  strb w8,[x20, #0xa57]
02c5e7a8  adrp x8,0x5e5d000
02c5e7ac  ldr x8,[x8, #0xd70]
02c5e7b0  ldr x8,[x8]
02c5e7b4  ldr x8,[x8, #0xb8]
02c5e7b8  ldr x0,[x8]
02c5e7bc  cbz x0,0x02c5e7f8
02c5e7c0  fmov s0,0x3f800000
02c5e7c4  mov w1,#0x2
02c5e7c8  mov x2,xzr
02c5e7cc  mov x3,xzr
02c5e7d0  bl 0x02c1f10c
02c5e7d4  ldr w8,[x19, #0x78]
02c5e7d8  mov x0,x19
02c5e7dc  add w8,w8,#0x1
02c5e7e0  str w8,[x19, #0x78]
02c5e7e4  bl 0x02c5d5a0
02c5e7e8  mov x0,x19
02c5e7ec  ldp x20,x19,[sp, #0x10]
02c5e7f0  ldp x30,x21,[sp], #0x20
02c5e7f4  b 0x02c5dcbc
02c5e7f8  bl 0x029f5cfc
