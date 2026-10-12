02c6de5c  sub sp,sp,#0x90
02c6de60  stp x29,x30,[sp, #0x30]
02c6de64  stp x28,x27,[sp, #0x40]
02c6de68  stp x26,x25,[sp, #0x50]
02c6de6c  stp x24,x23,[sp, #0x60]
02c6de70  stp x22,x21,[sp, #0x70]
02c6de74  stp x20,x19,[sp, #0x80]
02c6de78  adrp x21,0x625c000
02c6de7c  mov w19,w1
02c6de80  mov x20,x0
02c6de84  ldrb w8,[x21, #0x2af]
02c6de88  tbnz w8,#0x0,0x02c6df24
02c6de8c  adrp x0,0x5e5d000
02c6de90  ldr x0,[x0, #0x540]
02c6de94  bl 0x029f5a50
02c6de98  adrp x0,0x5e5d000
02c6de9c  ldr x0,[x0, #0x5b0]
02c6dea0  bl 0x029f5a50
02c6dea4  adrp x0,0x5e58000
02c6dea8  ldr x0,[x0, #0xf08]
02c6deac  bl 0x029f5a50
02c6deb0  adrp x0,0x5e5d000
02c6deb4  ldr x0,[x0, #0x338]
02c6deb8  bl 0x029f5a50
02c6debc  adrp x0,0x5e5d000
02c6dec0  ldr x0,[x0, #0xd40]
02c6dec4  bl 0x029f5a50
02c6dec8  adrp x0,0x5e59000
02c6decc  ldr x0,[x0, #0x768]
02c6ded0  bl 0x029f5a50
02c6ded4  adrp x0,0x5e59000
02c6ded8  ldr x0,[x0, #0x1c0]
02c6dedc  bl 0x029f5a50
02c6dee0  adrp x0,0x5e5e000
02c6dee4  ldr x0,[x0, #0x58]
02c6dee8  bl 0x029f5a50
02c6deec  adrp x0,0x5e63000
02c6def0  ldr x0,[x0, #0xb10]
02c6def4  bl 0x029f5a50
02c6def8  adrp x0,0x5e63000
02c6defc  ldr x0,[x0, #0xb18]
02c6df00  bl 0x029f5a50
02c6df04  adrp x0,0x5e63000
02c6df08  ldr x0,[x0, #0xb20]
02c6df0c  bl 0x029f5a50
02c6df10  adrp x0,0x5e63000
02c6df14  ldr x0,[x0, #0xb28]
02c6df18  bl 0x029f5a50
02c6df1c  mov w8,#0x1
02c6df20  strb w8,[x21, #0x2af]
02c6df24  mov w0,#0x4
02c6df28  str wzr,[sp, #0x28]
02c6df2c  tbnz w19,#0x1f,0x02c6e478
02c6df30  ldr x8,[x20, #0x30]
02c6df34  cbz x8,0x02c6e478
02c6df38  ldr w8,[x8, #0x18]
02c6df3c  cmp w8,w19
02c6df40  b.le 0x02c6e478
02c6df44  bl 0x02c6d80c
02c6df48  tbz w0,#0x0,0x02c6df78
02c6df4c  ldr x8,[x20, #0x30]
02c6df50  cbz x8,0x02c6df80
02c6df54  ldr w9,[x8, #0x18]
02c6df58  cmp w9,w19
02c6df5c  b.le 0x02c6df80
02c6df60  add x8,x8,w19, UXTW  #0x2
02c6df64  ldr w8,[x8, #0x20]
02c6df68  cmp w8,#0x13
02c6df6c  b.le 0x02c6df80
02c6df70  mov w0,#0x2
02c6df74  b 0x02c6e478
02c6df78  mov w0,#0x4
02c6df7c  b 0x02c6e478
02c6df80  mov x0,x20
02c6df84  mov w1,w19
02c6df88  bl 0x02c6dc64
02c6df8c  adrp x22,0x5e5d000
02c6df90  mov w24,w0
02c6df94  ldr x22,[x22, #0x338]
02c6df98  ldr x8,[x22]
02c6df9c  ldr w9,[x8, #0xe4]
02c6dfa0  cbnz w9,0x02c6dfb0
02c6dfa4  mov x0,x8
02c6dfa8  bl 0x029f5bd0
02c6dfac  ldr x8,[x22]
02c6dfb0  ldr x8,[x8, #0xb8]
02c6dfb4  ldr w8,[x8, #0xc4]
02c6dfb8  cmp w8,w24
02c6dfbc  b.ge 0x02c6dfc8
02c6dfc0  mov w0,#0x3
02c6dfc4  b 0x02c6e478
02c6dfc8  mov x0,x20
02c6dfcc  mov w1,w19
02c6dfd0  bl 0x02c6dd48
02c6dfd4  ldr x8,[x20, #0x30]
02c6dfd8  mov w21,w0
02c6dfdc  cbz x8,0x02c6dff8
02c6dfe0  ldr w9,[x8, #0x18]
02c6dfe4  cmp w9,w19
02c6dfe8  b.le 0x02c6dff8
02c6dfec  add x8,x8,w19, UXTW  #0x2
02c6dff0  ldr w23,[x8, #0x20]
02c6dff4  b 0x02c6dffc
02c6dff8  mov w23,wzr
02c6dffc  ldr x8,[x20, #0x38]
02c6e000  cbz x8,0x02c6e49c
02c6e004  ldr w9,[x8, #0x18]
02c6e008  cmp w9,w19
02c6e00c  b.ls 0x02c6e498
02c6e010  mov w27,w19
02c6e014  ldr x0,[x22]
02c6e018  add x8,x8,x27, LSL #0x2
02c6e01c  ldr w9,[x0, #0xe4]
02c6e020  ldr w29,[x8, #0x20]
02c6e024  cbnz w9,0x02c6e02c
02c6e028  bl 0x029f5bd0
02c6e02c  mov w0,w24
02c6e030  mov x1,xzr
02c6e034  bl 0x02b7f8b8
02c6e038  mov w0,wzr
02c6e03c  mov w1,#0x64
02c6e040  mov x2,xzr
02c6e044  bl 0x057d5614
02c6e048  mov w22,w0
02c6e04c  cmp w0,w21
02c6e050  str w23,[sp, #0x8]
02c6e054  b.lt 0x02c6e088
02c6e058  ldr x8,[x20, #0x38]
02c6e05c  cbz x8,0x02c6e49c
02c6e060  ldr w9,[x8, #0x18]
02c6e064  cmp w9,w19
02c6e068  b.ls 0x02c6e498
02c6e06c  add x8,x8,x27, LSL #0x2
02c6e070  adrp x23,0x5e63000
02c6e074  ldr w9,[x8, #0x20]
02c6e078  ldr x23,[x23, #0xb18]
02c6e07c  add w9,w9,#0x1
02c6e080  str w9,[x8, #0x20]
02c6e084  b 0x02c6e0d0
02c6e088  ldr x8,[x20, #0x30]
02c6e08c  cbz x8,0x02c6e49c
02c6e090  ldr w9,[x8, #0x18]
02c6e094  cmp w9,w19
02c6e098  b.ls 0x02c6e498
02c6e09c  add x8,x8,x27, LSL #0x2
02c6e0a0  ldr w9,[x8, #0x20]
02c6e0a4  add w9,w9,#0x1
02c6e0a8  str w9,[x8, #0x20]
02c6e0ac  ldr x8,[x20, #0x38]
02c6e0b0  cbz x8,0x02c6e49c
02c6e0b4  ldr w9,[x8, #0x18]
02c6e0b8  cmp w9,w19
02c6e0bc  b.ls 0x02c6e498
02c6e0c0  add x8,x8,x27, LSL #0x2
02c6e0c4  adrp x23,0x5e63000
02c6e0c8  ldr x23,[x23, #0xb28]
02c6e0cc  str wzr,[x8, #0x20]
02c6e0d0  adrp x28,0x5e58000
02c6e0d4  add x1,sp,#0x1c
02c6e0d8  ldr x28,[x28, #0xa10]
02c6e0dc  str w19,[sp, #0x1c]
02c6e0e0  ldr x0,[x28, #0x48]
02c6e0e4  bl 0x029f5bd8
02c6e0e8  adrp x8,0x5e63000
02c6e0ec  mov x1,x0
02c6e0f0  mov x3,xzr
02c6e0f4  ldr x8,[x8, #0xb20]
02c6e0f8  ldr x2,[x23]
02c6e0fc  ldr x8,[x8]
02c6e100  mov x0,x8
02c6e104  bl 0x046c1d14
02c6e108  adrp x8,0x5e59000
02c6e10c  mov x23,x0
02c6e110  mov w1,#0x5
02c6e114  ldr x8,[x8, #0x768]
02c6e118  ldr x8,[x8]
02c6e11c  mov x0,x8
02c6e120  bl 0x029f5b40
02c6e124  mov x25,x0
02c6e128  ldr x0,[x28, #0x48]
02c6e12c  add x1,sp,#0x1c
02c6e130  str w21,[sp, #0x1c]
02c6e134  bl 0x029f5bd8
02c6e138  cbz x25,0x02c6e49c
02c6e13c  mov x26,x0
02c6e140  cbz x0,0x02c6e158
02c6e144  ldr x8,[x25]
02c6e148  mov x0,x26
02c6e14c  ldr x1,[x8, #0x40]
02c6e150  bl 0x029f5bd4
02c6e154  cbz x0,0x02c6e4a0
02c6e158  ldr w8,[x25, #0x18]
02c6e15c  cbz w8,0x02c6e498
02c6e160  mov x0,x25
02c6e164  mov x1,x26
02c6e168  str x26,[x0, #0x20]!
02c6e16c  bl 0x029f59f4
02c6e170  ldr x0,[x28, #0x48]
02c6e174  add x1,sp,#0x18
02c6e178  str w24,[sp, #0x18]
02c6e17c  bl 0x029f5bd8
02c6e180  mov x24,x0
02c6e184  cbz x0,0x02c6e19c
02c6e188  ldr x8,[x25]
02c6e18c  mov x0,x24
02c6e190  ldr x1,[x8, #0x40]
02c6e194  bl 0x029f5bd4
02c6e198  cbz x0,0x02c6e4a0
02c6e19c  ldr w8,[x25, #0x18]
02c6e1a0  tst w8,#0xfffffffe
02c6e1a4  b.eq 0x02c6e498
02c6e1a8  mov x0,x25
02c6e1ac  mov x1,x24
02c6e1b0  str x24,[x0, #0x28]!
02c6e1b4  bl 0x029f59f4
02c6e1b8  ldr x8,[x20, #0x30]
02c6e1bc  cbz x8,0x02c6e49c
02c6e1c0  ldr w9,[x8, #0x18]
02c6e1c4  cmp w9,w19
02c6e1c8  b.ls 0x02c6e498
02c6e1cc  add x8,x8,x27, LSL #0x2
02c6e1d0  ldr x0,[x28, #0x48]
02c6e1d4  add x1,sp,#0x14
02c6e1d8  ldr w8,[x8, #0x20]
02c6e1dc  str w8,[sp, #0x14]
02c6e1e0  bl 0x029f5bd8
02c6e1e4  mov x24,x0
02c6e1e8  cbz x0,0x02c6e200
02c6e1ec  ldr x8,[x25]
02c6e1f0  mov x0,x24
02c6e1f4  ldr x1,[x8, #0x40]
02c6e1f8  bl 0x029f5bd4
02c6e1fc  cbz x0,0x02c6e4a0
02c6e200  ldr w8,[x25, #0x18]
02c6e204  cmp w8,#0x2
02c6e208  b.ls 0x02c6e498
02c6e20c  mov x0,x25
02c6e210  mov x1,x24
02c6e214  str x24,[x0, #0x30]!
02c6e218  bl 0x029f59f4
02c6e21c  ldr x8,[x20, #0x38]
02c6e220  cbz x8,0x02c6e49c
02c6e224  ldr w9,[x8, #0x18]
02c6e228  cmp w9,w19
02c6e22c  b.ls 0x02c6e498
02c6e230  add x8,x8,x27, LSL #0x2
02c6e234  ldr x0,[x28, #0x48]
02c6e238  add x1,sp,#0x10
02c6e23c  ldr w8,[x8, #0x20]
02c6e240  str w8,[sp, #0x10]
02c6e244  bl 0x029f5bd8
02c6e248  mov x26,x0
02c6e24c  cbz x0,0x02c6e264
02c6e250  ldr x8,[x25]
02c6e254  mov x0,x26
02c6e258  ldr x1,[x8, #0x40]
02c6e25c  bl 0x029f5bd4
02c6e260  cbz x0,0x02c6e4a0
02c6e264  ldr w8,[x25, #0x18]
02c6e268  tst w8,#0xfffffffc
02c6e26c  b.eq 0x02c6e498
02c6e270  mov x0,x25
02c6e274  mov x1,x26
02c6e278  add w24,w29,#0x1
02c6e27c  str x26,[x0, #0x38]!
02c6e280  bl 0x029f59f4
02c6e284  ldr x0,[x28, #0x48]
02c6e288  add x1,sp,#0xc
02c6e28c  str w24,[sp, #0xc]
02c6e290  bl 0x029f5bd8
02c6e294  mov x26,x0
02c6e298  cbz x0,0x02c6e2b0
02c6e29c  ldr x8,[x25]
02c6e2a0  mov x0,x26
02c6e2a4  ldr x1,[x8, #0x40]
02c6e2a8  bl 0x029f5bd4
02c6e2ac  cbz x0,0x02c6e4a0
02c6e2b0  ldr w8,[x25, #0x18]
02c6e2b4  cmp w8,#0x4
02c6e2b8  b.ls 0x02c6e498
02c6e2bc  mov x0,x25
02c6e2c0  mov x1,x26
02c6e2c4  str x26,[x0, #0x40]!
02c6e2c8  bl 0x029f59f4
02c6e2cc  adrp x8,0x5e63000
02c6e2d0  mov x1,x25
02c6e2d4  mov x2,xzr
02c6e2d8  ldr x8,[x8, #0xb10]
02c6e2dc  ldr x0,[x8]
02c6e2e0  bl 0x046c1d9c
02c6e2e4  mov x1,x0
02c6e2e8  mov x0,x23
02c6e2ec  mov x2,xzr
02c6e2f0  bl 0x046b2d44
02c6e2f4  adrp x8,0x5e58000
02c6e2f8  mov x23,x0
02c6e2fc  ldr x8,[x8, #0xf08]
02c6e300  ldr x8,[x8]
02c6e304  ldr w9,[x8, #0xe4]
02c6e308  cbnz w9,0x02c6e314
02c6e30c  mov x0,x8
02c6e310  bl 0x029f5bd0
02c6e314  mov x0,x23
02c6e318  mov x1,xzr
02c6e31c  bl 0x05799e30
02c6e320  mov x0,xzr
02c6e324  bl 0x02c0faf8
02c6e328  adrp x8,0x5e5d000
02c6e32c  cmp w22,w21
02c6e330  mov w9,#0x1
02c6e334  ldr x8,[x8, #0x540]
02c6e338  ldr w25,[sp, #0x8]
02c6e33c  cinc w23,w9,ge
02c6e340  ldr x0,[x8]
02c6e344  ldr w8,[x0, #0xe4]
02c6e348  cbnz w8,0x02c6e350
02c6e34c  bl 0x029f5bd0
02c6e350  add w0,w19,#0x1
02c6e354  add w1,w25,#0x1
02c6e358  mov w2,w23
02c6e35c  mov w3,w24
02c6e360  mov x4,xzr
02c6e364  bl 0x02b98c8c
02c6e368  cmp w22,w21
02c6e36c  b.ge 0x02c6e470
02c6e370  adrp x25,0x5e5d000
02c6e374  adrp x24,0x5e59000
02c6e378  ldr x25,[x25, #0x5b0]
02c6e37c  ldr x24,[x24, #0x1c0]
02c6e380  ldr x8,[x25]
02c6e384  ldr x0,[x24]
02c6e388  ldr x8,[x8, #0xb8]
02c6e38c  ldr w9,[x0, #0xe4]
02c6e390  ldr x23,[x8, #0x8]
02c6e394  cbnz w9,0x02c6e39c
02c6e398  bl 0x029f5bd0
02c6e39c  mov x0,x23
02c6e3a0  mov x1,xzr
02c6e3a4  mov x2,xzr
02c6e3a8  bl 0x057dfa70
02c6e3ac  tbz w0,#0x0,0x02c6e3c8
02c6e3b0  ldr x8,[x25]
02c6e3b4  ldr x8,[x8, #0xb8]
02c6e3b8  ldr x0,[x8, #0x8]
02c6e3bc  cbz x0,0x02c6e49c
02c6e3c0  mov x1,xzr
02c6e3c4  bl 0x02c43744
02c6e3c8  adrp x25,0x5e5d000
02c6e3cc  ldr x25,[x25, #0xd40]
02c6e3d0  ldr x0,[x24]
02c6e3d4  ldr x8,[x25]
02c6e3d8  ldr w9,[x0, #0xe4]
02c6e3dc  ldr x8,[x8, #0xb8]
02c6e3e0  ldr x23,[x8]
02c6e3e4  cbnz w9,0x02c6e3ec
02c6e3e8  bl 0x029f5bd0
02c6e3ec  mov x0,x23
02c6e3f0  mov x1,xzr
02c6e3f4  mov x2,xzr
02c6e3f8  bl 0x057dfa70
02c6e3fc  tbz w0,#0x0,0x02c6e418
02c6e400  ldr x8,[x25]
02c6e404  ldr x8,[x8, #0xb8]
02c6e408  ldr x0,[x8]
02c6e40c  cbz x0,0x02c6e49c
02c6e410  mov x1,xzr
02c6e414  bl 0x02c679fc
02c6e418  adrp x23,0x5e5e000
02c6e41c  ldr x23,[x23, #0x58]
02c6e420  ldr x0,[x23]
02c6e424  ldr w8,[x0, #0xe4]
02c6e428  cbnz w8,0x02c6e434
02c6e42c  bl 0x029f5bd0
02c6e430  ldr x0,[x23]
02c6e434  ldr x8,[x0, #0xb8]
02c6e438  ldr x8,[x8, #0x8]
02c6e43c  cbz x8,0x02c6e470
02c6e440  ldr x9,[x20, #0x30]
02c6e444  cbz x9,0x02c6e49c
02c6e448  ldr w10,[x9, #0x18]
02c6e44c  cmp w10,w19
02c6e450  b.ls 0x02c6e498
02c6e454  add x9,x9,x27, LSL #0x2
02c6e458  ldr x0,[x8, #0x40]
02c6e45c  ldr x3,[x8, #0x28]
02c6e460  mov w1,w19
02c6e464  ldr w2,[x9, #0x20]
02c6e468  ldr x9,[x8, #0x18]
02c6e46c  blr x9
02c6e470  cmp w22,w21
02c6e474  cset w0,ge
02c6e478  ldp x20,x19,[sp, #0x80]
02c6e47c  ldp x22,x21,[sp, #0x70]
02c6e480  ldp x24,x23,[sp, #0x60]
02c6e484  ldp x26,x25,[sp, #0x50]
02c6e488  ldp x28,x27,[sp, #0x40]
02c6e48c  ldp x29,x30,[sp, #0x30]
02c6e490  add sp,sp,#0x90
02c6e494  ret
02c6e498  bl 0x029f5d04
02c6e49c  bl 0x029f5cfc
02c6e4a0  bl 0x029f5d20
02c6e4a4  mov x1,xzr
02c6e4a8  bl 0x029f5bc0
02c6e4ac  cmp w1,#0x1
02c6e4b0  mov x23,x0
02c6e4b4  b.ne 0x02c6e56c
02c6e4b8  mov x0,x23
02c6e4bc  bl 0x05afb1e0
02c6e4c0  mov x23,x0
02c6e4c4  adrp x0,0x5e58000
02c6e4c8  ldr x0,[x0, #0xb30]
02c6e4cc  bl 0x029f5a64
02c6e4d0  ldr x8,[x23]
02c6e4d4  ldr x1,[x8]
02c6e4d8  bl 0x029f6104
02c6e4dc  tbz w0,#0x0,0x02c6e544
02c6e4e0  ldrsw x24,[sp, #0x28]
02c6e4e4  ldr x23,[x23]
02c6e4e8  add x8,sp,#0x20
02c6e4ec  str x23,[x8, x24, LSL #0x3]
02c6e4f0  add w8,w24,#0x1
02c6e4f4  str w8,[sp, #0x28]
02c6e4f8  bl 0x05afb1f0
02c6e4fc  adrp x0,0x5e63000
02c6e500  ldr x0,[x0, #0xb30]
02c6e504  bl 0x029f5a64
02c6e508  mov x1,x23
02c6e50c  mov x2,xzr
02c6e510  bl 0x046b6c0c
02c6e514  mov x23,x0
02c6e518  adrp x0,0x5e58000
02c6e51c  ldr x0,[x0, #0xf08]
02c6e520  bl 0x029f5a64
02c6e524  ldr w8,[x0, #0xe4]
02c6e528  cbnz w8,0x02c6e530
02c6e52c  bl 0x029f5bd0
02c6e530  mov x0,x23
02c6e534  mov x1,xzr
02c6e538  bl 0x0579a8d0
02c6e53c  str w24,[sp, #0x28]
02c6e540  b 0x02c6e368
02c6e544  mov w0,#0x8
02c6e548  bl 0x05afb210
02c6e54c  ldr x8,[x23]
02c6e550  str x8,[x0]
02c6e554  adrp x1,0x5b01000
02c6e558  add x1,x1,#0x708
02c6e55c  mov x2,xzr
02c6e560  bl 0x05afb220
02c6e564  mov x23,x0
02c6e568  bl 0x05afb1f0
02c6e56c  mov x0,x23
02c6e570  bl 0x02ae4a1c
02c6e574  bl 0x02629f70
