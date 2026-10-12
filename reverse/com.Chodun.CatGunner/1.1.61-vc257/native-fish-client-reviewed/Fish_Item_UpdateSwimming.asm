02c60dac  stp d11,d10,[sp, #-0x30]!
02c60db0  stp d9,d8,[sp, #0x10]
02c60db4  stp x30,x19,[sp, #0x20]
02c60db8  mov x19,x0
02c60dbc  ldr x0,[x0, #0x50]
02c60dc0  cbz x0,0x02c60ec0
02c60dc4  mov x1,xzr
02c60dc8  bl 0x057eddfc
02c60dcc  fmov s8,s0
02c60dd0  ldp s0,s2,[x19, #0xb4]
02c60dd4  ldr s3,[x19, #0xbc]
02c60dd8  mov x0,xzr
02c60ddc  fmov s9,s1
02c60de0  fmul s10,s0,s3
02c60de4  fmul s11,s2,s3
02c60de8  bl 0x057ebabc
02c60dec  fmul s1,s10,s0
02c60df0  fmul s0,s11,s0
02c60df4  mov x0,x19
02c60df8  fadd s8,s8,s1
02c60dfc  fadd s9,s9,s0
02c60e00  fmov s0,s8
02c60e04  fmov s1,s9
02c60e08  bl 0x02c61a8c
02c60e0c  ldr x0,[x19, #0x50]
02c60e10  cbz x0,0x02c60ec0
02c60e14  mov x1,xzr
02c60e18  fabd s9,s1,s9
02c60e1c  fabd s10,s0,s8
02c60e20  bl 0x057edec8
02c60e24  adrp x8,0x116c000
02c60e28  ldr s8,[x8, #0x174]
02c60e2c  fcmp s10,s8
02c60e30  b.le 0x02c60e48
02c60e34  ldr s0,[x19, #0xb4]
02c60e38  mov x0,x19
02c60e3c  fneg s0,s0
02c60e40  str s0,[x19, #0xb4]
02c60e44  bl 0x02c61768
02c60e48  fcmp s9,s8
02c60e4c  b.le 0x02c60e5c
02c60e50  ldr s0,[x19, #0xb8]
02c60e54  fneg s0,s0
02c60e58  str s0,[x19, #0xb8]
02c60e5c  ldr s8,[x19, #0xc0]
02c60e60  mov x0,xzr
02c60e64  bl 0x057ebabc
02c60e68  fsub s0,s8,s0
02c60e6c  fcmp s0,#0.0
02c60e70  str s0,[x19, #0xc0]
02c60e74  b.hi 0x02c60eac
02c60e78  mov x0,x19
02c60e7c  bl 0x02c6197c
02c60e80  fmov s0,0x40000000
02c60e84  fmov s1,0x40a00000
02c60e88  mov x0,xzr
02c60e8c  bl 0x057d55d4
02c60e90  mov w8,#0x420c0000
02c60e94  str s0,[x19, #0xc0]
02c60e98  fmov s0,0x41700000
02c60e9c  fmov s1,w8
02c60ea0  mov x0,xzr
02c60ea4  bl 0x057d55d4
02c60ea8  str s0,[x19, #0xbc]
02c60eac  mov x0,x19
02c60eb0  ldp x30,x19,[sp, #0x20]
02c60eb4  ldp d9,d8,[sp, #0x10]
02c60eb8  ldp d11,d10,[sp], #0x30
02c60ebc  b 0x02c613e4
02c60ec0  bl 0x029f5cfc
