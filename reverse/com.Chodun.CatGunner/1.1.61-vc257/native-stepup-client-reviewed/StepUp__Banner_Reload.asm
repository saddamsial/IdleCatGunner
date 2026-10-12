02ca2c5c  stp x30,x21,[sp, #-0x20]!
02ca2c60  stp x20,x19,[sp, #0x10]
02ca2c64  adrp x21,0x625c000
02ca2c68  adrp x20,0x5e59000
02ca2c6c  mov x19,x0
02ca2c70  ldrb w8,[x21, #0x49a]
02ca2c74  ldr x20,[x20, #0x1c0]
02ca2c78  tbnz w8,#0x0,0x02ca2c90
02ca2c7c  adrp x0,0x5e59000
02ca2c80  ldr x0,[x0, #0x1c0]
02ca2c84  bl 0x029f5a50
02ca2c88  mov w8,#0x1
02ca2c8c  strb w8,[x21, #0x49a]
02ca2c90  mov x0,x19
02ca2c94  bl 0x02ca2d18
02ca2c98  ldr x0,[x20]
02ca2c9c  ldr x20,[x19, #0x20]
02ca2ca0  ldr w8,[x0, #0xe4]
02ca2ca4  cbnz w8,0x02ca2cac
02ca2ca8  bl 0x029f5bd0
02ca2cac  mov x0,x20
02ca2cb0  mov x1,xzr
02ca2cb4  mov x2,xzr
02ca2cb8  bl 0x057e14b4
02ca2cbc  tbz w0,#0x0,0x02ca2ccc
02ca2cc0  ldp x20,x19,[sp, #0x10]
02ca2cc4  ldp x30,x21,[sp], #0x20
02ca2cc8  ret
02ca2ccc  mov x0,x19
02ca2cd0  bl 0x02ca2b94
02ca2cd4  mov w8,w0
02ca2cd8  ldr x0,[x19, #0x20]
02ca2cdc  tbz w8,#0x0,0x02ca2cf0
02ca2ce0  cbz x0,0x02ca2d14
02ca2ce4  ldp x20,x19,[sp, #0x10]
02ca2ce8  ldp x30,x21,[sp], #0x20
02ca2cec  b 0x02ca2d98
02ca2cf0  cbz x0,0x02ca2d14
02ca2cf4  mov x1,xzr
02ca2cf8  bl 0x057dc1c8
02ca2cfc  cbz x0,0x02ca2d14
02ca2d00  ldp x20,x19,[sp, #0x10]
02ca2d04  mov w1,wzr
02ca2d08  mov x2,xzr
02ca2d0c  ldp x30,x21,[sp], #0x20
02ca2d10  b 0x057dff3c
02ca2d14  bl 0x029f5cfc
