02c81918  stp d9,d8,[sp, #-0x30]!
02c8191c  str x30,[sp, #0x10]
02c81920  stp x20,x19,[sp, #0x20]
02c81924  ldr w8,[x0, #0x10]
02c81928  ldr x20,[x0, #0x20]
02c8192c  mov x19,x0
02c81930  cmp w8,#0x1
02c81934  b.eq 0x02c81974
02c81938  cbnz w8,0x02c81a94
02c8193c  mov w8,#0xffffffff
02c81940  str w8,[x19, #0x10]
02c81944  cbz x20,0x02c81aa8
02c81948  mov x0,x20
02c8194c  mov x1,xzr
02c81950  bl 0x057dc0f8
02c81954  cbz x0,0x02c81aa8
02c81958  mov x1,xzr
02c8195c  bl 0x057ef578
02c81960  movi d8,#0x0
02c81964  stp s0,s1,[x19, #0x38]
02c81968  str s2,[x19, #0x40]
02c8196c  str wzr,[x19, #0x44]
02c81970  b 0x02c81980
02c81974  ldr s8,[x19, #0x44]
02c81978  mov w8,#0xffffffff
02c8197c  str w8,[x19, #0x10]
02c81980  ldr s0,[x19, #0x28]
02c81984  fcmp s8,s0
02c81988  b.pl 0x02c81a60
02c8198c  mov x0,xzr
02c81990  bl 0x057ebb34
02c81994  fadd s8,s8,s0
02c81998  str s8,[x19, #0x44]
02c8199c  cbz x20,0x02c81aa8
02c819a0  ldr s9,[x19, #0x28]
02c819a4  mov x0,x20
02c819a8  mov x1,xzr
02c819ac  bl 0x057dc0f8
02c819b0  cbz x0,0x02c81aa8
02c819b4  fdiv s0,s8,s9
02c819b8  fmov s1,0x3f800000
02c819bc  movi d3,#0x0
02c819c0  fmov s4,0x40400000
02c819c4  mov x1,xzr
02c819c8  fcmp s0,s1
02c819cc  fcsel s2,s1,s0,gt
02c819d0  fcmp s0,#0.0
02c819d4  fcsel s0,s3,s2,mi
02c819d8  fcmp s0,#0.0
02c819dc  fcsel s0,s3,s0,mi
02c819e0  fadd s2,s0,s0
02c819e4  fmul s4,s0,s4
02c819e8  fmul s2,s0,s2
02c819ec  fmul s4,s0,s4
02c819f0  fmul s0,s0,s2
02c819f4  fsub s0,s4,s0
02c819f8  ldr s4,[x19, #0x34]
02c819fc  fsub s2,s1,s0
02c81a00  fmul s2,s2,s3
02c81a04  fadd s0,s0,s2
02c81a08  ldur d2,[x19, #0x2c]
02c81a0c  fcmp s0,s1
02c81a10  fcsel s1,s1,s0,gt
02c81a14  fcmp s0,#0.0
02c81a18  ldr d0,[x19, #0x38]
02c81a1c  fsub v2.2S,v2.2S,v0.2S
02c81a20  fcsel s1,s3,s1,mi
02c81a24  ldr s3,[x19, #0x40]
02c81a28  fsub s4,s4,s3
02c81a2c  fmul v2.2S,v2.2S,v1.S[0x0]
02c81a30  fmul s1,s1,s4
02c81a34  fadd v0.2S,v0.2S,v2.2S
02c81a38  fadd s2,s3,s1
02c81a3c  dup s1,v0.S[0x1]
02c81a40  bl 0x057ef654
02c81a44  str xzr,[x19, #0x18]!
02c81a48  mov x0,x19
02c81a4c  mov x1,xzr
02c81a50  bl 0x029f59f4
02c81a54  mov w0,#0x1
02c81a58  stur w0,[x19, #-0x8]
02c81a5c  b 0x02c81a98
02c81a60  cbz x20,0x02c81aa8
02c81a64  mov x0,x20
02c81a68  mov x1,xzr
02c81a6c  bl 0x057dc0f8
02c81a70  cbz x0,0x02c81aa8
02c81a74  ldp s1,s2,[x19, #0x30]
02c81a78  mov x1,xzr
02c81a7c  ldr s0,[x19, #0x2c]
02c81a80  bl 0x057ef654
02c81a84  str xzr,[x20, #0xd0]!
02c81a88  mov x0,x20
02c81a8c  mov x1,xzr
02c81a90  bl 0x029f59f4
02c81a94  mov w0,wzr
02c81a98  ldp x20,x19,[sp, #0x20]
02c81a9c  ldr x30,[sp, #0x10]
02c81aa0  ldp d9,d8,[sp], #0x30
02c81aa4  ret
02c81aa8  bl 0x029f5cfc
