02ca2b94  str x30,[sp, #-0x20]!
02ca2b98  stp x20,x19,[sp, #0x10]
02ca2b9c  adrp x20,0x625c000
02ca2ba0  mov x19,x0
02ca2ba4  ldrb w8,[x20, #0x499]
02ca2ba8  tbnz w8,#0x0,0x02ca2bcc
02ca2bac  adrp x0,0x5e5d000
02ca2bb0  ldr x0,[x0, #0xd40]
02ca2bb4  bl 0x029f5a50
02ca2bb8  adrp x0,0x5e59000
02ca2bbc  ldr x0,[x0, #0x1c0]
02ca2bc0  bl 0x029f5a50
02ca2bc4  mov w8,#0x1
02ca2bc8  strb w8,[x20, #0x499]
02ca2bcc  mov x0,x19
02ca2bd0  bl 0x02ca2b00
02ca2bd4  tbnz w0,#0x0,0x02ca2c24
02ca2bd8  mov x0,x19
02ca2bdc  bl 0x02ca2a04
02ca2be0  tbnz w0,#0x0,0x02ca2c24
02ca2be4  adrp x20,0x5e5d000
02ca2be8  adrp x8,0x5e59000
02ca2bec  ldr x20,[x20, #0xd40]
02ca2bf0  ldr x8,[x8, #0x1c0]
02ca2bf4  ldr x9,[x20]
02ca2bf8  ldr x0,[x8]
02ca2bfc  ldr x8,[x9, #0xb8]
02ca2c00  ldr w9,[x0, #0xe4]
02ca2c04  ldr x19,[x8]
02ca2c08  cbnz w9,0x02ca2c10
02ca2c0c  bl 0x029f5bd0
02ca2c10  mov x0,x19
02ca2c14  mov x1,xzr
02ca2c18  mov x2,xzr
02ca2c1c  bl 0x057e14b4
02ca2c20  tbz w0,#0x0,0x02ca2c34
02ca2c24  ldp x20,x19,[sp, #0x10]
02ca2c28  mov w0,wzr
02ca2c2c  ldr x30,[sp], #0x20
02ca2c30  ret
02ca2c34  ldr x8,[x20]
02ca2c38  ldr x8,[x8, #0xb8]
02ca2c3c  ldr x0,[x8]
02ca2c40  cbz x0,0x02ca2c58
02ca2c44  ldp x20,x19,[sp, #0x10]
02ca2c48  mov w1,#0x2
02ca2c4c  mov x2,xzr
02ca2c50  ldr x30,[sp], #0x20
02ca2c54  b 0x02c6a65c
02ca2c58  bl 0x029f5cfc
