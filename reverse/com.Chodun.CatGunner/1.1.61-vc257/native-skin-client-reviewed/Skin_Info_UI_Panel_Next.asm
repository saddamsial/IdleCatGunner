02ca84b4  stp x30,x21,[sp, #-0x20]!
02ca84b8  stp x20,x19,[sp, #0x10]
02ca84bc  adrp x20,0x625c000
02ca84c0  adrp x21,0x5e5d000
02ca84c4  mov x19,x0
02ca84c8  ldrb w8,[x20, #0x4e8]
02ca84cc  ldr x21,[x21, #0x4e0]
02ca84d0  tbnz w8,#0x0,0x02ca84e8
02ca84d4  adrp x0,0x5e5d000
02ca84d8  ldr x0,[x0, #0x4e0]
02ca84dc  bl 0x029f5a50
02ca84e0  mov w8,#0x1
02ca84e4  strb w8,[x20, #0x4e8]
02ca84e8  ldr x8,[x21]
02ca84ec  ldr x8,[x8, #0xb8]
02ca84f0  ldr x8,[x8, #0x10]
02ca84f4  cbz x8,0x02ca8534
02ca84f8  ldr x8,[x8, #0x20]
02ca84fc  cbz x8,0x02ca8534
02ca8500  ldr w9,[x8, #0x18]
02ca8504  ldr w8,[x19, #0x20]
02ca8508  sub w9,w9,#0x1
02ca850c  cmp w8,w9
02ca8510  b.ge 0x02ca8528
02ca8514  mov x0,x19
02ca8518  ldp x20,x19,[sp, #0x10]
02ca851c  add w1,w8,#0x1
02ca8520  ldp x30,x21,[sp], #0x20
02ca8524  b 0x02ca7f64
02ca8528  ldp x20,x19,[sp, #0x10]
02ca852c  ldp x30,x21,[sp], #0x20
02ca8530  ret
02ca8534  bl 0x029f5cfc
