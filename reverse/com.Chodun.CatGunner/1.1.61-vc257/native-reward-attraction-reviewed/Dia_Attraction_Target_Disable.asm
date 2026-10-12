02c26dc0  stp x30,x21,[sp, #-0x20]!
02c26dc4  stp x20,x19,[sp, #0x10]
02c26dc8  adrp x21,0x625b000
02c26dcc  mov x20,x1
02c26dd0  mov x19,x0
02c26dd4  ldrb w8,[x21, #0xfb5]
02c26dd8  tbnz w8,#0x0,0x02c26e08
02c26ddc  adrp x0,0x5e62000
02c26de0  ldr x0,[x0, #0xd40]
02c26de4  bl 0x029f5a50
02c26de8  adrp x0,0x5e62000
02c26dec  ldr x0,[x0, #0xd28]
02c26df0  bl 0x029f5a50
02c26df4  adrp x0,0x5e62000
02c26df8  ldr x0,[x0, #0xd30]
02c26dfc  bl 0x029f5a50
02c26e00  mov w8,#0x1
02c26e04  strb w8,[x21, #0xfb5]
02c26e08  ldr x0,[x19, #0x28]
02c26e0c  cbz x0,0x02c26e88
02c26e10  adrp x8,0x5e62000
02c26e14  mov x1,x20
02c26e18  ldr x8,[x8, #0xd40]
02c26e1c  ldr x2,[x8]
02c26e20  bl 0x0452e0a8
02c26e24  ldr x0,[x19, #0x28]
02c26e28  cbz x0,0x02c26e88
02c26e2c  ldr w8,[x0, #0x18]
02c26e30  ldr x19,[x19, #0x20]
02c26e34  cbz w8,0x02c26e6c
02c26e38  adrp x9,0x5e62000
02c26e3c  sub w1,w8,#0x1
02c26e40  ldr x9,[x9, #0xd30]
02c26e44  ldr x2,[x9]
02c26e48  bl 0x0452c8d8
02c26e4c  cbz x0,0x02c26e88
02c26e50  mov x1,xzr
02c26e54  bl 0x057dc0f8
02c26e58  cbz x19,0x02c26e88
02c26e5c  mov x1,x0
02c26e60  add x0,x19,#0x5f8
02c26e64  str x1,[x19, #0x5f8]
02c26e68  b 0x02c26e7c
02c26e6c  cbz x19,0x02c26e88
02c26e70  add x0,x19,#0x5f8
02c26e74  mov x1,xzr
02c26e78  str xzr,[x19, #0x5f8]
02c26e7c  ldp x20,x19,[sp, #0x10]
02c26e80  ldp x30,x21,[sp], #0x20
02c26e84  b 0x029f59f4
02c26e88  bl 0x029f5cfc
