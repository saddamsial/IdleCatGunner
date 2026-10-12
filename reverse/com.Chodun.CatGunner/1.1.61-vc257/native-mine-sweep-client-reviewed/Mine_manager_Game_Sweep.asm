02c4a114  str x30,[sp, #-0x30]!
02c4a118  stp x22,x21,[sp, #0x10]
02c4a11c  stp x20,x19,[sp, #0x20]
02c4a120  adrp x20,0x625c000
02c4a124  mov x19,x0
02c4a128  ldrb w8,[x20, #0x114]
02c4a12c  tbnz w8,#0x0,0x02c4a168
02c4a130  adrp x0,0x5e5d000
02c4a134  ldr x0,[x0, #0x338]
02c4a138  bl 0x029f5a50
02c4a13c  adrp x0,0x5e5d000
02c4a140  ldr x0,[x0, #0xd50]
02c4a144  bl 0x029f5a50
02c4a148  adrp x0,0x5e5e000
02c4a14c  ldr x0,[x0, #0xb8]
02c4a150  bl 0x029f5a50
02c4a154  adrp x0,0x5e5d000
02c4a158  ldr x0,[x0, #0x920]
02c4a15c  bl 0x029f5a50
02c4a160  mov w8,#0x1
02c4a164  strb w8,[x20, #0x114]
02c4a168  mov x0,x19
02c4a16c  str wzr,[sp, #0xc]
02c4a170  bl 0x02c4a0a0
02c4a174  tbz w0,#0x0,0x02c4a420
02c4a178  mov x0,x19
02c4a17c  bl 0x02c49008
02c4a180  ldr w20,[x19, #0x50]
02c4a184  bl 0x02c4946c
02c4a188  cmp w20,w0
02c4a18c  b.ge 0x02c4a39c
02c4a190  adrp x8,0x5e5d000
02c4a194  ldr x8,[x8, #0x920]
02c4a198  ldr w9,[x19, #0x50]
02c4a19c  strh wzr,[x19, #0x68]
02c4a1a0  strb wzr,[x19, #0x6a]
02c4a1a4  ldr x0,[x8]
02c4a1a8  add w8,w9,#0x1
02c4a1ac  mov w9,#0x1
02c4a1b0  str w8,[x19, #0x50]
02c4a1b4  ldr w8,[x0, #0xe4]
02c4a1b8  strb w9,[x19, #0x108]
02c4a1bc  cbnz w8,0x02c4a1c4
02c4a1c0  bl 0x029f5bd0
02c4a1c4  mov x0,xzr
02c4a1c8  bl 0x02c92704
02c4a1cc  adrp x8,0x5e5e000
02c4a1d0  mov w20,w0
02c4a1d4  ldr x8,[x8, #0xb8]
02c4a1d8  ldr w21,[x19, #0x60]
02c4a1dc  ldr x8,[x8]
02c4a1e0  ldr w9,[x8, #0xe4]
02c4a1e4  cbnz w9,0x02c4a1f0
02c4a1e8  mov x0,x8
02c4a1ec  bl 0x029f5bd0
02c4a1f0  mov x0,xzr
02c4a1f4  bl 0x02c90914
02c4a1f8  scvtf s1,w21
02c4a1fc  mov w8,#0x7f800000
02c4a200  mov w10,#0x80000000
02c4a204  mov x21,x19
02c4a208  fmul s0,s0,s1
02c4a20c  fmov s1,w8
02c4a210  adrp x8,0x5e5d000
02c4a214  ldr x8,[x8, #0x338]
02c4a218  ldr x0,[x8]
02c4a21c  fcvtzs w9,s0
02c4a220  fcmp s0,s1
02c4a224  csel w8,w10,w9,eq
02c4a228  ldr w10,[x0, #0xe4]
02c4a22c  tst w20,#0x1
02c4a230  lsl w9,w8,#0x2
02c4a234  str w8,[x21, #0xd0]!
02c4a238  csel w22,w9,w8,ne
02c4a23c  str w9,[sp, #0xc]
02c4a240  cbnz w10,0x02c4a248
02c4a244  bl 0x029f5bd0
02c4a248  mov w0,w22
02c4a24c  mov x1,xzr
02c4a250  bl 0x02b7ed10
02c4a254  ldr x22,[x19, #0xf8]
02c4a258  mov x0,x21
02c4a25c  mov x1,xzr
02c4a260  bl 0x0484e6a4
02c4a264  cbz x22,0x02c4a450
02c4a268  ldr x8,[x22]
02c4a26c  mov x1,x0
02c4a270  mov x0,x22
02c4a274  ldr x9,[x8, #0x558]
02c4a278  ldr x2,[x8, #0x560]
02c4a27c  blr x9
02c4a280  ldr x21,[x19, #0x100]
02c4a284  add x0,sp,#0xc
02c4a288  mov x1,xzr
02c4a28c  bl 0x0484e6a4
02c4a290  cbz x21,0x02c4a450
02c4a294  ldr x8,[x21]
02c4a298  mov x1,x0
02c4a29c  mov x0,x21
02c4a2a0  ldr x9,[x8, #0x558]
02c4a2a4  ldr x2,[x8, #0x560]
02c4a2a8  blr x9
02c4a2ac  ldr x0,[x19, #0xf0]
02c4a2b0  cbz x0,0x02c4a450
02c4a2b4  eor w21,w20,#0x1
02c4a2b8  mov x2,xzr
02c4a2bc  and w1,w21,#0x1
02c4a2c0  bl 0x057dff3c
02c4a2c4  ldr x0,[x19, #0xe0]
02c4a2c8  cbz x0,0x02c4a450
02c4a2cc  and w1,w21,#0x1
02c4a2d0  mov x2,xzr
02c4a2d4  bl 0x057dff3c
02c4a2d8  ldr x0,[x19, #0xe8]
02c4a2dc  cbz x0,0x02c4a450
02c4a2e0  and w1,w20,#0x1
02c4a2e4  mov x2,xzr
02c4a2e8  bl 0x057dff3c
02c4a2ec  adrp x20,0x5e5d000
02c4a2f0  ldr x20,[x20, #0xd50]
02c4a2f4  ldr x0,[x20]
02c4a2f8  ldr w8,[x0, #0xe4]
02c4a2fc  cbnz w8,0x02c4a308
02c4a300  bl 0x029f5bd0
02c4a304  ldr x0,[x20]
02c4a308  ldr x8,[x0, #0xb8]
02c4a30c  ldr x0,[x8, #0x8]
02c4a310  cbz x0,0x02c4a450
02c4a314  mov w1,#0x3
02c4a318  mov x2,xzr
02c4a31c  bl 0x02ba6a18
02c4a320  mov x0,x19
02c4a324  mov w1,#0x1
02c4a328  mov w20,#0x1
02c4a32c  bl 0x02c49324
02c4a330  adrp x21,0x625b000
02c4a334  ldrb w8,[x21, #0xa57]
02c4a338  cbnz w8,0x02c4a34c
02c4a33c  adrp x0,0x5e5d000
02c4a340  ldr x0,[x0, #0xd70]
02c4a344  bl 0x029f5a50
02c4a348  strb w20,[x21, #0xa57]
02c4a34c  adrp x8,0x5e5d000
02c4a350  ldr x8,[x8, #0xd70]
02c4a354  ldr x8,[x8]
02c4a358  ldr x8,[x8, #0xb8]
02c4a35c  ldr x0,[x8]
02c4a360  cbz x0,0x02c4a450
02c4a364  fmov s0,0x3f800000
02c4a368  mov w1,#0xb
02c4a36c  mov x2,xzr
02c4a370  mov x3,xzr
02c4a374  bl 0x02c1f10c
02c4a378  ldr x0,[x19, #0xd8]
02c4a37c  cbz x0,0x02c4a450
02c4a380  mov w1,#0x1
02c4a384  mov x2,xzr
02c4a388  bl 0x057dff3c
02c4a38c  ldr x0,[x19, #0x28]
02c4a390  cbz x0,0x02c4a450
02c4a394  bl 0x02c49110
02c4a398  b 0x02c4a420
02c4a39c  mov x0,xzr
02c4a3a0  bl 0x02bdfd28
02c4a3a4  mov x1,xzr
02c4a3a8  bl 0x02c1dd54
02c4a3ac  adrp x20,0x625b000
02c4a3b0  ldrb w8,[x20, #0xa57]
02c4a3b4  cbnz w8,0x02c4a3cc
02c4a3b8  adrp x0,0x5e5d000
02c4a3bc  ldr x0,[x0, #0xd70]
02c4a3c0  bl 0x029f5a50
02c4a3c4  mov w8,#0x1
02c4a3c8  strb w8,[x20, #0xa57]
02c4a3cc  adrp x8,0x5e5d000
02c4a3d0  ldr x8,[x8, #0xd70]
02c4a3d4  ldr x8,[x8]
02c4a3d8  ldr x8,[x8, #0xb8]
02c4a3dc  ldr x0,[x8]
02c4a3e0  cbz x0,0x02c4a450
02c4a3e4  fmov s0,0x3f800000
02c4a3e8  mov w1,#0x5
02c4a3ec  mov x2,xzr
02c4a3f0  mov x3,xzr
02c4a3f4  bl 0x02c1f10c
02c4a3f8  adrp x20,0x5e5d000
02c4a3fc  ldr x20,[x20, #0x920]
02c4a400  ldr x0,[x20]
02c4a404  ldr w8,[x0, #0xe4]
02c4a408  cbnz w8,0x02c4a414
02c4a40c  bl 0x029f5bd0
02c4a410  ldr x0,[x20]
02c4a414  ldr x8,[x0, #0xb8]
02c4a418  ldrb w8,[x8, #0xd]
02c4a41c  cbz w8,0x02c4a430
02c4a420  ldp x20,x19,[sp, #0x20]
02c4a424  ldp x22,x21,[sp, #0x10]
02c4a428  ldr x30,[sp], #0x30
02c4a42c  ret
02c4a430  ldr x0,[x19, #0x48]
02c4a434  cbz x0,0x02c4a450
02c4a438  ldp x20,x19,[sp, #0x20]
02c4a43c  mov w1,#0x1
02c4a440  ldp x22,x21,[sp, #0x10]
02c4a444  mov x2,xzr
02c4a448  ldr x30,[sp], #0x30
02c4a44c  b 0x057dff3c
02c4a450  bl 0x029f5cfc
