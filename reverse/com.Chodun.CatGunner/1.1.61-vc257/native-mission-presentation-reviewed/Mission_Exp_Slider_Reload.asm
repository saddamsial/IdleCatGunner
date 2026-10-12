02c03bd4  sub sp,sp,#0x50
02c03bd8  str x30,[sp, #0x10]
02c03bdc  stp x24,x23,[sp, #0x20]
02c03be0  stp x22,x21,[sp, #0x30]
02c03be4  stp x20,x19,[sp, #0x40]
02c03be8  adrp x21,0x625b000
02c03bec  adrp x20,0x5e5d000
02c03bf0  mov x19,x0
02c03bf4  ldrb w8,[x21, #0xe59]
02c03bf8  ldr x20,[x20, #0xd50]
02c03bfc  tbnz w8,#0x0,0x02c03c2c
02c03c00  adrp x0,0x5e5d000
02c03c04  ldr x0,[x0, #0xd50]
02c03c08  bl 0x029f5a50
02c03c0c  adrp x0,0x5e61000
02c03c10  ldr x0,[x0, #0xf18]
02c03c14  bl 0x029f5a50
02c03c18  adrp x0,0x5e61000
02c03c1c  ldr x0,[x0, #0xf20]
02c03c20  bl 0x029f5a50
02c03c24  mov w8,#0x1
02c03c28  strb w8,[x21, #0xe59]
02c03c2c  ldr x0,[x20]
02c03c30  ldr w8,[x0, #0xe4]
02c03c34  cbnz w8,0x02c03c40
02c03c38  bl 0x029f5bd0
02c03c3c  ldr x0,[x20]
02c03c40  ldr x8,[x0, #0xb8]
02c03c44  ldr x22,[x8, #0x8]
02c03c48  cbz x22,0x02c03d50
02c03c4c  adrp x23,0x5e58000
02c03c50  ldr w8,[x22, #0x48]
02c03c54  adrp x21,0x5e61000
02c03c58  ldr x23,[x23, #0xa10]
02c03c5c  ldr x21,[x21, #0xf18]
02c03c60  ldr x20,[x19, #0x20]
02c03c64  add w8,w8,#0x1
02c03c68  add x1,sp,#0x1c
02c03c6c  ldr x0,[x23, #0x48]
02c03c70  str w8,[sp, #0x1c]
02c03c74  bl 0x029f5bd8
02c03c78  ldr x8,[x21]
02c03c7c  mov x1,x0
02c03c80  mov x2,xzr
02c03c84  mov x0,x8
02c03c88  bl 0x046b6c0c
02c03c8c  cbz x20,0x02c03d50
02c03c90  ldr x8,[x20]
02c03c94  adrp x24,0x5e61000
02c03c98  mov x1,x0
02c03c9c  ldr x24,[x24, #0xf20]
02c03ca0  mov x0,x20
02c03ca4  ldr x9,[x8, #0x558]
02c03ca8  ldr x2,[x8, #0x560]
02c03cac  blr x9
02c03cb0  ldr w8,[x22, #0x4c]
02c03cb4  ldr x0,[x23, #0x48]
02c03cb8  add x1,sp,#0x18
02c03cbc  ldr x20,[x19, #0x28]
02c03cc0  str w8,[sp, #0x18]
02c03cc4  bl 0x029f5bd8
02c03cc8  mov x21,x0
02c03ccc  ldr x0,[x23, #0x48]
02c03cd0  mov w8,#0x64
02c03cd4  add x1,sp,#0xc
02c03cd8  str w8,[sp, #0xc]
02c03cdc  bl 0x029f5bd8
02c03ce0  ldr x8,[x24]
02c03ce4  mov x2,x0
02c03ce8  mov x1,x21
02c03cec  mov x3,xzr
02c03cf0  mov x0,x8
02c03cf4  bl 0x046c1d14
02c03cf8  cbz x20,0x02c03d50
02c03cfc  ldr x8,[x20]
02c03d00  mov x1,x0
02c03d04  mov x0,x20
02c03d08  ldr x9,[x8, #0x558]
02c03d0c  ldr x2,[x8, #0x560]
02c03d10  blr x9
02c03d14  ldr x0,[x19, #0x30]
02c03d18  cbz x0,0x02c03d50
02c03d1c  ldr s0,[x22, #0x4c]
02c03d20  mov w8,#0x42c80000
02c03d24  mov x1,xzr
02c03d28  fmov s1,w8
02c03d2c  scvtf s0,s0
02c03d30  fdiv s0,s0,s1
02c03d34  bl 0x02c28290
02c03d38  ldp x20,x19,[sp, #0x40]
02c03d3c  ldr x30,[sp, #0x10]
02c03d40  ldp x22,x21,[sp, #0x30]
02c03d44  ldp x24,x23,[sp, #0x20]
02c03d48  add sp,sp,#0x50
02c03d4c  ret
02c03d50  bl 0x029f5cfc
