02c49be0  stp x30,x21,[sp, #-0x20]!
02c49be4  stp x20,x19,[sp, #0x10]
02c49be8  adrp x21,0x625c000
02c49bec  adrp x20,0x5e5d000
02c49bf0  mov x19,x0
02c49bf4  ldrb w8,[x21, #0x10f]
02c49bf8  ldr x20,[x20, #0x338]
02c49bfc  tbnz w8,#0x0,0x02c49c14
02c49c00  adrp x0,0x5e5d000
02c49c04  ldr x0,[x0, #0x338]
02c49c08  bl 0x029f5a50
02c49c0c  mov w8,#0x1
02c49c10  strb w8,[x21, #0x10f]
02c49c14  ldr x0,[x20]
02c49c18  ldr w8,[x0, #0xe4]
02c49c1c  cbnz w8,0x02c49c28
02c49c20  bl 0x029f5bd0
02c49c24  ldr x0,[x20]
02c49c28  ldr x8,[x0, #0xb8]
02c49c2c  ldrb w9,[x8]
02c49c30  cbz w9,0x02c49ce0
02c49c34  ldr w9,[x0, #0xe4]
02c49c38  cbnz w9,0x02c49c48
02c49c3c  bl 0x029f5bd0
02c49c40  ldr x8,[x20]
02c49c44  ldr x8,[x8, #0xb8]
02c49c48  ldr x0,[x19, #0x98]
02c49c4c  strb wzr,[x8]
02c49c50  mov w8,#0x1
02c49c54  strb w8,[x19, #0x69]
02c49c58  cbz x0,0x02c49cec
02c49c5c  ldr w1,[x19, #0x64]
02c49c60  bl 0x02c49cf0
02c49c64  adrp x20,0x625b000
02c49c68  ldrb w8,[x20, #0xa57]
02c49c6c  cbnz w8,0x02c49c84
02c49c70  adrp x0,0x5e5d000
02c49c74  ldr x0,[x0, #0xd70]
02c49c78  bl 0x029f5a50
02c49c7c  mov w8,#0x1
02c49c80  strb w8,[x20, #0xa57]
02c49c84  adrp x8,0x5e5d000
02c49c88  ldr x8,[x8, #0xd70]
02c49c8c  ldr x8,[x8]
02c49c90  ldr x8,[x8, #0xb8]
02c49c94  ldr x0,[x8]
02c49c98  cbz x0,0x02c49cec
02c49c9c  fmov s0,0x3f800000
02c49ca0  mov w1,#0xb
02c49ca4  mov x2,xzr
02c49ca8  mov x3,xzr
02c49cac  bl 0x02c1f10c
02c49cb0  ldr x0,[x19, #0x38]
02c49cb4  cbz x0,0x02c49cec
02c49cb8  mov w1,#0x1
02c49cbc  mov x2,xzr
02c49cc0  bl 0x057dff3c
02c49cc4  mov x0,x19
02c49cc8  bl 0x02c49d80
02c49ccc  mov x0,x19
02c49cd0  ldp x20,x19,[sp, #0x10]
02c49cd4  mov w1,#0x1
02c49cd8  ldp x30,x21,[sp], #0x20
02c49cdc  b 0x02c49324
02c49ce0  ldp x20,x19,[sp, #0x10]
02c49ce4  ldp x30,x21,[sp], #0x20
02c49ce8  ret
02c49cec  bl 0x029f5cfc
