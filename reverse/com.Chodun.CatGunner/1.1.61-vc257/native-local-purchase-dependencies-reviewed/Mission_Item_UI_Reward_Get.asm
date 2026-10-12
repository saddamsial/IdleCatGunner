02c040a0  stp x30,x21,[sp, #-0x20]!
02c040a4  stp x20,x19,[sp, #0x10]
02c040a8  adrp x21,0x625b000
02c040ac  adrp x20,0x5e5d000
02c040b0  mov x19,x0
02c040b4  ldrb w8,[x21, #0xe5b]
02c040b8  ldr x20,[x20, #0xd50]
02c040bc  tbnz w8,#0x0,0x02c040d4
02c040c0  adrp x0,0x5e5d000
02c040c4  ldr x0,[x0, #0xd50]
02c040c8  bl 0x029f5a50
02c040cc  mov w8,#0x1
02c040d0  strb w8,[x21, #0xe5b]
02c040d4  ldr x0,[x20]
02c040d8  ldr w8,[x0, #0xe4]
02c040dc  cbnz w8,0x02c040e8
02c040e0  bl 0x029f5bd0
02c040e4  ldr x0,[x20]
02c040e8  ldr x8,[x0, #0xb8]
02c040ec  ldr x0,[x8, #0x8]
02c040f0  cbz x0,0x02c04108
02c040f4  ldr w1,[x19, #0x20]
02c040f8  ldp x20,x19,[sp, #0x10]
02c040fc  mov x2,xzr
02c04100  ldp x30,x21,[sp], #0x20
02c04104  b 0x02ba4c5c
02c04108  bl 0x029f5cfc
