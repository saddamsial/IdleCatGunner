02c88d7c  sub sp,sp,#0x50
02c88d80  stp x30,x21,[sp, #0x30]
02c88d84  stp x20,x19,[sp, #0x40]
02c88d88  adrp x21,0x625c000
02c88d8c  adrp x20,0x5e5d000
02c88d90  mov x19,x0
02c88d94  ldrb w8,[x21, #0x393]
02c88d98  ldr x20,[x20, #0xc20]
02c88d9c  tbnz w8,#0x0,0x02c88dd8
02c88da0  adrp x0,0x5e5e000
02c88da4  ldr x0,[x0, #0x528]
02c88da8  bl 0x029f5a50
02c88dac  adrp x0,0x5e5d000
02c88db0  ldr x0,[x0, #0xd60]
02c88db4  bl 0x029f5a50
02c88db8  adrp x0,0x5e5d000
02c88dbc  ldr x0,[x0, #0xc20]
02c88dc0  bl 0x029f5a50
02c88dc4  adrp x0,0x5e63000
02c88dc8  ldr x0,[x0, #0xeb8]
02c88dcc  bl 0x029f5a50
02c88dd0  mov w8,#0x1
02c88dd4  strb w8,[x21, #0x393]
02c88dd8  movi v0.2D,#0x0
02c88ddc  ldr x0,[x20]
02c88de0  ldr w8,[x0, #0xe4]
02c88de4  stp q0,q0,[sp, #0x10]
02c88de8  cbnz w8,0x02c88df4
02c88dec  bl 0x029f5bd0
02c88df0  ldr x0,[x20]
02c88df4  ldr x8,[x0, #0xb8]
02c88df8  ldr x8,[x8, #0x10]
02c88dfc  cbz x8,0x02c88edc
02c88e00  ldr w8,[x8, #0x28]
02c88e04  cmp w8,#0x1
02c88e08  b.le 0x02c88e80
02c88e0c  adrp x8,0x5e5d000
02c88e10  ldr x8,[x8, #0xd60]
02c88e14  ldr x8,[x8]
02c88e18  ldr x8,[x8, #0xb8]
02c88e1c  ldr x8,[x8]
02c88e20  cbz x8,0x02c88edc
02c88e24  strb wzr,[x8, #0x48]
02c88e28  add x8,sp,#0x10
02c88e2c  bl 0x02c88058
02c88e30  ldr x0,[x19, #0x58]
02c88e34  cbz x0,0x02c88edc
02c88e38  mov w1,#0x1
02c88e3c  mov x2,xzr
02c88e40  bl 0x057dff3c
02c88e44  ldr x19,[x19, #0x60]
02c88e48  add x0,sp,#0x10
02c88e4c  mov x1,xzr
02c88e50  bl 0x0465bddc
02c88e54  cbz x19,0x02c88edc
02c88e58  ldr x8,[x19]
02c88e5c  mov x1,x0
02c88e60  mov x0,x19
02c88e64  ldr x9,[x8, #0x558]
02c88e68  ldr x2,[x8, #0x560]
02c88e6c  blr x9
02c88e70  ldp x20,x19,[sp, #0x40]
02c88e74  ldp x30,x21,[sp, #0x30]
02c88e78  add sp,sp,#0x50
02c88e7c  ret
02c88e80  adrp x8,0x5e5e000
02c88e84  ldr x8,[x8, #0x528]
02c88e88  ldr x0,[x8]
02c88e8c  ldr w8,[x0, #0xe4]
02c88e90  cbnz w8,0x02c88e98
02c88e94  bl 0x029f5bd0
02c88e98  adrp x8,0x5e63000
02c88e9c  mov w1,#0x1
02c88ea0  mov w2,wzr
02c88ea4  ldr x8,[x8, #0xeb8]
02c88ea8  mov w3,#0x1
02c88eac  mov w4,wzr
02c88eb0  mov x5,xzr
02c88eb4  mov x6,xzr
02c88eb8  mov w7,#0x1
02c88ebc  ldr x0,[x8]
02c88ec0  str xzr,[sp]
02c88ec4  bl 0x02bccb00
02c88ec8  ldp x20,x19,[sp, #0x40]
02c88ecc  mov x1,xzr
02c88ed0  ldp x30,x21,[sp, #0x30]
02c88ed4  add sp,sp,#0x50
02c88ed8  b 0x02c1dd54
02c88edc  bl 0x029f5cfc
