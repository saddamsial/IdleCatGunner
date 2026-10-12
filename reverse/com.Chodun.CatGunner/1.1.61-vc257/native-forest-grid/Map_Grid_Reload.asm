02c7a5ec  stp x30,x21,[sp, #-0x20]!
02c7a5f0  stp x20,x19,[sp, #0x10]
02c7a5f4  ldr x8,[x0, #0x20]
02c7a5f8  cbz x8,0x02c7a730
02c7a5fc  ldr w9,[x8, #0x18]
02c7a600  cbz w9,0x02c7a734
02c7a604  ldr x9,[x0, #0x38]
02c7a608  mov x19,x0
02c7a60c  cbz x9,0x02c7a730
02c7a610  ldr w10,[x9, #0x18]
02c7a614  mov w20,w1
02c7a618  cmp w10,w1
02c7a61c  b.ls 0x02c7a734
02c7a620  ldr x0,[x8, #0x20]
02c7a624  cbz x0,0x02c7a730
02c7a628  sxtw x21,w20
02c7a62c  mov x2,xzr
02c7a630  add x8,x9,x21, LSL #0x3
02c7a634  ldr x1,[x8, #0x20]
02c7a638  bl 0x0578eb10
02c7a63c  ldr x8,[x19, #0x20]
02c7a640  cbz x8,0x02c7a730
02c7a644  ldr w9,[x8, #0x18]
02c7a648  tst w9,#0xfffffffe
02c7a64c  b.eq 0x02c7a734
02c7a650  ldr x9,[x19, #0x38]
02c7a654  cbz x9,0x02c7a730
02c7a658  ldr w10,[x9, #0x18]
02c7a65c  cmp w10,w20
02c7a660  b.ls 0x02c7a734
02c7a664  ldr x0,[x8, #0x28]
02c7a668  cbz x0,0x02c7a730
02c7a66c  add x8,x9,x21, LSL #0x3
02c7a670  mov x2,xzr
02c7a674  ldr x1,[x8, #0x20]
02c7a678  bl 0x0578eb10
02c7a67c  ldr x8,[x19, #0x28]
02c7a680  cbz x8,0x02c7a730
02c7a684  ldr w9,[x8, #0x18]
02c7a688  cbz w9,0x02c7a734
02c7a68c  ldr x9,[x19, #0x40]
02c7a690  cbz x9,0x02c7a730
02c7a694  ldr w10,[x9, #0x18]
02c7a698  cmp w10,w20
02c7a69c  b.ls 0x02c7a734
02c7a6a0  ldr x0,[x8, #0x20]
02c7a6a4  cbz x0,0x02c7a730
02c7a6a8  add x8,x9,x21, LSL #0x3
02c7a6ac  mov x2,xzr
02c7a6b0  ldr x1,[x8, #0x20]
02c7a6b4  bl 0x0578eb10
02c7a6b8  ldr x8,[x19, #0x28]
02c7a6bc  cbz x8,0x02c7a730
02c7a6c0  ldr w9,[x8, #0x18]
02c7a6c4  tst w9,#0xfffffffe
02c7a6c8  b.eq 0x02c7a734
02c7a6cc  ldr x9,[x19, #0x40]
02c7a6d0  cbz x9,0x02c7a730
02c7a6d4  ldr w10,[x9, #0x18]
02c7a6d8  cmp w10,w20
02c7a6dc  b.ls 0x02c7a734
02c7a6e0  ldr x0,[x8, #0x28]
02c7a6e4  cbz x0,0x02c7a730
02c7a6e8  add x8,x9,x21, LSL #0x3
02c7a6ec  mov x2,xzr
02c7a6f0  ldr x1,[x8, #0x20]
02c7a6f4  bl 0x0578eb10
02c7a6f8  ldr x8,[x19, #0x48]
02c7a6fc  cbz x8,0x02c7a730
02c7a700  ldr w9,[x8, #0x18]
02c7a704  cmp w9,w20
02c7a708  b.ls 0x02c7a734
02c7a70c  ldr x0,[x19, #0x30]
02c7a710  cbz x0,0x02c7a730
02c7a714  add x8,x8,x21, LSL #0x4
02c7a718  ldp x20,x19,[sp, #0x10]
02c7a71c  mov x1,xzr
02c7a720  ldp s0,s1,[x8, #0x20]
02c7a724  ldp s2,s3,[x8, #0x28]
02c7a728  ldp x30,x21,[sp], #0x20
02c7a72c  b 0x0578ece0
02c7a730  bl 0x029f5cfc
02c7a734  bl 0x029f5d04
