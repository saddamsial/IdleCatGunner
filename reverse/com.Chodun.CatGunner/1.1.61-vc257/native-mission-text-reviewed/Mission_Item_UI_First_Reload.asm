02c03d5c  sub sp,sp,#0x40
02c03d60  stp x30,x23,[sp, #0x10]
02c03d64  stp x22,x21,[sp, #0x20]
02c03d68  stp x20,x19,[sp, #0x30]
02c03d6c  mov x20,x0
02c03d70  stp w1,w2,[x0, #0x20]
02c03d74  ldr x23,[x0, #0x30]
02c03d78  strb w5,[x0, #0x28]
02c03d7c  add x0,sp,#0xc
02c03d80  mov x1,xzr
02c03d84  mov w19,w5
02c03d88  mov x21,x4
02c03d8c  mov x22,x3
02c03d90  str w2,[sp, #0xc]
02c03d94  bl 0x0484e6a4
02c03d98  cbz x23,0x02c03e28
02c03d9c  ldr x8,[x23]
02c03da0  mov x1,x0
02c03da4  mov x0,x23
02c03da8  ldr x9,[x8, #0x558]
02c03dac  ldr x2,[x8, #0x560]
02c03db0  blr x9
02c03db4  ldr x0,[x20, #0x38]
02c03db8  cbz x0,0x02c03e28
02c03dbc  ldr x8,[x0]
02c03dc0  mov x1,x22
02c03dc4  ldr x9,[x8, #0x558]
02c03dc8  ldr x2,[x8, #0x560]
02c03dcc  blr x9
02c03dd0  ldr x0,[x20, #0x40]
02c03dd4  cbz x0,0x02c03e28
02c03dd8  ldr x8,[x0]
02c03ddc  mov x1,x21
02c03de0  ldr x9,[x8, #0x558]
02c03de4  ldr x2,[x8, #0x560]
02c03de8  blr x9
02c03dec  ldr x0,[x20, #0x78]
02c03df0  cbz x0,0x02c03e28
02c03df4  and w1,w19,#0x1
02c03df8  mov x2,xzr
02c03dfc  bl 0x057dff3c
02c03e00  ldr x0,[x20, #0x80]
02c03e04  cbz x0,0x02c03e28
02c03e08  and w1,w19,#0x1
02c03e0c  mov x2,xzr
02c03e10  bl 0x057dff3c
02c03e14  ldp x20,x19,[sp, #0x30]
02c03e18  ldp x22,x21,[sp, #0x20]
02c03e1c  ldp x30,x23,[sp, #0x10]
02c03e20  add sp,sp,#0x40
02c03e24  ret
02c03e28  bl 0x029f5cfc
