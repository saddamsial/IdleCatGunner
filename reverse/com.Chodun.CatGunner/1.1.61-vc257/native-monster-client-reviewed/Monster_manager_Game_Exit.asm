02c4e16c  sub sp,sp,#0x80
02c4e170  str x30,[sp, #0x40]
02c4e174  stp x24,x23,[sp, #0x50]
02c4e178  stp x22,x21,[sp, #0x60]
02c4e17c  stp x20,x19,[sp, #0x70]
02c4e180  adrp x21,0x625c000
02c4e184  adrp x20,0x5e5d000
02c4e188  mov x19,x0
02c4e18c  ldrb w8,[x21, #0x13e]
02c4e190  ldr x20,[x20, #0x498]
02c4e194  tbnz w8,#0x0,0x02c4e20c
02c4e198  adrp x0,0x5e5d000
02c4e19c  ldr x0,[x0, #0x910]
02c4e1a0  bl 0x029f5a50
02c4e1a4  adrp x0,0x5e63000
02c4e1a8  ldr x0,[x0, #0x4f8]
02c4e1ac  bl 0x029f5a50
02c4e1b0  adrp x0,0x5e63000
02c4e1b4  ldr x0,[x0, #0x500]
02c4e1b8  bl 0x029f5a50
02c4e1bc  adrp x0,0x5e63000
02c4e1c0  ldr x0,[x0, #0x508]
02c4e1c4  bl 0x029f5a50
02c4e1c8  adrp x0,0x5e63000
02c4e1cc  ldr x0,[x0, #0x498]
02c4e1d0  bl 0x029f5a50
02c4e1d4  adrp x0,0x5e63000
02c4e1d8  ldr x0,[x0, #0x510]
02c4e1dc  bl 0x029f5a50
02c4e1e0  adrp x0,0x5e63000
02c4e1e4  ldr x0,[x0, #0x518]
02c4e1e8  bl 0x029f5a50
02c4e1ec  adrp x0,0x5e59000
02c4e1f0  ldr x0,[x0, #0x1c0]
02c4e1f4  bl 0x029f5a50
02c4e1f8  adrp x0,0x5e5d000
02c4e1fc  ldr x0,[x0, #0x498]
02c4e200  bl 0x029f5a50
02c4e204  mov w8,#0x1
02c4e208  strb w8,[x21, #0x13e]
02c4e20c  mov x0,x19
02c4e210  mov w1,#0x2
02c4e214  stp xzr,xzr,[sp, #0x20]
02c4e218  str xzr,[sp, #0x30]
02c4e21c  bl 0x02c4d578
02c4e220  ldr x8,[x20]
02c4e224  ldr x8,[x8, #0xb8]
02c4e228  ldr x0,[x8]
02c4e22c  cbz x0,0x02c4e4b4
02c4e230  ldp w8,w10,[x19, #0x20]
02c4e234  mov w9,#0xa
02c4e238  adrp x20,0x5e5d000
02c4e23c  mov x2,xzr
02c4e240  ldr x20,[x20, #0x910]
02c4e244  madd w1,w8,w9,w10
02c4e248  bl 0x02c0d25c
02c4e24c  ldr x8,[x20]
02c4e250  ldr x8,[x8, #0xb8]
02c4e254  ldr x0,[x8]
02c4e258  cbz x0,0x02c4e4b4
02c4e25c  mov x1,xzr
02c4e260  bl 0x02b8c604
02c4e264  ldr x0,[x19, #0x180]
02c4e268  cbz x0,0x02c4e4b4
02c4e26c  mov w1,wzr
02c4e270  mov x2,xzr
02c4e274  bl 0x057dff3c
02c4e278  ldr x0,[x19, #0x28]
02c4e27c  cbz x0,0x02c4e4b4
02c4e280  mov w1,wzr
02c4e284  mov x2,xzr
02c4e288  bl 0x057dff3c
02c4e28c  ldr x0,[x19, #0x30]
02c4e290  cbz x0,0x02c4e4b4
02c4e294  mov w1,wzr
02c4e298  mov x2,xzr
02c4e29c  bl 0x057dff3c
02c4e2a0  ldr x0,[x19, #0x40]
02c4e2a4  cbz x0,0x02c4e4b4
02c4e2a8  mov w1,#0x1
02c4e2ac  mov x2,xzr
02c4e2b0  bl 0x057dff3c
02c4e2b4  ldr x0,[x19, #0x48]
02c4e2b8  cbz x0,0x02c4e4b4
02c4e2bc  mov w1,wzr
02c4e2c0  mov x2,xzr
02c4e2c4  bl 0x057dff3c
02c4e2c8  adrp x20,0x625b000
02c4e2cc  ldrb w8,[x20, #0xa57]
02c4e2d0  cbnz w8,0x02c4e2e8
02c4e2d4  adrp x0,0x5e5d000
02c4e2d8  ldr x0,[x0, #0xd70]
02c4e2dc  bl 0x029f5a50
02c4e2e0  mov w8,#0x1
02c4e2e4  strb w8,[x20, #0xa57]
02c4e2e8  adrp x8,0x5e5d000
02c4e2ec  ldr x8,[x8, #0xd70]
02c4e2f0  ldr x8,[x8]
02c4e2f4  ldr x8,[x8, #0xb8]
02c4e2f8  ldr x0,[x8]
02c4e2fc  cbz x0,0x02c4e4b4
02c4e300  mov x1,xzr
02c4e304  bl 0x02c22750
02c4e308  mov x0,xzr
02c4e30c  bl 0x05797adc
02c4e310  cbz x0,0x02c4e4b4
02c4e314  mov w8,#0x42200000
02c4e318  mov x1,xzr
02c4e31c  fmov s0,w8
02c4e320  bl 0x05795494
02c4e324  mov x0,x19
02c4e328  bl 0x02c4e0f0
02c4e32c  ldr x0,[x19, #0x178]
02c4e330  cbz x0,0x02c4e4b4
02c4e334  adrp x8,0x5e63000
02c4e338  adrp x22,0x5e63000
02c4e33c  adrp x23,0x5e59000
02c4e340  ldr x8,[x8, #0x518]
02c4e344  adrp x24,0x5e63000
02c4e348  adrp x21,0x5e63000
02c4e34c  ldr x22,[x22, #0x500]
02c4e350  ldr x23,[x23, #0x1c0]
02c4e354  ldr x24,[x24, #0x498]
02c4e358  ldr x21,[x21, #0x4f8]
02c4e35c  ldr x1,[x8]
02c4e360  add x8,sp,#0x8
02c4e364  bl 0x0452d690
02c4e368  ldr x8,[sp, #0x18]
02c4e36c  ldur q0,[sp, #0x8]
02c4e370  str x8,[sp, #0x30]
02c4e374  add x8,sp,#0x20
02c4e378  str q0,[sp, #0x20]
02c4e37c  stp xzr,x8,[sp, #0x8]
02c4e380  ldr x1,[x22]
02c4e384  add x0,sp,#0x20
02c4e388  bl 0x03fa4e10
02c4e38c  tbz w0,#0x0,0x02c4e440
02c4e390  ldr x0,[x23]
02c4e394  ldr x20,[sp, #0x30]
02c4e398  ldr w8,[x0, #0xe4]
02c4e39c  cbnz w8,0x02c4e3a4
02c4e3a0  bl 0x029f5bd0
02c4e3a4  mov x0,x20
02c4e3a8  mov x1,xzr
02c4e3ac  mov x2,xzr
02c4e3b0  bl 0x057e14b4
02c4e3b4  tbnz w0,#0x0,0x02c4e380
02c4e3b8  cbz x20,0x02c4e4ac
02c4e3bc  mov x0,x20
02c4e3c0  mov x1,xzr
02c4e3c4  bl 0x057dc1c8
02c4e3c8  cbz x0,0x02c4e4b0
02c4e3cc  mov w1,wzr
02c4e3d0  mov x2,xzr
02c4e3d4  bl 0x057dff3c
02c4e3d8  ldr x0,[x19, #0x170]
02c4e3dc  cbz x0,0x02c4e4a8
02c4e3e0  ldr w10,[x0, #0x1c]
02c4e3e4  ldr x8,[x0, #0x10]
02c4e3e8  ldr x9,[x24]
02c4e3ec  add w10,w10,#0x1
02c4e3f0  str w10,[x0, #0x1c]
02c4e3f4  cbz x8,0x02c4e4a8
02c4e3f8  ldrsw x10,[x0, #0x18]
02c4e3fc  ldr w11,[x8, #0x18]
02c4e400  cmp w10,w11
02c4e404  b.cs 0x02c4e428
02c4e408  add x8,x8,x10, LSL #0x3
02c4e40c  add w9,w10,#0x1
02c4e410  str w9,[x0, #0x18]
02c4e414  str x20,[x8, #0x20]!
02c4e418  mov x0,x8
02c4e41c  mov x1,x20
02c4e420  bl 0x029f59f4
02c4e424  b 0x02c4e380
02c4e428  ldr x8,[x9, #0x20]
02c4e42c  ldr x8,[x8, #0xc0]
02c4e430  ldr x2,[x8, #0x70]
02c4e434  mov x1,x20
02c4e438  bl 0x0452cba8
02c4e43c  b 0x02c4e380
02c4e440  ldr x1,[x21]
02c4e444  add x0,sp,#0x20
02c4e448  bl 0x03fa4e0c
02c4e44c  ldr x8,[x19, #0x178]
02c4e450  cbz x8,0x02c4e4b4
02c4e454  ldp w2,w9,[x8, #0x18]
02c4e458  add w9,w9,#0x1
02c4e45c  cmp w2,#0x1
02c4e460  stp wzr,w9,[x8, #0x18]
02c4e464  b.lt 0x02c4e478
02c4e468  ldr x0,[x8, #0x10]
02c4e46c  mov w1,wzr
02c4e470  mov x3,xzr
02c4e474  bl 0x04873aac
02c4e478  mov x0,x19
02c4e47c  bl 0x02c4e524
02c4e480  mov x1,x0
02c4e484  mov x0,x19
02c4e488  mov x2,xzr
02c4e48c  bl 0x057e2120
02c4e490  ldp x20,x19,[sp, #0x70]
02c4e494  ldr x30,[sp, #0x40]
02c4e498  ldp x22,x21,[sp, #0x60]
02c4e49c  ldp x24,x23,[sp, #0x50]
02c4e4a0  add sp,sp,#0x80
02c4e4a4  ret
02c4e4a8  bl 0x029f5cfc
02c4e4ac  bl 0x029f5cfc
02c4e4b0  bl 0x029f5cfc
02c4e4b4  bl 0x029f5cfc
