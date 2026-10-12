02cb34bc  str d8,[sp, #-0x20]!
02cb34c0  str x30,[sp, #0x8]
02cb34c4  stp x20,x19,[sp, #0x10]
02cb34c8  adrp x20,0x625c000
02cb34cc  adrp x19,0x5e5d000
02cb34d0  ldrb w8,[x20, #0x568]
02cb34d4  ldr x19,[x19, #0x4e8]
02cb34d8  tbnz w8,#0x0,0x02cb34fc
02cb34dc  adrp x0,0x5e5a000
02cb34e0  ldr x0,[x0, #0x180]
02cb34e4  bl 0x029f5a50
02cb34e8  adrp x0,0x5e5d000
02cb34ec  ldr x0,[x0, #0x4e8]
02cb34f0  bl 0x029f5a50
02cb34f4  mov w8,#0x1
02cb34f8  strb w8,[x20, #0x568]
02cb34fc  ldr x0,[x19]
02cb3500  adrp x20,0x5e5a000
02cb3504  ldr w8,[x0, #0xe4]
02cb3508  ldr x20,[x20, #0x180]
02cb350c  cbnz w8,0x02cb3518
02cb3510  bl 0x029f5bd0
02cb3514  ldr x0,[x19]
02cb3518  ldr x8,[x20]
02cb351c  ldr x9,[x0, #0xb8]
02cb3520  ldr w10,[x8, #0xe4]
02cb3524  ldr s8,[x9, #0x10]
02cb3528  cbnz w10,0x02cb3534
02cb352c  mov x0,x8
02cb3530  bl 0x029f5bd0
02cb3534  movi d0,#0x0
02cb3538  fcmp s8,#0.0
02cb353c  ldr x30,[sp, #0x8]
02cb3540  ldp x20,x19,[sp, #0x10]
02cb3544  mov x0,xzr
02cb3548  fcsel s0,s0,s8,mi
02cb354c  fcvt d0,s0
02cb3550  ldr d8,[sp], #0x20
02cb3554  b 0x04868788
