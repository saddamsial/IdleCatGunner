049bb550  stp d11,d10,[sp, #-0x40]!
049bb554  stp d9,d8,[sp, #0x10]
049bb558  stp x30,x21,[sp, #0x20]
049bb55c  stp x20,x19,[sp, #0x30]
049bb560  adrp x8,0x116c000
049bb564  mov x0,xzr
049bb568  mov x19,x1
049bb56c  ldr s3,[x8, #0x26c]
049bb570  fmul s0,s0,s3
049bb574  fmul s1,s1,s3
049bb578  fmul s2,s2,s3
049bb57c  bl 0x057cd67c
049bb580  cbz x19,0x049bb610
049bb584  ldr x8,[x19, #0x18]
049bb588  cmp w8,#0x1
049bb58c  b.lt 0x049bb5f8
049bb590  fmov s8,s0
049bb594  fmov s9,s1
049bb598  mov x20,xzr
049bb59c  fmov s10,s2
049bb5a0  fmov s11,s3
049bb5a4  and x8,x8,#0xffffffff
049bb5a8  add x21,x19,#0x24
049bb5ac  cmp x20,w8, UXTW 
049bb5b0  b.cs 0x049bb60c
049bb5b4  movi d6,#0x0
049bb5b8  fmov s0,s8
049bb5bc  mov x0,xzr
049bb5c0  fmov s1,s9
049bb5c4  fmov s2,s10
049bb5c8  fmov s3,s11
049bb5cc  ldp s4,s5,[x21, #-0x4]
049bb5d0  bl 0x057cdb04
049bb5d4  ldr w8,[x19, #0x18]
049bb5d8  cmp x20,x8
049bb5dc  b.cs 0x049bb60c
049bb5e0  stp s0,s1,[x21, #-0x4]
049bb5e4  add x20,x20,#0x1
049bb5e8  add x21,x21,#0x8
049bb5ec  ldr w8,[x19, #0x18]
049bb5f0  cmp x20,w8, SXTW 
049bb5f4  b.lt 0x049bb5ac
049bb5f8  ldp x20,x19,[sp, #0x30]
049bb5fc  ldp x30,x21,[sp, #0x20]
049bb600  ldp d9,d8,[sp, #0x10]
049bb604  ldp d11,d10,[sp], #0x40
049bb608  ret
049bb60c  bl 0x029f5d04
049bb610  bl 0x029f5cfc
