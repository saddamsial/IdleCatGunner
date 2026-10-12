02c37bac  stp x30,x21,[sp, #-0x20]!
02c37bb0  stp x20,x19,[sp, #0x10]
02c37bb4  adrp x21,0x625c000
02c37bb8  adrp x20,0x5e5d000
02c37bbc  mov x19,x0
02c37bc0  ldrb w8,[x21, #0x77]
02c37bc4  ldr x20,[x20, #0x4c0]
02c37bc8  tbnz w8,#0x0,0x02c37be0
02c37bcc  adrp x0,0x5e5d000
02c37bd0  ldr x0,[x0, #0x4c0]
02c37bd4  bl 0x029f5a50
02c37bd8  mov w8,#0x1
02c37bdc  strb w8,[x21, #0x77]
02c37be0  ldr x0,[x20]
02c37be4  mov x9,xzr
02c37be8  ldr w8,[x0, #0xe4]
02c37bec  mov x21,x9
02c37bf0  cbnz w8,0x02c37bfc
02c37bf4  bl 0x029f5bd0
02c37bf8  ldr x0,[x20]
02c37bfc  ldr x8,[x0, #0xb8]
02c37c00  ldrsw x8,[x8, #0x8]
02c37c04  cmp x21,x8
02c37c08  b.ge 0x02c37c34
02c37c0c  ldr x9,[x19, #0x38]
02c37c10  cbz x9,0x02c37c4c
02c37c14  ldr w10,[x9, #0x18]
02c37c18  cmp x21,x10
02c37c1c  b.cs 0x02c37c48
02c37c20  add x9,x9,x21, LSL #0x2
02c37c24  ldr s0,[x9, #0x20]
02c37c28  add x9,x21,#0x1
02c37c2c  fcmp s0,#0.0
02c37c30  b.le 0x02c37be8
02c37c34  ldp x20,x19,[sp, #0x10]
02c37c38  cmp x21,x8
02c37c3c  cset w0,lt
02c37c40  ldp x30,x21,[sp], #0x20
02c37c44  ret
02c37c48  bl 0x029f5d04
02c37c4c  bl 0x029f5cfc
