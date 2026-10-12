02c37494  stp x30,x21,[sp, #-0x20]!
02c37498  stp x20,x19,[sp, #0x10]
02c3749c  adrp x21,0x625c000
02c374a0  mov w19,w1
02c374a4  mov x20,x0
02c374a8  ldrb w8,[x21, #0xbd]
02c374ac  cbnz w8,0x02c374c4
02c374b0  adrp x0,0x5e5d000
02c374b4  ldr x0,[x0, #0x920]
02c374b8  bl 0x029f5a50
02c374bc  mov w8,#0x1
02c374c0  strb w8,[x21, #0xbd]
02c374c4  adrp x21,0x5e5d000
02c374c8  ldr x21,[x21, #0x920]
02c374cc  ldr x0,[x21]
02c374d0  ldr w8,[x0, #0xe4]
02c374d4  cbnz w8,0x02c374e0
02c374d8  bl 0x029f5bd0
02c374dc  ldr x0,[x21]
02c374e0  ldr x8,[x0, #0xb8]
02c374e4  ldrb w8,[x8, #0xb]
02c374e8  cbz w8,0x02c374f4
02c374ec  mov w0,#0x1
02c374f0  b 0x02c37518
02c374f4  ldr x8,[x20, #0x38]
02c374f8  cbz x8,0x02c37524
02c374fc  ldr w9,[x8, #0x18]
02c37500  cmp w9,w19
02c37504  b.ls 0x02c37528
02c37508  add x8,x8,w19, SXTW  #0x2
02c3750c  ldr s0,[x8, #0x20]
02c37510  fcmp s0,#0.0
02c37514  cset w0,gt
02c37518  ldp x20,x19,[sp, #0x10]
02c3751c  ldp x30,x21,[sp], #0x20
02c37520  ret
02c37524  bl 0x029f5cfc
02c37528  bl 0x029f5d04
