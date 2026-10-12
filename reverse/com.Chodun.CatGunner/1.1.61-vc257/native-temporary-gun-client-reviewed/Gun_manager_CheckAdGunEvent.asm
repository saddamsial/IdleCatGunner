02c6ab84  str x30,[sp, #-0x20]!
02c6ab88  stp x20,x19,[sp, #0x10]
02c6ab8c  adrp x20,0x625c000
02c6ab90  mov x19,x0
02c6ab94  ldrb w8,[x20, #0x283]
02c6ab98  tbnz w8,#0x0,0x02c6abb0
02c6ab9c  adrp x0,0x5e5d000
02c6aba0  ldr x0,[x0, #0x6a8]
02c6aba4  bl 0x029f5a50
02c6aba8  mov w8,#0x1
02c6abac  strb w8,[x20, #0x283]
02c6abb0  ldrb w8,[x19, #0xd8]
02c6abb4  cbnz w8,0x02c6ac0c
02c6abb8  adrp x8,0x5e5d000
02c6abbc  ldr x8,[x8, #0x6a8]
02c6abc0  ldr x0,[x8]
02c6abc4  ldr w8,[x0, #0xe4]
02c6abc8  cbnz w8,0x02c6abd0
02c6abcc  bl 0x029f5bd0
02c6abd0  mov x0,xzr
02c6abd4  bl 0x02c19370
02c6abd8  tbz w0,#0x0,0x02c6ac0c
02c6abdc  mov x0,x19
02c6abe0  mov w1,#0x2
02c6abe4  bl 0x02c6a65c
02c6abe8  tbz w0,#0x0,0x02c6abf8
02c6abec  mov w8,#0x1
02c6abf0  strb w8,[x19, #0xd8]
02c6abf4  b 0x02c6ac0c
02c6abf8  ldrb w8,[x19, #0xe8]
02c6abfc  cbz w8,0x02c6ac0c
02c6ac00  ldr w8,[x19, #0xc0]
02c6ac04  cmn w8,#0x1
02c6ac08  b.eq 0x02c6ac18
02c6ac0c  ldp x20,x19,[sp, #0x10]
02c6ac10  ldr x30,[sp], #0x20
02c6ac14  ret
02c6ac18  mov w8,#0x44e10000
02c6ac1c  mov x0,x19
02c6ac20  mov w1,#0xe
02c6ac24  fmov s0,w8
02c6ac28  bl 0x02c6a7b4
02c6ac2c  cmn w0,#0x1
02c6ac30  b.ne 0x02c6abec
02c6ac34  b 0x02c6ac0c
