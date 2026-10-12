02b83e28  stp d11,d10,[sp, #-0x50]!
02b83e2c  stp d9,d8,[sp, #0x10]
02b83e30  stp x30,x23,[sp, #0x20]
02b83e34  stp x22,x21,[sp, #0x30]
02b83e38  stp x20,x19,[sp, #0x40]
02b83e3c  ldrb w8,[x0, #0x38]
02b83e40  cbnz w8,0x02b83f08
02b83e44  fmov s8,s2
02b83e48  fmov s9,s1
02b83e4c  mov x19,x0
02b83e50  fmov s11,s0
02b83e54  mov x20,x2
02b83e58  mov w22,w1
02b83e5c  bl 0x02b8344c
02b83e60  tbz w0,#0x0,0x02b83f08
02b83e64  ldr x8,[x19, #0x28]
02b83e68  cbz x8,0x02b83f20
02b83e6c  ldr w9,[x8, #0x18]
02b83e70  cmp w9,w22
02b83e74  b.ls 0x02b83f24
02b83e78  add x8,x8,w22, SXTW  #0x3
02b83e7c  mov x0,xzr
02b83e80  ldr x21,[x8, #0x20]
02b83e84  bl 0x057eb9ec
02b83e88  mov x0,x19
02b83e8c  fmov s10,s0
02b83e90  bl 0x02b835c4
02b83e94  cbz x0,0x02b83f20
02b83e98  mov x23,x0
02b83e9c  str s10,[x0, #0x5c]
02b83ea0  stp s11,s9,[x0, #0x10]
02b83ea4  str s8,[x0, #0x18]
02b83ea8  str w22,[x0, #0x28]
02b83eac  cbz x21,0x02b83f20
02b83eb0  mov x0,x21
02b83eb4  mov x1,x23
02b83eb8  bl 0x02b82b18
02b83ebc  bl 0x02b82db0
02b83ec0  cbz x0,0x02b83f20
02b83ec4  mov x1,x23
02b83ec8  mov x2,x21
02b83ecc  bl 0x02b83f28
02b83ed0  ldr x1,[x21, #0x38]
02b83ed4  mov x0,x23
02b83ed8  mov x2,x20
02b83edc  bl 0x02b84020
02b83ee0  mov x0,x19
02b83ee4  mov x1,x23
02b83ee8  fmov s0,s10
02b83eec  ldp x20,x19,[sp, #0x40]
02b83ef0  mov w2,#0x1
02b83ef4  ldp x22,x21,[sp, #0x30]
02b83ef8  ldp x30,x23,[sp, #0x20]
02b83efc  ldp d9,d8,[sp, #0x10]
02b83f00  ldp d11,d10,[sp], #0x50
02b83f04  b 0x02b83764
02b83f08  ldp x20,x19,[sp, #0x40]
02b83f0c  ldp x22,x21,[sp, #0x30]
02b83f10  ldp x30,x23,[sp, #0x20]
02b83f14  ldp d9,d8,[sp, #0x10]
02b83f18  ldp d11,d10,[sp], #0x50
02b83f1c  ret
02b83f20  bl 0x029f5cfc
02b83f24  bl 0x029f5d04
