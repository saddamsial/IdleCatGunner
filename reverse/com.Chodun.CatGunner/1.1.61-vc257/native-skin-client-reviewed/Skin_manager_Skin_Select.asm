02ca7b7c  stp x30,x21,[sp, #-0x20]!
02ca7b80  stp x20,x19,[sp, #0x10]
02ca7b84  adrp x21,0x625c000
02ca7b88  mov w20,w1
02ca7b8c  mov x19,x0
02ca7b90  ldrb w8,[x21, #0x4e4]
02ca7b94  tbnz w8,#0x0,0x02ca7bac
02ca7b98  adrp x0,0x5e5d000
02ca7b9c  ldr x0,[x0, #0x5b0]
02ca7ba0  bl 0x029f5a50
02ca7ba4  mov w8,#0x1
02ca7ba8  strb w8,[x21, #0x4e4]
02ca7bac  mov x0,x19
02ca7bb0  mov w1,w20
02ca7bb4  bl 0x02ca7ac4
02ca7bb8  tbz w0,#0x0,0x02ca7c4c
02ca7bbc  ldr x0,[x19, #0x70]
02ca7bc0  str w20,[x19, #0x30]
02ca7bc4  cbz x0,0x02ca7c58
02ca7bc8  ldr w1,[x0, #0x20]
02ca7bcc  bl 0x02ca7f64
02ca7bd0  adrp x8,0x5e5d000
02ca7bd4  ldr x8,[x8, #0x5b0]
02ca7bd8  ldr x8,[x8]
02ca7bdc  ldr x8,[x8, #0xb8]
02ca7be0  ldr x0,[x8, #0x8]
02ca7be4  cbz x0,0x02ca7c58
02ca7be8  mov x1,xzr
02ca7bec  bl 0x02c44944
02ca7bf0  adrp x20,0x625b000
02ca7bf4  ldrb w8,[x20, #0xa57]
02ca7bf8  cbnz w8,0x02ca7c10
02ca7bfc  adrp x0,0x5e5d000
02ca7c00  ldr x0,[x0, #0xd70]
02ca7c04  bl 0x029f5a50
02ca7c08  mov w8,#0x1
02ca7c0c  strb w8,[x20, #0xa57]
02ca7c10  adrp x8,0x5e5d000
02ca7c14  ldr x8,[x8, #0xd70]
02ca7c18  ldr x8,[x8]
02ca7c1c  ldr x8,[x8, #0xb8]
02ca7c20  ldr x0,[x8]
02ca7c24  cbz x0,0x02ca7c58
02ca7c28  fmov s0,0x3f800000
02ca7c2c  mov w1,#0x9
02ca7c30  mov x2,xzr
02ca7c34  mov x3,xzr
02ca7c38  bl 0x02c1f10c
02ca7c3c  mov x0,x19
02ca7c40  ldp x20,x19,[sp, #0x10]
02ca7c44  ldp x30,x21,[sp], #0x20
02ca7c48  b 0x02ca7b10
02ca7c4c  ldp x20,x19,[sp, #0x10]
02ca7c50  ldp x30,x21,[sp], #0x20
02ca7c54  ret
02ca7c58  bl 0x029f5cfc
