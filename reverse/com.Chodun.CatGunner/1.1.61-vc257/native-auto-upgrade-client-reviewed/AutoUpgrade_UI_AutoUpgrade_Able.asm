02c1dae0  stp x30,x21,[sp, #-0x20]!
02c1dae4  stp x20,x19,[sp, #0x10]
02c1dae8  adrp x20,0x625b000
02c1daec  adrp x21,0x5e62000
02c1daf0  mov x19,x0
02c1daf4  ldrb w8,[x20, #0xf39]
02c1daf8  ldr x21,[x21, #0x670]
02c1dafc  tbnz w8,#0x0,0x02c1db14
02c1db00  adrp x0,0x5e62000
02c1db04  ldr x0,[x0, #0x670]
02c1db08  bl 0x029f5a50
02c1db0c  mov w8,#0x1
02c1db10  strb w8,[x20, #0xf39]
02c1db14  ldr x8,[x21]
02c1db18  mov x0,x19
02c1db1c  ldp x20,x19,[sp, #0x10]
02c1db20  ldr x8,[x8, #0xb8]
02c1db24  strb wzr,[x8]
02c1db28  ldp x30,x21,[sp], #0x20
02c1db2c  b 0x02c1d4b0
