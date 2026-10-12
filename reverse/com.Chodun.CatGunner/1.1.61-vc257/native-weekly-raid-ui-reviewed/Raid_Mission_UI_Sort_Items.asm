02c55b48  stp x29,x30,[sp, #-0x60]!
02c55b4c  stp x28,x27,[sp, #0x10]
02c55b50  stp x26,x25,[sp, #0x20]
02c55b54  stp x24,x23,[sp, #0x30]
02c55b58  stp x22,x21,[sp, #0x40]
02c55b5c  stp x20,x19,[sp, #0x50]
02c55b60  adrp x21,0x625c000
02c55b64  adrp x22,0x5e63000
02c55b68  mov x20,x1
02c55b6c  ldrb w8,[x21, #0x18e]
02c55b70  ldr x22,[x22, #0x638]
02c55b74  mov x19,x0
02c55b78  tbnz w8,#0x0,0x02c55bd8
02c55b7c  adrp x0,0x5e5e000
02c55b80  ldr x0,[x0, #0x750]
02c55b84  bl 0x029f5a50
02c55b88  adrp x0,0x5e5e000
02c55b8c  ldr x0,[x0, #0x758]
02c55b90  bl 0x029f5a50
02c55b94  adrp x0,0x5e5d000
02c55b98  ldr x0,[x0, #0x790]
02c55b9c  bl 0x029f5a50
02c55ba0  adrp x0,0x5e63000
02c55ba4  ldr x0,[x0, #0x640]
02c55ba8  bl 0x029f5a50
02c55bac  adrp x0,0x5e59000
02c55bb0  ldr x0,[x0, #0x1c0]
02c55bb4  bl 0x029f5a50
02c55bb8  adrp x0,0x5e63000
02c55bbc  ldr x0,[x0, #0x648]
02c55bc0  bl 0x029f5a50
02c55bc4  adrp x0,0x5e63000
02c55bc8  ldr x0,[x0, #0x638]
02c55bcc  bl 0x029f5a50
02c55bd0  mov w8,#0x1
02c55bd4  strb w8,[x21, #0x18e]
02c55bd8  ldr x0,[x22]
02c55bdc  bl 0x029f5cec
02c55be0  mov x1,xzr
02c55be4  mov x21,x0
02c55be8  bl 0x04893238
02c55bec  cbz x21,0x02c55e00
02c55bf0  mov x22,x21
02c55bf4  mov x1,x20
02c55bf8  str x20,[x22, #0x20]!
02c55bfc  mov x0,x22
02c55c00  bl 0x029f59f4
02c55c04  ldr x8,[x19, #0x20]
02c55c08  cbz x8,0x02c55e00
02c55c0c  ldr x9,[x22]
02c55c10  cbz x9,0x02c55e00
02c55c14  adrp x10,0x5e63000
02c55c18  adrp x20,0x5e5d000
02c55c1c  adrp x29,0x5e5e000
02c55c20  ldr x10,[x10, #0x640]
02c55c24  adrp x28,0x5e63000
02c55c28  adrp x25,0x5e5e000
02c55c2c  ldr x20,[x20, #0x790]
02c55c30  ldr x29,[x29, #0x758]
02c55c34  ldr x28,[x28, #0x648]
02c55c38  ldr x25,[x25, #0x750]
02c55c3c  ldr x23,[x8, #0x18]
02c55c40  ldrb w9,[x9, #0x48]
02c55c44  ldr x0,[x10]
02c55c48  mov w1,w23
02c55c4c  strb w9,[x21, #0x10]
02c55c50  bl 0x029f5b40
02c55c54  mov x24,x21
02c55c58  mov x1,x0
02c55c5c  str x0,[x24, #0x18]!
02c55c60  mov x0,x24
02c55c64  bl 0x029f59f4
02c55c68  ldr x0,[x20]
02c55c6c  mov w1,w23
02c55c70  bl 0x029f5b40
02c55c74  cmp w23,#0x1
02c55c78  mov x20,x0
02c55c7c  b.lt 0x02c55dbc
02c55c80  cbz x20,0x02c55e00
02c55c84  mov x25,xzr
02c55c88  and x26,x23,#0xffffffff
02c55c8c  ldr w8,[x20, #0x18]
02c55c90  cmp x25,x8
02c55c94  b.cs 0x02c55e04
02c55c98  add x8,x20,x25, LSL #0x2
02c55c9c  ldr x0,[x22]
02c55ca0  str w25,[x8, #0x20]
02c55ca4  cbz x0,0x02c55e00
02c55ca8  ldr x27,[x24]
02c55cac  mov w1,w25
02c55cb0  bl 0x02c53078
02c55cb4  cbz x27,0x02c55e00
02c55cb8  ldr w8,[x27, #0x18]
02c55cbc  cmp x25,x8
02c55cc0  b.cs 0x02c55e04
02c55cc4  add x8,x27,x25, LSL #0x2
02c55cc8  add x25,x25,#0x1
02c55ccc  cmp x26,x25
02c55cd0  str w0,[x8, #0x20]
02c55cd4  b.ne 0x02c55c8c
02c55cd8  ldr x0,[x29]
02c55cdc  bl 0x029f5cec
02c55ce0  ldr x2,[x28]
02c55ce4  mov x1,x21
02c55ce8  mov x3,xzr
02c55cec  mov x22,x0
02c55cf0  bl 0x03cf77bc
02c55cf4  adrp x8,0x5e5e000
02c55cf8  mov x0,x20
02c55cfc  mov x1,x22
02c55d00  ldr x8,[x8, #0x750]
02c55d04  ldr x2,[x8]
02c55d08  bl 0x02f4973c
02c55d0c  cmp w23,#0x1
02c55d10  b.lt 0x02c55da0
02c55d14  adrp x23,0x5e59000
02c55d18  mov x21,xzr
02c55d1c  add x24,x20,#0x20
02c55d20  ldr x23,[x23, #0x1c0]
02c55d24  ldr w8,[x20, #0x18]
02c55d28  cmp w21,w8
02c55d2c  b.cs 0x02c55e04
02c55d30  ldr x8,[x19, #0x20]
02c55d34  cbz x8,0x02c55e00
02c55d38  ldrsw x9,[x24, x21, LSL #0x2]
02c55d3c  ldr w10,[x8, #0x18]
02c55d40  cmp w9,w10
02c55d44  b.cs 0x02c55e04
02c55d48  ldr x0,[x23]
02c55d4c  add x8,x8,x9, LSL #0x3
02c55d50  ldr w9,[x0, #0xe4]
02c55d54  ldr x22,[x8, #0x20]
02c55d58  cbnz w9,0x02c55d60
02c55d5c  bl 0x029f5bd0
02c55d60  mov x0,x22
02c55d64  mov x1,xzr
02c55d68  mov x2,xzr
02c55d6c  bl 0x057dfa70
02c55d70  tbz w0,#0x0,0x02c55d94
02c55d74  cbz x22,0x02c55e00
02c55d78  mov x0,x22
02c55d7c  mov x1,xzr
02c55d80  bl 0x057dc0f8
02c55d84  cbz x0,0x02c55e00
02c55d88  mov w1,w21
02c55d8c  mov x2,xzr
02c55d90  bl 0x057f0be8
02c55d94  add x21,x21,#0x1
02c55d98  cmp w26,w21
02c55d9c  b.ne 0x02c55d24
02c55da0  ldp x20,x19,[sp, #0x50]
02c55da4  ldp x22,x21,[sp, #0x40]
02c55da8  ldp x24,x23,[sp, #0x30]
02c55dac  ldp x26,x25,[sp, #0x20]
02c55db0  ldp x28,x27,[sp, #0x10]
02c55db4  ldp x29,x30,[sp], #0x60
02c55db8  ret
02c55dbc  ldr x0,[x29]
02c55dc0  bl 0x029f5cec
02c55dc4  ldr x2,[x28]
02c55dc8  mov x1,x21
02c55dcc  mov x3,xzr
02c55dd0  mov x19,x0
02c55dd4  bl 0x03cf77bc
02c55dd8  ldr x2,[x25]
02c55ddc  mov x0,x20
02c55de0  mov x1,x19
02c55de4  ldp x20,x19,[sp, #0x50]
02c55de8  ldp x22,x21,[sp, #0x40]
02c55dec  ldp x24,x23,[sp, #0x30]
02c55df0  ldp x26,x25,[sp, #0x20]
02c55df4  ldp x28,x27,[sp, #0x10]
02c55df8  ldp x29,x30,[sp], #0x60
02c55dfc  b 0x02f4973c
02c55e00  bl 0x029f5cfc
02c55e04  bl 0x029f5d04
