02c5a34c  str x30,[sp, #-0x20]!
02c5a350  stp x20,x19,[sp, #0x10]
02c5a354  adrp x20,0x625c000
02c5a358  mov x19,x0
02c5a35c  ldrb w8,[x20, #0x1d3]
02c5a360  tbnz w8,#0x0,0x02c5a390
02c5a364  adrp x0,0x5e5d000
02c5a368  ldr x0,[x0, #0xc20]
02c5a36c  bl 0x029f5a50
02c5a370  adrp x0,0x5e5d000
02c5a374  ldr x0,[x0, #0x368]
02c5a378  bl 0x029f5a50
02c5a37c  adrp x0,0x5e5a000
02c5a380  ldr x0,[x0, #0x710]
02c5a384  bl 0x029f5a50
02c5a388  mov w8,#0x1
02c5a38c  strb w8,[x20, #0x1d3]
02c5a390  ldr w8,[x19, #0x10]
02c5a394  cmp w8,#0x2
02c5a398  b.eq 0x02c5a488
02c5a39c  cmp w8,#0x1
02c5a3a0  b.eq 0x02c5a40c
02c5a3a4  cbnz w8,0x02c5a4b0
02c5a3a8  adrp x8,0x5e5d000
02c5a3ac  ldr x8,[x8, #0x368]
02c5a3b0  ldr x8,[x8]
02c5a3b4  ldr x8,[x8, #0xb8]
02c5a3b8  ldr x0,[x8]
02c5a3bc  mov w8,#0xffffffff
02c5a3c0  str w8,[x19, #0x10]
02c5a3c4  cbz x0,0x02c5a4c0
02c5a3c8  mov x1,xzr
02c5a3cc  bl 0x02c2a604
02c5a3d0  adrp x8,0x5e5a000
02c5a3d4  ldr x8,[x8, #0x710]
02c5a3d8  ldr x0,[x8]
02c5a3dc  bl 0x029f5cec
02c5a3e0  fmov s0,0x3fc00000
02c5a3e4  mov x1,xzr
02c5a3e8  mov x20,x0
02c5a3ec  bl 0x057e84e0
02c5a3f0  str x20,[x19, #0x18]!
02c5a3f4  mov x0,x19
02c5a3f8  mov x1,x20
02c5a3fc  bl 0x029f59f4
02c5a400  mov w0,#0x1
02c5a404  stur w0,[x19, #-0x8]
02c5a408  b 0x02c5a4b4
02c5a40c  adrp x20,0x5e5d000
02c5a410  mov w9,#0xffffffff
02c5a414  ldr x20,[x20, #0xc20]
02c5a418  str w9,[x19, #0x10]
02c5a41c  ldr x0,[x20]
02c5a420  ldr w8,[x0, #0xe4]
02c5a424  cbnz w8,0x02c5a430
02c5a428  bl 0x029f5bd0
02c5a42c  ldr x0,[x20]
02c5a430  ldr x8,[x0, #0xb8]
02c5a434  ldr x0,[x8, #0x10]
02c5a438  cbz x0,0x02c5a4c0
02c5a43c  mov x1,xzr
02c5a440  bl 0x02caac18
02c5a444  adrp x8,0x5e5a000
02c5a448  ldr x8,[x8, #0x710]
02c5a44c  ldr x0,[x8]
02c5a450  bl 0x029f5cec
02c5a454  adrp x8,0x116c000
02c5a458  mov x1,xzr
02c5a45c  mov x20,x0
02c5a460  ldr s0,[x8, #0x60]
02c5a464  bl 0x057e84e0
02c5a468  str x20,[x19, #0x18]!
02c5a46c  mov x0,x19
02c5a470  mov x1,x20
02c5a474  bl 0x029f59f4
02c5a478  mov w8,#0x2
02c5a47c  mov w0,#0x1
02c5a480  stur w8,[x19, #-0x8]
02c5a484  b 0x02c5a4b4
02c5a488  adrp x8,0x5e5d000
02c5a48c  ldr x8,[x8, #0x368]
02c5a490  ldr x8,[x8]
02c5a494  ldr x8,[x8, #0xb8]
02c5a498  ldr x0,[x8]
02c5a49c  mov w8,#0xffffffff
02c5a4a0  str w8,[x19, #0x10]
02c5a4a4  cbz x0,0x02c5a4c0
02c5a4a8  mov x1,xzr
02c5a4ac  bl 0x02c2a620
02c5a4b0  mov w0,wzr
02c5a4b4  ldp x20,x19,[sp, #0x10]
02c5a4b8  ldr x30,[sp], #0x20
02c5a4bc  ret
02c5a4c0  bl 0x029f5cfc
