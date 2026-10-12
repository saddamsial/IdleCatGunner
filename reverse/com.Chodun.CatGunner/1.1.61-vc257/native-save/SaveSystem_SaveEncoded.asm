02c16c50  str x30,[sp, #-0x40]!
02c16c54  stp x24,x23,[sp, #0x10]
02c16c58  stp x22,x21,[sp, #0x20]
02c16c5c  stp x20,x19,[sp, #0x30]
02c16c60  adrp x21,0x625b000
02c16c64  adrp x22,0x5e5d000
02c16c68  mov x20,x1
02c16c6c  ldrb w8,[x21, #0xef1]
02c16c70  ldr x22,[x22, #0xf00]
02c16c74  mov x19,x0
02c16c78  tbnz w8,#0x0,0x02c16cd8
02c16c7c  adrp x0,0x5e58000
02c16c80  ldr x0,[x0, #0xf08]
02c16c84  bl 0x029f5a50
02c16c88  adrp x0,0x5e5d000
02c16c8c  ldr x0,[x0, #0xf00]
02c16c90  bl 0x029f5a50
02c16c94  adrp x0,0x5e62000
02c16c98  ldr x0,[x0, #0x6e8]
02c16c9c  bl 0x029f5a50
02c16ca0  adrp x0,0x5e62000
02c16ca4  ldr x0,[x0, #0x6f0]
02c16ca8  bl 0x029f5a50
02c16cac  adrp x0,0x5e62000
02c16cb0  ldr x0,[x0, #0x6f8]
02c16cb4  bl 0x029f5a50
02c16cb8  adrp x0,0x5e62000
02c16cbc  ldr x0,[x0, #0x6d8]
02c16cc0  bl 0x029f5a50
02c16cc4  adrp x0,0x5e62000
02c16cc8  ldr x0,[x0, #0x6e0]
02c16ccc  bl 0x029f5a50
02c16cd0  mov w8,#0x1
02c16cd4  strb w8,[x21, #0xef1]
02c16cd8  ldr x8,[x22]
02c16cdc  ldr x8,[x8, #0xb8]
02c16ce0  ldrb w8,[x8]
02c16ce4  cbz w8,0x02c16de0
02c16ce8  adrp x8,0x5e62000
02c16cec  adrp x21,0x5e62000
02c16cf0  adrp x22,0x5e62000
02c16cf4  ldr x8,[x8, #0x6d8]
02c16cf8  adrp x24,0x5e62000
02c16cfc  ldr x21,[x21, #0x6f0]
02c16d00  ldr x22,[x22, #0x6e8]
02c16d04  ldr x24,[x24, #0x6f8]
02c16d08  mov x0,x20
02c16d0c  ldr x1,[x8]
02c16d10  mov x2,xzr
02c16d14  bl 0x046b2d44
02c16d18  ldr x1,[x21]
02c16d1c  mov x2,xzr
02c16d20  mov x23,x0
02c16d24  bl 0x046b2d44
02c16d28  ldr x1,[x22]
02c16d2c  mov x20,x0
02c16d30  mov x0,x23
02c16d34  mov x2,xzr
02c16d38  bl 0x046b2d44
02c16d3c  ldr x1,[x24]
02c16d40  mov x21,x0
02c16d44  mov x0,x23
02c16d48  mov x2,xzr
02c16d4c  bl 0x046b2d44
02c16d50  mov x22,x0
02c16d54  mov x0,x23
02c16d58  mov x1,xzr
02c16d5c  bl 0x048111a4
02c16d60  tbnz w0,#0x0,0x02c16d70
02c16d64  mov x0,x23
02c16d68  mov x1,xzr
02c16d6c  bl 0x04811018
02c16d70  mov x0,x21
02c16d74  mov x1,x19
02c16d78  mov x2,xzr
02c16d7c  bl 0x04812818
02c16d80  mov x0,x20
02c16d84  mov x1,xzr
02c16d88  bl 0x048048bc
02c16d8c  tbz w0,#0x0,0x02c16dbc
02c16d90  mov x0,x22
02c16d94  mov x1,xzr
02c16d98  bl 0x048048bc
02c16d9c  tbz w0,#0x0,0x02c16dac
02c16da0  mov x0,x22
02c16da4  mov x1,xzr
02c16da8  bl 0x048122f4
02c16dac  mov x0,x20
02c16db0  mov x1,x22
02c16db4  mov x2,xzr
02c16db8  bl 0x0481357c
02c16dbc  mov x0,x21
02c16dc0  mov x1,x20
02c16dc4  mov x2,xzr
02c16dc8  bl 0x0481357c
02c16dcc  ldp x20,x19,[sp, #0x30]
02c16dd0  ldp x22,x21,[sp, #0x20]
02c16dd4  ldp x24,x23,[sp, #0x10]
02c16dd8  ldr x30,[sp], #0x40
02c16ddc  ret
02c16de0  adrp x8,0x5e58000
02c16de4  ldr x8,[x8, #0xf08]
02c16de8  ldr x0,[x8]
02c16dec  ldr w8,[x0, #0xe4]
02c16df0  cbnz w8,0x02c16df8
02c16df4  bl 0x029f5bd0
02c16df8  adrp x8,0x5e62000
02c16dfc  mov x1,xzr
02c16e00  ldr x8,[x8, #0x6e0]
02c16e04  ldp x20,x19,[sp, #0x30]
02c16e08  ldp x22,x21,[sp, #0x20]
02c16e0c  ldp x24,x23,[sp, #0x10]
02c16e10  ldr x0,[x8]
02c16e14  ldr x30,[sp], #0x40
02c16e18  b 0x0579a8d0
