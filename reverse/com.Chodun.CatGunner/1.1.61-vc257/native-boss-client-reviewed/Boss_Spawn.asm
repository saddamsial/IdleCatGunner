02c44b64  sub sp,sp,#0xc0
02c44b68  str x30,[sp, #0x80]
02c44b6c  stp x24,x23,[sp, #0x90]
02c44b70  stp x22,x21,[sp, #0xa0]
02c44b74  stp x20,x19,[sp, #0xb0]
02c44b78  adrp x22,0x625c000
02c44b7c  mov w20,w2
02c44b80  mov x21,x1
02c44b84  ldrb w8,[x22, #0xcf]
02c44b88  mov x19,x0
02c44b8c  tbnz w8,#0x0,0x02c44bb0
02c44b90  adrp x0,0x5e5d000
02c44b94  ldr x0,[x0, #0xd30]
02c44b98  bl 0x029f5a50
02c44b9c  adrp x0,0x5e63000
02c44ba0  ldr x0,[x0, #0x2d8]
02c44ba4  bl 0x029f5a50
02c44ba8  mov w8,#0x1
02c44bac  strb w8,[x22, #0xcf]
02c44bb0  str w20,[x19, #0x28]
02c44bb4  add x8,sp,#0x40
02c44bb8  mov w0,wzr
02c44bbc  ldp q0,q1,[x21]
02c44bc0  ldr x21,[x19, #0x20]
02c44bc4  mov x1,xzr
02c44bc8  stp q0,q1,[sp, #0x60]
02c44bcc  bl 0x046544b8
02c44bd0  cbz x21,0x02c44c60
02c44bd4  ldp q0,q1,[sp, #0x60]
02c44bd8  add x1,sp,#0x20
02c44bdc  mov x2,sp
02c44be0  mov x0,x21
02c44be4  mov x3,xzr
02c44be8  stp q0,q1,[sp, #0x20]
02c44bec  ldp q0,q2,[sp, #0x40]
02c44bf0  stp q0,q2,[sp]
02c44bf4  bl 0x02c5c998
02c44bf8  ldr x8,[x19, #0x30]
02c44bfc  cbz x8,0x02c44c60
02c44c00  adrp x21,0x5e63000
02c44c04  adrp x23,0x5e5d000
02c44c08  mov x24,xzr
02c44c0c  ldr x21,[x21, #0x2d8]
02c44c10  ldr x23,[x23, #0xd30]
02c44c14  mov w22,w20
02c44c18  ldr w9,[x8, #0x18]
02c44c1c  cmp w24,w9
02c44c20  b.ge 0x02c44c64
02c44c24  cmp w24,w9
02c44c28  b.cs 0x02c44d80
02c44c2c  add x8,x8,x24, LSL #0x3
02c44c30  ldr x0,[x8, #0x20]
02c44c34  cbz x0,0x02c44c60
02c44c38  mov x1,xzr
02c44c3c  bl 0x057e0dc0
02c44c40  cbz x0,0x02c44c60
02c44c44  cmp w22,w24
02c44c48  mov x2,xzr
02c44c4c  cset w1,eq
02c44c50  bl 0x057dff3c
02c44c54  ldr x8,[x19, #0x30]
02c44c58  add x24,x24,#0x1
02c44c5c  cbnz x8,0x02c44c18
02c44c60  bl 0x029f5cfc
02c44c64  ldrsw x10,[x19, #0x28]
02c44c68  cmp w10,w9
02c44c6c  b.cs 0x02c44d80
02c44c70  add x8,x8,x10, LSL #0x3
02c44c74  ldr x0,[x8, #0x20]
02c44c78  cbz x0,0x02c44c60
02c44c7c  ldr x1,[x21]
02c44c80  bl 0x030a02b4
02c44c84  mov x21,x19
02c44c88  mov x1,x0
02c44c8c  str x0,[x21, #0x38]!
02c44c90  mov x0,x21
02c44c94  bl 0x029f59f4
02c44c98  ldr x8,[x21, #0x10]
02c44c9c  cbz x8,0x02c44c60
02c44ca0  ldr w9,[x8, #0x18]
02c44ca4  cmp w9,w20
02c44ca8  b.ls 0x02c44d80
02c44cac  sxtw x21,w20
02c44cb0  ldr x0,[x23]
02c44cb4  add x8,x8,x21, LSL #0x3
02c44cb8  ldr w9,[x0, #0xe4]
02c44cbc  ldr x20,[x8, #0x20]
02c44cc0  cbnz w9,0x02c44ccc
02c44cc4  bl 0x029f5bd0
02c44cc8  ldr x0,[x23]
02c44ccc  ldr x8,[x0, #0xb8]
02c44cd0  ldr x8,[x8, #0x8]
02c44cd4  cbz x8,0x02c44c60
02c44cd8  ldr x8,[x8, #0x68]
02c44cdc  cbz x8,0x02c44c60
02c44ce0  ldr w9,[x8, #0x18]
02c44ce4  cmp w9,w22
02c44ce8  b.ls 0x02c44d80
02c44cec  cbz x20,0x02c44c60
02c44cf0  add x8,x8,x21, LSL #0x3
02c44cf4  mov x0,x20
02c44cf8  mov x2,xzr
02c44cfc  ldr x1,[x8, #0x20]
02c44d00  bl 0x0578eb10
02c44d04  mov x0,x19
02c44d08  mov x1,xzr
02c44d0c  bl 0x057dc0f8
02c44d10  cbz x0,0x02c44c60
02c44d14  movi d1,#0x0
02c44d18  fmov s0,0xc1700000
02c44d1c  mov x1,xzr
02c44d20  fmov s2,0x41700000
02c44d24  bl 0x057ee3b4
02c44d28  mov x20,x19
02c44d2c  ldr x1,[x20, #0x70]!
02c44d30  cbz x1,0x02c44d40
02c44d34  mov x0,x19
02c44d38  mov x2,xzr
02c44d3c  bl 0x057e237c
02c44d40  mov x0,x19
02c44d44  bl 0x02c44d84
02c44d48  mov x1,x0
02c44d4c  mov x0,x19
02c44d50  mov x2,xzr
02c44d54  bl 0x057e2120
02c44d58  mov x1,x0
02c44d5c  str x0,[x19, #0x70]
02c44d60  mov x0,x20
02c44d64  bl 0x029f59f4
02c44d68  ldp x20,x19,[sp, #0xb0]
02c44d6c  ldr x30,[sp, #0x80]
02c44d70  ldp x22,x21,[sp, #0xa0]
02c44d74  ldp x24,x23,[sp, #0x90]
02c44d78  add sp,sp,#0xc0
02c44d7c  ret
02c44d80  bl 0x029f5d04
