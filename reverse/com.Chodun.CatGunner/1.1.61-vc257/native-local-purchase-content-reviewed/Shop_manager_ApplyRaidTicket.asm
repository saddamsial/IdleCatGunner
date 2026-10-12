02c95bd4  str x30,[sp, #-0x20]!
02c95bd8  stp x20,x19,[sp, #0x10]
02c95bdc  adrp x19,0x625c000
02c95be0  adrp x20,0x5e5e000
02c95be4  ldrb w8,[x19, #0x431]
02c95be8  ldr x20,[x20, #0x70]
02c95bec  tbnz w8,#0x0,0x02c95c28
02c95bf0  adrp x0,0x5e58000
02c95bf4  ldr x0,[x0, #0xf08]
02c95bf8  bl 0x029f5a50
02c95bfc  adrp x0,0x5e59000
02c95c00  ldr x0,[x0, #0x1c0]
02c95c04  bl 0x029f5a50
02c95c08  adrp x0,0x5e5e000
02c95c0c  ldr x0,[x0, #0x70]
02c95c10  bl 0x029f5a50
02c95c14  adrp x0,0x5e64000
02c95c18  ldr x0,[x0, #0x348]
02c95c1c  bl 0x029f5a50
02c95c20  mov w8,#0x1
02c95c24  strb w8,[x19, #0x431]
02c95c28  ldr x0,[x20]
02c95c2c  adrp x19,0x5e59000
02c95c30  ldr w8,[x0, #0xe4]
02c95c34  ldr x19,[x19, #0x1c0]
02c95c38  cbnz w8,0x02c95c44
02c95c3c  bl 0x029f5bd0
02c95c40  ldr x0,[x20]
02c95c44  ldr x8,[x19]
02c95c48  ldr x9,[x0, #0xb8]
02c95c4c  ldr w10,[x8, #0xe4]
02c95c50  ldr x19,[x9]
02c95c54  cbnz w10,0x02c95c60
02c95c58  mov x0,x8
02c95c5c  bl 0x029f5bd0
02c95c60  mov x0,x19
02c95c64  mov x1,xzr
02c95c68  mov x2,xzr
02c95c6c  bl 0x057e14b4
02c95c70  tbz w0,#0x0,0x02c95cb0
02c95c74  adrp x8,0x5e58000
02c95c78  adrp x19,0x5e64000
02c95c7c  ldr x8,[x8, #0xf08]
02c95c80  ldr x0,[x8]
02c95c84  ldr w8,[x0, #0xe4]
02c95c88  ldr x19,[x19, #0x348]
02c95c8c  cbnz w8,0x02c95c94
02c95c90  bl 0x029f5bd0
02c95c94  ldr x0,[x19]
02c95c98  mov x1,xzr
02c95c9c  bl 0x0579a8d0
02c95ca0  ldp x20,x19,[sp, #0x10]
02c95ca4  mov w0,wzr
02c95ca8  ldr x30,[sp], #0x20
02c95cac  ret
02c95cb0  ldr x0,[x20]
02c95cb4  ldr w8,[x0, #0xe4]
02c95cb8  cbnz w8,0x02c95cc4
02c95cbc  bl 0x029f5bd0
02c95cc0  ldr x0,[x20]
02c95cc4  ldr x8,[x0, #0xb8]
02c95cc8  ldr x0,[x8]
02c95ccc  cbz x0,0x02c95ce0
02c95cd0  ldp x20,x19,[sp, #0x10]
02c95cd4  mov x1,xzr
02c95cd8  ldr x30,[sp], #0x20
02c95cdc  b 0x02c57d68
02c95ce0  bl 0x029f5cfc
