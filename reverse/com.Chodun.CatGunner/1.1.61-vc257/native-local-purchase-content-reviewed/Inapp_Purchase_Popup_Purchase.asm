02ca6008  stp x30,x21,[sp, #-0x20]!
02ca600c  stp x20,x19,[sp, #0x10]
02ca6010  adrp x21,0x625c000
02ca6014  adrp x20,0x5e5d000
02ca6018  mov x19,x0
02ca601c  ldrb w8,[x21, #0x4c6]
02ca6020  ldr x20,[x20, #0x920]
02ca6024  tbnz w8,#0x0,0x02ca603c
02ca6028  adrp x0,0x5e5d000
02ca602c  ldr x0,[x0, #0x920]
02ca6030  bl 0x029f5a50
02ca6034  mov w8,#0x1
02ca6038  strb w8,[x21, #0x4c6]
02ca603c  ldr x0,[x20]
02ca6040  ldr w8,[x0, #0xe4]
02ca6044  cbnz w8,0x02ca604c
02ca6048  bl 0x029f5bd0
02ca604c  adrp x21,0x625b000
02ca6050  ldrb w8,[x21, #0x960]
02ca6054  cbnz w8,0x02ca606c
02ca6058  adrp x0,0x5e5d000
02ca605c  ldr x0,[x0, #0x920]
02ca6060  bl 0x029f5a50
02ca6064  mov w8,#0x1
02ca6068  strb w8,[x21, #0x960]
02ca606c  ldr x0,[x20]
02ca6070  ldr w8,[x0, #0xe4]
02ca6074  cbnz w8,0x02ca6080
02ca6078  bl 0x029f5bd0
02ca607c  ldr x0,[x20]
02ca6080  ldr x8,[x0, #0xb8]
02ca6084  ldr x0,[x8]
02ca6088  cbz x0,0x02ca60a0
02ca608c  ldr w1,[x19, #0x20]
02ca6090  ldp x20,x19,[sp, #0x10]
02ca6094  mov x2,xzr
02ca6098  ldp x30,x21,[sp], #0x20
02ca609c  b 0x02c95280
02ca60a0  bl 0x029f5cfc
