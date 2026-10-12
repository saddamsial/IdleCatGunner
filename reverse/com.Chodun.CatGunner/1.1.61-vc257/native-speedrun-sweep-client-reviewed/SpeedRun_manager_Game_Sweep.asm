02ca9adc  str x30,[sp, #-0x30]!
02ca9ae0  stp x22,x21,[sp, #0x10]
02ca9ae4  stp x20,x19,[sp, #0x20]
02ca9ae8  adrp x20,0x625c000
02ca9aec  mov x19,x0
02ca9af0  ldrb w8,[x20, #0x4fd]
02ca9af4  tbnz w8,#0x0,0x02ca9b24
02ca9af8  adrp x0,0x5e5d000
02ca9afc  ldr x0,[x0, #0x338]
02ca9b00  bl 0x029f5a50
02ca9b04  adrp x0,0x5e5d000
02ca9b08  ldr x0,[x0, #0x920]
02ca9b0c  bl 0x029f5a50
02ca9b10  adrp x0,0x5e5d000
02ca9b14  ldr x0,[x0, #0xd68]
02ca9b18  bl 0x029f5a50
02ca9b1c  mov w8,#0x1
02ca9b20  strb w8,[x20, #0x4fd]
02ca9b24  mov x0,x19
02ca9b28  bl 0x02ca985c
02ca9b2c  tbz w0,#0x0,0x02ca9bbc
02ca9b30  adrp x20,0x5e5d000
02ca9b34  adrp x21,0x5e5d000
02ca9b38  mov w9,#0x1
02ca9b3c  ldr x20,[x20, #0x920]
02ca9b40  ldr w8,[x19, #0x30]
02ca9b44  strh wzr,[x19, #0x54]
02ca9b48  ldr x21,[x21, #0xd68]
02ca9b4c  mov x0,x19
02ca9b50  mov w1,#0x1
02ca9b54  strb wzr,[x19, #0x56]
02ca9b58  str w8,[x19, #0x50]
02ca9b5c  strb w9,[x19, #0xc8]
02ca9b60  bl 0x02ca86cc
02ca9b64  ldr x0,[x20]
02ca9b68  ldr w8,[x19, #0x30]
02ca9b6c  ldr w9,[x0, #0xe4]
02ca9b70  add w8,w8,#0x1
02ca9b74  str w8,[x19, #0x30]
02ca9b78  cbnz w9,0x02ca9b80
02ca9b7c  bl 0x029f5bd0
02ca9b80  adrp x22,0x5e5d000
02ca9b84  mov x0,xzr
02ca9b88  ldr x22,[x22, #0x338]
02ca9b8c  bl 0x02c92704
02ca9b90  mov w20,w0
02ca9b94  ldr x0,[x21]
02ca9b98  ldr w8,[x0, #0xe4]
02ca9b9c  tbz w20,#0x0,0x02ca9bcc
02ca9ba0  cbnz w8,0x02ca9bac
02ca9ba4  bl 0x029f5bd0
02ca9ba8  ldr x0,[x21]
02ca9bac  ldr x8,[x0, #0xb8]
02ca9bb0  ldr w8,[x8]
02ca9bb4  lsl w21,w8,#0x2
02ca9bb8  b 0x02ca9be0
02ca9bbc  ldp x20,x19,[sp, #0x20]
02ca9bc0  ldp x22,x21,[sp, #0x10]
02ca9bc4  ldr x30,[sp], #0x30
02ca9bc8  ret
02ca9bcc  cbnz w8,0x02ca9bd8
02ca9bd0  bl 0x029f5bd0
02ca9bd4  ldr x0,[x21]
02ca9bd8  ldr x8,[x0, #0xb8]
02ca9bdc  ldr w21,[x8]
02ca9be0  ldr x0,[x22]
02ca9be4  ldr w8,[x0, #0xe4]
02ca9be8  cbnz w8,0x02ca9bf0
02ca9bec  bl 0x029f5bd0
02ca9bf0  mov w0,w21
02ca9bf4  mov x1,xzr
02ca9bf8  bl 0x02b7ed10
02ca9bfc  ldr x0,[x19, #0xc0]
02ca9c00  cbz x0,0x02ca9cb4
02ca9c04  eor w21,w20,#0x1
02ca9c08  mov x2,xzr
02ca9c0c  and w1,w21,#0x1
02ca9c10  bl 0x057dff3c
02ca9c14  ldr x0,[x19, #0xb0]
02ca9c18  cbz x0,0x02ca9cb4
02ca9c1c  and w1,w21,#0x1
02ca9c20  mov x2,xzr
02ca9c24  bl 0x057dff3c
02ca9c28  ldr x0,[x19, #0xb8]
02ca9c2c  cbz x0,0x02ca9cb4
02ca9c30  and w1,w20,#0x1
02ca9c34  mov x2,xzr
02ca9c38  bl 0x057dff3c
02ca9c3c  adrp x20,0x625b000
02ca9c40  ldrb w8,[x20, #0xa57]
02ca9c44  cbnz w8,0x02ca9c5c
02ca9c48  adrp x0,0x5e5d000
02ca9c4c  ldr x0,[x0, #0xd70]
02ca9c50  bl 0x029f5a50
02ca9c54  mov w8,#0x1
02ca9c58  strb w8,[x20, #0xa57]
02ca9c5c  adrp x8,0x5e5d000
02ca9c60  ldr x8,[x8, #0xd70]
02ca9c64  ldr x8,[x8]
02ca9c68  ldr x8,[x8, #0xb8]
02ca9c6c  ldr x0,[x8]
02ca9c70  cbz x0,0x02ca9cb4
02ca9c74  fmov s0,0x3f800000
02ca9c78  mov w1,#0xb
02ca9c7c  mov x2,xzr
02ca9c80  mov x3,xzr
02ca9c84  bl 0x02c1f10c
02ca9c88  ldr x0,[x19, #0xa8]
02ca9c8c  cbz x0,0x02ca9cb4
02ca9c90  mov w1,#0x1
02ca9c94  mov x2,xzr
02ca9c98  bl 0x057dff3c
02ca9c9c  ldr x0,[x19, #0x48]
02ca9ca0  cbz x0,0x02ca9cb4
02ca9ca4  ldp x20,x19,[sp, #0x20]
02ca9ca8  ldp x22,x21,[sp, #0x10]
02ca9cac  ldr x30,[sp], #0x30
02ca9cb0  b 0x02ca9cb8
02ca9cb4  bl 0x029f5cfc
