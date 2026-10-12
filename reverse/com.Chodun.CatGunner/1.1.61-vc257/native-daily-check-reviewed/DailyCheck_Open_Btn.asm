02b9f300  stp x30,x21,[sp, #-0x20]!
02b9f304  stp x20,x19,[sp, #0x10]
02b9f308  adrp x21,0x625b000
02b9f30c  adrp x20,0x5e5d000
02b9f310  mov x19,x0
02b9f314  ldrb w8,[x21, #0x9f8]
02b9f318  ldr x20,[x20, #0x338]
02b9f31c  tbnz w8,#0x0,0x02b9f334
02b9f320  adrp x0,0x5e5d000
02b9f324  ldr x0,[x0, #0x338]
02b9f328  bl 0x029f5a50
02b9f32c  mov w8,#0x1
02b9f330  strb w8,[x21, #0x9f8]
02b9f334  mov x0,x19
02b9f338  bl 0x02b9f18c
02b9f33c  ldr x0,[x20]
02b9f340  ldr w8,[x0, #0xe4]
02b9f344  cbnz w8,0x02b9f350
02b9f348  bl 0x029f5bd0
02b9f34c  ldr x0,[x20]
02b9f350  ldr x8,[x0, #0xb8]
02b9f354  ldr x0,[x8, #0xc8]
02b9f358  cbz x0,0x02b9f370
02b9f35c  ldp x20,x19,[sp, #0x10]
02b9f360  mov w1,wzr
02b9f364  mov x2,xzr
02b9f368  ldp x30,x21,[sp], #0x20
02b9f36c  b 0x02b7cbc0
02b9f370  bl 0x029f5cfc
