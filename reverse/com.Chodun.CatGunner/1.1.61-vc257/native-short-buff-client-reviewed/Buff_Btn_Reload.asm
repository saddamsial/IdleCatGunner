02c38458  str x30,[sp, #-0x30]!
02c3845c  stp x22,x21,[sp, #0x10]
02c38460  stp x20,x19,[sp, #0x20]
02c38464  adrp x20,0x625c000
02c38468  adrp x21,0x5e5d000
02c3846c  mov x19,x0
02c38470  ldrb w8,[x20, #0x7f]
02c38474  ldr x21,[x21, #0x4c0]
02c38478  tbnz w8,#0x0,0x02c38490
02c3847c  adrp x0,0x5e5d000
02c38480  ldr x0,[x0, #0x4c0]
02c38484  bl 0x029f5a50
02c38488  mov w8,#0x1
02c3848c  strb w8,[x20, #0x7f]
02c38490  ldr x0,[x21]
02c38494  ldr w8,[x0, #0xe4]
02c38498  cbnz w8,0x02c384a4
02c3849c  bl 0x029f5bd0
02c384a0  ldr x0,[x21]
02c384a4  ldr x8,[x0, #0xb8]
02c384a8  ldr x0,[x8]
02c384ac  cbz x0,0x02c3855c
02c384b0  ldr w1,[x19, #0x20]
02c384b4  bl 0x02c37494
02c384b8  ldr x8,[x19, #0x28]
02c384bc  cbz x8,0x02c3855c
02c384c0  mov w20,w0
02c384c4  and w1,w0,#0x1
02c384c8  mov x0,x8
02c384cc  mov x2,xzr
02c384d0  bl 0x057dff3c
02c384d4  ldr x0,[x19, #0x30]
02c384d8  cbz x0,0x02c3855c
02c384dc  mov w8,#0x1
02c384e0  mov x2,xzr
02c384e4  mvn w22,w20
02c384e8  bic w1,w8,w20
02c384ec  bl 0x057dff3c
02c384f0  tbnz w22,#0x0,0x02c3854c
02c384f4  ldr x0,[x21]
02c384f8  ldr x20,[x19, #0x38]
02c384fc  ldr w8,[x0, #0xe4]
02c38500  cbnz w8,0x02c3850c
02c38504  bl 0x029f5bd0
02c38508  ldr x0,[x21]
02c3850c  ldr x8,[x0, #0xb8]
02c38510  ldr x0,[x8]
02c38514  cbz x0,0x02c3855c
02c38518  ldr w1,[x19, #0x20]
02c3851c  bl 0x02c3752c
02c38520  bl 0x02c3804c
02c38524  cbz x20,0x02c3855c
02c38528  ldr x8,[x20]
02c3852c  mov x1,x0
02c38530  mov x0,x20
02c38534  ldp x20,x19,[sp, #0x20]
02c38538  ldp x22,x21,[sp, #0x10]
02c3853c  ldr x2,[x8, #0x560]
02c38540  ldr x3,[x8, #0x558]
02c38544  ldr x30,[sp], #0x30
02c38548  br x3
02c3854c  ldp x20,x19,[sp, #0x20]
02c38550  ldp x22,x21,[sp, #0x10]
02c38554  ldr x30,[sp], #0x30
02c38558  ret
02c3855c  bl 0x029f5cfc
