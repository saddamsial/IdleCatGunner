02c71c84  stp d9,d8,[sp, #-0x40]!
02c71c88  str x30,[sp, #0x10]
02c71c8c  stp x22,x21,[sp, #0x20]
02c71c90  stp x20,x19,[sp, #0x30]
02c71c94  adrp x21,0x625c000
02c71c98  mov x20,x1
02c71c9c  mov x19,x0
02c71ca0  ldrb w8,[x21, #0x2d1]
02c71ca4  tbnz w8,#0x0,0x02c71cd4
02c71ca8  adrp x0,0x5e5b000
02c71cac  ldr x0,[x0, #0xa78]
02c71cb0  bl 0x029f5a50
02c71cb4  adrp x0,0x5e59000
02c71cb8  ldr x0,[x0, #0x1c0]
02c71cbc  bl 0x029f5a50
02c71cc0  adrp x0,0x5e5c000
02c71cc4  ldr x0,[x0, #0xf00]
02c71cc8  bl 0x029f5a50
02c71ccc  mov w8,#0x1
02c71cd0  strb w8,[x21, #0x2d1]
02c71cd4  ldrb w8,[x19, #0x79]
02c71cd8  cbz w8,0x02c71cf0
02c71cdc  ldp x20,x19,[sp, #0x30]
02c71ce0  ldr x30,[sp, #0x10]
02c71ce4  ldp x22,x21,[sp, #0x20]
02c71ce8  ldp d9,d8,[sp], #0x40
02c71cec  ret
02c71cf0  mov w8,#0x1
02c71cf4  mov x0,x19
02c71cf8  strh w8,[x19, #0xb8]
02c71cfc  bl 0x02c71950
02c71d00  adrp x8,0x5e59000
02c71d04  mov x21,x19
02c71d08  ldr x8,[x8, #0x1c0]
02c71d0c  ldr x22,[x21, #0xa0]!
02c71d10  ldr x0,[x8]
02c71d14  ldr w8,[x0, #0xe4]
02c71d18  cbnz w8,0x02c71d20
02c71d1c  bl 0x029f5bd0
02c71d20  mov x0,x22
02c71d24  mov x1,xzr
02c71d28  mov x2,xzr
02c71d2c  bl 0x057e14b4
02c71d30  tbz w0,#0x0,0x02c71d64
02c71d34  adrp x8,0x5e5b000
02c71d38  mov x0,x19
02c71d3c  ldr x8,[x8, #0xa78]
02c71d40  ldr x1,[x8]
02c71d44  bl 0x02fe64b8
02c71d48  cbz x0,0x02c71e4c
02c71d4c  mov x1,xzr
02c71d50  bl 0x05aa2e38
02c71d54  mov x1,x0
02c71d58  str x0,[x21]
02c71d5c  mov x0,x21
02c71d60  bl 0x029f59f4
02c71d64  ldr w8,[x19, #0x90]
02c71d68  mov x0,x19
02c71d6c  mov x1,xzr
02c71d70  str w8,[x19, #0xdc]
02c71d74  bl 0x057dc0f8
02c71d78  cbz x0,0x02c71e4c
02c71d7c  mov x1,xzr
02c71d80  bl 0x057f0b34
02c71d84  cbz x20,0x02c71e4c
02c71d88  ldr x21,[x19, #0x98]
02c71d8c  ldr s8,[x20, #0x104]
02c71d90  mov x0,x20
02c71d94  ldr s9,[x20, #0x108]
02c71d98  mov x1,xzr
02c71d9c  bl 0x05acda38
02c71da0  adrp x8,0x5e5c000
02c71da4  mov x20,x0
02c71da8  ldr x8,[x8, #0xf00]
02c71dac  ldr x8,[x8]
02c71db0  ldr w9,[x8, #0xe4]
02c71db4  cbnz w9,0x02c71dc0
02c71db8  mov x0,x8
02c71dbc  bl 0x029f5bd0
02c71dc0  fmov s0,s8
02c71dc4  fmov s1,s9
02c71dc8  add x2,x19,#0xb0
02c71dcc  mov x0,x21
02c71dd0  mov x1,x20
02c71dd4  mov x3,xzr
02c71dd8  bl 0x05aa15c0
02c71ddc  ldr x0,[x19, #0xa8]
02c71de0  cbz x0,0x02c71e4c
02c71de4  mov w1,wzr
02c71de8  mov x2,xzr
02c71dec  bl 0x05a9f1dc
02c71df0  mov x0,x19
02c71df4  mov x1,xzr
02c71df8  str xzr,[x0, #0xc0]!
02c71dfc  bl 0x029f59f4
02c71e00  mov x0,x19
02c71e04  mov x1,xzr
02c71e08  strb wzr,[x19, #0xc8]
02c71e0c  str xzr,[x0, #0xd0]!
02c71e10  bl 0x029f59f4
02c71e14  mov w8,#0xffffffff
02c71e18  mov x0,x19
02c71e1c  mov x1,xzr
02c71e20  str w8,[x19, #0xd8]
02c71e24  str xzr,[x0, #0xe0]!
02c71e28  bl 0x029f59f4
02c71e2c  mov x0,x19
02c71e30  strb wzr,[x19, #0xe8]
02c71e34  ldr x30,[sp, #0x10]
02c71e38  ldp x20,x19,[sp, #0x30]
02c71e3c  mov w1,#0x1
02c71e40  ldp x22,x21,[sp, #0x20]
02c71e44  ldp d9,d8,[sp], #0x40
02c71e48  b 0x02c70fb0
02c71e4c  bl 0x029f5cfc
