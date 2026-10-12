02c04cf0  sub sp,sp,#0x40
02c04cf4  stp x30,x21,[sp, #0x20]
02c04cf8  stp x20,x19,[sp, #0x30]
02c04cfc  adrp x21,0x625b000
02c04d00  adrp x20,0x5e59000
02c04d04  mov x19,x0
02c04d08  ldrb w8,[x21, #0xe67]
02c04d0c  ldr x20,[x20, #0x1c0]
02c04d10  tbnz w8,#0x0,0x02c04d64
02c04d14  adrp x0,0x5e59000
02c04d18  ldr x0,[x0, #0x7d0]
02c04d1c  bl 0x029f5a50
02c04d20  adrp x0,0x5e5d000
02c04d24  ldr x0,[x0, #0xd50]
02c04d28  bl 0x029f5a50
02c04d2c  adrp x0,0x5e59000
02c04d30  ldr x0,[x0, #0x1c0]
02c04d34  bl 0x029f5a50
02c04d38  adrp x0,0x5e5a000
02c04d3c  ldr x0,[x0, #0x180]
02c04d40  bl 0x029f5a50
02c04d44  adrp x0,0x5e5d000
02c04d48  ldr x0,[x0, #0x3c0]
02c04d4c  bl 0x029f5a50
02c04d50  adrp x0,0x5e61000
02c04d54  ldr x0,[x0, #0xf40]
02c04d58  bl 0x029f5a50
02c04d5c  mov w8,#0x1
02c04d60  strb w8,[x21, #0xe67]
02c04d64  ldr x0,[x20]
02c04d68  mov x20,x19
02c04d6c  stp xzr,xzr,[sp, #0x10]
02c04d70  ldr x21,[x20, #0x20]!
02c04d74  str xzr,[sp, #0x8]
02c04d78  ldr w8,[x0, #0xe4]
02c04d7c  cbnz w8,0x02c04d84
02c04d80  bl 0x029f5bd0
02c04d84  mov x0,x21
02c04d88  mov x1,xzr
02c04d8c  mov x2,xzr
02c04d90  bl 0x057e14b4
02c04d94  tbz w0,#0x0,0x02c04dc8
02c04d98  adrp x21,0x5e5d000
02c04d9c  ldr x21,[x21, #0xd50]
02c04da0  ldr x0,[x21]
02c04da4  ldr w8,[x0, #0xe4]
02c04da8  cbnz w8,0x02c04db4
02c04dac  bl 0x029f5bd0
02c04db0  ldr x0,[x21]
02c04db4  ldr x8,[x0, #0xb8]
02c04db8  mov x0,x20
02c04dbc  ldr x1,[x8, #0x8]
02c04dc0  str x1,[x20]
02c04dc4  bl 0x029f59f4
02c04dc8  ldr x0,[x20]
02c04dcc  cbz x0,0x02c04eac
02c04dd0  adrp x20,0x5e5d000
02c04dd4  adrp x21,0x5e59000
02c04dd8  mov x1,xzr
02c04ddc  ldr x20,[x20, #0x3c0]
02c04de0  ldr x21,[x21, #0x7d0]
02c04de4  bl 0x02ba3f20
02c04de8  ldr x0,[x20]
02c04dec  ldr w8,[x0, #0xe4]
02c04df0  cbnz w8,0x02c04df8
02c04df4  bl 0x029f5bd0
02c04df8  adrp x20,0x5e5a000
02c04dfc  mov x0,xzr
02c04e00  ldr x20,[x20, #0x180]
02c04e04  bl 0x02c25b48
02c04e08  ldr x8,[x21]
02c04e0c  str x0,[sp, #0x18]
02c04e10  ldr w9,[x8, #0xe4]
02c04e14  cbnz w9,0x02c04e20
02c04e18  mov x0,x8
02c04e1c  bl 0x029f5bd0
02c04e20  adrp x21,0x5e61000
02c04e24  add x0,sp,#0x18
02c04e28  mov x1,xzr
02c04e2c  ldr x21,[x21, #0xf40]
02c04e30  bl 0x04830b04
02c04e34  fmov d0,0x3ff0000000000000
02c04e38  str x0,[sp, #0x8]
02c04e3c  add x0,sp,#0x8
02c04e40  mov x1,xzr
02c04e44  bl 0x0482f924
02c04e48  ldr x1,[sp, #0x18]
02c04e4c  mov x2,xzr
02c04e50  bl 0x048330d0
02c04e54  mov x8,x0
02c04e58  ldr x0,[x20]
02c04e5c  ldr x19,[x19, #0x30]
02c04e60  str x8,[sp, #0x10]
02c04e64  ldr w9,[x0, #0xe4]
02c04e68  cbnz w9,0x02c04e70
02c04e6c  bl 0x029f5bd0
02c04e70  ldr x1,[x21]
02c04e74  add x0,sp,#0x10
02c04e78  mov x2,xzr
02c04e7c  bl 0x04868ab0
02c04e80  cbz x19,0x02c04eac
02c04e84  ldr x8,[x19]
02c04e88  mov x1,x0
02c04e8c  mov x0,x19
02c04e90  ldr x9,[x8, #0x558]
02c04e94  ldr x2,[x8, #0x560]
02c04e98  blr x9
02c04e9c  ldp x20,x19,[sp, #0x30]
02c04ea0  ldp x30,x21,[sp, #0x20]
02c04ea4  add sp,sp,#0x40
02c04ea8  ret
02c04eac  bl 0x029f5cfc
