02c4ec08  stp x29,x30,[sp, #-0x40]!
02c4ec0c  stp x24,x23,[sp, #0x10]
02c4ec10  stp x22,x21,[sp, #0x20]
02c4ec14  stp x20,x19,[sp, #0x30]
02c4ec18  sub sp,sp,#0x1c0
02c4ec1c  adrp x24,0x625c000
02c4ec20  adrp x23,0x5e5d000
02c4ec24  mov w20,w2
02c4ec28  ldrb w9,[x24, #0x142]
02c4ec2c  ldr x23,[x23, #0xd58]
02c4ec30  mov w21,w1
02c4ec34  mov x22,x0
02c4ec38  mov x19,x8
02c4ec3c  tbnz w9,#0x0,0x02c4ec54
02c4ec40  adrp x0,0x5e5d000
02c4ec44  ldr x0,[x0, #0xd58]
02c4ec48  bl 0x029f5a50
02c4ec4c  mov w8,#0x1
02c4ec50  strb w8,[x24, #0x142]
02c4ec54  movi v0.2D,#0x0
02c4ec58  add x8,sp,#0x180
02c4ec5c  mov x0,x22
02c4ec60  mov w1,w21
02c4ec64  stp q0,q0,[sp, #0x120]
02c4ec68  stp q0,q0,[sp, #0x140]
02c4ec6c  stp q0,q0,[sp, #0x160]
02c4ec70  stp q0,q0,[sp, #0x180]
02c4ec74  stp q0,q0,[sp, #0x1a0]
02c4ec78  bl 0x02c4eb20
02c4ec7c  mov w8,#0x28
02c4ec80  mov w9,#0x64
02c4ec84  mov x1,xzr
02c4ec88  madd w0,w20,w8,w9
02c4ec8c  add x8,sp,#0x100
02c4ec90  bl 0x046544b8
02c4ec94  ldp q0,q1,[sp, #0x100]
02c4ec98  add x8,sp,#0xe0
02c4ec9c  add x0,sp,#0x180
02c4eca0  add x1,sp,#0x160
02c4eca4  mov x2,xzr
02c4eca8  stp q0,q1,[sp, #0x160]
02c4ecac  bl 0x04658538
02c4ecb0  ldp q0,q1,[sp, #0xe0]
02c4ecb4  add x8,sp,#0xc0
02c4ecb8  mov w0,#0x64
02c4ecbc  mov x1,xzr
02c4ecc0  stp q0,q1,[sp, #0x140]
02c4ecc4  bl 0x046544b8
02c4ecc8  ldp q0,q1,[sp, #0xc0]
02c4eccc  add x8,sp,#0xa0
02c4ecd0  add x0,sp,#0x140
02c4ecd4  add x1,sp,#0x120
02c4ecd8  mov x2,xzr
02c4ecdc  stp q0,q1,[sp, #0x120]
02c4ece0  bl 0x046587e8
02c4ece4  ldr x0,[x23]
02c4ece8  ldp q0,q1,[sp, #0xa0]
02c4ecec  ldr w8,[x0, #0xe4]
02c4ecf0  stp q0,q1,[sp, #0x1a0]
02c4ecf4  cbnz w8,0x02c4ed00
02c4ecf8  bl 0x029f5bd0
02c4ecfc  ldr x0,[x23]
02c4ed00  ldr x8,[x0, #0xb8]
02c4ed04  ldr x8,[x8, #0x18]
02c4ed08  cbz x8,0x02c4ede0
02c4ed0c  ldr w9,[x8, #0x18]
02c4ed10  cmp w9,w20
02c4ed14  b.ls 0x02c4ede4
02c4ed18  add x8,x8,w20, SXTW  #0x2
02c4ed1c  mov w0,#0x96
02c4ed20  mov x1,xzr
02c4ed24  ldr s0,[x8, #0x20]
02c4ed28  mov w8,#0x42c80000
02c4ed2c  fmov s1,w8
02c4ed30  mov w8,#0x7f800000
02c4ed34  fmul s0,s0,s1
02c4ed38  fmov s1,w8
02c4ed3c  mov w8,#0x80000000
02c4ed40  fcvtzs w9,s0
02c4ed44  fcmp s0,s1
02c4ed48  csel w20,w8,w9,eq
02c4ed4c  add x8,sp,#0x80
02c4ed50  bl 0x046544b8
02c4ed54  ldp q0,q1,[sp, #0x80]
02c4ed58  add x8,sp,#0x60
02c4ed5c  add x0,sp,#0x1a0
02c4ed60  add x1,sp,#0x180
02c4ed64  mov x2,xzr
02c4ed68  stp q0,q1,[sp, #0x180]
02c4ed6c  bl 0x04658538
02c4ed70  ldp q0,q1,[sp, #0x60]
02c4ed74  add x8,sp,#0x40
02c4ed78  mov w0,w20
02c4ed7c  mov x1,xzr
02c4ed80  stp q0,q1,[sp, #0x160]
02c4ed84  bl 0x046544b8
02c4ed88  ldp q0,q1,[sp, #0x40]
02c4ed8c  add x8,sp,#0x20
02c4ed90  add x0,sp,#0x160
02c4ed94  add x1,sp,#0x140
02c4ed98  mov x2,xzr
02c4ed9c  stp q0,q1,[sp, #0x140]
02c4eda0  bl 0x046587e8
02c4eda4  ldp q0,q1,[sp, #0x20]
02c4eda8  mov x8,sp
02c4edac  add x0,sp,#0x120
02c4edb0  mov w1,#0x5
02c4edb4  mov x2,xzr
02c4edb8  stp q0,q1,[sp, #0x120]
02c4edbc  bl 0x04658464
02c4edc0  ldp q0,q1,[sp]
02c4edc4  stp q0,q1,[x19]
02c4edc8  add sp,sp,#0x1c0
02c4edcc  ldp x20,x19,[sp, #0x30]
02c4edd0  ldp x22,x21,[sp, #0x20]
02c4edd4  ldp x24,x23,[sp, #0x10]
02c4edd8  ldp x29,x30,[sp], #0x40
02c4eddc  ret
02c4ede0  bl 0x029f5cfc
02c4ede4  bl 0x029f5d04
