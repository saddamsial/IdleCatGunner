02c7a338  str x30,[sp, #-0x40]!
02c7a33c  stp x24,x23,[sp, #0x10]
02c7a340  stp x22,x21,[sp, #0x20]
02c7a344  stp x20,x19,[sp, #0x30]
02c7a348  adrp x21,0x625c000
02c7a34c  adrp x23,0x5e62000
02c7a350  mov w19,w2
02c7a354  ldrb w8,[x21, #0x310]
02c7a358  ldr x23,[x23, #0x88]
02c7a35c  mov w22,w1
02c7a360  mov x20,x0
02c7a364  tbnz w8,#0x0,0x02c7a37c
02c7a368  adrp x0,0x5e62000
02c7a36c  ldr x0,[x0, #0x88]
02c7a370  bl 0x029f5a50
02c7a374  mov w8,#0x1
02c7a378  strb w8,[x21, #0x310]
02c7a37c  adrp x24,0x5e58000
02c7a380  add w8,w22,#0x1
02c7a384  add x1,sp,#0xc
02c7a388  ldr x24,[x24, #0xa10]
02c7a38c  ldr x21,[x20, #0x38]
02c7a390  str w8,[sp, #0xc]
02c7a394  ldr x0,[x24, #0x48]
02c7a398  bl 0x029f5bd8
02c7a39c  mov x22,x0
02c7a3a0  ldr x0,[x24, #0x48]
02c7a3a4  add w8,w19,#0x1
02c7a3a8  add x1,sp,#0x8
02c7a3ac  str w8,[sp, #0x8]
02c7a3b0  bl 0x029f5bd8
02c7a3b4  ldr x8,[x23]
02c7a3b8  mov x2,x0
02c7a3bc  mov x1,x22
02c7a3c0  mov x3,xzr
02c7a3c4  mov x0,x8
02c7a3c8  bl 0x046c1d14
02c7a3cc  cbz x21,0x02c7a468
02c7a3d0  ldr x8,[x21]
02c7a3d4  mov x1,x0
02c7a3d8  mov x0,x21
02c7a3dc  ldr x9,[x8, #0x558]
02c7a3e0  ldr x2,[x8, #0x560]
02c7a3e4  blr x9
02c7a3e8  ldr x8,[x20, #0x50]
02c7a3ec  cbz x8,0x02c7a468
02c7a3f0  mov x22,xzr
02c7a3f4  mov w21,w19
02c7a3f8  mov w23,#0x2
02c7a3fc  ldr w10,[x8, #0x18]
02c7a400  cmp w22,w10
02c7a404  b.ge 0x02c7a46c
02c7a408  cmp w21,w22
02c7a40c  cset w9,eq
02c7a410  cmp w22,w19
02c7a414  csel x9,x23,x9,lt
02c7a418  cmp w22,w10
02c7a41c  b.cs 0x02c7a4ec
02c7a420  ldr x10,[x20, #0x58]
02c7a424  cbz x10,0x02c7a468
02c7a428  ldr w11,[x10, #0x18]
02c7a42c  cmp w9,w11
02c7a430  b.cs 0x02c7a4ec
02c7a434  add x8,x8,x22, LSL #0x3
02c7a438  ldr x0,[x8, #0x20]
02c7a43c  cbz x0,0x02c7a468
02c7a440  add x8,x10,x9, LSL #0x4
02c7a444  ldr x9,[x0]
02c7a448  ldp s2,s3,[x8, #0x28]
02c7a44c  ldr x1,[x9, #0x2b0]
02c7a450  ldp s0,s1,[x8, #0x20]
02c7a454  ldr x8,[x9, #0x2a8]
02c7a458  blr x8
02c7a45c  ldr x8,[x20, #0x50]
02c7a460  add x22,x22,#0x1
02c7a464  cbnz x8,0x02c7a3fc
02c7a468  bl 0x029f5cfc
02c7a46c  ldr x0,[x20, #0x20]
02c7a470  cbz x0,0x02c7a468
02c7a474  scvtf s0,w19,#0x2
02c7a478  mov x1,xzr
02c7a47c  bl 0x02c28290
02c7a480  ldr x0,[x20, #0x48]
02c7a484  cbz x0,0x02c7a468
02c7a488  mov x1,xzr
02c7a48c  bl 0x057dc0f8
02c7a490  ldr x8,[x20, #0x50]
02c7a494  cbz x8,0x02c7a468
02c7a498  ldr w9,[x8, #0x18]
02c7a49c  cmp w9,w21
02c7a4a0  b.ls 0x02c7a4ec
02c7a4a4  add x8,x8,w19, SXTW  #0x3
02c7a4a8  mov x20,x0
02c7a4ac  ldr x0,[x8, #0x20]
02c7a4b0  cbz x0,0x02c7a468
02c7a4b4  mov x1,xzr
02c7a4b8  bl 0x057dc0f8
02c7a4bc  cbz x0,0x02c7a468
02c7a4c0  mov x1,xzr
02c7a4c4  bl 0x057eed98
02c7a4c8  cbz x20,0x02c7a468
02c7a4cc  mov x0,x20
02c7a4d0  mov x1,xzr
02c7a4d4  bl 0x057eee74
02c7a4d8  ldp x20,x19,[sp, #0x30]
02c7a4dc  ldp x22,x21,[sp, #0x20]
02c7a4e0  ldp x24,x23,[sp, #0x10]
02c7a4e4  ldr x30,[sp], #0x40
02c7a4e8  ret
02c7a4ec  bl 0x029f5d04
