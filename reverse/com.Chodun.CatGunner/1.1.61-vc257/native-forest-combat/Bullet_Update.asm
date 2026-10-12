02c65c44  sub sp,sp,#0x70
02c65c48  stp d15,d14,[sp, #0x10]
02c65c4c  stp d13,d12,[sp, #0x20]
02c65c50  stp d11,d10,[sp, #0x30]
02c65c54  stp d9,d8,[sp, #0x40]
02c65c58  stp x30,x21,[sp, #0x50]
02c65c5c  stp x20,x19,[sp, #0x60]
02c65c60  ldrb w8,[x0, #0x68]
02c65c64  cbz w8,0x02c65c88
02c65c68  ldp x20,x19,[sp, #0x60]
02c65c6c  ldp x30,x21,[sp, #0x50]
02c65c70  ldp d9,d8,[sp, #0x40]
02c65c74  ldp d11,d10,[sp, #0x30]
02c65c78  ldp d13,d12,[sp, #0x20]
02c65c7c  ldp d15,d14,[sp, #0x10]
02c65c80  add sp,sp,#0x70
02c65c84  ret
02c65c88  ldrb w8,[x0, #0xa4]
02c65c8c  mov x19,x0
02c65c90  cbz w8,0x02c65c68
02c65c94  ldr s8,[x19, #0xc8]
02c65c98  mov x0,xzr
02c65c9c  bl 0x057ebabc
02c65ca0  fadd s0,s8,s0
02c65ca4  ldp s4,s1,[x19, #0xc0]
02c65ca8  fmov s2,0x3f800000
02c65cac  movi d3,#0x0
02c65cb0  mov x0,x19
02c65cb4  ldp s15,s8,[x19, #0xa8]
02c65cb8  mov x1,xzr
02c65cbc  fdiv s1,s0,s1
02c65cc0  str s0,[x19, #0xc8]
02c65cc4  fcmp s1,s2
02c65cc8  fcsel s2,s2,s1,gt
02c65ccc  fcmp s1,#0.0
02c65cd0  fcsel s1,s3,s2,mi
02c65cd4  ldp s12,s2,[x19, #0xb0]
02c65cd8  fcmp s1,#0.0
02c65cdc  stp s4,s1,[sp, #0x8]
02c65ce0  fcsel s11,s3,s1,mi
02c65ce4  ldp s13,s1,[x19, #0xb8]
02c65ce8  stp s1,s2,[sp]
02c65cec  bl 0x057dc0f8
02c65cf0  cbz x0,0x02c65ed8
02c65cf4  mov x1,xzr
02c65cf8  bl 0x057eed98
02c65cfc  mov x0,x19
02c65d00  mov x1,xzr
02c65d04  fmov s9,s0
02c65d08  fmov s10,s1
02c65d0c  fmov s14,s2
02c65d10  bl 0x057dc0f8
02c65d14  cbz x0,0x02c65ed8
02c65d18  fmov s0,0x40800000
02c65d1c  ldp s2,s3,[sp, #0x4]
02c65d20  fsub s1,s13,s8
02c65d24  fmov s5,0x3f800000
02c65d28  ldr s4,[sp, #0xc]
02c65d2c  mov x1,xzr
02c65d30  fmul s0,s3,s0
02c65d34  ldr s3,[sp]
02c65d38  fsub s2,s2,s15
02c65d3c  fsub s3,s3,s12
02c65d40  fmul s1,s11,s1
02c65d44  fmul s0,s4,s0
02c65d48  fsub s4,s5,s4
02c65d4c  fmul s2,s2,s11
02c65d50  fmul s3,s3,s11
02c65d54  fadd s1,s8,s1
02c65d58  fmul s0,s4,s0
02c65d5c  fadd s11,s15,s2
02c65d60  fadd s12,s12,s3
02c65d64  fadd s13,s1,s0
02c65d68  fmov s0,s11
02c65d6c  fmov s2,s12
02c65d70  fmov s1,s13
02c65d74  bl 0x057eee74
02c65d78  fsub s11,s11,s9
02c65d7c  fsub s13,s13,s10
02c65d80  adrp x8,0x116c000
02c65d84  fsub s12,s12,s14
02c65d88  fmul s0,s11,s11
02c65d8c  fmul s1,s13,s13
02c65d90  fadd s0,s0,s1
02c65d94  fmul s1,s12,s12
02c65d98  fadd s8,s1,s0
02c65d9c  ldr s0,[x8, #0x200]
02c65da0  fcmp s8,s0
02c65da4  b.le 0x02c65e5c
02c65da8  mov x0,x19
02c65dac  mov x1,xzr
02c65db0  bl 0x057dc0f8
02c65db4  adrp x21,0x625b000
02c65db8  mov x20,x0
02c65dbc  ldrb w8,[x21, #0x52e]
02c65dc0  cbnz w8,0x02c65dd8
02c65dc4  adrp x0,0x5e59000
02c65dc8  ldr x0,[x0]
02c65dcc  bl 0x029f5a50
02c65dd0  mov w8,#0x1
02c65dd4  strb w8,[x21, #0x52e]
02c65dd8  adrp x8,0x5e59000
02c65ddc  ldr x8,[x8]
02c65de0  ldr x0,[x8]
02c65de4  ldr w8,[x0, #0xe4]
02c65de8  cbnz w8,0x02c65df0
02c65dec  bl 0x029f5bd0
02c65df0  fsqrt s2,s8
02c65df4  adrp x8,0x116c000
02c65df8  ldr s0,[x8, #0x240]
02c65dfc  fcmp s2,s0
02c65e00  b.le 0x02c65e14
02c65e04  fdiv s0,s11,s2
02c65e08  fdiv s1,s13,s2
02c65e0c  fdiv s2,s12,s2
02c65e10  b 0x02c65e4c
02c65e14  adrp x21,0x625b000
02c65e18  ldrb w8,[x21, #0x26f]
02c65e1c  cbnz w8,0x02c65e34
02c65e20  adrp x0,0x5e58000
02c65e24  ldr x0,[x0, #0xbf8]
02c65e28  bl 0x029f5a50
02c65e2c  mov w8,#0x1
02c65e30  strb w8,[x21, #0x26f]
02c65e34  adrp x8,0x5e58000
02c65e38  ldr x8,[x8, #0xbf8]
02c65e3c  ldr x8,[x8]
02c65e40  ldr x8,[x8, #0xb8]
02c65e44  ldp s0,s1,[x8]
02c65e48  ldr s2,[x8, #0x8]
02c65e4c  cbz x20,0x02c65ed8
02c65e50  mov x0,x20
02c65e54  mov x1,xzr
02c65e58  bl 0x057ef44c
02c65e5c  fmov s1,0x3f800000
02c65e60  ldr s0,[sp, #0xc]
02c65e64  stp s9,s10,[x19, #0x6c]
02c65e68  str s14,[x19, #0x74]
02c65e6c  fcmp s0,s1
02c65e70  b.lt 0x02c65c68
02c65e74  mov x0,x19
02c65e78  mov x1,xzr
02c65e7c  bl 0x057dc0f8
02c65e80  cbz x0,0x02c65ed8
02c65e84  mov x1,xzr
02c65e88  bl 0x057eed98
02c65e8c  mov x0,x19
02c65e90  bl 0x02c65edc
02c65e94  mov x0,x19
02c65e98  mov x1,xzr
02c65e9c  bl 0x057dc0f8
02c65ea0  cbz x0,0x02c65ed8
02c65ea4  mov x1,xzr
02c65ea8  bl 0x057eed98
02c65eac  mov x0,x19
02c65eb0  bl 0x02c66180
02c65eb4  mov x0,x19
02c65eb8  ldp x20,x19,[sp, #0x60]
02c65ebc  ldp x30,x21,[sp, #0x50]
02c65ec0  ldp d9,d8,[sp, #0x40]
02c65ec4  ldp d11,d10,[sp, #0x30]
02c65ec8  ldp d13,d12,[sp, #0x20]
02c65ecc  ldp d15,d14,[sp, #0x10]
02c65ed0  add sp,sp,#0x70
02c65ed4  b 0x02c66330
02c65ed8  bl 0x029f5cfc
