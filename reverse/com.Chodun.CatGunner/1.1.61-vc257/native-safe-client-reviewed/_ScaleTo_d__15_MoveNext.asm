02c6b9f4  stp d9,d8,[sp, #-0x30]!
02c6b9f8  str x30,[sp, #0x10]
02c6b9fc  stp x20,x19,[sp, #0x20]
02c6ba00  ldr w8,[x0, #0x10]
02c6ba04  ldr x20,[x0, #0x20]
02c6ba08  mov x19,x0
02c6ba0c  cmp w8,#0x1
02c6ba10  b.eq 0x02c6ba50
02c6ba14  cbnz w8,0x02c6bb70
02c6ba18  mov w8,#0xffffffff
02c6ba1c  str w8,[x19, #0x10]
02c6ba20  cbz x20,0x02c6bb84
02c6ba24  mov x0,x20
02c6ba28  mov x1,xzr
02c6ba2c  bl 0x057dc0f8
02c6ba30  cbz x0,0x02c6bb84
02c6ba34  mov x1,xzr
02c6ba38  bl 0x057ef578
02c6ba3c  movi d8,#0x0
02c6ba40  stp s0,s1,[x19, #0x38]
02c6ba44  str s2,[x19, #0x40]
02c6ba48  str wzr,[x19, #0x44]
02c6ba4c  b 0x02c6ba5c
02c6ba50  ldr s8,[x19, #0x44]
02c6ba54  mov w8,#0xffffffff
02c6ba58  str w8,[x19, #0x10]
02c6ba5c  ldr s0,[x19, #0x28]
02c6ba60  fcmp s8,s0
02c6ba64  b.pl 0x02c6bb3c
02c6ba68  mov x0,xzr
02c6ba6c  bl 0x057ebb34
02c6ba70  fadd s8,s8,s0
02c6ba74  str s8,[x19, #0x44]
02c6ba78  cbz x20,0x02c6bb84
02c6ba7c  ldr s9,[x19, #0x28]
02c6ba80  mov x0,x20
02c6ba84  mov x1,xzr
02c6ba88  bl 0x057dc0f8
02c6ba8c  cbz x0,0x02c6bb84
02c6ba90  fdiv s0,s8,s9
02c6ba94  fmov s1,0x3f800000
02c6ba98  movi d3,#0x0
02c6ba9c  fmov s4,0x40400000
02c6baa0  mov x1,xzr
02c6baa4  fcmp s0,s1
02c6baa8  fcsel s2,s1,s0,gt
02c6baac  fcmp s0,#0.0
02c6bab0  fcsel s0,s3,s2,mi
02c6bab4  fcmp s0,#0.0
02c6bab8  fcsel s0,s3,s0,mi
02c6babc  fadd s2,s0,s0
02c6bac0  fmul s4,s0,s4
02c6bac4  fmul s2,s0,s2
02c6bac8  fmul s4,s0,s4
02c6bacc  fmul s0,s0,s2
02c6bad0  fsub s0,s4,s0
02c6bad4  ldr s4,[x19, #0x34]
02c6bad8  fsub s2,s1,s0
02c6badc  fmul s2,s2,s3
02c6bae0  fadd s0,s0,s2
02c6bae4  ldur d2,[x19, #0x2c]
02c6bae8  fcmp s0,s1
02c6baec  fcsel s1,s1,s0,gt
02c6baf0  fcmp s0,#0.0
02c6baf4  ldr d0,[x19, #0x38]
02c6baf8  fsub v2.2S,v2.2S,v0.2S
02c6bafc  fcsel s1,s3,s1,mi
02c6bb00  ldr s3,[x19, #0x40]
02c6bb04  fsub s4,s4,s3
02c6bb08  fmul v2.2S,v2.2S,v1.S[0x0]
02c6bb0c  fmul s1,s1,s4
02c6bb10  fadd v0.2S,v0.2S,v2.2S
02c6bb14  fadd s2,s3,s1
02c6bb18  dup s1,v0.S[0x1]
02c6bb1c  bl 0x057ef654
02c6bb20  str xzr,[x19, #0x18]!
02c6bb24  mov x0,x19
02c6bb28  mov x1,xzr
02c6bb2c  bl 0x029f59f4
02c6bb30  mov w0,#0x1
02c6bb34  stur w0,[x19, #-0x8]
02c6bb38  b 0x02c6bb74
02c6bb3c  cbz x20,0x02c6bb84
02c6bb40  mov x0,x20
02c6bb44  mov x1,xzr
02c6bb48  bl 0x057dc0f8
02c6bb4c  cbz x0,0x02c6bb84
02c6bb50  ldp s1,s2,[x19, #0x30]
02c6bb54  mov x1,xzr
02c6bb58  ldr s0,[x19, #0x2c]
02c6bb5c  bl 0x057ef654
02c6bb60  str xzr,[x20, #0x48]!
02c6bb64  mov x0,x20
02c6bb68  mov x1,xzr
02c6bb6c  bl 0x029f59f4
02c6bb70  mov w0,wzr
02c6bb74  ldp x20,x19,[sp, #0x20]
02c6bb78  ldr x30,[sp, #0x10]
02c6bb7c  ldp d9,d8,[sp], #0x30
02c6bb80  ret
02c6bb84  bl 0x029f5cfc
