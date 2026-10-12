02c4d230  str x30,[sp, #-0x40]!
02c4d234  stp x24,x23,[sp, #0x10]
02c4d238  stp x22,x21,[sp, #0x20]
02c4d23c  stp x20,x19,[sp, #0x30]
02c4d240  adrp x21,0x625c000
02c4d244  adrp x23,0x5e62000
02c4d248  mov w19,w2
02c4d24c  ldrb w8,[x21, #0x134]
02c4d250  ldr x23,[x23, #0x5b8]
02c4d254  mov w22,w1
02c4d258  mov x20,x0
02c4d25c  tbnz w8,#0x0,0x02c4d274
02c4d260  adrp x0,0x5e62000
02c4d264  ldr x0,[x0, #0x5b8]
02c4d268  bl 0x029f5a50
02c4d26c  mov w8,#0x1
02c4d270  strb w8,[x21, #0x134]
02c4d274  adrp x24,0x5e58000
02c4d278  add w8,w22,#0x1
02c4d27c  add x1,sp,#0xc
02c4d280  ldr x24,[x24, #0xa10]
02c4d284  ldr x21,[x20, #0x30]
02c4d288  str w8,[sp, #0xc]
02c4d28c  ldr x0,[x24, #0x48]
02c4d290  bl 0x029f5bd8
02c4d294  mov x22,x0
02c4d298  ldr x0,[x24, #0x48]
02c4d29c  add w8,w19,#0x1
02c4d2a0  add x1,sp,#0x8
02c4d2a4  str w8,[sp, #0x8]
02c4d2a8  bl 0x029f5bd8
02c4d2ac  ldr x8,[x23]
02c4d2b0  mov x2,x0
02c4d2b4  mov x1,x22
02c4d2b8  mov x3,xzr
02c4d2bc  mov x0,x8
02c4d2c0  bl 0x046c1d14
02c4d2c4  cbz x21,0x02c4d360
02c4d2c8  ldr x8,[x21]
02c4d2cc  mov x1,x0
02c4d2d0  mov x0,x21
02c4d2d4  ldr x9,[x8, #0x558]
02c4d2d8  ldr x2,[x8, #0x560]
02c4d2dc  blr x9
02c4d2e0  ldr x8,[x20, #0x48]
02c4d2e4  cbz x8,0x02c4d360
02c4d2e8  mov x22,xzr
02c4d2ec  mov w21,w19
02c4d2f0  mov w23,#0x2
02c4d2f4  ldr w10,[x8, #0x18]
02c4d2f8  cmp w22,w10
02c4d2fc  b.ge 0x02c4d364
02c4d300  cmp w21,w22
02c4d304  cset w9,eq
02c4d308  cmp w22,w19
02c4d30c  csel x9,x23,x9,lt
02c4d310  cmp w22,w10
02c4d314  b.cs 0x02c4d3e4
02c4d318  ldr x10,[x20, #0x50]
02c4d31c  cbz x10,0x02c4d360
02c4d320  ldr w11,[x10, #0x18]
02c4d324  cmp w9,w11
02c4d328  b.cs 0x02c4d3e4
02c4d32c  add x8,x8,x22, LSL #0x3
02c4d330  ldr x0,[x8, #0x20]
02c4d334  cbz x0,0x02c4d360
02c4d338  add x8,x10,x9, LSL #0x4
02c4d33c  ldr x9,[x0]
02c4d340  ldp s2,s3,[x8, #0x28]
02c4d344  ldr x1,[x9, #0x2b0]
02c4d348  ldp s0,s1,[x8, #0x20]
02c4d34c  ldr x8,[x9, #0x2a8]
02c4d350  blr x8
02c4d354  ldr x8,[x20, #0x48]
02c4d358  add x22,x22,#0x1
02c4d35c  cbnz x8,0x02c4d2f4
02c4d360  bl 0x029f5cfc
02c4d364  ldr x0,[x20, #0x20]
02c4d368  cbz x0,0x02c4d360
02c4d36c  scvtf s0,w19,#0x2
02c4d370  mov x1,xzr
02c4d374  bl 0x02c28290
02c4d378  ldr x0,[x20, #0x40]
02c4d37c  cbz x0,0x02c4d360
02c4d380  mov x1,xzr
02c4d384  bl 0x057dc0f8
02c4d388  ldr x8,[x20, #0x48]
02c4d38c  cbz x8,0x02c4d360
02c4d390  ldr w9,[x8, #0x18]
02c4d394  cmp w9,w21
02c4d398  b.ls 0x02c4d3e4
02c4d39c  add x8,x8,w19, SXTW  #0x3
02c4d3a0  mov x20,x0
02c4d3a4  ldr x0,[x8, #0x20]
02c4d3a8  cbz x0,0x02c4d360
02c4d3ac  mov x1,xzr
02c4d3b0  bl 0x057dc0f8
02c4d3b4  cbz x0,0x02c4d360
02c4d3b8  mov x1,xzr
02c4d3bc  bl 0x057eed98
02c4d3c0  cbz x20,0x02c4d360
02c4d3c4  mov x0,x20
02c4d3c8  mov x1,xzr
02c4d3cc  bl 0x057eee74
02c4d3d0  ldp x20,x19,[sp, #0x30]
02c4d3d4  ldp x22,x21,[sp, #0x20]
02c4d3d8  ldp x24,x23,[sp, #0x10]
02c4d3dc  ldr x30,[sp], #0x40
02c4d3e0  ret
02c4d3e4  bl 0x029f5d04
