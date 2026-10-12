02c6da2c  sub sp,sp,#0xd0
02c6da30  str x30,[sp, #0xa0]
02c6da34  stp x22,x21,[sp, #0xb0]
02c6da38  stp x20,x19,[sp, #0xc0]
02c6da3c  adrp x22,0x625c000
02c6da40  mov w21,w1
02c6da44  mov x20,x0
02c6da48  ldrb w9,[x22, #0x2ab]
02c6da4c  mov x19,x8
02c6da50  tbnz w9,#0x0,0x02c6da68
02c6da54  adrp x0,0x5e5e000
02c6da58  ldr x0,[x0, #0x58]
02c6da5c  bl 0x029f5a50
02c6da60  mov w8,#0x1
02c6da64  strb w8,[x22, #0x2ab]
02c6da68  movi v0.2D,#0x0
02c6da6c  cmp w21,#0x0
02c6da70  stp q0,q0,[sp, #0x60]
02c6da74  stp q0,q0,[sp, #0x80]
02c6da78  b.le 0x02c6db14
02c6da7c  adrp x22,0x5e5e000
02c6da80  ldr x22,[x22, #0x58]
02c6da84  ldr x0,[x22]
02c6da88  ldr w8,[x0, #0xe4]
02c6da8c  cbnz w8,0x02c6da94
02c6da90  bl 0x029f5bd0
02c6da94  bl 0x02c6d36c
02c6da98  ldr x8,[x22]
02c6da9c  ldr x8,[x8, #0xb8]
02c6daa0  ldr x8,[x8, #0x20]
02c6daa4  cbz x8,0x02c6db30
02c6daa8  cmp w21,#0x14
02c6daac  mov w9,#0x14
02c6dab0  ldr w10,[x8, #0x18]
02c6dab4  csel w9,w21,w9,lt
02c6dab8  cmp w9,w10
02c6dabc  b.cs 0x02c6db34
02c6dac0  add x9,x8,x9, LSL #0x5
02c6dac4  add x8,sp,#0x40
02c6dac8  mov x0,x20
02c6dacc  mov x2,xzr
02c6dad0  add x1,x9,#0x20
02c6dad4  bl 0x04658538
02c6dad8  ldp q0,q1,[sp, #0x40]
02c6dadc  add x8,sp,#0x20
02c6dae0  mov w0,#0x64
02c6dae4  mov x1,xzr
02c6dae8  stp q0,q1,[sp, #0x80]
02c6daec  bl 0x046544b8
02c6daf0  ldp q0,q1,[sp, #0x20]
02c6daf4  mov x8,sp
02c6daf8  add x0,sp,#0x80
02c6dafc  add x1,sp,#0x60
02c6db00  mov x2,xzr
02c6db04  stp q0,q1,[sp, #0x60]
02c6db08  bl 0x046587e8
02c6db0c  ldp q0,q1,[sp]
02c6db10  b 0x02c6db18
02c6db14  ldp q0,q1,[x20]
02c6db18  stp q0,q1,[x19]
02c6db1c  ldp x20,x19,[sp, #0xc0]
02c6db20  ldp x22,x21,[sp, #0xb0]
02c6db24  ldr x30,[sp, #0xa0]
02c6db28  add sp,sp,#0xd0
02c6db2c  ret
02c6db30  bl 0x029f5cfc
02c6db34  bl 0x029f5d04
