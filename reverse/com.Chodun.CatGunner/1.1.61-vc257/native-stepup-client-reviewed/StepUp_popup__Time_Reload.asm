02ca4bec  str x30,[sp, #-0x30]!
02ca4bf0  stp x22,x21,[sp, #0x10]
02ca4bf4  stp x20,x19,[sp, #0x20]
02ca4bf8  adrp x20,0x625c000
02ca4bfc  adrp x21,0x5e59000
02ca4c00  mov x19,x0
02ca4c04  ldrb w8,[x20, #0x4b3]
02ca4c08  ldr x21,[x21, #0x1c0]
02ca4c0c  tbnz w8,#0x0,0x02ca4c30
02ca4c10  adrp x0,0x5e59000
02ca4c14  ldr x0,[x0, #0x1c0]
02ca4c18  bl 0x029f5a50
02ca4c1c  adrp x0,0x5e5e000
02ca4c20  ldr x0,[x0, #0x4b8]
02ca4c24  bl 0x029f5a50
02ca4c28  mov w8,#0x1
02ca4c2c  strb w8,[x20, #0x4b3]
02ca4c30  ldr x0,[x21]
02ca4c34  ldr x20,[x19, #0x20]
02ca4c38  ldr w8,[x0, #0xe4]
02ca4c3c  cbnz w8,0x02ca4c44
02ca4c40  bl 0x029f5bd0
02ca4c44  mov x0,x20
02ca4c48  mov x1,xzr
02ca4c4c  mov x2,xzr
02ca4c50  bl 0x057e14b4
02ca4c54  tbnz w0,#0x0,0x02ca4ca4
02ca4c58  adrp x22,0x5e5e000
02ca4c5c  ldr x22,[x22, #0x4b8]
02ca4c60  ldr x0,[x22]
02ca4c64  ldr w8,[x0, #0xe4]
02ca4c68  cbnz w8,0x02ca4c74
02ca4c6c  bl 0x029f5bd0
02ca4c70  ldr x0,[x22]
02ca4c74  ldr x8,[x21]
02ca4c78  ldr x9,[x0, #0xb8]
02ca4c7c  ldr w10,[x8, #0xe4]
02ca4c80  ldr x20,[x9]
02ca4c84  cbnz w10,0x02ca4c90
02ca4c88  mov x0,x8
02ca4c8c  bl 0x029f5bd0
02ca4c90  mov x0,x20
02ca4c94  mov x1,xzr
02ca4c98  mov x2,xzr
02ca4c9c  bl 0x057e14b4
02ca4ca0  tbz w0,#0x0,0x02ca4cb4
02ca4ca4  ldp x20,x19,[sp, #0x20]
02ca4ca8  ldp x22,x21,[sp, #0x10]
02ca4cac  ldr x30,[sp], #0x30
02ca4cb0  ret
02ca4cb4  ldr x0,[x22]
02ca4cb8  ldr x19,[x19, #0x20]
02ca4cbc  ldr w8,[x0, #0xe4]
02ca4cc0  cbnz w8,0x02ca4ccc
02ca4cc4  bl 0x029f5bd0
02ca4cc8  ldr x0,[x22]
02ca4ccc  ldr x8,[x0, #0xb8]
02ca4cd0  ldr x0,[x8]
02ca4cd4  cbz x0,0x02ca4d08
02ca4cd8  bl 0x02ca28c8
02ca4cdc  bl 0x02ca37d8
02ca4ce0  cbz x19,0x02ca4d08
02ca4ce4  ldr x8,[x19]
02ca4ce8  mov x1,x0
02ca4cec  mov x0,x19
02ca4cf0  ldp x20,x19,[sp, #0x20]
02ca4cf4  ldp x22,x21,[sp, #0x10]
02ca4cf8  ldr x2,[x8, #0x560]
02ca4cfc  ldr x3,[x8, #0x558]
02ca4d00  ldr x30,[sp], #0x30
02ca4d04  br x3
02ca4d08  bl 0x029f5cfc
