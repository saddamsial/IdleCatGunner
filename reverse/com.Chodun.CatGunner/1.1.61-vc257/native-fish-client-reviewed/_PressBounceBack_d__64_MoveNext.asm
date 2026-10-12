02c62a68  stp d9,d8,[sp, #-0x40]!
02c62a6c  str x30,[sp, #0x10]
02c62a70  stp x22,x21,[sp, #0x20]
02c62a74  stp x20,x19,[sp, #0x30]
02c62a78  adrp x20,0x625c000
02c62a7c  mov x19,x0
02c62a80  ldrb w8,[x20, #0x230]
02c62a84  tbnz w8,#0x0,0x02c62aa8
02c62a88  adrp x0,0x5e63000
02c62a8c  ldr x0,[x0, #0x170]
02c62a90  bl 0x029f5a50
02c62a94  adrp x0,0x5e5d000
02c62a98  ldr x0,[x0, #0x5e8]
02c62a9c  bl 0x029f5a50
02c62aa0  mov w8,#0x1
02c62aa4  strb w8,[x20, #0x230]
02c62aa8  ldr w8,[x19, #0x10]
02c62aac  ldr x20,[x19, #0x20]
02c62ab0  cmp w8,#0x1
02c62ab4  b.eq 0x02c62c00
02c62ab8  cbnz w8,0x02c62d38
02c62abc  adrp x8,0x5e63000
02c62ac0  mov w9,#0xffffffff
02c62ac4  mov w1,#0x3
02c62ac8  ldr x8,[x8, #0x170]
02c62acc  str w9,[x19, #0x10]
02c62ad0  ldr x0,[x8]
02c62ad4  bl 0x029f5b40
02c62ad8  adrp x22,0x5e5d000
02c62adc  mov x21,x0
02c62ae0  mov w1,#0x2
02c62ae4  ldr x22,[x22, #0x5e8]
02c62ae8  ldr x8,[x22]
02c62aec  mov x0,x8
02c62af0  bl 0x029f5b40
02c62af4  cbz x0,0x02c62e24
02c62af8  ldr w8,[x0, #0x18]
02c62afc  mov x1,x0
02c62b00  cbz w8,0x02c62e28
02c62b04  mov w9,#0x6666
02c62b08  cmp w8,#0x1
02c62b0c  movk w9,#0x3f86, LSL #16
02c62b10  str w9,[x1, #0x20]
02c62b14  b.eq 0x02c62e28
02c62b18  mov w8,#0xd70a
02c62b1c  movk w8,#0x3da3, LSL #16
02c62b20  str w8,[x1, #0x24]
02c62b24  cbz x21,0x02c62e24
02c62b28  ldr w8,[x21, #0x18]
02c62b2c  cbz w8,0x02c62e28
02c62b30  mov x0,x21
02c62b34  str x1,[x0, #0x20]!
02c62b38  bl 0x029f59f4
02c62b3c  ldr x0,[x22]
02c62b40  mov w1,#0x2
02c62b44  bl 0x029f5b40
02c62b48  cbz x0,0x02c62e24
02c62b4c  ldr w8,[x0, #0x18]
02c62b50  mov x1,x0
02c62b54  cbz w8,0x02c62e28
02c62b58  mov w9,#0xe148
02c62b5c  cmp w8,#0x1
02c62b60  movk w9,#0x3f7a, LSL #16
02c62b64  str w9,[x1, #0x20]
02c62b68  b.eq 0x02c62e28
02c62b6c  mov w8,#0xc28f
02c62b70  movk w8,#0x3d75, LSL #16
02c62b74  str w8,[x1, #0x24]
02c62b78  ldr w8,[x21, #0x18]
02c62b7c  tst w8,#0xfffffffe
02c62b80  b.eq 0x02c62e28
02c62b84  mov x0,x21
02c62b88  str x1,[x0, #0x28]!
02c62b8c  bl 0x029f59f4
02c62b90  ldr x0,[x22]
02c62b94  mov w1,#0x2
02c62b98  bl 0x029f5b40
02c62b9c  cbz x0,0x02c62e24
02c62ba0  ldr w8,[x0, #0x18]
02c62ba4  mov x1,x0
02c62ba8  cbz w8,0x02c62e28
02c62bac  mov w9,#0x3f800000
02c62bb0  cmp w8,#0x1
02c62bb4  str w9,[x1, #0x20]
02c62bb8  b.eq 0x02c62e28
02c62bbc  ldr w8,[x21, #0x18]
02c62bc0  mov w9,#0xcccd
02c62bc4  movk w9,#0x3d4c, LSL #16
02c62bc8  cmp w8,#0x2
02c62bcc  str w9,[x1, #0x24]
02c62bd0  b.ls 0x02c62e28
02c62bd4  mov x0,x21
02c62bd8  str x1,[x0, #0x30]!
02c62bdc  bl 0x029f59f4
02c62be0  mov x22,x19
02c62be4  mov x1,x21
02c62be8  str x21,[x22, #0x28]!
02c62bec  mov x0,x22
02c62bf0  bl 0x029f59f4
02c62bf4  mov w8,wzr
02c62bf8  str wzr,[x22, #0x8]
02c62bfc  b 0x02c62cf0
02c62c00  ldp s0,s8,[x19, #0x4c]
02c62c04  mov w8,#0xffffffff
02c62c08  str w8,[x19, #0x10]
02c62c0c  b 0x02c62cac
02c62c10  cbz x20,0x02c62e24
02c62c14  mov x0,x20
02c62c18  mov x1,xzr
02c62c1c  bl 0x057dc0f8
02c62c20  cbz x0,0x02c62e24
02c62c24  mov x1,xzr
02c62c28  bl 0x057ef578
02c62c2c  ldr x8,[x19, #0x28]
02c62c30  stp s0,s1,[x19, #0x34]
02c62c34  str s2,[x19, #0x3c]
02c62c38  cbz x8,0x02c62e24
02c62c3c  ldrsw x9,[x19, #0x30]
02c62c40  ldr w10,[x8, #0x18]
02c62c44  cmp w9,w10
02c62c48  b.cs 0x02c62e28
02c62c4c  add x10,x8,x9, LSL #0x3
02c62c50  ldr x11,[x10, #0x20]!
02c62c54  cbz x11,0x02c62e24
02c62c58  ldr w12,[x11, #0x18]
02c62c5c  cbz w12,0x02c62e28
02c62c60  ldur d0,[x20, #0x9c]
02c62c64  ldr s1,[x11, #0x20]
02c62c68  ldr s2,[x20, #0xa4]
02c62c6c  fmul v0.2S,v0.2S,v1.S[0x0]
02c62c70  fmul s1,s2,s1
02c62c74  str d0,[x19, #0x40]
02c62c78  str s1,[x19, #0x48]
02c62c7c  ldr w8,[x8, #0x18]
02c62c80  cmp w9,w8
02c62c84  b.cs 0x02c62e28
02c62c88  ldr x8,[x10]
02c62c8c  cbz x8,0x02c62e24
02c62c90  ldr w9,[x8, #0x18]
02c62c94  tst w9,#0xfffffffe
02c62c98  b.eq 0x02c62e28
02c62c9c  ldr s0,[x8, #0x24]
02c62ca0  movi d8,#0x0
02c62ca4  str wzr,[x19, #0x50]
02c62ca8  str s0,[x19, #0x4c]
02c62cac  fcmp s8,s0
02c62cb0  b.mi 0x02c62d40
02c62cb4  cbz x20,0x02c62e24
02c62cb8  mov x0,x20
02c62cbc  mov x1,xzr
02c62cc0  bl 0x057dc0f8
02c62cc4  cbz x0,0x02c62e24
02c62cc8  ldp s1,s2,[x19, #0x44]
02c62ccc  mov x1,xzr
02c62cd0  ldr s0,[x19, #0x40]
02c62cd4  bl 0x057ef654
02c62cd8  ldr w8,[x19, #0x30]
02c62cdc  stur xzr,[x19, #0x3c]
02c62ce0  stur xzr,[x19, #0x34]
02c62ce4  add w8,w8,#0x1
02c62ce8  stur xzr,[x19, #0x44]
02c62cec  str w8,[x19, #0x30]
02c62cf0  ldr x9,[x19, #0x28]
02c62cf4  cbz x9,0x02c62e24
02c62cf8  ldr w9,[x9, #0x18]
02c62cfc  cmp w8,w9
02c62d00  b.lt 0x02c62c10
02c62d04  cbz x20,0x02c62e24
02c62d08  mov x0,x20
02c62d0c  mov x1,xzr
02c62d10  bl 0x057dc0f8
02c62d14  cbz x0,0x02c62e24
02c62d18  ldp s1,s2,[x20, #0xa0]
02c62d1c  mov x1,xzr
02c62d20  ldr s0,[x20, #0x9c]
02c62d24  bl 0x057ef654
02c62d28  str xzr,[x20, #0xa8]!
02c62d2c  mov x0,x20
02c62d30  mov x1,xzr
02c62d34  bl 0x029f59f4
02c62d38  mov w0,wzr
02c62d3c  b 0x02c62e10
02c62d40  mov x0,xzr
02c62d44  bl 0x057ebb34
02c62d48  fadd s8,s8,s0
02c62d4c  str s8,[x19, #0x50]
02c62d50  cbz x20,0x02c62e24
02c62d54  ldr s9,[x19, #0x4c]
02c62d58  mov x0,x20
02c62d5c  mov x1,xzr
02c62d60  bl 0x057dc0f8
02c62d64  cbz x0,0x02c62e24
02c62d68  fdiv s0,s8,s9
02c62d6c  fmov s1,0x3f800000
02c62d70  movi d3,#0x0
02c62d74  fmov s4,0x40400000
02c62d78  mov x1,xzr
02c62d7c  fcmp s0,s1
02c62d80  fcsel s2,s1,s0,gt
02c62d84  fcmp s0,#0.0
02c62d88  fcsel s0,s3,s2,mi
02c62d8c  fcmp s0,#0.0
02c62d90  fcsel s0,s3,s0,mi
02c62d94  fadd s2,s0,s0
02c62d98  fmul s4,s0,s4
02c62d9c  fmul s2,s0,s2
02c62da0  fmul s4,s0,s4
02c62da4  fmul s0,s0,s2
02c62da8  fsub s0,s4,s0
02c62dac  ldr s4,[x19, #0x48]
02c62db0  fsub s2,s1,s0
02c62db4  fmul s2,s2,s3
02c62db8  fadd s0,s0,s2
02c62dbc  ldr d2,[x19, #0x40]
02c62dc0  fcmp s0,s1
02c62dc4  fcsel s1,s1,s0,gt
02c62dc8  fcmp s0,#0.0
02c62dcc  ldur d0,[x19, #0x34]
02c62dd0  fsub v2.2S,v2.2S,v0.2S
02c62dd4  fcsel s1,s3,s1,mi
02c62dd8  ldr s3,[x19, #0x3c]
02c62ddc  fsub s4,s4,s3
02c62de0  fmul v2.2S,v2.2S,v1.S[0x0]
02c62de4  fmul s1,s1,s4
02c62de8  fadd v0.2S,v0.2S,v2.2S
02c62dec  fadd s2,s3,s1
02c62df0  dup s1,v0.S[0x1]
02c62df4  bl 0x057ef654
02c62df8  str xzr,[x19, #0x18]!
02c62dfc  mov x0,x19
02c62e00  mov x1,xzr
02c62e04  bl 0x029f59f4
02c62e08  mov w0,#0x1
02c62e0c  stur w0,[x19, #-0x8]
02c62e10  ldp x20,x19,[sp, #0x30]
02c62e14  ldr x30,[sp, #0x10]
02c62e18  ldp x22,x21,[sp, #0x20]
02c62e1c  ldp d9,d8,[sp], #0x40
02c62e20  ret
02c62e24  bl 0x029f5cfc
02c62e28  bl 0x029f5d04
