02c41e38  sub sp,sp,#0xa0
02c41e3c  stp d15,d14,[sp, #0x20]
02c41e40  stp d13,d12,[sp, #0x30]
02c41e44  stp d11,d10,[sp, #0x40]
02c41e48  stp d9,d8,[sp, #0x50]
02c41e4c  stp x30,x25,[sp, #0x60]
02c41e50  stp x24,x23,[sp, #0x70]
02c41e54  stp x22,x21,[sp, #0x80]
02c41e58  stp x20,x19,[sp, #0x90]
02c41e5c  fmov s8,s7
02c41e60  fmov s9,s6
02c41e64  adrp x24,0x625c000
02c41e68  fmov s10,s5
02c41e6c  fmov s11,s4
02c41e70  adrp x25,0x5e62000
02c41e74  fmov s12,s3
02c41e78  fmov s13,s2
02c41e7c  ldrb w8,[x24, #0xb4]
02c41e80  fmov s14,s1
02c41e84  fmov s15,s0
02c41e88  ldr x25,[x25, #0x768]
02c41e8c  mov w21,w4
02c41e90  mov x19,x3
02c41e94  mov x22,x2
02c41e98  mov w20,w1
02c41e9c  mov x23,x0
02c41ea0  tbnz w8,#0x0,0x02c41ed0
02c41ea4  adrp x0,0x5e62000
02c41ea8  ldr x0,[x0, #0x770]
02c41eac  bl 0x029f5a50
02c41eb0  adrp x0,0x5e59000
02c41eb4  ldr x0,[x0, #0x1c0]
02c41eb8  bl 0x029f5a50
02c41ebc  adrp x0,0x5e62000
02c41ec0  ldr x0,[x0, #0x768]
02c41ec4  bl 0x029f5a50
02c41ec8  mov w8,#0x1
02c41ecc  strb w8,[x24, #0xb4]
02c41ed0  ldr x8,[x25]
02c41ed4  ldr x8,[x8, #0xb8]
02c41ed8  ldr x0,[x8]
02c41edc  cbz x0,0x02c41fb8
02c41ee0  adrp x24,0x5e59000
02c41ee4  mov w1,wzr
02c41ee8  mov x2,xzr
02c41eec  ldr x24,[x24, #0x1c0]
02c41ef0  bl 0x02c17b80
02c41ef4  ldr x8,[x24]
02c41ef8  mov x25,x0
02c41efc  ldr w9,[x8, #0xe4]
02c41f00  cbnz w9,0x02c41f0c
02c41f04  mov x0,x8
02c41f08  bl 0x029f5bd0
02c41f0c  mov x0,x25
02c41f10  mov x1,xzr
02c41f14  mov x2,xzr
02c41f18  bl 0x057e14b4
02c41f1c  mov w24,w0
02c41f20  tbnz w0,#0x0,0x02c41f88
02c41f24  cbz x25,0x02c41fb8
02c41f28  adrp x8,0x5e62000
02c41f2c  mov x0,x25
02c41f30  ldr x8,[x8, #0x770]
02c41f34  ldr x1,[x8]
02c41f38  bl 0x030a02b4
02c41f3c  cbz x0,0x02c41fb8
02c41f40  ldp q0,q1,[x22]
02c41f44  fmov s2,s13
02c41f48  fmov s3,s12
02c41f4c  fmov s4,s11
02c41f50  fmov s5,s10
02c41f54  fmov s6,s9
02c41f58  fmov s7,s8
02c41f5c  ldr w1,[x23, #0x40]
02c41f60  stp q0,q1,[sp]
02c41f64  fmov s0,s15
02c41f68  fmov s1,s14
02c41f6c  ldr w6,[x23, #0xb4]
02c41f70  mov x2,sp
02c41f74  and w4,w21,#0x1
02c41f78  mov x3,x19
02c41f7c  mov w5,w20
02c41f80  mov x7,xzr
02c41f84  bl 0x02c655a8
02c41f88  mov w8,#0x1
02c41f8c  ldp x20,x19,[sp, #0x90]
02c41f90  bic w0,w8,w24
02c41f94  ldp x22,x21,[sp, #0x80]
02c41f98  ldp x24,x23,[sp, #0x70]
02c41f9c  ldp x30,x25,[sp, #0x60]
02c41fa0  ldp d9,d8,[sp, #0x50]
02c41fa4  ldp d11,d10,[sp, #0x40]
02c41fa8  ldp d13,d12,[sp, #0x30]
02c41fac  ldp d15,d14,[sp, #0x20]
02c41fb0  add sp,sp,#0xa0
02c41fb4  ret
02c41fb8  bl 0x029f5cfc
