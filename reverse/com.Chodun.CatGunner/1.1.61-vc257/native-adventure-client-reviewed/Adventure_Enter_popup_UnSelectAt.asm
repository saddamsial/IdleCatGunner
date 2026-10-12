02c33c08  stp x30,x21,[sp, #-0x20]!
02c33c0c  stp x20,x19,[sp, #0x10]
02c33c10  adrp x21,0x625c000
02c33c14  mov w20,w1
02c33c18  mov x19,x0
02c33c1c  ldrb w8,[x21, #0x4d]
02c33c20  tbnz w8,#0x0,0x02c33c44
02c33c24  adrp x0,0x5e63000
02c33c28  ldr x0,[x0, #0x118]
02c33c2c  bl 0x029f5a50
02c33c30  adrp x0,0x5e62000
02c33c34  ldr x0,[x0, #0xfd0]
02c33c38  bl 0x029f5a50
02c33c3c  mov w8,#0x1
02c33c40  strb w8,[x21, #0x4d]
02c33c44  tbnz w20,#0x1f,0x02c33ccc
02c33c48  ldr x0,[x19, #0xc8]
02c33c4c  cbz x0,0x02c33cd8
02c33c50  ldr w8,[x0, #0x18]
02c33c54  cmp w8,w20
02c33c58  b.le 0x02c33ccc
02c33c5c  adrp x8,0x5e63000
02c33c60  mov w1,w20
02c33c64  ldr x8,[x8, #0x118]
02c33c68  ldr x2,[x8]
02c33c6c  bl 0x045c2cf0
02c33c70  mov x0,x19
02c33c74  bl 0x02c33604
02c33c78  adrp x19,0x625b000
02c33c7c  ldrb w8,[x19, #0xa57]
02c33c80  cbnz w8,0x02c33c98
02c33c84  adrp x0,0x5e5d000
02c33c88  ldr x0,[x0, #0xd70]
02c33c8c  bl 0x029f5a50
02c33c90  mov w8,#0x1
02c33c94  strb w8,[x19, #0xa57]
02c33c98  adrp x8,0x5e5d000
02c33c9c  ldr x8,[x8, #0xd70]
02c33ca0  ldr x8,[x8]
02c33ca4  ldr x8,[x8, #0xb8]
02c33ca8  ldr x0,[x8]
02c33cac  cbz x0,0x02c33cd8
02c33cb0  ldp x20,x19,[sp, #0x10]
02c33cb4  fmov s0,0x3f800000
02c33cb8  mov w1,#0xd
02c33cbc  mov x2,xzr
02c33cc0  mov x3,xzr
02c33cc4  ldp x30,x21,[sp], #0x20
02c33cc8  b 0x02c1f10c
02c33ccc  ldp x20,x19,[sp, #0x10]
02c33cd0  ldp x30,x21,[sp], #0x20
02c33cd4  ret
02c33cd8  bl 0x029f5cfc
