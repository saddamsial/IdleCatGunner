02c5d5a0  sub sp,sp,#0x30
02c5d5a4  stp x30,x21,[sp, #0x10]
02c5d5a8  stp x20,x19,[sp, #0x20]
02c5d5ac  adrp x20,0x625c000
02c5d5b0  mov x19,x0
02c5d5b4  ldrb w8,[x20, #0x209]
02c5d5b8  tbnz w8,#0x0,0x02c5d5dc
02c5d5bc  adrp x0,0x5e59000
02c5d5c0  ldr x0,[x0, #0x1c0]
02c5d5c4  bl 0x029f5a50
02c5d5c8  adrp x0,0x5e63000
02c5d5cc  ldr x0,[x0, #0x800]
02c5d5d0  bl 0x029f5a50
02c5d5d4  mov w8,#0x1
02c5d5d8  strb w8,[x20, #0x209]
02c5d5dc  mov x0,x19
02c5d5e0  bl 0x02c5d6f8
02c5d5e4  ldr x0,[x19, #0xd8]
02c5d5e8  cbz x0,0x02c5d6f4
02c5d5ec  mov x1,xzr
02c5d5f0  bl 0x05abf994
02c5d5f4  ldr w8,[x19, #0x78]
02c5d5f8  fmov s3,0x3f800000
02c5d5fc  fmov s2,0x3f800000
02c5d600  fmov s1,0x3f800000
02c5d604  fmov s0,0x3f800000
02c5d608  cmp w8,#0x5
02c5d60c  b.lt 0x02c5d618
02c5d610  ldp s0,s1,[x19, #0xe8]
02c5d614  ldp s2,s3,[x19, #0xf0]
02c5d618  cbz x0,0x02c5d6f4
02c5d61c  ldr x8,[x0]
02c5d620  adrp x21,0x5e63000
02c5d624  ldr x21,[x21, #0x800]
02c5d628  ldr x9,[x8, #0x2a8]
02c5d62c  ldr x1,[x8, #0x2b0]
02c5d630  blr x9
02c5d634  adrp x9,0x5e58000
02c5d638  ldr w8,[x19, #0x78]
02c5d63c  mov w10,#0x5
02c5d640  ldr x9,[x9, #0xa10]
02c5d644  ldr x20,[x19, #0xe0]
02c5d648  add x1,sp,#0xc
02c5d64c  sub w8,w10,w8
02c5d650  ldr x0,[x9, #0x48]
02c5d654  str w8,[sp, #0xc]
02c5d658  bl 0x029f5bd8
02c5d65c  ldr x8,[x21]
02c5d660  mov x1,x0
02c5d664  mov x2,xzr
02c5d668  mov x0,x8
02c5d66c  bl 0x046b6c0c
02c5d670  cbz x20,0x02c5d6f4
02c5d674  ldr x8,[x20]
02c5d678  adrp x21,0x5e59000
02c5d67c  mov x1,x0
02c5d680  ldr x21,[x21, #0x1c0]
02c5d684  mov x0,x20
02c5d688  ldr x9,[x8, #0x558]
02c5d68c  ldr x2,[x8, #0x560]
02c5d690  blr x9
02c5d694  ldr x0,[x21]
02c5d698  ldr x20,[x19, #0xf8]
02c5d69c  ldr w8,[x0, #0xe4]
02c5d6a0  cbnz w8,0x02c5d6a8
02c5d6a4  bl 0x029f5bd0
02c5d6a8  mov x0,x20
02c5d6ac  mov x1,xzr
02c5d6b0  mov x2,xzr
02c5d6b4  bl 0x057dfa70
02c5d6b8  tbz w0,#0x0,0x02c5d6dc
02c5d6bc  ldr x0,[x19, #0xf8]
02c5d6c0  cbz x0,0x02c5d6f4
02c5d6c4  ldr w8,[x19, #0x78]
02c5d6c8  mov x2,xzr
02c5d6cc  sub w8,w8,#0x3
02c5d6d0  cmp w8,#0x2
02c5d6d4  cset w1,cc
02c5d6d8  bl 0x057dff3c
02c5d6dc  mov x0,x19
02c5d6e0  bl 0x02c5db28
02c5d6e4  ldp x20,x19,[sp, #0x20]
02c5d6e8  ldp x30,x21,[sp, #0x10]
02c5d6ec  add sp,sp,#0x30
02c5d6f0  ret
02c5d6f4  bl 0x029f5cfc
