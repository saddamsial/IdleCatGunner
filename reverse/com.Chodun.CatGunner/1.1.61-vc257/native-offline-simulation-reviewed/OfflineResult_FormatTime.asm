02c0b3cc  stp d9,d8,[sp, #-0x40]!
02c0b3d0  str x30,[sp, #0x10]
02c0b3d4  stp x22,x21,[sp, #0x20]
02c0b3d8  stp x20,x19,[sp, #0x30]
02c0b3dc  fmov s8,s0
02c0b3e0  adrp x19,0x625b000
02c0b3e4  ldrb w8,[x19, #0xe96]
02c0b3e8  tbnz w8,#0x0,0x02c0b418
02c0b3ec  adrp x0,0x5e5e000
02c0b3f0  ldr x0,[x0, #0x540]
02c0b3f4  bl 0x029f5a50
02c0b3f8  adrp x0,0x5e5e000
02c0b3fc  ldr x0,[x0, #0x6d0]
02c0b400  bl 0x029f5a50
02c0b404  adrp x0,0x5e62000
02c0b408  ldr x0,[x0, #0x128]
02c0b40c  bl 0x029f5a50
02c0b410  mov w8,#0x1
02c0b414  strb w8,[x19, #0xe96]
02c0b418  mov w8,#0x45610000
02c0b41c  mov w21,#0x80000000
02c0b420  fmov s1,w8
02c0b424  mov w8,#0x7f800000
02c0b428  fmov s9,w8
02c0b42c  fdiv s0,s8,s1
02c0b430  fcvtzs w9,s0
02c0b434  fcmp s0,s9
02c0b438  fmov s0,s8
02c0b43c  csel w19,w21,w9,eq
02c0b440  bl 0x05afb260
02c0b444  mov w8,#0x42700000
02c0b448  fmov s1,w8
02c0b44c  fdiv s0,s0,s1
02c0b450  fcvtzs w8,s0
02c0b454  fcmp s0,s9
02c0b458  fmov s0,s8
02c0b45c  csel w20,w21,w8,eq
02c0b460  bl 0x05afb260
02c0b464  fcvtzs w8,s0
02c0b468  fcmp s0,s9
02c0b46c  csel w21,w21,w8,eq
02c0b470  cmp w19,#0x0
02c0b474  b.le 0x02c0b4b4
02c0b478  adrp x21,0x5e58000
02c0b47c  adrp x22,0x5e5e000
02c0b480  add x1,sp,#0x1c
02c0b484  ldr x21,[x21, #0xa10]
02c0b488  ldr x22,[x22, #0x540]
02c0b48c  str w19,[sp, #0x1c]
02c0b490  ldr x0,[x21, #0x48]
02c0b494  bl 0x029f5bd8
02c0b498  mov x19,x0
02c0b49c  ldr x0,[x21, #0x48]
02c0b4a0  add x1,sp,#0x18
02c0b4a4  str w20,[sp, #0x18]
02c0b4a8  bl 0x029f5bd8
02c0b4ac  ldr x8,[x22]
02c0b4b0  b 0x02c0b4f4
02c0b4b4  cmp w20,#0x0
02c0b4b8  b.le 0x02c0b51c
02c0b4bc  adrp x22,0x5e58000
02c0b4c0  add x1,sp,#0x1c
02c0b4c4  ldr x22,[x22, #0xa10]
02c0b4c8  str w20,[sp, #0x1c]
02c0b4cc  ldr x0,[x22, #0x48]
02c0b4d0  bl 0x029f5bd8
02c0b4d4  mov x19,x0
02c0b4d8  ldr x0,[x22, #0x48]
02c0b4dc  add x1,sp,#0x18
02c0b4e0  str w21,[sp, #0x18]
02c0b4e4  bl 0x029f5bd8
02c0b4e8  adrp x8,0x5e62000
02c0b4ec  ldr x8,[x8, #0x128]
02c0b4f0  ldr x8,[x8]
02c0b4f4  mov x2,x0
02c0b4f8  mov x0,x8
02c0b4fc  mov x1,x19
02c0b500  mov x3,xzr
02c0b504  bl 0x046c1d14
02c0b508  ldp x20,x19,[sp, #0x30]
02c0b50c  ldr x30,[sp, #0x10]
02c0b510  ldp x22,x21,[sp, #0x20]
02c0b514  ldp d9,d8,[sp], #0x40
02c0b518  ret
02c0b51c  adrp x8,0x5e58000
02c0b520  add x1,sp,#0x1c
02c0b524  ldr x8,[x8, #0xa10]
02c0b528  str w21,[sp, #0x1c]
02c0b52c  ldr x0,[x8, #0x48]
02c0b530  bl 0x029f5bd8
02c0b534  adrp x8,0x5e5e000
02c0b538  mov x1,x0
02c0b53c  mov x2,xzr
02c0b540  ldr x8,[x8, #0x6d0]
02c0b544  ldr x8,[x8]
02c0b548  mov x0,x8
02c0b54c  bl 0x046b6c0c
02c0b550  b 0x02c0b508
