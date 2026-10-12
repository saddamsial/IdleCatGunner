02c3f530  stp d11,d10,[sp, #-0x60]!
02c3f534  stp d9,d8,[sp, #0x10]
02c3f538  str x30,[sp, #0x20]
02c3f53c  stp x24,x23,[sp, #0x30]
02c3f540  stp x22,x21,[sp, #0x40]
02c3f544  stp x20,x19,[sp, #0x50]
02c3f548  fmov s8,s0
02c3f54c  adrp x20,0x625c000
02c3f550  mov x19,x0
02c3f554  ldrb w8,[x20, #0x97]
02c3f558  tbnz w8,#0x0,0x02c3f57c
02c3f55c  adrp x0,0x5e59000
02c3f560  ldr x0,[x0, #0x1c0]
02c3f564  bl 0x029f5a50
02c3f568  adrp x0,0x5e5b000
02c3f56c  ldr x0,[x0, #0xa0]
02c3f570  bl 0x029f5a50
02c3f574  mov w8,#0x1
02c3f578  strb w8,[x20, #0x97]
02c3f57c  mov x0,x19
02c3f580  mov x1,xzr
02c3f584  bl 0x057dc0f8
02c3f588  cbz x0,0x02c3f6f4
02c3f58c  adrp x21,0x5e5b000
02c3f590  mov x1,xzr
02c3f594  ldr x21,[x21, #0xa0]
02c3f598  bl 0x057eed98
02c3f59c  ldr w0,[x19, #0x1a0]
02c3f5a0  ldr x20,[x19, #0x1a8]
02c3f5a4  mov x1,xzr
02c3f5a8  fmov s9,s0
02c3f5ac  fmov s10,s1
02c3f5b0  fmov s11,s2
02c3f5b4  bl 0x057e0dd4
02c3f5b8  ldr x8,[x21]
02c3f5bc  mov w21,w0
02c3f5c0  ldr w9,[x8, #0xe4]
02c3f5c4  cbnz w9,0x02c3f5d0
02c3f5c8  mov x0,x8
02c3f5cc  bl 0x029f5bd0
02c3f5d0  fmov s0,s9
02c3f5d4  fmov s1,s10
02c3f5d8  mov x0,x20
02c3f5dc  fmov s2,s11
02c3f5e0  fmov s3,s8
02c3f5e4  mov w1,w21
02c3f5e8  mov x2,xzr
02c3f5ec  bl 0x05869758
02c3f5f0  cmp w0,#0x1
02c3f5f4  b.lt 0x02c3f6d0
02c3f5f8  mov w8,#0x7f7fffff
02c3f5fc  adrp x23,0x5e59000
02c3f600  mov x22,xzr
02c3f604  fmov s10,w8
02c3f608  ldr x23,[x23, #0x1c0]
02c3f60c  mov x20,xzr
02c3f610  mov w24,w0
02c3f614  ldr x8,[x19, #0x1a8]
02c3f618  cbz x8,0x02c3f6f4
02c3f61c  ldr w9,[x8, #0x18]
02c3f620  cmp x22,x9
02c3f624  b.cs 0x02c3f6f8
02c3f628  ldr x0,[x23]
02c3f62c  add x8,x8,x22, LSL #0x3
02c3f630  ldr w9,[x0, #0xe4]
02c3f634  ldr x21,[x8, #0x20]
02c3f638  cbnz w9,0x02c3f640
02c3f63c  bl 0x029f5bd0
02c3f640  mov x0,x21
02c3f644  mov x1,xzr
02c3f648  mov x2,xzr
02c3f64c  bl 0x057e14b4
02c3f650  tbnz w0,#0x0,0x02c3f6c0
02c3f654  cbz x21,0x02c3f6f4
02c3f658  mov x0,x21
02c3f65c  mov x1,xzr
02c3f660  bl 0x057dc0f8
02c3f664  cbz x0,0x02c3f6f4
02c3f668  mov x1,xzr
02c3f66c  bl 0x057eed98
02c3f670  mov x0,x19
02c3f674  mov x1,xzr
02c3f678  fmov s8,s0
02c3f67c  fmov s9,s2
02c3f680  bl 0x057dc0f8
02c3f684  cbz x0,0x02c3f6f4
02c3f688  mov x1,xzr
02c3f68c  bl 0x057eed98
02c3f690  fsub s0,s8,s0
02c3f694  fsub s1,s9,s2
02c3f698  fmul s0,s0,s0
02c3f69c  fmul s1,s1,s1
02c3f6a0  fadd s8,s0,s1
02c3f6a4  fcmp s8,s10
02c3f6a8  b.pl 0x02c3f6c0
02c3f6ac  mov x0,x21
02c3f6b0  mov x1,xzr
02c3f6b4  bl 0x057dc0f8
02c3f6b8  fmov s10,s8
02c3f6bc  mov x20,x0
02c3f6c0  add x22,x22,#0x1
02c3f6c4  cmp x24,x22
02c3f6c8  b.ne 0x02c3f614
02c3f6cc  b 0x02c3f6d4
02c3f6d0  mov x20,xzr
02c3f6d4  mov x0,x20
02c3f6d8  ldp x20,x19,[sp, #0x50]
02c3f6dc  ldp x22,x21,[sp, #0x40]
02c3f6e0  ldr x30,[sp, #0x20]
02c3f6e4  ldp x24,x23,[sp, #0x30]
02c3f6e8  ldp d9,d8,[sp, #0x10]
02c3f6ec  ldp d11,d10,[sp], #0x60
02c3f6f0  ret
02c3f6f4  bl 0x029f5cfc
02c3f6f8  bl 0x029f5d04
