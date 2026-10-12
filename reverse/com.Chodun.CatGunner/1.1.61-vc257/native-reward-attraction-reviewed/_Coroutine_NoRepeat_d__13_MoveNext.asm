02b9b0f4  stp d13,d12,[sp, #-0x50]!
02b9b0f8  stp d11,d10,[sp, #0x10]
02b9b0fc  stp d9,d8,[sp, #0x20]
02b9b100  stp x30,x21,[sp, #0x30]
02b9b104  stp x20,x19,[sp, #0x40]
02b9b108  adrp x19,0x625b000
02b9b10c  mov x20,x0
02b9b110  ldrb w8,[x19, #0x9b2]
02b9b114  tbnz w8,#0x0,0x02b9b12c
02b9b118  adrp x0,0x5e5e000
02b9b11c  ldr x0,[x0, #0x368]
02b9b120  bl 0x029f5a50
02b9b124  mov w8,#0x1
02b9b128  strb w8,[x19, #0x9b2]
02b9b12c  ldr w21,[x20, #0x10]
02b9b130  cbz w21,0x02b9b1b0
02b9b134  cmp w21,#0x1
02b9b138  b.ne 0x02b9b280
02b9b13c  ldr x19,[x20, #0x20]
02b9b140  mov w8,#0xffffffff
02b9b144  str w8,[x20, #0x10]
02b9b148  cbz x19,0x02b9b2a0
02b9b14c  ldr s8,[x19, #0x20]
02b9b150  mov x0,xzr
02b9b154  bl 0x057ebabc
02b9b158  fadd s9,s8,s0
02b9b15c  ldrb w8,[x19, #0x34]
02b9b160  str s9,[x19, #0x20]
02b9b164  cbz w8,0x02b9b280
02b9b168  fmov s1,0x3f000000
02b9b16c  ldr s0,[x19, #0x2c]
02b9b170  fmul s1,s0,s1
02b9b174  fcmp s9,s1
02b9b178  b.ls 0x02b9b1d4
02b9b17c  fcmp s9,s0
02b9b180  b.ls 0x02b9b200
02b9b184  mov x0,x19
02b9b188  mov x1,xzr
02b9b18c  str wzr,[x19, #0x20]
02b9b190  strb wzr,[x19, #0x34]
02b9b194  bl 0x057dc0f8
02b9b198  cbz x0,0x02b9b2a0
02b9b19c  ldp s1,s2,[x19, #0x3c]
02b9b1a0  mov x1,xzr
02b9b1a4  ldr s0,[x19, #0x38]
02b9b1a8  bl 0x057ef654
02b9b1ac  b 0x02b9b280
02b9b1b0  str xzr,[x20, #0x18]!
02b9b1b4  mov w8,#0xffffffff
02b9b1b8  mov x0,x20
02b9b1bc  mov x1,xzr
02b9b1c0  stur w8,[x20, #-0x8]
02b9b1c4  bl 0x029f59f4
02b9b1c8  mov w8,#0x1
02b9b1cc  stur w8,[x20, #-0x8]
02b9b1d0  b 0x02b9b280
02b9b1d4  ldr s10,[x19, #0x40]
02b9b1d8  ldr d8,[x19, #0x38]
02b9b1dc  mov x0,x19
02b9b1e0  ldur d11,[x19, #0x44]
02b9b1e4  ldr s12,[x19, #0x4c]
02b9b1e8  mov x1,xzr
02b9b1ec  ldr s13,[x19, #0x30]
02b9b1f0  bl 0x057dc0f8
02b9b1f4  cbz x0,0x02b9b2a0
02b9b1f8  fdiv s0,s9,s13
02b9b1fc  b 0x02b9b22c
02b9b200  ldr s10,[x19, #0x4c]
02b9b204  ldur d8,[x19, #0x44]
02b9b208  mov x0,x19
02b9b20c  ldr d11,[x19, #0x38]
02b9b210  ldr s12,[x19, #0x40]
02b9b214  mov x1,xzr
02b9b218  ldr s13,[x19, #0x30]
02b9b21c  bl 0x057dc0f8
02b9b220  cbz x0,0x02b9b2a0
02b9b224  fsub s0,s9,s13
02b9b228  fdiv s0,s0,s13
02b9b22c  fmov s1,0x3f800000
02b9b230  movi d2,#0x0
02b9b234  mov x1,xzr
02b9b238  fsub s3,s12,s10
02b9b23c  fcmp s0,s1
02b9b240  fcsel s1,s1,s0,gt
02b9b244  fcmp s0,#0.0
02b9b248  fcsel s0,s2,s1,mi
02b9b24c  fmul s1,s3,s0
02b9b250  fadd s2,s10,s1
02b9b254  fsub v1.2S,v11.2S,v8.2S
02b9b258  fmul v0.2S,v1.2S,v0.S[0x0]
02b9b25c  fadd v0.2S,v8.2S,v0.2S
02b9b260  dup s1,v0.S[0x1]
02b9b264  bl 0x057ef654
02b9b268  adrp x8,0x5e5e000
02b9b26c  mov x0,x19
02b9b270  mov x2,xzr
02b9b274  ldr x8,[x8, #0x368]
02b9b278  ldr x1,[x8]
02b9b27c  bl 0x057e1df4
02b9b280  cmp w21,#0x0
02b9b284  ldp x20,x19,[sp, #0x40]
02b9b288  ldp x30,x21,[sp, #0x30]
02b9b28c  cset w0,eq
02b9b290  ldp d9,d8,[sp, #0x20]
02b9b294  ldp d11,d10,[sp, #0x10]
02b9b298  ldp d13,d12,[sp], #0x50
02b9b29c  ret
02b9b2a0  bl 0x029f5cfc
