02c71e50  sub sp,sp,#0x60
02c71e54  stp d9,d8,[sp, #0x20]
02c71e58  str x30,[sp, #0x30]
02c71e5c  stp x22,x21,[sp, #0x40]
02c71e60  stp x20,x19,[sp, #0x50]
02c71e64  adrp x21,0x625c000
02c71e68  mov x20,x1
02c71e6c  mov x19,x0
02c71e70  ldrb w8,[x21, #0x2d2]
02c71e74  tbnz w8,#0x0,0x02c71e98
02c71e78  adrp x0,0x5e5c000
02c71e7c  ldr x0,[x0, #0xf00]
02c71e80  bl 0x029f5a50
02c71e84  adrp x0,0x5e5b000
02c71e88  ldr x0,[x0, #0xfa8]
02c71e8c  bl 0x029f5a50
02c71e90  mov w8,#0x1
02c71e94  strb w8,[x21, #0x2d2]
02c71e98  ldrb w8,[x19, #0xb8]
02c71e9c  str xzr,[sp, #0x38]
02c71ea0  str xzr,[sp, #0x18]
02c71ea4  str wzr,[sp, #0x10]
02c71ea8  str xzr,[sp, #0x8]
02c71eac  cbz w8,0x02c71fdc
02c71eb0  ldr x0,[x19, #0xa0]
02c71eb4  cbz x0,0x02c71ff4
02c71eb8  mov x1,xzr
02c71ebc  bl 0x05aa2028
02c71ec0  ldr x21,[x19, #0x98]
02c71ec4  cbz w0,0x02c71f2c
02c71ec8  cbz x21,0x02c71ff4
02c71ecc  mov x0,x21
02c71ed0  mov x1,xzr
02c71ed4  bl 0x057eecc8
02c71ed8  cbz x20,0x02c71ff4
02c71edc  mov x22,x0
02c71ee0  ldr s8,[x20, #0x104]
02c71ee4  ldr s9,[x20, #0x108]
02c71ee8  mov x0,x20
02c71eec  mov x1,xzr
02c71ef0  bl 0x05acda38
02c71ef4  adrp x8,0x5e5c000
02c71ef8  mov x21,x0
02c71efc  ldr x8,[x8, #0xf00]
02c71f00  ldr x8,[x8]
02c71f04  ldr w9,[x8, #0xe4]
02c71f08  cbz w9,0x02c71f68
02c71f0c  cbz x22,0x02c71f74
02c71f10  adrp x8,0x5e5b000
02c71f14  ldr x8,[x8, #0xfa8]
02c71f18  ldr x9,[x22]
02c71f1c  ldr x8,[x8]
02c71f20  cmp x9,x8
02c71f24  csel x0,x22,xzr,eq
02c71f28  b 0x02c71f78
02c71f2c  cbz x20,0x02c71ff4
02c71f30  ldr x0,[x19, #0xa0]
02c71f34  cbz x0,0x02c71ff4
02c71f38  add x8,x20,#0x104
02c71f3c  ldr d8,[x19, #0xb0]
02c71f40  mov x1,xzr
02c71f44  ldr d9,[x8]
02c71f48  bl 0x05aa232c
02c71f4c  cbz x21,0x02c71ff4
02c71f50  fmul v0.2S,v8.2S,v0.S[0x0]
02c71f54  movi d2,#0x0
02c71f58  mov x0,x21
02c71f5c  fsub v0.2S,v9.2S,v0.2S
02c71f60  dup s1,v0.S[0x1]
02c71f64  b 0x02c71fa0
02c71f68  mov x0,x8
02c71f6c  bl 0x029f5bd0
02c71f70  cbnz x22,0x02c71f10
02c71f74  mov x0,xzr
02c71f78  fmov s0,s8
02c71f7c  fmov s1,s9
02c71f80  add x2,sp,#0x8
02c71f84  mov x1,x21
02c71f88  mov x3,xzr
02c71f8c  bl 0x05aa0fd4
02c71f90  ldr x0,[x19, #0x98]
02c71f94  cbz x0,0x02c71ff4
02c71f98  ldp s1,s2,[sp, #0xc]
02c71f9c  ldr s0,[sp, #0x8]
02c71fa0  mov x1,xzr
02c71fa4  bl 0x057eee74
02c71fa8  mov x0,x19
02c71fac  bl 0x02c71ff8
02c71fb0  add x2,sp,#0x38
02c71fb4  add x3,sp,#0x18
02c71fb8  mov x0,x19
02c71fbc  mov x1,x20
02c71fc0  bl 0x02c723ec
02c71fc4  ldr x1,[sp, #0x38]
02c71fc8  mov x0,x19
02c71fcc  bl 0x02c72890
02c71fd0  ldr x1,[sp, #0x18]
02c71fd4  mov x0,x19
02c71fd8  bl 0x02c729e0
02c71fdc  ldp x20,x19,[sp, #0x50]
02c71fe0  ldr x30,[sp, #0x30]
02c71fe4  ldp x22,x21,[sp, #0x40]
02c71fe8  ldp d9,d8,[sp, #0x20]
02c71fec  add sp,sp,#0x60
02c71ff0  ret
02c71ff4  bl 0x029f5cfc
