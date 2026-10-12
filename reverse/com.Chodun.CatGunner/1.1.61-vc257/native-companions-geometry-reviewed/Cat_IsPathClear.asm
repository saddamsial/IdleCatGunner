02c40d74  sub sp,sp,#0xa0
02c40d78  stp d15,d14,[sp, #0x40]
02c40d7c  stp d13,d12,[sp, #0x50]
02c40d80  stp d11,d10,[sp, #0x60]
02c40d84  stp d9,d8,[sp, #0x70]
02c40d88  str x30,[sp, #0x80]
02c40d8c  stp x20,x19,[sp, #0x90]
02c40d90  fmov s8,s5
02c40d94  fmov s10,s3
02c40d98  adrp x20,0x625c000
02c40d9c  fmov s9,s2
02c40da0  fmov s11,s0
02c40da4  ldrb w8,[x20, #0xa6]
02c40da8  mov x19,x0
02c40dac  tbnz w8,#0x0,0x02c40dd0
02c40db0  adrp x0,0x5e63000
02c40db4  ldr x0,[x0, #0x1d8]
02c40db8  bl 0x029f5a50
02c40dbc  adrp x0,0x5e5b000
02c40dc0  ldr x0,[x0, #0xa0]
02c40dc4  bl 0x029f5a50
02c40dc8  mov w8,#0x1
02c40dcc  strb w8,[x20, #0xa6]
02c40dd0  adrp x20,0x625b000
02c40dd4  ldrb w8,[x20, #0xae8]
02c40dd8  cbnz w8,0x02c40df0
02c40ddc  adrp x0,0x5e59000
02c40de0  ldr x0,[x0]
02c40de4  bl 0x029f5a50
02c40de8  mov w8,#0x1
02c40dec  strb w8,[x20, #0xae8]
02c40df0  adrp x8,0x5e59000
02c40df4  fsub s10,s10,s11
02c40df8  fsub s15,s8,s9
02c40dfc  ldr x8,[x8]
02c40e00  ldr x0,[x8]
02c40e04  ldr w8,[x0, #0xe4]
02c40e08  cbnz w8,0x02c40e10
02c40e0c  bl 0x029f5bd0
02c40e10  fmul s0,s10,s10
02c40e14  fmul s1,s15,s15
02c40e18  adrp x8,0x116c000
02c40e1c  fadd s0,s0,s1
02c40e20  fsqrt s14,s0
02c40e24  ldr s0,[x8, #0x88]
02c40e28  fcmp s14,s0
02c40e2c  b.pl 0x02c40e38
02c40e30  mov w8,#0x1
02c40e34  b 0x02c40f24
02c40e38  ldr x0,[x19, #0xe8]
02c40e3c  cbz x0,0x02c40f48
02c40e40  mov x1,xzr
02c40e44  bl 0x057eed98
02c40e48  stp s1,s0,[sp, #0x88]
02c40e4c  adrp x20,0x5e63000
02c40e50  ldr x20,[x20, #0x1d8]
02c40e54  str s2,[sp, #0x3c]
02c40e58  ldr x0,[x20]
02c40e5c  ldr w8,[x0, #0xe4]
02c40e60  cbnz w8,0x02c40e6c
02c40e64  bl 0x029f5bd0
02c40e68  ldr x0,[x20]
02c40e6c  ldr x8,[x0, #0xb8]
02c40e70  movi d8,#0x0
02c40e74  adrp x20,0x625b000
02c40e78  ldrb w9,[x20, #0x274]
02c40e7c  ldp s1,s0,[x8, #0x14]
02c40e80  stp s0,s1,[sp, #0x34]
02c40e84  ldr s0,[x8, #0x1c]
02c40e88  str s0,[sp, #0x30]
02c40e8c  cbnz w9,0x02c40ea4
02c40e90  adrp x0,0x5e59000
02c40e94  ldr x0,[x0, #0x610]
02c40e98  bl 0x029f5a50
02c40e9c  mov w8,#0x1
02c40ea0  strb w8,[x20, #0x274]
02c40ea4  adrp x8,0x5e59000
02c40ea8  fdiv s9,s8,s14
02c40eac  mov x1,xzr
02c40eb0  ldr x8,[x8, #0x610]
02c40eb4  ldr w0,[x19, #0x1b4]
02c40eb8  ldr x8,[x8]
02c40ebc  ldr x8,[x8, #0xb8]
02c40ec0  ldp s8,s11,[x8]
02c40ec4  ldp s12,s13,[x8, #0x8]
02c40ec8  fdiv s10,s10,s14
02c40ecc  fdiv s15,s15,s14
02c40ed0  bl 0x057e0dd4
02c40ed4  adrp x8,0x5e5b000
02c40ed8  mov w19,w0
02c40edc  ldr x8,[x8, #0xa0]
02c40ee0  ldr x8,[x8]
02c40ee4  ldr w9,[x8, #0xe4]
02c40ee8  cbnz w9,0x02c40ef4
02c40eec  mov x0,x8
02c40ef0  bl 0x029f5bd0
02c40ef4  ldp s1,s0,[sp, #0x88]
02c40ef8  mov x1,xzr
02c40efc  ldp s3,s2,[sp, #0x38]
02c40f00  mov w0,w19
02c40f04  ldp s5,s4,[sp, #0x30]
02c40f08  stp s13,s14,[sp, #0x1c]
02c40f0c  stp s11,s12,[sp, #0x14]
02c40f10  str s8,[sp, #0x10]
02c40f14  stp s9,s15,[sp, #0x4]
02c40f18  str s10,[sp]
02c40f1c  bl 0x05868290
02c40f20  eor w8,w0,#0x1
02c40f24  ldp x20,x19,[sp, #0x90]
02c40f28  and w0,w8,#0x1
02c40f2c  ldp d9,d8,[sp, #0x70]
02c40f30  ldr x30,[sp, #0x80]
02c40f34  ldp d11,d10,[sp, #0x60]
02c40f38  ldp d13,d12,[sp, #0x50]
02c40f3c  ldp d15,d14,[sp, #0x40]
02c40f40  add sp,sp,#0xa0
02c40f44  ret
02c40f48  bl 0x029f5cfc
