02c4f488  sub sp,sp,#0x50
02c4f48c  str x30,[sp, #0x10]
02c4f490  stp x24,x23,[sp, #0x20]
02c4f494  stp x22,x21,[sp, #0x30]
02c4f498  stp x20,x19,[sp, #0x40]
02c4f49c  adrp x20,0x625c000
02c4f4a0  mov x19,x0
02c4f4a4  ldrb w8,[x20, #0x155]
02c4f4a8  tbnz w8,#0x0,0x02c4f4fc
02c4f4ac  adrp x0,0x5e5d000
02c4f4b0  ldr x0,[x0, #0xd58]
02c4f4b4  bl 0x029f5a50
02c4f4b8  adrp x0,0x5e59000
02c4f4bc  ldr x0,[x0, #0x1c0]
02c4f4c0  bl 0x029f5a50
02c4f4c4  adrp x0,0x5e5e000
02c4f4c8  ldr x0,[x0, #0xb8]
02c4f4cc  bl 0x029f5a50
02c4f4d0  adrp x0,0x5e63000
02c4f4d4  ldr x0,[x0, #0x338]
02c4f4d8  bl 0x029f5a50
02c4f4dc  adrp x0,0x5e62000
02c4f4e0  ldr x0,[x0, #0x5b8]
02c4f4e4  bl 0x029f5a50
02c4f4e8  adrp x0,0x5e63000
02c4f4ec  ldr x0,[x0, #0x528]
02c4f4f0  bl 0x029f5a50
02c4f4f4  mov w8,#0x1
02c4f4f8  strb w8,[x20, #0x155]
02c4f4fc  mov x0,x19
02c4f500  mov x1,xzr
02c4f504  str xzr,[sp, #0x18]
02c4f508  str wzr,[sp, #0xc]
02c4f50c  bl 0x057dc1c8
02c4f510  cbz x0,0x02c4f940
02c4f514  adrp x23,0x5e5d000
02c4f518  mov w1,#0x1
02c4f51c  mov x2,xzr
02c4f520  ldr x23,[x23, #0xd58]
02c4f524  bl 0x057dff3c
02c4f528  ldr x0,[x23]
02c4f52c  ldr x20,[x19, #0x28]
02c4f530  ldr w8,[x0, #0xe4]
02c4f534  cbnz w8,0x02c4f540
02c4f538  bl 0x029f5bd0
02c4f53c  ldr x0,[x23]
02c4f540  ldr x8,[x0, #0xb8]
02c4f544  ldr x8,[x8, #0x8]
02c4f548  cbz x8,0x02c4f940
02c4f54c  adrp x22,0x5e58000
02c4f550  ldr w8,[x8, #0x20]
02c4f554  add x1,sp,#0x8
02c4f558  ldr x22,[x22, #0xa10]
02c4f55c  add w8,w8,#0x1
02c4f560  ldr x0,[x22, #0x48]
02c4f564  str w8,[sp, #0x8]
02c4f568  bl 0x029f5bd8
02c4f56c  ldr x8,[x23]
02c4f570  ldr x8,[x8, #0xb8]
02c4f574  ldr x8,[x8, #0x8]
02c4f578  cbz x8,0x02c4f940
02c4f57c  ldr w8,[x8, #0x24]
02c4f580  adrp x24,0x5e62000
02c4f584  mov x21,x0
02c4f588  ldr x24,[x24, #0x5b8]
02c4f58c  ldr x0,[x22, #0x48]
02c4f590  add x1,sp,#0x4
02c4f594  add w8,w8,#0x1
02c4f598  str w8,[sp, #0x4]
02c4f59c  bl 0x029f5bd8
02c4f5a0  ldr x8,[x24]
02c4f5a4  mov x2,x0
02c4f5a8  mov x1,x21
02c4f5ac  mov x3,xzr
02c4f5b0  mov x0,x8
02c4f5b4  bl 0x046c1d14
02c4f5b8  cbz x20,0x02c4f940
02c4f5bc  ldr x8,[x20]
02c4f5c0  mov x1,x0
02c4f5c4  mov x0,x20
02c4f5c8  ldr x9,[x8, #0x558]
02c4f5cc  ldr x2,[x8, #0x560]
02c4f5d0  blr x9
02c4f5d4  ldr x8,[x23]
02c4f5d8  ldr x8,[x8, #0xb8]
02c4f5dc  ldr x0,[x8, #0x8]
02c4f5e0  cbz x0,0x02c4f940
02c4f5e4  ldr x20,[x19, #0x20]
02c4f5e8  mov w1,#0x1
02c4f5ec  bl 0x02c4ff4c
02c4f5f0  cbz x20,0x02c4f940
02c4f5f4  adrp x21,0x5e5e000
02c4f5f8  mov x1,x0
02c4f5fc  mov x0,x20
02c4f600  ldr x21,[x21, #0xb8]
02c4f604  mov x2,xzr
02c4f608  bl 0x058d34cc
02c4f60c  ldr x0,[x21]
02c4f610  ldr w8,[x0, #0xe4]
02c4f614  cbnz w8,0x02c4f61c
02c4f618  bl 0x029f5bd0
02c4f61c  mov w0,#0x2
02c4f620  mov x1,xzr
02c4f624  bl 0x02c9077c
02c4f628  ldr x8,[x19, #0x78]
02c4f62c  cbz x8,0x02c4f940
02c4f630  mov w9,#0x1
02c4f634  mov w20,w0
02c4f638  mov x2,xzr
02c4f63c  bic w1,w9,w0
02c4f640  mov x0,x8
02c4f644  bl 0x057dff3c
02c4f648  ldr x0,[x19, #0x80]
02c4f64c  cbz x0,0x02c4f940
02c4f650  and w1,w20,#0x1
02c4f654  mov x2,xzr
02c4f658  bl 0x057dff3c
02c4f65c  tbz w20,#0x0,0x02c4f918
02c4f660  ldr x0,[x23]
02c4f664  ldr w8,[x0, #0xe4]
02c4f668  cbnz w8,0x02c4f674
02c4f66c  bl 0x029f5bd0
02c4f670  ldr x0,[x23]
02c4f674  ldr x8,[x0, #0xb8]
02c4f678  ldr x0,[x8, #0x8]
02c4f67c  cbz x0,0x02c4f940
02c4f680  bl 0x02c4eef8
02c4f684  ldr x8,[x19, #0x88]
02c4f688  cbz x8,0x02c4f940
02c4f68c  mov w9,#0x1
02c4f690  mov w20,w0
02c4f694  mov x2,xzr
02c4f698  bic w1,w9,w0
02c4f69c  mov x0,x8
02c4f6a0  bl 0x057dff3c
02c4f6a4  ldr x0,[x19, #0x90]
02c4f6a8  cbz x0,0x02c4f940
02c4f6ac  and w1,w20,#0x1
02c4f6b0  mov x2,xzr
02c4f6b4  bl 0x057dff3c
02c4f6b8  tbz w20,#0x0,0x02c4f7c8
02c4f6bc  ldr x0,[x23]
02c4f6c0  ldr w8,[x0, #0xe4]
02c4f6c4  cbnz w8,0x02c4f6d0
02c4f6c8  bl 0x029f5bd0
02c4f6cc  ldr x0,[x23]
02c4f6d0  ldr x8,[x0, #0xb8]
02c4f6d4  ldr x0,[x8, #0x8]
02c4f6d8  cbz x0,0x02c4f940
02c4f6dc  add x1,sp,#0x1c
02c4f6e0  add x2,sp,#0x18
02c4f6e4  add x3,sp,#0xc
02c4f6e8  bl 0x02c4ede8
02c4f6ec  ldr w8,[sp, #0x1c]
02c4f6f0  ldr x0,[x22, #0x48]
02c4f6f4  add x1,sp,#0x8
02c4f6f8  ldr x20,[x19, #0x98]
02c4f6fc  add w8,w8,#0x1
02c4f700  str w8,[sp, #0x8]
02c4f704  bl 0x029f5bd8
02c4f708  ldr w8,[sp, #0x18]
02c4f70c  mov x21,x0
02c4f710  ldr x0,[x22, #0x48]
02c4f714  add x1,sp,#0x4
02c4f718  add w8,w8,#0x1
02c4f71c  str w8,[sp, #0x4]
02c4f720  bl 0x029f5bd8
02c4f724  adrp x8,0x5e63000
02c4f728  mov x2,x0
02c4f72c  mov x1,x21
02c4f730  ldr x8,[x8, #0x528]
02c4f734  mov x3,xzr
02c4f738  ldr x8,[x8]
02c4f73c  mov x0,x8
02c4f740  bl 0x046c1d14
02c4f744  cbz x20,0x02c4f940
02c4f748  ldr x8,[x20]
02c4f74c  mov x1,x0
02c4f750  mov x0,x20
02c4f754  ldr x9,[x8, #0x558]
02c4f758  ldr x2,[x8, #0x560]
02c4f75c  blr x9
02c4f760  ldr x0,[x19, #0x98]
02c4f764  cbz x0,0x02c4f940
02c4f768  ldr x8,[x0]
02c4f76c  fmov s0,0x3f800000
02c4f770  fmov s1,0x3f800000
02c4f774  fmov s2,0x3f800000
02c4f778  fmov s3,0x3f800000
02c4f77c  ldr x9,[x8, #0x2a8]
02c4f780  ldr x1,[x8, #0x2b0]
02c4f784  blr x9
02c4f788  adrp x8,0x5e59000
02c4f78c  ldr x8,[x8, #0x1c0]
02c4f790  ldr x20,[x19, #0xa8]
02c4f794  ldr x0,[x8]
02c4f798  ldr w8,[x0, #0xe4]
02c4f79c  cbnz w8,0x02c4f7a4
02c4f7a0  bl 0x029f5bd0
02c4f7a4  mov x0,x20
02c4f7a8  mov x1,xzr
02c4f7ac  mov x2,xzr
02c4f7b0  bl 0x057dfa70
02c4f7b4  tbz w0,#0x0,0x02c4f918
02c4f7b8  ldr x0,[x19, #0xa8]
02c4f7bc  cbz x0,0x02c4f940
02c4f7c0  fmov s0,0x3f800000
02c4f7c4  b 0x02c4f910
02c4f7c8  ldr x0,[x23]
02c4f7cc  ldr x20,[x19, #0x98]
02c4f7d0  ldr w8,[x0, #0xe4]
02c4f7d4  cbnz w8,0x02c4f7e0
02c4f7d8  bl 0x029f5bd0
02c4f7dc  ldr x0,[x23]
02c4f7e0  ldr x8,[x0, #0xb8]
02c4f7e4  ldr x8,[x8, #0x8]
02c4f7e8  cbz x8,0x02c4f940
02c4f7ec  ldr w8,[x8, #0x20]
02c4f7f0  ldr x0,[x22, #0x48]
02c4f7f4  add x1,sp,#0x8
02c4f7f8  add w8,w8,#0x1
02c4f7fc  str w8,[sp, #0x8]
02c4f800  bl 0x029f5bd8
02c4f804  ldr x8,[x23]
02c4f808  ldr x8,[x8, #0xb8]
02c4f80c  ldr x8,[x8, #0x8]
02c4f810  cbz x8,0x02c4f940
02c4f814  ldr w8,[x8, #0x24]
02c4f818  mov x21,x0
02c4f81c  ldr x0,[x22, #0x48]
02c4f820  add x1,sp,#0x4
02c4f824  add w8,w8,#0x1
02c4f828  str w8,[sp, #0x4]
02c4f82c  bl 0x029f5bd8
02c4f830  adrp x8,0x5e63000
02c4f834  mov x2,x0
02c4f838  mov x1,x21
02c4f83c  ldr x8,[x8, #0x528]
02c4f840  mov x3,xzr
02c4f844  ldr x8,[x8]
02c4f848  mov x0,x8
02c4f84c  bl 0x046c1d14
02c4f850  cbz x20,0x02c4f940
02c4f854  ldr x8,[x20]
02c4f858  mov x1,x0
02c4f85c  mov x0,x20
02c4f860  ldr x9,[x8, #0x558]
02c4f864  ldr x2,[x8, #0x560]
02c4f868  blr x9
02c4f86c  ldr x0,[x19, #0x98]
02c4f870  cbz x0,0x02c4f940
02c4f874  ldr x8,[x0]
02c4f878  movi d1,#0x0
02c4f87c  movi d2,#0x0
02c4f880  fmov s0,0x3f800000
02c4f884  fmov s3,0x3f800000
02c4f888  ldr x9,[x8, #0x2a8]
02c4f88c  ldr x1,[x8, #0x2b0]
02c4f890  blr x9
02c4f894  ldr x8,[x23]
02c4f898  ldr x8,[x8, #0xb8]
02c4f89c  ldr x0,[x8, #0x8]
02c4f8a0  cbz x0,0x02c4f940
02c4f8a4  bl 0x02c4efd0
02c4f8a8  mov w20,w0
02c4f8ac  ldr x0,[x22, #0x48]
02c4f8b0  ldr x21,[x19, #0xa0]
02c4f8b4  mov x1,sp
02c4f8b8  str w20,[sp]
02c4f8bc  bl 0x029f5bd8
02c4f8c0  adrp x8,0x5e63000
02c4f8c4  mov x1,x0
02c4f8c8  mov x2,xzr
02c4f8cc  ldr x8,[x8, #0x338]
02c4f8d0  ldr x8,[x8]
02c4f8d4  mov x0,x8
02c4f8d8  bl 0x046b6c0c
02c4f8dc  cbz x21,0x02c4f940
02c4f8e0  ldr x8,[x21]
02c4f8e4  mov x1,x0
02c4f8e8  mov x0,x21
02c4f8ec  ldr x9,[x8, #0x558]
02c4f8f0  ldr x2,[x8, #0x560]
02c4f8f4  blr x9
02c4f8f8  ldr x0,[x19, #0xa8]
02c4f8fc  cbz x0,0x02c4f940
02c4f900  scvtf s0,w20
02c4f904  mov w8,#0x42c80000
02c4f908  fmov s1,w8
02c4f90c  fdiv s0,s0,s1
02c4f910  mov x1,xzr
02c4f914  bl 0x02c28290
02c4f918  mov x0,x19
02c4f91c  bl 0x02c50978
02c4f920  mov x0,x19
02c4f924  bl 0x02c50a34
02c4f928  ldp x20,x19,[sp, #0x40]
02c4f92c  ldr x30,[sp, #0x10]
02c4f930  ldp x22,x21,[sp, #0x30]
02c4f934  ldp x24,x23,[sp, #0x20]
02c4f938  add sp,sp,#0x50
02c4f93c  ret
02c4f940  bl 0x029f5cfc
