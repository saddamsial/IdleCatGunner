02c58ce4  str x30,[sp, #-0x30]!
02c58ce8  stp x22,x21,[sp, #0x10]
02c58cec  stp x20,x19,[sp, #0x20]
02c58cf0  adrp x22,0x625c000
02c58cf4  adrp x21,0x5e5d000
02c58cf8  adrp x20,0x5e59000
02c58cfc  ldrb w8,[x22, #0x1b3]
02c58d00  ldr x21,[x21, #0x5b0]
02c58d04  ldr x20,[x20, #0x1c0]
02c58d08  mov x19,x0
02c58d0c  tbnz w8,#0x0,0x02c58d3c
02c58d10  adrp x0,0x5e5d000
02c58d14  ldr x0,[x0, #0x910]
02c58d18  bl 0x029f5a50
02c58d1c  adrp x0,0x5e5d000
02c58d20  ldr x0,[x0, #0x5b0]
02c58d24  bl 0x029f5a50
02c58d28  adrp x0,0x5e59000
02c58d2c  ldr x0,[x0, #0x1c0]
02c58d30  bl 0x029f5a50
02c58d34  mov w8,#0x1
02c58d38  strb w8,[x22, #0x1b3]
02c58d3c  mov x0,x19
02c58d40  mov w1,#0x2
02c58d44  bl 0x02c58e74
02c58d48  ldr x8,[x21]
02c58d4c  ldr x0,[x20]
02c58d50  ldr x8,[x8, #0xb8]
02c58d54  ldr w9,[x0, #0xe4]
02c58d58  ldr x20,[x8, #0x8]
02c58d5c  cbnz w9,0x02c58d64
02c58d60  bl 0x029f5bd0
02c58d64  mov x0,x20
02c58d68  mov x1,xzr
02c58d6c  mov x2,xzr
02c58d70  bl 0x057dfa70
02c58d74  tbz w0,#0x0,0x02c58d8c
02c58d78  ldr x8,[x21]
02c58d7c  ldr x8,[x8, #0xb8]
02c58d80  ldr x0,[x8, #0x8]
02c58d84  cbz x0,0x02c58e70
02c58d88  bl 0x02c446b4
02c58d8c  adrp x8,0x5e5d000
02c58d90  ldr x8,[x8, #0x910]
02c58d94  ldr x8,[x8]
02c58d98  ldr x8,[x8, #0xb8]
02c58d9c  ldr x0,[x8]
02c58da0  cbz x0,0x02c58e70
02c58da4  mov x1,xzr
02c58da8  bl 0x02b8c604
02c58dac  ldr x0,[x19, #0xd0]
02c58db0  cbz x0,0x02c58e70
02c58db4  mov w1,wzr
02c58db8  mov x2,xzr
02c58dbc  bl 0x057dff3c
02c58dc0  ldr x0,[x19, #0x40]
02c58dc4  cbz x0,0x02c58e70
02c58dc8  mov w1,wzr
02c58dcc  mov x2,xzr
02c58dd0  bl 0x057dff3c
02c58dd4  ldr x0,[x19, #0xc0]
02c58dd8  cbz x0,0x02c58e70
02c58ddc  mov w1,#0x1
02c58de0  mov x2,xzr
02c58de4  bl 0x057dff3c
02c58de8  ldr x0,[x19, #0xc8]
02c58dec  cbz x0,0x02c58e70
02c58df0  mov w1,wzr
02c58df4  mov x2,xzr
02c58df8  bl 0x057dff3c
02c58dfc  adrp x20,0x625b000
02c58e00  ldrb w8,[x20, #0xa57]
02c58e04  cbnz w8,0x02c58e1c
02c58e08  adrp x0,0x5e5d000
02c58e0c  ldr x0,[x0, #0xd70]
02c58e10  bl 0x029f5a50
02c58e14  mov w8,#0x1
02c58e18  strb w8,[x20, #0xa57]
02c58e1c  adrp x8,0x5e5d000
02c58e20  ldr x8,[x8, #0xd70]
02c58e24  ldr x8,[x8]
02c58e28  ldr x8,[x8, #0xb8]
02c58e2c  ldr x0,[x8]
02c58e30  cbz x0,0x02c58e70
02c58e34  mov x1,xzr
02c58e38  bl 0x02c22750
02c58e3c  ldr x1,[x19, #0xb8]
02c58e40  cbz x1,0x02c58e50
02c58e44  mov x0,x19
02c58e48  mov x2,xzr
02c58e4c  bl 0x057e2250
02c58e50  bl 0x02c59200
02c58e54  mov x1,x0
02c58e58  mov x0,x19
02c58e5c  mov x2,xzr
02c58e60  ldp x20,x19,[sp, #0x20]
02c58e64  ldp x22,x21,[sp, #0x10]
02c58e68  ldr x30,[sp], #0x30
02c58e6c  b 0x057e2120
02c58e70  bl 0x029f5cfc
