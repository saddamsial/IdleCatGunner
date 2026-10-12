02c7421c  str d12,[sp, #-0x90]!
02c74220  stp d11,d10,[sp, #0x10]
02c74224  stp d9,d8,[sp, #0x20]
02c74228  stp x29,x30,[sp, #0x30]
02c7422c  stp x28,x27,[sp, #0x40]
02c74230  stp x26,x25,[sp, #0x50]
02c74234  stp x24,x23,[sp, #0x60]
02c74238  stp x22,x21,[sp, #0x70]
02c7423c  stp x20,x19,[sp, #0x80]
02c74240  adrp x20,0x625c000
02c74244  adrp x21,0x5e5d000
02c74248  mov x19,x0
02c7424c  ldrb w8,[x20, #0x2d9]
02c74250  ldr x21,[x21, #0xd40]
02c74254  tbnz w8,#0x0,0x02c74284
02c74258  adrp x0,0x5e5b000
02c7425c  ldr x0,[x0, #0xe98]
02c74260  bl 0x029f5a50
02c74264  adrp x0,0x5e63000
02c74268  ldr x0,[x0, #0xaa8]
02c7426c  bl 0x029f5a50
02c74270  adrp x0,0x5e5d000
02c74274  ldr x0,[x0, #0xd40]
02c74278  bl 0x029f5a50
02c7427c  mov w8,#0x1
02c74280  strb w8,[x20, #0x2d9]
02c74284  ldr x8,[x21]
02c74288  ldr x8,[x8, #0xb8]
02c7428c  ldr x9,[x8]
02c74290  cbz x9,0x02c74484
02c74294  adrp x8,0x5e63000
02c74298  ldr x8,[x8, #0xaa8]
02c7429c  ldr x8,[x8]
02c742a0  ldr x8,[x8, #0xb8]
02c742a4  ldr x8,[x8]
02c742a8  cbz x8,0x02c74484
02c742ac  ldr x25,[x9, #0x40]
02c742b0  cbz x25,0x02c74484
02c742b4  ldr x9,[x25, #0x18]
02c742b8  cmp w9,#0x1
02c742bc  b.lt 0x02c743d8
02c742c0  adrp x27,0x5e5b000
02c742c4  adrp x21,0x5e59000
02c742c8  mov x26,xzr
02c742cc  ldr x27,[x27, #0xe98]
02c742d0  ldr x28,[x8, #0x28]
02c742d4  and x8,x9,#0xffffffff
02c742d8  mov w9,#0x7f7fffff
02c742dc  ldr x21,[x21]
02c742e0  add x29,x25,#0x20
02c742e4  fmov s12,w9
02c742e8  mov w20,#0xffffffff
02c742ec  add x23,x28,#0x20
02c742f0  adrp x24,0x625c000
02c742f4  cbz x28,0x02c74484
02c742f8  ldr w9,[x28, #0x18]
02c742fc  cmp x26,w9, SXTW 
02c74300  b.ge 0x02c743dc
02c74304  cmp x26,w8, UXTW 
02c74308  b.cs 0x02c74488
02c7430c  ldr w8,[x29, x26, LSL #0x2]
02c74310  cmn w8,#0x1
02c74314  b.eq 0x02c74324
02c74318  ldr w8,[x19, #0xdc]
02c7431c  cmp x26,x8
02c74320  b.ne 0x02c743c4
02c74324  cmp x26,x9
02c74328  b.cs 0x02c74488
02c7432c  ldr x0,[x23, x26, LSL #0x3]
02c74330  cbz x0,0x02c74484
02c74334  ldr x1,[x27]
02c74338  bl 0x02fe5f2c
02c7433c  ldr x8,[x19, #0x98]
02c74340  cbz x8,0x02c74484
02c74344  mov x22,x0
02c74348  mov x0,x8
02c7434c  mov x1,xzr
02c74350  bl 0x057eddfc
02c74354  cbz x22,0x02c74484
02c74358  mov x0,x22
02c7435c  mov x1,xzr
02c74360  fmov s8,s0
02c74364  fmov s9,s1
02c74368  bl 0x057eddfc
02c7436c  fmov s10,s0
02c74370  fmov s11,s1
02c74374  ldrb w8,[x24, #0x2a2]
02c74378  cbnz w8,0x02c7438c
02c7437c  mov x0,x21
02c74380  bl 0x029f5a50
02c74384  mov w8,#0x1
02c74388  strb w8,[x24, #0x2a2]
02c7438c  ldr x0,[x21]
02c74390  ldr w8,[x0, #0xe4]
02c74394  cbnz w8,0x02c7439c
02c74398  bl 0x029f5bd0
02c7439c  fsub s0,s9,s11
02c743a0  fsub s1,s8,s10
02c743a4  fmul s1,s1,s1
02c743a8  fmul s0,s0,s0
02c743ac  fadd s0,s1,s0
02c743b0  fsqrt s0,s0
02c743b4  fcmp s0,s12
02c743b8  b.pl 0x02c743c4
02c743bc  fmov s12,s0
02c743c0  mov w20,w26
02c743c4  ldr w8,[x25, #0x18]
02c743c8  add x26,x26,#0x1
02c743cc  cmp x26,w8, SXTW 
02c743d0  b.lt 0x02c742f4
02c743d4  b 0x02c743dc
02c743d8  mov w20,#0xffffffff
02c743dc  cmn w20,#0x1
02c743e0  b.eq 0x02c74444
02c743e4  ldr w1,[x19, #0xdc]
02c743e8  cmp w20,w1
02c743ec  b.eq 0x02c74444
02c743f0  adrp x21,0x5e5d000
02c743f4  ldr x21,[x21, #0xd40]
02c743f8  ldr x8,[x21]
02c743fc  ldr x8,[x8, #0xb8]
02c74400  ldr x0,[x8]
02c74404  cbz x0,0x02c74484
02c74408  mov x2,xzr
02c7440c  bl 0x02c68408
02c74410  ldr x9,[x21]
02c74414  mov w8,w0
02c74418  ldr x9,[x9, #0xb8]
02c7441c  ldr x0,[x9]
02c74420  tbz w8,#0x0,0x02c74430
02c74424  cbz x0,0x02c74484
02c74428  str w20,[x0, #0xc0]
02c7442c  b 0x02c74434
02c74430  cbz x0,0x02c74484
02c74434  ldr w1,[x19, #0xdc]
02c74438  mov w2,w20
02c7443c  mov x3,xzr
02c74440  bl 0x02c6810c
02c74444  adrp x8,0x5e63000
02c74448  ldr x8,[x8, #0xaa8]
02c7444c  ldr x8,[x8]
02c74450  ldr x8,[x8, #0xb8]
02c74454  ldr x0,[x8]
02c74458  cbz x0,0x02c74484
02c7445c  ldp x20,x19,[sp, #0x80]
02c74460  ldp x22,x21,[sp, #0x70]
02c74464  ldp x24,x23,[sp, #0x60]
02c74468  ldp x26,x25,[sp, #0x50]
02c7446c  ldp x28,x27,[sp, #0x40]
02c74470  ldp x29,x30,[sp, #0x30]
02c74474  ldp d9,d8,[sp, #0x20]
02c74478  ldp d11,d10,[sp, #0x10]
02c7447c  ldr d12,[sp], #0x90
02c74480  b 0x02c73c20
02c74484  bl 0x029f5cfc
02c74488  bl 0x029f5d04
