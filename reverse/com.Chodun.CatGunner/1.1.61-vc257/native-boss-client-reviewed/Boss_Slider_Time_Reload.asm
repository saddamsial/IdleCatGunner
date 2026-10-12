02c47eb4  stp d9,d8,[sp, #-0x30]!
02c47eb8  str x30,[sp, #0x10]
02c47ebc  stp x20,x19,[sp, #0x20]
02c47ec0  fmov s9,s1
02c47ec4  fmov s8,s0
02c47ec8  adrp x20,0x625c000
02c47ecc  ldrb w8,[x20, #0xf3]
02c47ed0  mov x19,x0
02c47ed4  tbnz w8,#0x0,0x02c47eec
02c47ed8  adrp x0,0x5e5e000
02c47edc  ldr x0,[x0, #0x6d0]
02c47ee0  bl 0x029f5a50
02c47ee4  mov w8,#0x1
02c47ee8  strb w8,[x20, #0xf3]
02c47eec  ldr x0,[x19, #0x28]
02c47ef0  cbz x0,0x02c47f84
02c47ef4  fdiv s0,s8,s9
02c47ef8  adrp x20,0x5e5e000
02c47efc  mov x1,xzr
02c47f00  ldr x20,[x20, #0x6d0]
02c47f04  bl 0x02c28290
02c47f08  fmov s0,0x3f800000
02c47f0c  mov w8,#0x7f800000
02c47f10  mov w10,#0x80000000
02c47f14  fmov s1,w8
02c47f18  adrp x8,0x5e58000
02c47f1c  add x1,sp,#0x1c
02c47f20  ldr x8,[x8, #0xa10]
02c47f24  ldr x19,[x19, #0x38]
02c47f28  fadd s0,s8,s0
02c47f2c  ldr x0,[x8, #0x48]
02c47f30  fcvtzs w9,s0
02c47f34  fcmp s0,s1
02c47f38  csel w9,w10,w9,eq
02c47f3c  str w9,[sp, #0x1c]
02c47f40  bl 0x029f5bd8
02c47f44  ldr x8,[x20]
02c47f48  mov x1,x0
02c47f4c  mov x2,xzr
02c47f50  mov x0,x8
02c47f54  bl 0x046b6c0c
02c47f58  cbz x19,0x02c47f84
02c47f5c  ldr x8,[x19]
02c47f60  mov x1,x0
02c47f64  mov x0,x19
02c47f68  ldr x9,[x8, #0x558]
02c47f6c  ldr x2,[x8, #0x560]
02c47f70  blr x9
02c47f74  ldp x20,x19,[sp, #0x20]
02c47f78  ldr x30,[sp, #0x10]
02c47f7c  ldp d9,d8,[sp], #0x30
02c47f80  ret
02c47f84  bl 0x029f5cfc
