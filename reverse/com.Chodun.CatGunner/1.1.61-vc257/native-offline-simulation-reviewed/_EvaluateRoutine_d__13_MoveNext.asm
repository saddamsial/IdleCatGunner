02c06c88  sub sp,sp,#0x50
02c06c8c  str d10,[sp, #0x10]
02c06c90  stp d9,d8,[sp, #0x18]
02c06c94  str x30,[sp, #0x28]
02c06c98  stp x22,x21,[sp, #0x30]
02c06c9c  stp x20,x19,[sp, #0x40]
02c06ca0  adrp x20,0x625b000
02c06ca4  mov x19,x0
02c06ca8  ldrb w8,[x20, #0xe7b]
02c06cac  tbnz w8,#0x0,0x02c06d00
02c06cb0  adrp x0,0x5e62000
02c06cb4  ldr x0,[x0, #0x50]
02c06cb8  bl 0x029f5a50
02c06cbc  adrp x0,0x5e62000
02c06cc0  ldr x0,[x0, #0x68]
02c06cc4  bl 0x029f5a50
02c06cc8  adrp x0,0x5e62000
02c06ccc  ldr x0,[x0, #0x40]
02c06cd0  bl 0x029f5a50
02c06cd4  adrp x0,0x5e5d000
02c06cd8  ldr x0,[x0, #0x3c0]
02c06cdc  bl 0x029f5a50
02c06ce0  adrp x0,0x5e5d000
02c06ce4  ldr x0,[x0, #0x368]
02c06ce8  bl 0x029f5a50
02c06cec  adrp x0,0x5e62000
02c06cf0  ldr x0,[x0, #0x70]
02c06cf4  bl 0x029f5a50
02c06cf8  mov w8,#0x1
02c06cfc  strb w8,[x20, #0xe7b]
02c06d00  ldr w8,[x19, #0x10]
02c06d04  ldr x20,[x19, #0x20]
02c06d08  mov w0,wzr
02c06d0c  str xzr,[sp, #0x8]
02c06d10  cmp w8,#0x1
02c06d14  b.gt 0x02c06d68
02c06d18  cbz w8,0x02c06db0
02c06d1c  cmp w8,#0x1
02c06d20  b.ne 0x02c06fb4
02c06d24  adrp x8,0x5e5d000
02c06d28  mov w9,#0xffffffff
02c06d2c  ldr x8,[x8, #0x3c0]
02c06d30  str w9,[x19, #0x10]
02c06d34  ldr x0,[x8]
02c06d38  ldr w8,[x0, #0xe4]
02c06d3c  cbnz w8,0x02c06d44
02c06d40  bl 0x029f5bd0
02c06d44  fmov s0,0x40a00000
02c06d48  mov x0,xzr
02c06d4c  bl 0x02c253f0
02c06d50  mov x1,x0
02c06d54  str x0,[x19, #0x18]!
02c06d58  mov x0,x19
02c06d5c  bl 0x029f59f4
02c06d60  mov w8,#0x2
02c06d64  b 0x02c06f40
02c06d68  cmp w8,#0x2
02c06d6c  b.eq 0x02c06e30
02c06d70  cmp w8,#0x3
02c06d74  b.ne 0x02c06fb4
02c06d78  mov w8,#0xffffffff
02c06d7c  str w8,[x19, #0x10]
02c06d80  cbz x20,0x02c06fd0
02c06d84  ldr x21,[x20, #0x38]
02c06d88  cbz x21,0x02c06f4c
02c06d8c  adrp x8,0x5e62000
02c06d90  ldr x8,[x8, #0x40]
02c06d94  ldr x0,[x8]
02c06d98  ldr w8,[x0, #0xe4]
02c06d9c  cbnz w8,0x02c06da4
02c06da0  bl 0x029f5bd0
02c06da4  mov x0,x21
02c06da8  bl 0x02c07084
02c06dac  b 0x02c06f4c
02c06db0  mov w8,#0xffffffff
02c06db4  str w8,[x19, #0x10]
02c06db8  cbz x20,0x02c06fd0
02c06dbc  mov x0,x20
02c06dc0  mov x1,xzr
02c06dc4  str xzr,[x0, #0x38]!
02c06dc8  bl 0x029f59f4
02c06dcc  ldr x1,[x19, #0x28]
02c06dd0  mov x0,x20
02c06dd4  str x1,[x0, #0x40]!
02c06dd8  bl 0x029f59f4
02c06ddc  ldr x1,[x19, #0x28]
02c06de0  add x2,sp,#0xc
02c06de4  add x3,sp,#0x8
02c06de8  mov x0,x20
02c06dec  bl 0x02c064c0
02c06df0  tbz w0,#0x0,0x02c06f8c
02c06df4  adrp x8,0x5e5d000
02c06df8  ldr x8,[x8, #0x368]
02c06dfc  ldr x8,[x8]
02c06e00  ldr x8,[x8, #0xb8]
02c06e04  ldr x0,[x8]
02c06e08  cbz x0,0x02c06e14
02c06e0c  mov x1,xzr
02c06e10  bl 0x02c2a604
02c06e14  str xzr,[x19, #0x18]!
02c06e18  mov x0,x19
02c06e1c  mov x1,xzr
02c06e20  bl 0x029f59f4
02c06e24  mov w0,#0x1
02c06e28  stur w0,[x19, #-0x8]
02c06e2c  b 0x02c06fb4
02c06e30  mov w8,#0xffffffff
02c06e34  str w8,[x19, #0x10]
02c06e38  cbz x20,0x02c06fd0
02c06e3c  ldr x1,[x19, #0x28]
02c06e40  add x2,sp,#0xc
02c06e44  add x3,sp,#0x8
02c06e48  mov x0,x20
02c06e4c  bl 0x02c064c0
02c06e50  tbz w0,#0x0,0x02c06f4c
02c06e54  mov w8,#0x45610000
02c06e58  ldr s8,[sp, #0xc]
02c06e5c  add x1,sp,#0x4
02c06e60  fmov s0,w8
02c06e64  adrp x8,0x5e58000
02c06e68  ldr x8,[x8, #0xa10]
02c06e6c  fdiv s0,s8,s0
02c06e70  ldr x0,[x8, #0x78]
02c06e74  str s0,[sp, #0x4]
02c06e78  bl 0x029f5bd8
02c06e7c  adrp x8,0x5e62000
02c06e80  mov x1,x0
02c06e84  mov x2,xzr
02c06e88  ldr x8,[x8, #0x70]
02c06e8c  ldr x8,[x8]
02c06e90  mov x0,x8
02c06e94  bl 0x046b6c0c
02c06e98  adrp x8,0x5e5d000
02c06e9c  mov x21,x0
02c06ea0  ldr x8,[x8, #0x3c0]
02c06ea4  ldr x8,[x8]
02c06ea8  ldr w9,[x8, #0xe4]
02c06eac  cbnz w9,0x02c06eb8
02c06eb0  mov x0,x8
02c06eb4  bl 0x029f5bd0
02c06eb8  mov x0,x21
02c06ebc  mov x1,xzr
02c06ec0  bl 0x02c25580
02c06ec4  adrp x8,0x5e62000
02c06ec8  ldr x8,[x8, #0x50]
02c06ecc  ldr x21,[x19, #0x28]
02c06ed0  ldr s9,[sp, #0x8]
02c06ed4  ldr x0,[x8]
02c06ed8  bl 0x029f5cec
02c06edc  adrp x8,0x5e62000
02c06ee0  mov x1,x20
02c06ee4  mov x3,xzr
02c06ee8  ldr x8,[x8, #0x68]
02c06eec  mov x22,x0
02c06ef0  ldr x2,[x8]
02c06ef4  bl 0x03d323cc
02c06ef8  adrp x8,0x5e62000
02c06efc  ldr x8,[x8, #0x40]
02c06f00  ldr d10,[x20, #0x28]
02c06f04  ldr x0,[x8]
02c06f08  ldr w8,[x0, #0xe4]
02c06f0c  cbnz w8,0x02c06f14
02c06f10  bl 0x029f5bd0
02c06f14  fmov s0,s8
02c06f18  fmov s1,s9
02c06f1c  mov x0,x21
02c06f20  fmov d2,d10
02c06f24  mov x1,x22
02c06f28  bl 0x02c06fd4
02c06f2c  mov x1,x0
02c06f30  str x0,[x19, #0x18]!
02c06f34  mov x0,x19
02c06f38  bl 0x029f59f4
02c06f3c  mov w8,#0x3
02c06f40  stur w8,[x19, #-0x8]
02c06f44  mov w0,#0x1
02c06f48  b 0x02c06fb4
02c06f4c  ldr x8,[x19, #0x30]
02c06f50  cbz x8,0x02c06f68
02c06f54  ldr x1,[x19, #0x28]
02c06f58  ldr x9,[x8, #0x18]
02c06f5c  ldr x0,[x8, #0x40]
02c06f60  ldr x2,[x8, #0x28]
02c06f64  blr x9
02c06f68  adrp x8,0x5e5d000
02c06f6c  ldr x8,[x8, #0x368]
02c06f70  ldr x8,[x8]
02c06f74  ldr x8,[x8, #0xb8]
02c06f78  ldr x0,[x8]
02c06f7c  cbz x0,0x02c06fa8
02c06f80  mov x1,xzr
02c06f84  bl 0x02c2a620
02c06f88  b 0x02c06fa8
02c06f8c  ldr x8,[x19, #0x30]
02c06f90  cbz x8,0x02c06fa8
02c06f94  ldr x1,[x19, #0x28]
02c06f98  ldr x9,[x8, #0x18]
02c06f9c  ldr x0,[x8, #0x40]
02c06fa0  ldr x2,[x8, #0x28]
02c06fa4  blr x9
02c06fa8  mov x0,x20
02c06fac  bl 0x02c06ba4
02c06fb0  mov w0,wzr
02c06fb4  ldp x20,x19,[sp, #0x40]
02c06fb8  ldr x30,[sp, #0x28]
02c06fbc  ldp x22,x21,[sp, #0x30]
02c06fc0  ldr d10,[sp, #0x10]
02c06fc4  ldp d9,d8,[sp, #0x18]
02c06fc8  add sp,sp,#0x50
02c06fcc  ret
02c06fd0  bl 0x029f5cfc
