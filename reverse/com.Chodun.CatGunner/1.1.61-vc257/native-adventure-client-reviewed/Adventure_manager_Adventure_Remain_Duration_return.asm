02c2dfb8  str x30,[sp, #-0x30]!
02c2dfbc  stp x22,x21,[sp, #0x10]
02c2dfc0  stp x20,x19,[sp, #0x20]
02c2dfc4  adrp x22,0x625c000
02c2dfc8  mov w19,w2
02c2dfcc  mov w21,w1
02c2dfd0  ldrb w8,[x22, #0xa]
02c2dfd4  mov x20,x0
02c2dfd8  tbnz w8,#0x0,0x02c2dffc
02c2dfdc  adrp x0,0x5e59000
02c2dfe0  ldr x0,[x0, #0x7d0]
02c2dfe4  bl 0x029f5a50
02c2dfe8  adrp x0,0x5e5d000
02c2dfec  ldr x0,[x0, #0x3c0]
02c2dff0  bl 0x029f5a50
02c2dff4  mov w8,#0x1
02c2dff8  strb w8,[x22, #0xa]
02c2dffc  ldr x8,[x20, #0x20]
02c2e000  cbz x8,0x02c2e0a4
02c2e004  ldr w9,[x8, #0x18]
02c2e008  cmp w9,w21
02c2e00c  b.ls 0x02c2e0a8
02c2e010  add x8,x8,w21, SXTW  #0x3
02c2e014  ldr x8,[x8, #0x20]
02c2e018  cbz x8,0x02c2e0a4
02c2e01c  ldr x8,[x8, #0x18]
02c2e020  cbz x8,0x02c2e0a4
02c2e024  ldr w9,[x8, #0x18]
02c2e028  cmp w9,w19
02c2e02c  b.ls 0x02c2e0a8
02c2e030  add x8,x8,w19, SXTW  #0x3
02c2e034  adrp x22,0x5e5d000
02c2e038  adrp x21,0x5e59000
02c2e03c  ldr x22,[x22, #0x3c0]
02c2e040  ldr x21,[x21, #0x7d0]
02c2e044  mov x0,x20
02c2e048  ldr x1,[x8, #0x20]
02c2e04c  mov w2,w19
02c2e050  bl 0x02c2cb98
02c2e054  ldr x8,[x22]
02c2e058  mov x19,x0
02c2e05c  ldr w9,[x8, #0xe4]
02c2e060  cbnz w9,0x02c2e06c
02c2e064  mov x0,x8
02c2e068  bl 0x029f5bd0
02c2e06c  bl 0x02c25b48
02c2e070  ldr x8,[x21]
02c2e074  mov x20,x0
02c2e078  ldr w9,[x8, #0xe4]
02c2e07c  cbnz w9,0x02c2e088
02c2e080  mov x0,x8
02c2e084  bl 0x029f5bd0
02c2e088  mov x0,x19
02c2e08c  mov x1,x20
02c2e090  mov x2,xzr
02c2e094  ldp x20,x19,[sp, #0x20]
02c2e098  ldp x22,x21,[sp, #0x10]
02c2e09c  ldr x30,[sp], #0x30
02c2e0a0  b 0x048330d0
02c2e0a4  bl 0x029f5cfc
02c2e0a8  bl 0x029f5d04
