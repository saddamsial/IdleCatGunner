02c462c8  stp x30,x21,[sp, #-0x20]!
02c462cc  stp x20,x19,[sp, #0x10]
02c462d0  adrp x21,0x625c000
02c462d4  adrp x20,0x5e5d000
02c462d8  mov x19,x0
02c462dc  ldrb w8,[x21, #0xdd]
02c462e0  ldr x20,[x20, #0x338]
02c462e4  tbnz w8,#0x0,0x02c462fc
02c462e8  adrp x0,0x5e5d000
02c462ec  ldr x0,[x0, #0x338]
02c462f0  bl 0x029f5a50
02c462f4  mov w8,#0x1
02c462f8  strb w8,[x21, #0xdd]
02c462fc  ldr x0,[x20]
02c46300  ldr w8,[x0, #0xe4]
02c46304  cbnz w8,0x02c46310
02c46308  bl 0x029f5bd0
02c4630c  ldr x0,[x20]
02c46310  ldr x8,[x0, #0xb8]
02c46314  mov w9,#0x1
02c46318  mov x0,x19
02c4631c  strb w9,[x8]
02c46320  bl 0x02c46350
02c46324  mov x20,x19
02c46328  mov x1,x0
02c4632c  str x0,[x20, #0x88]!
02c46330  mov x0,x20
02c46334  bl 0x029f59f4
02c46338  ldr x1,[x20]
02c4633c  mov x0,x19
02c46340  mov x2,xzr
02c46344  ldp x20,x19,[sp, #0x10]
02c46348  ldp x30,x21,[sp], #0x20
02c4634c  b 0x057e2120
