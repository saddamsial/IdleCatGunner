02c4f1bc  sub sp,sp,#0x40
02c4f1c0  stp x30,x21,[sp, #0x20]
02c4f1c4  stp x20,x19,[sp, #0x30]
02c4f1c8  adrp x20,0x625c000
02c4f1cc  mov x19,x0
02c4f1d0  ldrb w8,[x20, #0x146]
02c4f1d4  tbnz w8,#0x0,0x02c4f21c
02c4f1d8  adrp x0,0x5e5d000
02c4f1dc  ldr x0,[x0, #0x338]
02c4f1e0  bl 0x029f5a50
02c4f1e4  adrp x0,0x5e5d000
02c4f1e8  ldr x0,[x0, #0xd58]
02c4f1ec  bl 0x029f5a50
02c4f1f0  adrp x0,0x5e5e000
02c4f1f4  ldr x0,[x0, #0xb8]
02c4f1f8  bl 0x029f5a50
02c4f1fc  adrp x0,0x5e5d000
02c4f200  ldr x0,[x0, #0x498]
02c4f204  bl 0x029f5a50
02c4f208  adrp x0,0x5e5d000
02c4f20c  ldr x0,[x0, #0x920]
02c4f210  bl 0x029f5a50
02c4f214  mov w8,#0x1
02c4f218  strb w8,[x20, #0x146]
02c4f21c  mov x0,x19
02c4f220  stp xzr,xzr,[sp, #0x10]
02c4f224  str wzr,[sp, #0xc]
02c4f228  bl 0x02c4eef8
02c4f22c  tbz w0,#0x0,0x02c4f474
02c4f230  add x1,sp,#0x1c
02c4f234  add x2,sp,#0x18
02c4f238  add x3,sp,#0x14
02c4f23c  mov x0,x19
02c4f240  bl 0x02c4ede8
02c4f244  ldr w20,[sp, #0x14]
02c4f248  cmp w20,#0x1
02c4f24c  b.lt 0x02c4f474
02c4f250  adrp x21,0x5e5d000
02c4f254  mov w8,#0x1
02c4f258  ldr x21,[x21, #0xd58]
02c4f25c  strb w8,[x19, #0x138]
02c4f260  ldp w8,w9,[sp, #0x18]
02c4f264  ldr x0,[x21]
02c4f268  strb wzr,[x19, #0xb8]
02c4f26c  strb wzr,[x19, #0xba]
02c4f270  ldr w10,[x0, #0xe4]
02c4f274  stp w9,w8,[x19, #0x20]
02c4f278  cbnz w10,0x02c4f284
02c4f27c  bl 0x029f5bd0
02c4f280  ldr x0,[x21]
02c4f284  adrp x8,0x5e5e000
02c4f288  ldr x8,[x8, #0xb8]
02c4f28c  ldr x9,[x0, #0xb8]
02c4f290  ldr x8,[x8]
02c4f294  ldr w21,[x9]
02c4f298  ldr w10,[x8, #0xe4]
02c4f29c  cbnz w10,0x02c4f2a8
02c4f2a0  mov x0,x8
02c4f2a4  bl 0x029f5bd0
02c4f2a8  mov x0,xzr
02c4f2ac  bl 0x02c90718
02c4f2b0  scvtf s1,w21
02c4f2b4  mov w8,#0x7f800000
02c4f2b8  adrp x10,0x5e5d000
02c4f2bc  ldr x10,[x10, #0x920]
02c4f2c0  mov w9,#0x80000000
02c4f2c4  ldr x0,[x10]
02c4f2c8  fmul s0,s0,s1
02c4f2cc  fmov s1,w8
02c4f2d0  fcvtzs w8,s0
02c4f2d4  fcmp s0,s1
02c4f2d8  csel w8,w9,w8,eq
02c4f2dc  mul w21,w8,w20
02c4f2e0  ldr w8,[x0, #0xe4]
02c4f2e4  str w21,[sp, #0x10]
02c4f2e8  str w21,[x19, #0x13c]
02c4f2ec  cbnz w8,0x02c4f2f4
02c4f2f0  bl 0x029f5bd0
02c4f2f4  mov x0,xzr
02c4f2f8  bl 0x02c92704
02c4f2fc  adrp x8,0x5e5d000
02c4f300  mov w20,w0
02c4f304  ldr x8,[x8, #0x338]
02c4f308  and x9,x20,#0x1
02c4f30c  lsl w21,w21,w9
02c4f310  ldr x0,[x8]
02c4f314  ldr w8,[x0, #0xe4]
02c4f318  cbnz w8,0x02c4f320
02c4f31c  bl 0x029f5bd0
02c4f320  mov w0,w21
02c4f324  mov x1,xzr
02c4f328  bl 0x02b7f098
02c4f32c  ldr x21,[x19, #0x128]
02c4f330  add x0,sp,#0x10
02c4f334  mov x1,xzr
02c4f338  bl 0x0484e6a4
02c4f33c  cbz x21,0x02c4f484
02c4f340  ldr x8,[x21]
02c4f344  mov x1,x0
02c4f348  mov x0,x21
02c4f34c  ldr x9,[x8, #0x558]
02c4f350  ldr x2,[x8, #0x560]
02c4f354  blr x9
02c4f358  ldr w8,[sp, #0x10]
02c4f35c  ldr x21,[x19, #0x130]
02c4f360  add x0,sp,#0xc
02c4f364  mov x1,xzr
02c4f368  lsl w8,w8,#0x1
02c4f36c  str w8,[sp, #0xc]
02c4f370  bl 0x0484e6a4
02c4f374  cbz x21,0x02c4f484
02c4f378  ldr x8,[x21]
02c4f37c  mov x1,x0
02c4f380  mov x0,x21
02c4f384  ldr x9,[x8, #0x558]
02c4f388  ldr x2,[x8, #0x560]
02c4f38c  blr x9
02c4f390  ldr x0,[x19, #0x120]
02c4f394  cbz x0,0x02c4f484
02c4f398  eor w21,w20,#0x1
02c4f39c  mov x2,xzr
02c4f3a0  and w1,w21,#0x1
02c4f3a4  bl 0x057dff3c
02c4f3a8  ldr x0,[x19, #0x110]
02c4f3ac  cbz x0,0x02c4f484
02c4f3b0  and w1,w21,#0x1
02c4f3b4  mov x2,xzr
02c4f3b8  bl 0x057dff3c
02c4f3bc  ldr x0,[x19, #0x118]
02c4f3c0  cbz x0,0x02c4f484
02c4f3c4  and w1,w20,#0x1
02c4f3c8  mov x2,xzr
02c4f3cc  bl 0x057dff3c
02c4f3d0  mov x0,x19
02c4f3d4  mov w1,#0x1
02c4f3d8  bl 0x02c4d578
02c4f3dc  adrp x8,0x5e5d000
02c4f3e0  ldr x8,[x8, #0x498]
02c4f3e4  ldr x8,[x8]
02c4f3e8  ldr x8,[x8, #0xb8]
02c4f3ec  ldr x0,[x8]
02c4f3f0  cbz x0,0x02c4f484
02c4f3f4  ldp w8,w10,[x19, #0x20]
02c4f3f8  mov w9,#0xa
02c4f3fc  mov x2,xzr
02c4f400  madd w1,w8,w9,w10
02c4f404  bl 0x02c0d25c
02c4f408  adrp x20,0x625b000
02c4f40c  ldrb w8,[x20, #0xa57]
02c4f410  cbnz w8,0x02c4f428
02c4f414  adrp x0,0x5e5d000
02c4f418  ldr x0,[x0, #0xd70]
02c4f41c  bl 0x029f5a50
02c4f420  mov w8,#0x1
02c4f424  strb w8,[x20, #0xa57]
02c4f428  adrp x8,0x5e5d000
02c4f42c  ldr x8,[x8, #0xd70]
02c4f430  ldr x8,[x8]
02c4f434  ldr x8,[x8, #0xb8]
02c4f438  ldr x0,[x8]
02c4f43c  cbz x0,0x02c4f484
02c4f440  fmov s0,0x3f800000
02c4f444  mov w1,#0xb
02c4f448  mov x2,xzr
02c4f44c  mov x3,xzr
02c4f450  bl 0x02c1f10c
02c4f454  ldr x0,[x19, #0x108]
02c4f458  cbz x0,0x02c4f484
02c4f45c  mov w1,#0x1
02c4f460  mov x2,xzr
02c4f464  bl 0x057dff3c
02c4f468  ldr x0,[x19, #0x38]
02c4f46c  cbz x0,0x02c4f484
02c4f470  bl 0x02c4f488
02c4f474  ldp x20,x19,[sp, #0x30]
02c4f478  ldp x30,x21,[sp, #0x20]
02c4f47c  add sp,sp,#0x40
02c4f480  ret
02c4f484  bl 0x029f5cfc
