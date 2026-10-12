02ca3c48  str x30,[sp, #-0x30]!
02ca3c4c  stp x22,x21,[sp, #0x10]
02ca3c50  stp x20,x19,[sp, #0x20]
02ca3c54  adrp x20,0x625c000
02ca3c58  adrp x21,0x5e59000
02ca3c5c  mov x19,x0
02ca3c60  ldrb w8,[x20, #0x4a6]
02ca3c64  ldr x21,[x21, #0x1c0]
02ca3c68  tbnz w8,#0x0,0x02ca3c8c
02ca3c6c  adrp x0,0x5e59000
02ca3c70  ldr x0,[x0, #0x1c0]
02ca3c74  bl 0x029f5a50
02ca3c78  adrp x0,0x5e5e000
02ca3c7c  ldr x0,[x0, #0x4b8]
02ca3c80  bl 0x029f5a50
02ca3c84  mov w8,#0x1
02ca3c88  strb w8,[x20, #0x4a6]
02ca3c8c  ldr x0,[x21]
02ca3c90  ldr x20,[x19, #0x20]
02ca3c94  ldr w8,[x0, #0xe4]
02ca3c98  cbnz w8,0x02ca3ca0
02ca3c9c  bl 0x029f5bd0
02ca3ca0  mov x0,x20
02ca3ca4  mov x1,xzr
02ca3ca8  mov x2,xzr
02ca3cac  bl 0x057e14b4
02ca3cb0  tbnz w0,#0x0,0x02ca3d00
02ca3cb4  adrp x22,0x5e5e000
02ca3cb8  ldr x22,[x22, #0x4b8]
02ca3cbc  ldr x0,[x22]
02ca3cc0  ldr w8,[x0, #0xe4]
02ca3cc4  cbnz w8,0x02ca3cd0
02ca3cc8  bl 0x029f5bd0
02ca3ccc  ldr x0,[x22]
02ca3cd0  ldr x8,[x21]
02ca3cd4  ldr x9,[x0, #0xb8]
02ca3cd8  ldr w10,[x8, #0xe4]
02ca3cdc  ldr x20,[x9]
02ca3ce0  cbnz w10,0x02ca3cec
02ca3ce4  mov x0,x8
02ca3ce8  bl 0x029f5bd0
02ca3cec  mov x0,x20
02ca3cf0  mov x1,xzr
02ca3cf4  mov x2,xzr
02ca3cf8  bl 0x057e14b4
02ca3cfc  tbz w0,#0x0,0x02ca3d10
02ca3d00  ldp x20,x19,[sp, #0x20]
02ca3d04  ldp x22,x21,[sp, #0x10]
02ca3d08  ldr x30,[sp], #0x30
02ca3d0c  ret
02ca3d10  ldr x0,[x22]
02ca3d14  ldr x19,[x19, #0x20]
02ca3d18  ldr w8,[x0, #0xe4]
02ca3d1c  cbnz w8,0x02ca3d28
02ca3d20  bl 0x029f5bd0
02ca3d24  ldr x0,[x22]
02ca3d28  ldr x8,[x0, #0xb8]
02ca3d2c  ldr x0,[x8]
02ca3d30  cbz x0,0x02ca3d64
02ca3d34  bl 0x02ca28c8
02ca3d38  bl 0x02ca37d8
02ca3d3c  cbz x19,0x02ca3d64
02ca3d40  ldr x8,[x19]
02ca3d44  mov x1,x0
02ca3d48  mov x0,x19
02ca3d4c  ldp x20,x19,[sp, #0x20]
02ca3d50  ldp x22,x21,[sp, #0x10]
02ca3d54  ldr x2,[x8, #0x560]
02ca3d58  ldr x3,[x8, #0x558]
02ca3d5c  ldr x30,[sp], #0x30
02ca3d60  br x3
02ca3d64  bl 0x029f5cfc
