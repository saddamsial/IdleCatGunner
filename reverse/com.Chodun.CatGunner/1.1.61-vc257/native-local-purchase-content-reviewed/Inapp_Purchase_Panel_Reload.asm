02ca5f54  stp x30,x21,[sp, #-0x20]!
02ca5f58  stp x20,x19,[sp, #0x10]
02ca5f5c  adrp x21,0x625c000
02ca5f60  mov w20,w1
02ca5f64  mov x19,x0
02ca5f68  ldrb w8,[x21, #0x4c5]
02ca5f6c  tbnz w8,#0x0,0x02ca5f84
02ca5f70  adrp x0,0x5e5e000
02ca5f74  ldr x0,[x0, #0xa38]
02ca5f78  bl 0x029f5a50
02ca5f7c  mov w8,#0x1
02ca5f80  strb w8,[x21, #0x4c5]
02ca5f84  ldr x0,[x19, #0x30]
02ca5f88  cbz x0,0x02ca5ffc
02ca5f8c  and w1,w20,#0x1
02ca5f90  mov x2,xzr
02ca5f94  bl 0x057dff3c
02ca5f98  ldr x0,[x19, #0x28]
02ca5f9c  cbz x0,0x02ca5ffc
02ca5fa0  adrp x21,0x5e5e000
02ca5fa4  eor w20,w20,#0x1
02ca5fa8  mov x2,xzr
02ca5fac  ldr x21,[x21, #0xa38]
02ca5fb0  and w1,w20,#0x1
02ca5fb4  bl 0x057db8ec
02ca5fb8  ldr x1,[x21]
02ca5fbc  mov x0,x19
02ca5fc0  bl 0x02fe5f2c
02ca5fc4  cbz x0,0x02ca5ffc
02ca5fc8  and w1,w20,#0x1
02ca5fcc  mov x2,xzr
02ca5fd0  bl 0x057db8ec
02ca5fd4  ldr x0,[x19, #0x28]
02ca5fd8  cbz x0,0x02ca5ffc
02ca5fdc  mov x1,xzr
02ca5fe0  bl 0x057dc1c8
02ca5fe4  cbz x0,0x02ca5ffc
02ca5fe8  and w1,w20,#0x1
02ca5fec  ldp x20,x19,[sp, #0x10]
02ca5ff0  mov x2,xzr
02ca5ff4  ldp x30,x21,[sp], #0x20
02ca5ff8  b 0x057dff3c
02ca5ffc  bl 0x029f5cfc
