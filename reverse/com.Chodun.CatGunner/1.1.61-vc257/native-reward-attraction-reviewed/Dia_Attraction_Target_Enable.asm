02c26cf0  stp x30,x21,[sp, #-0x20]!
02c26cf4  stp x20,x19,[sp, #0x10]
02c26cf8  adrp x21,0x625b000
02c26cfc  mov x19,x1
02c26d00  mov x20,x0
02c26d04  ldrb w8,[x21, #0xfb4]
02c26d08  tbnz w8,#0x0,0x02c26d20
02c26d0c  adrp x0,0x5e62000
02c26d10  ldr x0,[x0, #0xd38]
02c26d14  bl 0x029f5a50
02c26d18  mov w8,#0x1
02c26d1c  strb w8,[x21, #0xfb4]
02c26d20  ldr x0,[x20, #0x28]
02c26d24  cbz x0,0x02c26dbc
02c26d28  adrp x9,0x5e62000
02c26d2c  ldr x9,[x9, #0xd38]
02c26d30  ldr w10,[x0, #0x1c]
02c26d34  ldr x8,[x0, #0x10]
02c26d38  ldr x9,[x9]
02c26d3c  add w10,w10,#0x1
02c26d40  str w10,[x0, #0x1c]
02c26d44  cbz x8,0x02c26dbc
02c26d48  ldrsw x10,[x0, #0x18]
02c26d4c  ldr w11,[x8, #0x18]
02c26d50  cmp w10,w11
02c26d54  b.cs 0x02c26d78
02c26d58  add x8,x8,x10, LSL #0x3
02c26d5c  add w9,w10,#0x1
02c26d60  mov x1,x19
02c26d64  str w9,[x0, #0x18]
02c26d68  str x19,[x8, #0x20]!
02c26d6c  mov x0,x8
02c26d70  bl 0x029f59f4
02c26d74  b 0x02c26d8c
02c26d78  ldr x8,[x9, #0x20]
02c26d7c  mov x1,x19
02c26d80  ldr x8,[x8, #0xc0]
02c26d84  ldr x2,[x8, #0x70]
02c26d88  bl 0x0452cba8
02c26d8c  cbz x19,0x02c26dbc
02c26d90  ldr x20,[x20, #0x20]
02c26d94  mov x0,x19
02c26d98  mov x1,xzr
02c26d9c  bl 0x057dc0f8
02c26da0  cbz x20,0x02c26dbc
02c26da4  mov x1,x0
02c26da8  add x0,x20,#0x5f8
02c26dac  str x1,[x20, #0x5f8]
02c26db0  ldp x20,x19,[sp, #0x10]
02c26db4  ldp x30,x21,[sp], #0x20
02c26db8  b 0x029f59f4
02c26dbc  bl 0x029f5cfc
