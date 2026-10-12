02c33e70  stp x30,x21,[sp, #-0x20]!
02c33e74  stp x20,x19,[sp, #0x10]
02c33e78  mov x20,x0
02c33e7c  ldr x0,[x0, #0x48]
02c33e80  cbz x0,0x02c33ed8
02c33e84  mov w19,w1
02c33e88  mov w1,#0x1
02c33e8c  mov x2,xzr
02c33e90  bl 0x057dff3c
02c33e94  ldr x8,[x20, #0x58]
02c33e98  cbz x8,0x02c33ed8
02c33e9c  mov x21,xzr
02c33ea0  ldr w9,[x8, #0x18]
02c33ea4  cmp w21,w9
02c33ea8  b.ge 0x02c33edc
02c33eac  cmp w21,w9
02c33eb0  b.cs 0x02c33f1c
02c33eb4  add x8,x8,x21, LSL #0x3
02c33eb8  ldr x0,[x8, #0x20]
02c33ebc  cbz x0,0x02c33ed8
02c33ec0  mov w1,w19
02c33ec4  mov w2,w21
02c33ec8  bl 0x02c345c8
02c33ecc  ldr x8,[x20, #0x58]
02c33ed0  add x21,x21,#0x1
02c33ed4  cbnz x8,0x02c33ea0
02c33ed8  bl 0x029f5cfc
02c33edc  ldr x8,[x20, #0x78]
02c33ee0  cbz x8,0x02c33ed8
02c33ee4  ldr w9,[x8, #0x18]
02c33ee8  cmp w9,w19
02c33eec  b.ls 0x02c33f1c
02c33ef0  ldr x0,[x20, #0x70]
02c33ef4  cbz x0,0x02c33ed8
02c33ef8  add x8,x8,w19, SXTW  #0x4
02c33efc  ldr x9,[x0]
02c33f00  ldp x20,x19,[sp, #0x10]
02c33f04  ldp s0,s1,[x8, #0x20]
02c33f08  ldr x2,[x9, #0x2a8]
02c33f0c  ldp s2,s3,[x8, #0x28]
02c33f10  ldr x1,[x9, #0x2b0]
02c33f14  ldp x30,x21,[sp], #0x20
02c33f18  br x2
02c33f1c  bl 0x029f5d04
