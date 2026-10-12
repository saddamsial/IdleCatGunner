02c68cd8  stp x30,x21,[sp, #-0x20]!
02c68cdc  stp x20,x19,[sp, #0x10]
02c68ce0  adrp x21,0x625c000
02c68ce4  mov w20,w1
02c68ce8  mov x19,x0
02c68cec  ldrb w8,[x21, #0x265]
02c68cf0  tbnz w8,#0x0,0x02c68d14
02c68cf4  adrp x0,0x5e63000
02c68cf8  ldr x0,[x0, #0xa70]
02c68cfc  bl 0x029f5a50
02c68d00  adrp x0,0x5e63000
02c68d04  ldr x0,[x0, #0xa78]
02c68d08  bl 0x029f5a50
02c68d0c  mov w8,#0x1
02c68d10  strb w8,[x21, #0x265]
02c68d14  cmp w20,#0xc
02c68d18  b.hi 0x02c68d88
02c68d1c  add w20,w20,w20, LSL #0x2
02c68d20  mov w21,wzr
02c68d24  mov x0,x19
02c68d28  bl 0x02c67de0
02c68d2c  cmn w0,#0x1
02c68d30  b.eq 0x02c68d94
02c68d34  ldr x8,[x19, #0x40]
02c68d38  cbz x8,0x02c68db8
02c68d3c  ldr w9,[x8, #0x18]
02c68d40  mov w1,w0
02c68d44  cmp w0,w9
02c68d48  b.cs 0x02c68db4
02c68d4c  add x8,x8,w1, SXTW  #0x2
02c68d50  add w9,w20,w21
02c68d54  mov x0,x19
02c68d58  mov w2,wzr
02c68d5c  str w9,[x8, #0x20]
02c68d60  bl 0x02c6802c
02c68d64  add w21,w21,#0x1
02c68d68  cmp w21,#0x5
02c68d6c  b.ne 0x02c68d24
02c68d70  mov x0,x19
02c68d74  bl 0x02c6841c
02c68d78  adrp x8,0x5e63000
02c68d7c  ldr x8,[x8, #0xa70]
02c68d80  ldr x0,[x8]
02c68d84  b 0x02c68da4
02c68d88  ldp x20,x19,[sp, #0x10]
02c68d8c  ldp x30,x21,[sp], #0x20
02c68d90  ret
02c68d94  adrp x8,0x5e63000
02c68d98  ldr x8,[x8, #0xa78]
02c68d9c  ldr x0,[x8]
02c68da0  bl 0x02c68dbc
02c68da4  ldp x20,x19,[sp, #0x10]
02c68da8  mov x1,xzr
02c68dac  ldp x30,x21,[sp], #0x20
02c68db0  b 0x02c1dd54
02c68db4  bl 0x029f5d04
02c68db8  bl 0x029f5cfc
