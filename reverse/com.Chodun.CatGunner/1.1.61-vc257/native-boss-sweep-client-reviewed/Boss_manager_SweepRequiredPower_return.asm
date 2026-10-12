02c46c8c  sub sp,sp,#0x100
02c46c90  stp d9,d8,[sp, #0xc0]
02c46c94  str x30,[sp, #0xd0]
02c46c98  stp x22,x21,[sp, #0xe0]
02c46c9c  stp x20,x19,[sp, #0xf0]
02c46ca0  movi v0.2D,#0x0
02c46ca4  mov w20,w1
02c46ca8  mov x21,x0
02c46cac  mov x19,x8
02c46cb0  stp q0,q0,[sp, #0x60]
02c46cb4  stp q0,q0,[sp, #0x80]
02c46cb8  stp q0,q0,[sp, #0xa0]
02c46cbc  bl 0x02c463bc
02c46cc0  mov w8,#0x428c0000
02c46cc4  mov w9,#0x42c80000
02c46cc8  adrp x22,0x625b000
02c46ccc  fmov s1,w8
02c46cd0  fmov s9,w9
02c46cd4  ldrb w8,[x22, #0x95a]
02c46cd8  fmul s8,s0,s1
02c46cdc  cbnz w8,0x02c46cf4
02c46ce0  adrp x0,0x5e59000
02c46ce4  ldr x0,[x0]
02c46ce8  bl 0x029f5a50
02c46cec  mov w8,#0x1
02c46cf0  strb w8,[x22, #0x95a]
02c46cf4  fdiv s9,s8,s9
02c46cf8  adrp x8,0x5e59000
02c46cfc  ldr x8,[x8]
02c46d00  ldr x0,[x8]
02c46d04  ldr w8,[x0, #0xe4]
02c46d08  cbnz w8,0x02c46d10
02c46d0c  bl 0x029f5bd0
02c46d10  fcvt d8,s9
02c46d14  add x0,sp,#0x40
02c46d18  fmov d0,d8
02c46d1c  bl 0x05afb230
02c46d20  fcmp s9,#0.0
02c46d24  b.ge 0x02c46d40
02c46d28  fmov d1,-0x4020000000000000
02c46d2c  fcmp d0,d1
02c46d30  b.ne 0x02c46d68
02c46d34  ldr d0,[sp, #0x40]
02c46d38  fmov d1,-0x4010000000000000
02c46d3c  b 0x02c46d54
02c46d40  fmov d1,0x3fe0000000000000
02c46d44  fcmp d0,d1
02c46d48  b.ne 0x02c46d74
02c46d4c  fmov d1,0x3ff0000000000000
02c46d50  ldr d0,[sp, #0x40]
02c46d54  fcvtzs x8,d0
02c46d58  fadd d1,d0,d1
02c46d5c  tst x8,#0x1
02c46d60  fcsel d0,d0,d1,eq
02c46d64  b 0x02c46d7c
02c46d68  fadd d0,d8,d1
02c46d6c  frintp d0,d0
02c46d70  b 0x02c46d7c
02c46d74  fadd d0,d8,d1
02c46d78  frintm d0,d0
02c46d7c  fcvtzs w8,d0
02c46d80  mov x9,#0x7ff0000000000000
02c46d84  mov x0,x21
02c46d88  fmov d1,x9
02c46d8c  mov w1,w20
02c46d90  cmp w8,#0x1
02c46d94  csinc w8,w8,wzr,gt
02c46d98  fcmp d0,d1
02c46d9c  csinc w22,w8,wzr,ne
02c46da0  add x8,sp,#0xa0
02c46da4  bl 0x02c46e10
02c46da8  add x8,sp,#0x40
02c46dac  mov w0,w22
02c46db0  mov x1,xzr
02c46db4  bl 0x046544b8
02c46db8  ldp q0,q1,[sp, #0x40]
02c46dbc  add x8,sp,#0x20
02c46dc0  add x0,sp,#0xa0
02c46dc4  add x1,sp,#0x80
02c46dc8  mov x2,xzr
02c46dcc  stp q0,q1,[sp, #0x80]
02c46dd0  bl 0x046587e8
02c46dd4  ldp q0,q1,[sp, #0x20]
02c46dd8  mov x8,sp
02c46ddc  add x0,sp,#0x60
02c46de0  mov w1,#0x5
02c46de4  mov x2,xzr
02c46de8  stp q0,q1,[sp, #0x60]
02c46dec  bl 0x04658464
02c46df0  ldp q0,q1,[sp]
02c46df4  ldr x30,[sp, #0xd0]
02c46df8  ldp x22,x21,[sp, #0xe0]
02c46dfc  ldp d9,d8,[sp, #0xc0]
02c46e00  stp q0,q1,[x19]
02c46e04  ldp x20,x19,[sp, #0xf0]
02c46e08  add sp,sp,#0x100
02c46e0c  ret
