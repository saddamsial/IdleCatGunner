02c5e568  str x30,[sp, #-0x20]!
02c5e56c  stp x20,x19,[sp, #0x10]
02c5e570  adrp x20,0x625c000
02c5e574  mov x19,x0
02c5e578  ldrb w8,[x20, #0x205]
02c5e57c  tbnz w8,#0x0,0x02c5e5a0
02c5e580  adrp x0,0x5e5d000
02c5e584  ldr x0,[x0, #0x910]
02c5e588  bl 0x029f5a50
02c5e58c  adrp x0,0x5e62000
02c5e590  ldr x0,[x0, #0xfe8]
02c5e594  bl 0x029f5a50
02c5e598  mov w8,#0x1
02c5e59c  strb w8,[x20, #0x205]
02c5e5a0  mov x0,x19
02c5e5a4  bl 0x02c5d6f8
02c5e5a8  ldr x8,[x19, #0x90]
02c5e5ac  cbz x8,0x02c5e630
02c5e5b0  ldr w8,[x8, #0x18]
02c5e5b4  cmp w8,#0x14
02c5e5b8  b.ge 0x02c5e5fc
02c5e5bc  ldr w8,[x19, #0x78]
02c5e5c0  cmp w8,#0x5
02c5e5c4  b.ge 0x02c5e608
02c5e5c8  cmp w8,#0x2
02c5e5cc  b.le 0x02c5e620
02c5e5d0  adrp x8,0x5e5d000
02c5e5d4  ldr x8,[x8, #0x910]
02c5e5d8  ldr x8,[x8]
02c5e5dc  ldr x8,[x8, #0xb8]
02c5e5e0  ldr x0,[x8]
02c5e5e4  cbz x0,0x02c5e630
02c5e5e8  ldp x20,x19,[sp, #0x10]
02c5e5ec  mov w1,#0x7
02c5e5f0  mov x2,xzr
02c5e5f4  ldr x30,[sp], #0x20
02c5e5f8  b 0x02b89ab0
02c5e5fc  mov x0,xzr
02c5e600  bl 0x02bdfae8
02c5e604  b 0x02c5e610
02c5e608  mov x0,xzr
02c5e60c  bl 0x02bdfb78
02c5e610  ldp x20,x19,[sp, #0x10]
02c5e614  mov x1,xzr
02c5e618  ldr x30,[sp], #0x20
02c5e61c  b 0x02c1dd54
02c5e620  mov x0,x19
02c5e624  ldp x20,x19,[sp, #0x10]
02c5e628  ldr x30,[sp], #0x20
02c5e62c  b 0x02c5e634
02c5e630  bl 0x029f5cfc
