02c04bc0  stp x30,x23,[sp, #-0x30]!
02c04bc4  stp x22,x21,[sp, #0x10]
02c04bc8  stp x20,x19,[sp, #0x20]
02c04bcc  adrp x21,0x625b000
02c04bd0  adrp x20,0x5e5d000
02c04bd4  mov x19,x0
02c04bd8  ldrb w8,[x21, #0xe66]
02c04bdc  ldr x20,[x20, #0xd50]
02c04be0  tbnz w8,#0x0,0x02c04c28
02c04be4  adrp x0,0x5e59000
02c04be8  ldr x0,[x0, #0x760]
02c04bec  bl 0x029f5a50
02c04bf0  adrp x0,0x5e59000
02c04bf4  ldr x0,[x0, #0x7d0]
02c04bf8  bl 0x029f5a50
02c04bfc  adrp x0,0x5e5d000
02c04c00  ldr x0,[x0, #0xd50]
02c04c04  bl 0x029f5a50
02c04c08  adrp x0,0x5e61000
02c04c0c  ldr x0,[x0, #0xf30]
02c04c10  bl 0x029f5a50
02c04c14  adrp x0,0x5e61000
02c04c18  ldr x0,[x0, #0xf38]
02c04c1c  bl 0x029f5a50
02c04c20  mov w8,#0x1
02c04c24  strb w8,[x21, #0xe66]
02c04c28  ldr x0,[x20]
02c04c2c  ldr w8,[x0, #0xe4]
02c04c30  cbnz w8,0x02c04c3c
02c04c34  bl 0x029f5bd0
02c04c38  ldr x0,[x20]
02c04c3c  ldr x8,[x0, #0xb8]
02c04c40  ldr x21,[x8, #0x8]
02c04c44  cbz x21,0x02c04cec
02c04c48  adrp x8,0x5e59000
02c04c4c  adrp x20,0x5e59000
02c04c50  ldr x8,[x8, #0x760]
02c04c54  ldr x0,[x8]
02c04c58  ldr w8,[x0, #0xe4]
02c04c5c  ldr x20,[x20, #0x7d0]
02c04c60  cbnz w8,0x02c04c68
02c04c64  bl 0x029f5bd0
02c04c68  adrp x23,0x5e61000
02c04c6c  adrp x22,0x5e61000
02c04c70  mov x0,xzr
02c04c74  ldr x23,[x23, #0xf38]
02c04c78  ldr x22,[x22, #0xf30]
02c04c7c  bl 0x047e2b38
02c04c80  ldr x8,[x20]
02c04c84  mov x20,x0
02c04c88  ldr w9,[x8, #0xe4]
02c04c8c  cbnz w9,0x02c04c98
02c04c90  mov x0,x8
02c04c94  bl 0x029f5bd0
02c04c98  ldr x1,[x23]
02c04c9c  add x0,x21,#0x68
02c04ca0  mov x2,x20
02c04ca4  mov x3,xzr
02c04ca8  bl 0x04832440
02c04cac  ldr x8,[x22]
02c04cb0  ldr x19,[x19, #0x28]
02c04cb4  mov x1,x0
02c04cb8  mov x2,xzr
02c04cbc  mov x0,x8
02c04cc0  bl 0x046b6c0c
02c04cc4  cbz x19,0x02c04cec
02c04cc8  ldr x8,[x19]
02c04ccc  mov x1,x0
02c04cd0  mov x0,x19
02c04cd4  ldp x20,x19,[sp, #0x20]
02c04cd8  ldp x22,x21,[sp, #0x10]
02c04cdc  ldr x2,[x8, #0x560]
02c04ce0  ldr x3,[x8, #0x558]
02c04ce4  ldp x30,x23,[sp], #0x30
02c04ce8  br x3
02c04cec  bl 0x029f5cfc
