02c6f3c0  sub sp,sp,#0x30
02c6f3c4  stp x30,x21,[sp, #0x10]
02c6f3c8  stp x20,x19,[sp, #0x20]
02c6f3cc  adrp x21,0x625c000
02c6f3d0  adrp x20,0x5e5e000
02c6f3d4  mov x19,x0
02c6f3d8  ldrb w8,[x21, #0x2b8]
02c6f3dc  ldr x20,[x20, #0x58]
02c6f3e0  tbnz w8,#0x0,0x02c6f434
02c6f3e4  adrp x0,0x5e5e000
02c6f3e8  ldr x0,[x0, #0x528]
02c6f3ec  bl 0x029f5a50
02c6f3f0  adrp x0,0x5e59000
02c6f3f4  ldr x0,[x0, #0x1c0]
02c6f3f8  bl 0x029f5a50
02c6f3fc  adrp x0,0x5e5e000
02c6f400  ldr x0,[x0, #0x58]
02c6f404  bl 0x029f5a50
02c6f408  adrp x0,0x5e63000
02c6f40c  ldr x0,[x0, #0xb60]
02c6f410  bl 0x029f5a50
02c6f414  adrp x0,0x5e63000
02c6f418  ldr x0,[x0, #0xb68]
02c6f41c  bl 0x029f5a50
02c6f420  adrp x0,0x5e63000
02c6f424  ldr x0,[x0, #0xb70]
02c6f428  bl 0x029f5a50
02c6f42c  mov w8,#0x1
02c6f430  strb w8,[x21, #0x2b8]
02c6f434  ldr x0,[x20]
02c6f438  adrp x21,0x5e59000
02c6f43c  ldr w8,[x0, #0xe4]
02c6f440  ldr x21,[x21, #0x1c0]
02c6f444  cbnz w8,0x02c6f450
02c6f448  bl 0x029f5bd0
02c6f44c  ldr x0,[x20]
02c6f450  ldr x8,[x21]
02c6f454  ldr x9,[x0, #0xb8]
02c6f458  ldr w10,[x8, #0xe4]
02c6f45c  ldr x20,[x9]
02c6f460  cbnz w10,0x02c6f46c
02c6f464  mov x0,x8
02c6f468  bl 0x029f5bd0
02c6f46c  mov x0,x20
02c6f470  mov x1,xzr
02c6f474  mov x2,xzr
02c6f478  bl 0x057e14b4
02c6f47c  tbnz w0,#0x0,0x02c6f50c
02c6f480  ldr w1,[x19, #0x98]
02c6f484  tbnz w1,#0x1f,0x02c6f50c
02c6f488  cbz x20,0x02c6f740
02c6f48c  mov x0,x20
02c6f490  bl 0x02c6de5c
02c6f494  cmp w0,#0x1
02c6f498  b.le 0x02c6f51c
02c6f49c  cmp w0,#0x2
02c6f4a0  b.eq 0x02c6f4b4
02c6f4a4  cmp w0,#0x3
02c6f4a8  b.eq 0x02c6f5c8
02c6f4ac  cmp w0,#0x4
02c6f4b0  b.ne 0x02c6f72c
02c6f4b4  adrp x19,0x625b000
02c6f4b8  ldrb w8,[x19, #0xa57]
02c6f4bc  cbnz w8,0x02c6f4d4
02c6f4c0  adrp x0,0x5e5d000
02c6f4c4  ldr x0,[x0, #0xd70]
02c6f4c8  bl 0x029f5a50
02c6f4cc  mov w8,#0x1
02c6f4d0  strb w8,[x19, #0xa57]
02c6f4d4  adrp x8,0x5e5d000
02c6f4d8  ldr x8,[x8, #0xd70]
02c6f4dc  ldr x8,[x8]
02c6f4e0  ldr x8,[x8, #0xb8]
02c6f4e4  ldr x0,[x8]
02c6f4e8  cbz x0,0x02c6f740
02c6f4ec  ldp x20,x19,[sp, #0x20]
02c6f4f0  fmov s0,0x3f800000
02c6f4f4  ldp x30,x21,[sp, #0x10]
02c6f4f8  mov w1,#0x5
02c6f4fc  mov x2,xzr
02c6f500  mov x3,xzr
02c6f504  add sp,sp,#0x30
02c6f508  b 0x02c1f10c
02c6f50c  ldp x20,x19,[sp, #0x20]
02c6f510  ldp x30,x21,[sp, #0x10]
02c6f514  add sp,sp,#0x30
02c6f518  ret
02c6f51c  cbz w0,0x02c6f670
02c6f520  cmp w0,#0x1
02c6f524  b.ne 0x02c6f72c
02c6f528  adrp x20,0x625b000
02c6f52c  ldrb w8,[x20, #0xa57]
02c6f530  cbnz w8,0x02c6f548
02c6f534  adrp x0,0x5e5d000
02c6f538  ldr x0,[x0, #0xd70]
02c6f53c  bl 0x029f5a50
02c6f540  mov w8,#0x1
02c6f544  strb w8,[x20, #0xa57]
02c6f548  adrp x8,0x5e5d000
02c6f54c  ldr x8,[x8, #0xd70]
02c6f550  ldr x8,[x8]
02c6f554  ldr x8,[x8, #0xb8]
02c6f558  ldr x0,[x8]
02c6f55c  cbz x0,0x02c6f740
02c6f560  fmov s0,0x3f800000
02c6f564  mov w1,#0x10
02c6f568  mov x2,xzr
02c6f56c  mov x3,xzr
02c6f570  bl 0x02c1f10c
02c6f574  adrp x8,0x5e5e000
02c6f578  ldr x8,[x8, #0x528]
02c6f57c  ldr x0,[x8]
02c6f580  ldr w8,[x0, #0xe4]
02c6f584  cbnz w8,0x02c6f58c
02c6f588  bl 0x029f5bd0
02c6f58c  adrp x8,0x5e63000
02c6f590  mov w1,#0x1
02c6f594  mov w2,wzr
02c6f598  ldr x8,[x8, #0xb68]
02c6f59c  mov w3,#0x1
02c6f5a0  mov w4,wzr
02c6f5a4  mov x5,xzr
02c6f5a8  mov x6,xzr
02c6f5ac  mov w7,#0x1
02c6f5b0  ldr x0,[x8]
02c6f5b4  str xzr,[sp]
02c6f5b8  bl 0x02bccb00
02c6f5bc  mov x1,xzr
02c6f5c0  bl 0x02c1dd54
02c6f5c4  b 0x02c6f72c
02c6f5c8  adrp x19,0x625b000
02c6f5cc  ldrb w8,[x19, #0xa57]
02c6f5d0  cbnz w8,0x02c6f5e8
02c6f5d4  adrp x0,0x5e5d000
02c6f5d8  ldr x0,[x0, #0xd70]
02c6f5dc  bl 0x029f5a50
02c6f5e0  mov w8,#0x1
02c6f5e4  strb w8,[x19, #0xa57]
02c6f5e8  adrp x8,0x5e5d000
02c6f5ec  ldr x8,[x8, #0xd70]
02c6f5f0  ldr x8,[x8]
02c6f5f4  ldr x8,[x8, #0xb8]
02c6f5f8  ldr x0,[x8]
02c6f5fc  cbz x0,0x02c6f740
02c6f600  fmov s0,0x3f800000
02c6f604  mov w1,#0x5
02c6f608  mov x2,xzr
02c6f60c  mov x3,xzr
02c6f610  bl 0x02c1f10c
02c6f614  adrp x8,0x5e5e000
02c6f618  ldr x8,[x8, #0x528]
02c6f61c  ldr x0,[x8]
02c6f620  ldr w8,[x0, #0xe4]
02c6f624  cbnz w8,0x02c6f62c
02c6f628  bl 0x029f5bd0
02c6f62c  adrp x8,0x5e63000
02c6f630  mov w1,#0x1
02c6f634  mov w2,wzr
02c6f638  ldr x8,[x8, #0xb60]
02c6f63c  mov w3,#0x1
02c6f640  mov w4,wzr
02c6f644  mov x5,xzr
02c6f648  mov x6,xzr
02c6f64c  mov w7,#0x1
02c6f650  ldr x0,[x8]
02c6f654  str xzr,[sp]
02c6f658  bl 0x02bccb00
02c6f65c  ldp x20,x19,[sp, #0x20]
02c6f660  mov x1,xzr
02c6f664  ldp x30,x21,[sp, #0x10]
02c6f668  add sp,sp,#0x30
02c6f66c  b 0x02c1dd54
02c6f670  adrp x20,0x625b000
02c6f674  ldrb w8,[x20, #0xa57]
02c6f678  cbnz w8,0x02c6f690
02c6f67c  adrp x0,0x5e5d000
02c6f680  ldr x0,[x0, #0xd70]
02c6f684  bl 0x029f5a50
02c6f688  mov w8,#0x1
02c6f68c  strb w8,[x20, #0xa57]
02c6f690  adrp x8,0x5e5d000
02c6f694  ldr x8,[x8, #0xd70]
02c6f698  ldr x8,[x8]
02c6f69c  ldr x8,[x8, #0xb8]
02c6f6a0  ldr x0,[x8]
02c6f6a4  cbz x0,0x02c6f740
02c6f6a8  fmov s0,0x3f800000
02c6f6ac  mov w1,#0xf
02c6f6b0  mov x2,xzr
02c6f6b4  mov x3,xzr
02c6f6b8  bl 0x02c1f10c
02c6f6bc  adrp x8,0x5e5e000
02c6f6c0  ldr x8,[x8, #0x528]
02c6f6c4  ldr x0,[x8]
02c6f6c8  ldr w8,[x0, #0xe4]
02c6f6cc  cbnz w8,0x02c6f6d4
02c6f6d0  bl 0x029f5bd0
02c6f6d4  adrp x8,0x5e63000
02c6f6d8  mov w1,#0x1
02c6f6dc  mov w2,wzr
02c6f6e0  ldr x8,[x8, #0xb70]
02c6f6e4  mov w3,#0x1
02c6f6e8  mov w4,wzr
02c6f6ec  mov x5,xzr
02c6f6f0  mov x6,xzr
02c6f6f4  mov w7,#0x1
02c6f6f8  ldr x0,[x8]
02c6f6fc  str xzr,[sp]
02c6f700  bl 0x02bccb00
02c6f704  mov x1,xzr
02c6f708  bl 0x02c1dd54
02c6f70c  ldr x0,[x19, #0x80]
02c6f710  cbz x0,0x02c6f740
02c6f714  mov x1,xzr
02c6f718  bl 0x049bcbd8
02c6f71c  ldr x0,[x19, #0x80]
02c6f720  cbz x0,0x02c6f740
02c6f724  mov x1,xzr
02c6f728  bl 0x049bcbf0
02c6f72c  mov x0,x19
02c6f730  ldp x20,x19,[sp, #0x20]
02c6f734  ldp x30,x21,[sp, #0x10]
02c6f738  add sp,sp,#0x30
02c6f73c  b 0x02c6eaa8
02c6f740  bl 0x029f5cfc
