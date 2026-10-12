02ca549c  stp x30,x23,[sp, #-0x30]!
02ca54a0  stp x22,x21,[sp, #0x10]
02ca54a4  stp x20,x19,[sp, #0x20]
02ca54a8  adrp x22,0x625c000
02ca54ac  adrp x23,0x5e59000
02ca54b0  adrp x20,0x5e64000
02ca54b4  adrp x21,0x5e5d000
02ca54b8  ldr x23,[x23, #0x288]
02ca54bc  ldrb w8,[x22, #0x4bc]
02ca54c0  ldr x20,[x20, #0x980]
02ca54c4  ldr x21,[x21, #0x920]
02ca54c8  mov x19,x0
02ca54cc  tbnz w8,#0x0,0x02ca54fc
02ca54d0  adrp x0,0x5e59000
02ca54d4  ldr x0,[x0, #0x288]
02ca54d8  bl 0x029f5a50
02ca54dc  adrp x0,0x5e64000
02ca54e0  ldr x0,[x0, #0x980]
02ca54e4  bl 0x029f5a50
02ca54e8  adrp x0,0x5e5d000
02ca54ec  ldr x0,[x0, #0x920]
02ca54f0  bl 0x029f5a50
02ca54f4  mov w8,#0x1
02ca54f8  strb w8,[x22, #0x4bc]
02ca54fc  ldr x0,[x23]
02ca5500  bl 0x029f5cec
02ca5504  ldr x2,[x20]
02ca5508  mov x1,x19
02ca550c  mov x3,xzr
02ca5510  mov x20,x0
02ca5514  bl 0x047b3618
02ca5518  ldr x0,[x21]
02ca551c  ldr w8,[x0, #0xe4]
02ca5520  cbnz w8,0x02ca5528
02ca5524  bl 0x029f5bd0
02ca5528  mov x0,x20
02ca552c  mov x1,xzr
02ca5530  bl 0x02c9c088
02ca5534  mov x0,x19
02ca5538  ldp x20,x19,[sp, #0x20]
02ca553c  ldp x22,x21,[sp, #0x10]
02ca5540  ldp x30,x23,[sp], #0x30
02ca5544  b 0x02ca5548
