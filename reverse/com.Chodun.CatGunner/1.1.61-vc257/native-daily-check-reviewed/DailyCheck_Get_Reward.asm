02b9f9a0  stp x30,x21,[sp, #-0x20]!
02b9f9a4  stp x20,x19,[sp, #0x10]
02b9f9a8  adrp x21,0x625b000
02b9f9ac  mov w19,w1
02b9f9b0  mov x20,x0
02b9f9b4  ldrb w8,[x21, #0x9fc]
02b9f9b8  tbnz w8,#0x0,0x02b9f9d0
02b9f9bc  adrp x0,0x5e5d000
02b9f9c0  ldr x0,[x0, #0x338]
02b9f9c4  bl 0x029f5a50
02b9f9c8  mov w8,#0x1
02b9f9cc  strb w8,[x21, #0x9fc]
02b9f9d0  ldr x8,[x20, #0x48]
02b9f9d4  cbz x8,0x02b9fa18
02b9f9d8  ldr w9,[x8, #0x18]
02b9f9dc  cmp w9,w19
02b9f9e0  b.ls 0x02b9fa1c
02b9f9e4  adrp x9,0x5e5d000
02b9f9e8  add x8,x8,w19, SXTW  #0x2
02b9f9ec  ldr x9,[x9, #0x338]
02b9f9f0  ldr w19,[x8, #0x20]
02b9f9f4  ldr x0,[x9]
02b9f9f8  ldr w9,[x0, #0xe4]
02b9f9fc  cbnz w9,0x02b9fa04
02b9fa00  bl 0x029f5bd0
02b9fa04  mov w0,w19
02b9fa08  ldp x20,x19,[sp, #0x10]
02b9fa0c  mov x1,xzr
02b9fa10  ldp x30,x21,[sp], #0x20
02b9fa14  b 0x02b7ed10
02b9fa18  bl 0x029f5cfc
02b9fa1c  bl 0x029f5d04
