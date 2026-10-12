02c62e78  stp d9,d8,[sp, #-0x30]!
02c62e7c  str x30,[sp, #0x10]
02c62e80  stp x20,x19,[sp, #0x20]
02c62e84  ldr w8,[x0, #0x10]
02c62e88  ldr x20,[x0, #0x20]
02c62e8c  mov x19,x0
02c62e90  cmp w8,#0x1
02c62e94  b.eq 0x02c62ed4
02c62e98  cbnz w8,0x02c62ff4
02c62e9c  mov w8,#0xffffffff
02c62ea0  str w8,[x19, #0x10]
02c62ea4  cbz x20,0x02c63008
02c62ea8  mov x0,x20
02c62eac  mov x1,xzr
02c62eb0  bl 0x057dc0f8
02c62eb4  cbz x0,0x02c63008
02c62eb8  mov x1,xzr
02c62ebc  bl 0x057ef578
02c62ec0  movi d8,#0x0
02c62ec4  stp s0,s1,[x19, #0x38]
02c62ec8  str s2,[x19, #0x40]
02c62ecc  str wzr,[x19, #0x44]
02c62ed0  b 0x02c62ee0
02c62ed4  ldr s8,[x19, #0x44]
02c62ed8  mov w8,#0xffffffff
02c62edc  str w8,[x19, #0x10]
02c62ee0  ldr s0,[x19, #0x28]
02c62ee4  fcmp s8,s0
02c62ee8  b.pl 0x02c62fc0
02c62eec  mov x0,xzr
02c62ef0  bl 0x057ebb34
02c62ef4  fadd s8,s8,s0
02c62ef8  str s8,[x19, #0x44]
02c62efc  cbz x20,0x02c63008
02c62f00  ldr s9,[x19, #0x28]
02c62f04  mov x0,x20
02c62f08  mov x1,xzr
02c62f0c  bl 0x057dc0f8
02c62f10  cbz x0,0x02c63008
02c62f14  fdiv s0,s8,s9
02c62f18  fmov s1,0x3f800000
02c62f1c  movi d3,#0x0
02c62f20  fmov s4,0x40400000
02c62f24  mov x1,xzr
02c62f28  fcmp s0,s1
02c62f2c  fcsel s2,s1,s0,gt
02c62f30  fcmp s0,#0.0
02c62f34  fcsel s0,s3,s2,mi
02c62f38  fcmp s0,#0.0
02c62f3c  fcsel s0,s3,s0,mi
02c62f40  fadd s2,s0,s0
02c62f44  fmul s4,s0,s4
02c62f48  fmul s2,s0,s2
02c62f4c  fmul s4,s0,s4
02c62f50  fmul s0,s0,s2
02c62f54  fsub s0,s4,s0
02c62f58  ldr s4,[x19, #0x34]
02c62f5c  fsub s2,s1,s0
02c62f60  fmul s2,s2,s3
02c62f64  fadd s0,s0,s2
02c62f68  ldur d2,[x19, #0x2c]
02c62f6c  fcmp s0,s1
02c62f70  fcsel s1,s1,s0,gt
02c62f74  fcmp s0,#0.0
02c62f78  ldr d0,[x19, #0x38]
02c62f7c  fsub v2.2S,v2.2S,v0.2S
02c62f80  fcsel s1,s3,s1,mi
02c62f84  ldr s3,[x19, #0x40]
02c62f88  fsub s4,s4,s3
02c62f8c  fmul v2.2S,v2.2S,v1.S[0x0]
02c62f90  fmul s1,s1,s4
02c62f94  fadd v0.2S,v0.2S,v2.2S
02c62f98  fadd s2,s3,s1
02c62f9c  dup s1,v0.S[0x1]
02c62fa0  bl 0x057ef654
02c62fa4  str xzr,[x19, #0x18]!
02c62fa8  mov x0,x19
02c62fac  mov x1,xzr
02c62fb0  bl 0x029f59f4
02c62fb4  mov w0,#0x1
02c62fb8  stur w0,[x19, #-0x8]
02c62fbc  b 0x02c62ff8
02c62fc0  cbz x20,0x02c63008
02c62fc4  mov x0,x20
02c62fc8  mov x1,xzr
02c62fcc  bl 0x057dc0f8
02c62fd0  cbz x0,0x02c63008
02c62fd4  ldp s1,s2,[x19, #0x30]
02c62fd8  mov x1,xzr
02c62fdc  ldr s0,[x19, #0x2c]
02c62fe0  bl 0x057ef654
02c62fe4  str xzr,[x20, #0xa8]!
02c62fe8  mov x0,x20
02c62fec  mov x1,xzr
02c62ff0  bl 0x029f59f4
02c62ff4  mov w0,wzr
02c62ff8  ldp x20,x19,[sp, #0x20]
02c62ffc  ldr x30,[sp, #0x10]
02c63000  ldp d9,d8,[sp], #0x30
02c63004  ret
02c63008  bl 0x029f5cfc
