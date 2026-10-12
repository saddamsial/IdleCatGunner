02c0385c  str d12,[sp, #-0x60]!
02c03860  stp d11,d10,[sp, #0x10]
02c03864  stp d9,d8,[sp, #0x20]
02c03868  stp x30,x23,[sp, #0x30]
02c0386c  stp x22,x21,[sp, #0x40]
02c03870  stp x20,x19,[sp, #0x50]
02c03874  adrp x20,0x625b000
02c03878  mov x19,x0
02c0387c  ldrb w8,[x20, #0xe58]
02c03880  tbnz w8,#0x0,0x02c038a4
02c03884  adrp x0,0x5e5b000
02c03888  ldr x0,[x0, #0xe98]
02c0388c  bl 0x029f5a50
02c03890  adrp x0,0x5e5c000
02c03894  ldr x0,[x0, #0xf00]
02c03898  bl 0x029f5a50
02c0389c  mov w8,#0x1
02c038a0  strb w8,[x20, #0xe58]
02c038a4  ldr w8,[x19, #0x10]
02c038a8  ldr x20,[x19, #0x20]
02c038ac  str xzr,[sp, #0x8]
02c038b0  cmp w8,#0x2
02c038b4  b.eq 0x02c03a8c
02c038b8  cmp w8,#0x1
02c038bc  b.eq 0x02c038e8
02c038c0  cbnz w8,0x02c03b64
02c038c4  str xzr,[x19, #0x18]!
02c038c8  mov w8,#0xffffffff
02c038cc  mov x0,x19
02c038d0  mov x1,xzr
02c038d4  stur w8,[x19, #-0x8]
02c038d8  bl 0x029f59f4
02c038dc  mov w0,#0x1
02c038e0  stur w0,[x19, #-0x8]
02c038e4  b 0x02c03b68
02c038e8  mov w8,#0xffffffff
02c038ec  str w8,[x19, #0x10]
02c038f0  cbz x20,0x02c03b84
02c038f4  ldr x9,[x20, #0x98]
02c038f8  cbz x9,0x02c03b84
02c038fc  ldr x10,[x9, #0x18]
02c03900  cbz x10,0x02c03b64
02c03904  ldr x8,[x20, #0xc0]
02c03908  cbz x8,0x02c03b84
02c0390c  ldr w11,[x19, #0x28]
02c03910  sub w12,w10,#0x1
02c03914  cmp w11,w12
02c03918  csel w12,w11,w12,lt
02c0391c  cmp w11,#0x0
02c03920  csel w11,wzr,w12,lt
02c03924  cmp w11,w10
02c03928  b.cs 0x02c03b88
02c0392c  add x9,x9,w11, SXTW  #0x3
02c03930  ldr x0,[x9, #0x20]
02c03934  cbz x0,0x02c03b84
02c03938  adrp x9,0x5e5b000
02c0393c  ldr x9,[x9, #0xe98]
02c03940  ldr x21,[x8, #0x20]
02c03944  ldr x1,[x9]
02c03948  bl 0x02fe5f2c
02c0394c  ldr x8,[x20, #0xc0]
02c03950  cbz x8,0x02c03b84
02c03954  cbz x21,0x02c03b84
02c03958  mov x22,x0
02c0395c  ldr x23,[x8, #0x40]
02c03960  mov x0,x21
02c03964  mov x1,xzr
02c03968  bl 0x057ed9fc
02c0396c  cbz x23,0x02c03b84
02c03970  mov x0,x23
02c03974  mov x1,xzr
02c03978  fmov s8,s2
02c0397c  bl 0x057ed9fc
02c03980  cbz x22,0x02c03b84
02c03984  mov x0,x22
02c03988  mov x1,xzr
02c0398c  fmov s9,s2
02c03990  bl 0x057eed98
02c03994  adrp x8,0x5e5c000
02c03998  fmov s10,s0
02c0399c  fmov s11,s1
02c039a0  ldr x8,[x8, #0xf00]
02c039a4  fmov s12,s2
02c039a8  ldr x0,[x8]
02c039ac  ldr w8,[x0, #0xe4]
02c039b0  cbnz w8,0x02c039b8
02c039b4  bl 0x029f5bd0
02c039b8  fmov s0,s10
02c039bc  fmov s1,s11
02c039c0  mov x0,xzr
02c039c4  fmov s2,s12
02c039c8  mov x1,xzr
02c039cc  bl 0x05aa16bc
02c039d0  add x2,sp,#0x8
02c039d4  mov x0,x21
02c039d8  mov x1,xzr
02c039dc  mov x3,xzr
02c039e0  bl 0x05aa15c0
02c039e4  ldr s10,[sp, #0x8]
02c039e8  mov x0,x21
02c039ec  mov x1,xzr
02c039f0  bl 0x057ed9fc
02c039f4  fsub s1,s8,s9
02c039f8  fcmp s1,#0.0
02c039fc  b.ls 0x02c03b64
02c03a00  fmov s2,0xbf000000
02c03a04  fsub s0,s10,s0
02c03a08  ldr x0,[x20, #0xc0]
02c03a0c  fmul s2,s9,s2
02c03a10  fadd s0,s0,s2
02c03a14  movi d2,#0x0
02c03a18  fdiv s0,s0,s1
02c03a1c  fmov s1,0x3f800000
02c03a20  fcmp s0,s1
02c03a24  fcsel s1,s1,s0,gt
02c03a28  fcmp s0,#0.0
02c03a2c  fcsel s0,s2,s1,mi
02c03a30  str s0,[x19, #0x2c]
02c03a34  cbz x0,0x02c03b84
02c03a38  mov x1,xzr
02c03a3c  bl 0x05abde6c
02c03a40  adrp x22,0x625b000
02c03a44  ldr x21,[x20, #0xc0]
02c03a48  str s0,[x19, #0x30]
02c03a4c  ldrb w8,[x22, #0x271]
02c03a50  str wzr,[x19, #0x34]
02c03a54  cbnz w8,0x02c03a6c
02c03a58  adrp x0,0x5e59000
02c03a5c  ldr x0,[x0, #0x608]
02c03a60  bl 0x029f5a50
02c03a64  mov w8,#0x1
02c03a68  strb w8,[x22, #0x271]
02c03a6c  cbz x21,0x02c03b84
02c03a70  adrp x8,0x5e59000
02c03a74  ldr x8,[x8, #0x608]
02c03a78  ldr x8,[x8]
02c03a7c  ldr x8,[x8, #0xb8]
02c03a80  ldr d0,[x8]
02c03a84  str d0,[x21, #0xb8]
02c03a88  b 0x02c03a94
02c03a8c  mov w8,#0xffffffff
02c03a90  str w8,[x19, #0x10]
02c03a94  adrp x8,0x116c000
02c03a98  ldr s9,[x19, #0x34]
02c03a9c  ldr s8,[x8, #0x190]
02c03aa0  fcmp s9,s8
02c03aa4  b.pl 0x02c03b3c
02c03aa8  mov x0,xzr
02c03aac  bl 0x057ebabc
02c03ab0  fadd s0,s9,s0
02c03ab4  str s0,[x19, #0x34]
02c03ab8  cbz x20,0x02c03b84
02c03abc  ldr x0,[x20, #0xc0]
02c03ac0  cbz x0,0x02c03b84
02c03ac4  fdiv s0,s0,s8
02c03ac8  fmov s1,0x3f800000
02c03acc  movi d3,#0x0
02c03ad0  fmov s4,0x40400000
02c03ad4  mov x1,xzr
02c03ad8  fcmp s0,s1
02c03adc  fcsel s2,s1,s0,gt
02c03ae0  fcmp s0,#0.0
02c03ae4  fcsel s0,s3,s2,mi
02c03ae8  fadd s2,s0,s0
02c03aec  fmul s0,s0,s0
02c03af0  fsub s2,s4,s2
02c03af4  fmul s0,s0,s2
02c03af8  fcmp s0,s1
02c03afc  fcsel s1,s1,s0,gt
02c03b00  fcmp s0,#0.0
02c03b04  ldp s0,s2,[x19, #0x2c]
02c03b08  fsub s0,s0,s2
02c03b0c  fcsel s1,s3,s1,mi
02c03b10  fmul s0,s1,s0
02c03b14  fadd s0,s2,s0
02c03b18  bl 0x05abe0a4
02c03b1c  str xzr,[x19, #0x18]!
02c03b20  mov x0,x19
02c03b24  mov x1,xzr
02c03b28  bl 0x029f59f4
02c03b2c  mov w8,#0x2
02c03b30  mov w0,#0x1
02c03b34  stur w8,[x19, #-0x8]
02c03b38  b 0x02c03b68
02c03b3c  cbz x20,0x02c03b84
02c03b40  ldr x0,[x20, #0xc0]
02c03b44  cbz x0,0x02c03b84
02c03b48  ldr s0,[x19, #0x2c]
02c03b4c  mov x1,xzr
02c03b50  bl 0x05abe0a4
02c03b54  str xzr,[x20, #0xd8]!
02c03b58  mov x0,x20
02c03b5c  mov x1,xzr
02c03b60  bl 0x029f59f4
02c03b64  mov w0,wzr
02c03b68  ldp x20,x19,[sp, #0x50]
02c03b6c  ldp x22,x21,[sp, #0x40]
02c03b70  ldp x30,x23,[sp, #0x30]
02c03b74  ldp d9,d8,[sp, #0x20]
02c03b78  ldp d11,d10,[sp, #0x10]
02c03b7c  ldr d12,[sp], #0x60
02c03b80  ret
02c03b84  bl 0x029f5cfc
02c03b88  bl 0x029f5d04
