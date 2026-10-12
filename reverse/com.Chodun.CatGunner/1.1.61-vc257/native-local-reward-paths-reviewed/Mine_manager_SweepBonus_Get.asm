02c4a034  stp x30,x21,[sp, #-0x20]!
02c4a038  stp x20,x19,[sp, #0x10]
02c4a03c  adrp x21,0x625c000
02c4a040  adrp x20,0x5e5d000
02c4a044  mov x19,x0
02c4a048  ldrb w8,[x21, #0x116]
02c4a04c  ldr x20,[x20, #0x338]
02c4a050  tbnz w8,#0x0,0x02c4a068
02c4a054  adrp x0,0x5e5d000
02c4a058  ldr x0,[x0, #0x338]
02c4a05c  bl 0x029f5a50
02c4a060  mov w8,#0x1
02c4a064  strb w8,[x21, #0x116]
02c4a068  ldr x0,[x20]
02c4a06c  ldr w20,[x19, #0xd0]
02c4a070  mov w9,#0x1
02c4a074  strb w9,[x19, #0x6a]
02c4a078  ldr w8,[x0, #0xe4]
02c4a07c  cbnz w8,0x02c4a084
02c4a080  bl 0x029f5bd0
02c4a084  add w0,w20,w20, LSL #0x1
02c4a088  mov x1,xzr
02c4a08c  bl 0x02b7ed10
02c4a090  mov x0,x19
02c4a094  ldp x20,x19,[sp, #0x10]
02c4a098  ldp x30,x21,[sp], #0x20
02c4a09c  b 0x02c4a4ac
