02c54b9c  stp x30,x23,[sp, #-0x30]!
02c54ba0  stp x22,x21,[sp, #0x10]
02c54ba4  stp x20,x19,[sp, #0x20]
02c54ba8  adrp x21,0x625c000
02c54bac  mov x19,x1
02c54bb0  mov x20,x0
02c54bb4  ldrb w8,[x21, #0x17e]
02c54bb8  tbnz w8,#0x0,0x02c54bdc
02c54bbc  adrp x0,0x5e59000
02c54bc0  ldr x0,[x0, #0x1c0]
02c54bc4  bl 0x029f5a50
02c54bc8  adrp x0,0x5e5d000
02c54bcc  ldr x0,[x0, #0x920]
02c54bd0  bl 0x029f5a50
02c54bd4  mov w8,#0x1
02c54bd8  strb w8,[x21, #0x17e]
02c54bdc  adrp x23,0x5e59000
02c54be0  mov x0,x20
02c54be4  ldr x23,[x23, #0x1c0]
02c54be8  bl 0x02c53fc0
02c54bec  ldrb w8,[x20, #0x48]
02c54bf0  cbz w8,0x02c54c98
02c54bf4  adrp x20,0x625b000
02c54bf8  ldrb w8,[x20, #0xa57]
02c54bfc  cbnz w8,0x02c54c14
02c54c00  adrp x0,0x5e5d000
02c54c04  ldr x0,[x0, #0xd70]
02c54c08  bl 0x029f5a50
02c54c0c  mov w8,#0x1
02c54c10  strb w8,[x20, #0xa57]
02c54c14  adrp x21,0x5e5d000
02c54c18  ldr x21,[x21, #0xd70]
02c54c1c  ldr x0,[x23]
02c54c20  ldr x8,[x21]
02c54c24  ldr w9,[x0, #0xe4]
02c54c28  ldr x8,[x8, #0xb8]
02c54c2c  ldr x19,[x8]
02c54c30  cbnz w9,0x02c54c38
02c54c34  bl 0x029f5bd0
02c54c38  mov x0,x19
02c54c3c  mov x1,xzr
02c54c40  mov x2,xzr
02c54c44  bl 0x057dfa70
02c54c48  tbz w0,#0x0,0x02c54d14
02c54c4c  ldrb w8,[x20, #0xa57]
02c54c50  cbnz w8,0x02c54c68
02c54c54  adrp x0,0x5e5d000
02c54c58  ldr x0,[x0, #0xd70]
02c54c5c  bl 0x029f5a50
02c54c60  mov w8,#0x1
02c54c64  strb w8,[x20, #0xa57]
02c54c68  ldr x8,[x21]
02c54c6c  ldr x8,[x8, #0xb8]
02c54c70  ldr x0,[x8]
02c54c74  cbz x0,0x02c54d88
02c54c78  ldp x20,x19,[sp, #0x20]
02c54c7c  fmov s0,0x3f800000
02c54c80  ldp x22,x21,[sp, #0x10]
02c54c84  mov w1,#0x5
02c54c88  mov x2,xzr
02c54c8c  mov x3,xzr
02c54c90  ldp x30,x23,[sp], #0x30
02c54c94  b 0x02c1f10c
02c54c98  adrp x21,0x5e5d000
02c54c9c  ldr x21,[x21, #0x920]
02c54ca0  ldr x0,[x21]
02c54ca4  ldr w8,[x0, #0xe4]
02c54ca8  cbnz w8,0x02c54cb0
02c54cac  bl 0x029f5bd0
02c54cb0  adrp x22,0x625b000
02c54cb4  ldrb w8,[x22, #0x960]
02c54cb8  cbnz w8,0x02c54cd0
02c54cbc  adrp x0,0x5e5d000
02c54cc0  ldr x0,[x0, #0x920]
02c54cc4  bl 0x029f5a50
02c54cc8  mov w8,#0x1
02c54ccc  strb w8,[x22, #0x960]
02c54cd0  ldr x0,[x21]
02c54cd4  ldr w8,[x0, #0xe4]
02c54cd8  cbnz w8,0x02c54ce4
02c54cdc  bl 0x029f5bd0
02c54ce0  ldr x0,[x21]
02c54ce4  ldr x8,[x23]
02c54ce8  ldr x9,[x0, #0xb8]
02c54cec  ldr w10,[x8, #0xe4]
02c54cf0  ldr x20,[x9]
02c54cf4  cbnz w10,0x02c54d00
02c54cf8  mov x0,x8
02c54cfc  bl 0x029f5bd0
02c54d00  mov x0,x20
02c54d04  mov x1,xzr
02c54d08  mov x2,xzr
02c54d0c  bl 0x057e14b4
02c54d10  tbz w0,#0x0,0x02c54d24
02c54d14  ldp x20,x19,[sp, #0x20]
02c54d18  ldp x22,x21,[sp, #0x10]
02c54d1c  ldp x30,x23,[sp], #0x30
02c54d20  ret
02c54d24  ldr x0,[x21]
02c54d28  ldr w8,[x0, #0xe4]
02c54d2c  cbnz w8,0x02c54d34
02c54d30  bl 0x029f5bd0
02c54d34  ldrb w8,[x22, #0x960]
02c54d38  cbnz w8,0x02c54d50
02c54d3c  adrp x0,0x5e5d000
02c54d40  ldr x0,[x0, #0x920]
02c54d44  bl 0x029f5a50
02c54d48  mov w8,#0x1
02c54d4c  strb w8,[x22, #0x960]
02c54d50  ldr x0,[x21]
02c54d54  ldr w8,[x0, #0xe4]
02c54d58  cbnz w8,0x02c54d64
02c54d5c  bl 0x029f5bd0
02c54d60  ldr x0,[x21]
02c54d64  ldr x8,[x0, #0xb8]
02c54d68  ldr x0,[x8]
02c54d6c  cbz x0,0x02c54d88
02c54d70  mov x1,x19
02c54d74  ldp x20,x19,[sp, #0x20]
02c54d78  ldp x22,x21,[sp, #0x10]
02c54d7c  mov x2,xzr
02c54d80  ldp x30,x23,[sp], #0x30
02c54d84  b 0x02c9ca50
02c54d88  bl 0x029f5cfc
