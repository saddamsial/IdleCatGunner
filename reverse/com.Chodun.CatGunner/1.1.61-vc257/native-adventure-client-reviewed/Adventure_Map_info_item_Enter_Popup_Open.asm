02c34f88  stp x30,x21,[sp, #-0x20]!
02c34f8c  stp x20,x19,[sp, #0x10]
02c34f90  adrp x21,0x625c000
02c34f94  adrp x20,0x5e5d000
02c34f98  mov x19,x0
02c34f9c  ldrb w8,[x21, #0x5b]
02c34fa0  ldr x20,[x20, #0xd28]
02c34fa4  tbnz w8,#0x0,0x02c34fbc
02c34fa8  adrp x0,0x5e5d000
02c34fac  ldr x0,[x0, #0xd28]
02c34fb0  bl 0x029f5a50
02c34fb4  mov w8,#0x1
02c34fb8  strb w8,[x21, #0x5b]
02c34fbc  ldr x0,[x20]
02c34fc0  ldr w8,[x0, #0xe4]
02c34fc4  cbnz w8,0x02c34fd0
02c34fc8  bl 0x029f5bd0
02c34fcc  ldr x0,[x20]
02c34fd0  ldr x8,[x0, #0xb8]
02c34fd4  ldr x8,[x8, #0x10]
02c34fd8  cbz x8,0x02c34ffc
02c34fdc  ldr x8,[x8, #0x40]
02c34fe0  cbz x8,0x02c34ffc
02c34fe4  ldr x0,[x8, #0x60]
02c34fe8  cbz x0,0x02c34ffc
02c34fec  ldp w1,w2,[x19, #0x90]
02c34ff0  ldp x20,x19,[sp, #0x10]
02c34ff4  ldp x30,x21,[sp], #0x20
02c34ff8  b 0x02c32fb4
02c34ffc  bl 0x029f5cfc
