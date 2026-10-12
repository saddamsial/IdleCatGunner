02ca8d78  str x30,[sp, #-0x20]!
02ca8d7c  stp x20,x19,[sp, #0x10]
02ca8d80  mov w1,#0x2
02ca8d84  mov x19,x0
02ca8d88  bl 0x02ca86cc
02ca8d8c  ldr x0,[x19, #0xd0]
02ca8d90  cbz x0,0x02ca8e3c
02ca8d94  mov w1,wzr
02ca8d98  mov x2,xzr
02ca8d9c  bl 0x057dff3c
02ca8da0  ldr x0,[x19, #0x38]
02ca8da4  cbz x0,0x02ca8e3c
02ca8da8  mov w1,wzr
02ca8dac  mov x2,xzr
02ca8db0  bl 0x057dff3c
02ca8db4  ldr x0,[x19, #0x40]
02ca8db8  cbz x0,0x02ca8e3c
02ca8dbc  mov w1,wzr
02ca8dc0  mov x2,xzr
02ca8dc4  bl 0x057dff3c
02ca8dc8  adrp x20,0x625b000
02ca8dcc  ldrb w8,[x20, #0xa57]
02ca8dd0  cbnz w8,0x02ca8de8
02ca8dd4  adrp x0,0x5e5d000
02ca8dd8  ldr x0,[x0, #0xd70]
02ca8ddc  bl 0x029f5a50
02ca8de0  mov w8,#0x1
02ca8de4  strb w8,[x20, #0xa57]
02ca8de8  adrp x8,0x5e5d000
02ca8dec  ldr x8,[x8, #0xd70]
02ca8df0  ldr x8,[x8]
02ca8df4  ldr x8,[x8, #0xb8]
02ca8df8  ldr x0,[x8]
02ca8dfc  cbz x0,0x02ca8e3c
02ca8e00  mov x1,xzr
02ca8e04  bl 0x02c22750
02ca8e08  ldr x1,[x19, #0x68]
02ca8e0c  cbz x1,0x02ca8e1c
02ca8e10  mov x0,x19
02ca8e14  mov x2,xzr
02ca8e18  bl 0x057e2250
02ca8e1c  mov x0,x19
02ca8e20  bl 0x02ca8e40
02ca8e24  mov x1,x0
02ca8e28  mov x0,x19
02ca8e2c  mov x2,xzr
02ca8e30  ldp x20,x19,[sp, #0x10]
02ca8e34  ldr x30,[sp], #0x20
02ca8e38  b 0x057e2120
02ca8e3c  bl 0x029f5cfc
