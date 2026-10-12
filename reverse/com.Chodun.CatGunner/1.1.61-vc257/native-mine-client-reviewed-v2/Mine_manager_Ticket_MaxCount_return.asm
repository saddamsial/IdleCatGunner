02c4946c  str x30,[sp, #-0x20]!
02c49470  stp x20,x19,[sp, #0x10]
02c49474  adrp x20,0x625c000
02c49478  adrp x19,0x5e5d000
02c4947c  ldrb w8,[x20, #0x106]
02c49480  ldr x19,[x19, #0x920]
02c49484  tbnz w8,#0x0,0x02c4949c
02c49488  adrp x0,0x5e5d000
02c4948c  ldr x0,[x0, #0x920]
02c49490  bl 0x029f5a50
02c49494  mov w8,#0x1
02c49498  strb w8,[x20, #0x106]
02c4949c  ldr x0,[x19]
02c494a0  ldr w8,[x0, #0xe4]
02c494a4  cbnz w8,0x02c494b0
02c494a8  bl 0x029f5bd0
02c494ac  ldr x0,[x19]
02c494b0  ldr x8,[x0, #0xb8]
02c494b4  ldp x20,x19,[sp, #0x10]
02c494b8  mov w9,#0x2
02c494bc  ldrb w8,[x8, #0xd]
02c494c0  cmp w8,#0x0
02c494c4  mov w8,#0x6
02c494c8  csel w0,w9,w8,eq
02c494cc  ldr x30,[sp], #0x20
02c494d0  ret
