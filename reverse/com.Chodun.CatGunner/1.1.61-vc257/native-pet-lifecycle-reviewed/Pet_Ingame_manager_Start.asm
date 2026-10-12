02c7abb0  stp x30,x21,[sp, #-0x20]!
02c7abb4  stp x20,x19,[sp, #0x10]
02c7abb8  adrp x21,0x625c000
02c7abbc  adrp x20,0x5e59000
02c7abc0  mov x19,x0
02c7abc4  ldrb w8,[x21, #0x315]
02c7abc8  ldr x20,[x20, #0x1c0]
02c7abcc  tbnz w8,#0x0,0x02c7abe4
02c7abd0  adrp x0,0x5e59000
02c7abd4  ldr x0,[x0, #0x1c0]
02c7abd8  bl 0x029f5a50
02c7abdc  mov w8,#0x1
02c7abe0  strb w8,[x21, #0x315]
02c7abe4  bl 0x02c7ac48
02c7abe8  ldr x8,[x20]
02c7abec  mov x20,x0
02c7abf0  ldr w9,[x8, #0xe4]
02c7abf4  cbnz w9,0x02c7ac00
02c7abf8  mov x0,x8
02c7abfc  bl 0x029f5bd0
02c7ac00  mov x0,x20
02c7ac04  mov x1,xzr
02c7ac08  mov x2,xzr
02c7ac0c  bl 0x057dfa70
02c7ac10  tbz w0,#0x0,0x02c7ac38
02c7ac14  cbz x20,0x02c7ac44
02c7ac18  mov x0,x20
02c7ac1c  mov x1,xzr
02c7ac20  bl 0x057dc0f8
02c7ac24  cbz x0,0x02c7ac44
02c7ac28  mov x1,xzr
02c7ac2c  bl 0x057eed98
02c7ac30  stp s0,s1,[x19, #0x58]
02c7ac34  str s2,[x19, #0x60]
02c7ac38  ldp x20,x19,[sp, #0x10]
02c7ac3c  ldp x30,x21,[sp], #0x20
02c7ac40  ret
02c7ac44  bl 0x029f5cfc
