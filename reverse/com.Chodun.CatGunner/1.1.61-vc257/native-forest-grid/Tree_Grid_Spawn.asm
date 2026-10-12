02cac2d8  sub sp,sp,#0x100
02cac2dc  stp d9,d8,[sp, #0x90]
02cac2e0  stp x29,x30,[sp, #0xa0]
02cac2e4  stp x28,x27,[sp, #0xb0]
02cac2e8  stp x26,x25,[sp, #0xc0]
02cac2ec  stp x24,x23,[sp, #0xd0]
02cac2f0  stp x22,x21,[sp, #0xe0]
02cac2f4  stp x20,x19,[sp, #0xf0]
02cac2f8  adrp x21,0x625c000
02cac2fc  mov x19,x5
02cac300  mov x20,x4
02cac304  ldrb w8,[x21, #0x514]
02cac308  mov w25,w1
02cac30c  mov x23,x0
02cac310  stp w3,w2,[sp, #0x8]
02cac314  tbnz w8,#0x0,0x02cac38c
02cac318  adrp x0,0x5e5e000
02cac31c  ldr x0,[x0, #0x750]
02cac320  bl 0x029f5a50
02cac324  adrp x0,0x5e5e000
02cac328  ldr x0,[x0, #0x758]
02cac32c  bl 0x029f5a50
02cac330  adrp x0,0x5e63000
02cac334  ldr x0,[x0, #0x9e0]
02cac338  bl 0x029f5a50
02cac33c  adrp x0,0x5e63000
02cac340  ldr x0,[x0, #0x9e8]
02cac344  bl 0x029f5a50
02cac348  adrp x0,0x5e63000
02cac34c  ldr x0,[x0, #0xa28]
02cac350  bl 0x029f5a50
02cac354  adrp x0,0x5e63000
02cac358  ldr x0,[x0, #0xa20]
02cac35c  bl 0x029f5a50
02cac360  adrp x0,0x5e5d000
02cac364  ldr x0,[x0, #0x790]
02cac368  bl 0x029f5a50
02cac36c  adrp x0,0x5e64000
02cac370  ldr x0,[x0, #0xa80]
02cac374  bl 0x029f5a50
02cac378  adrp x0,0x5e5d000
02cac37c  ldr x0,[x0, #0xc20]
02cac380  bl 0x029f5a50
02cac384  mov w8,#0x1
02cac388  strb w8,[x21, #0x514]
02cac38c  ldr x8,[x23, #0x20]
02cac390  cbz x8,0x02cac680
02cac394  adrp x9,0x5e5d000
02cac398  ldr x9,[x9, #0x790]
02cac39c  ldr x26,[x8, #0x18]
02cac3a0  ldr x0,[x9]
02cac3a4  cmp w25,w26
02cac3a8  mov w1,w26
02cac3ac  and x28,x26,#0xffffffff
02cac3b0  csel w21,w25,w26,lt
02cac3b4  bl 0x029f5b40
02cac3b8  cmp w26,#0x1
02cac3bc  mov x27,x0
02cac3c0  b.lt 0x02cac3ec
02cac3c4  cbz x27,0x02cac680
02cac3c8  ldr w9,[x27, #0x18]
02cac3cc  mov x8,xzr
02cac3d0  add x10,x27,#0x20
02cac3d4  cmp x9,x8
02cac3d8  b.eq 0x02cac684
02cac3dc  str w8,[x10, x8, LSL #0x2]
02cac3e0  add x8,x8,#0x1
02cac3e4  cmp x28,x8
02cac3e8  b.ne 0x02cac3d4
02cac3ec  adrp x8,0x5e5e000
02cac3f0  adrp x22,0x5e64000
02cac3f4  adrp x29,0x5e5e000
02cac3f8  ldr x8,[x8, #0x758]
02cac3fc  ldr x22,[x22, #0xa80]
02cac400  ldr x29,[x29, #0x750]
02cac404  ldr x0,[x8]
02cac408  bl 0x029f5cec
02cac40c  ldr x2,[x22]
02cac410  mov x1,x23
02cac414  mov x3,xzr
02cac418  mov x24,x0
02cac41c  bl 0x03cf77bc
02cac420  ldr x2,[x29]
02cac424  mov x0,x27
02cac428  mov x1,x24
02cac42c  bl 0x02f4973c
02cac430  adrp x8,0x5e63000
02cac434  ldr x8,[x8, #0xa20]
02cac438  ldr x0,[x8]
02cac43c  bl 0x029f5cec
02cac440  adrp x8,0x5e63000
02cac444  mov x24,x0
02cac448  ldr x8,[x8, #0xa28]
02cac44c  ldr x1,[x8]
02cac450  bl 0x042818a4
02cac454  tbnz w25,#0x1f,0x02cac4ac
02cac458  cmp w21,#0x1
02cac45c  b.lt 0x02cac4ac
02cac460  cbz x27,0x02cac680
02cac464  adrp x25,0x5e63000
02cac468  mov w22,wzr
02cac46c  mov w29,wzr
02cac470  ldr x25,[x25, #0x9e0]
02cac474  sdiv w8,w22,w21
02cac478  ldr w9,[x27, #0x18]
02cac47c  cmp w8,w9
02cac480  b.cs 0x02cac684
02cac484  cbz x24,0x02cac680
02cac488  add x8,x27,w8, SXTW  #0x2
02cac48c  ldr x2,[x25]
02cac490  mov x0,x24
02cac494  ldr w1,[x8, #0x20]
02cac498  bl 0x04282ae4
02cac49c  add w29,w29,#0x1
02cac4a0  add w22,w22,w26
02cac4a4  cmp w21,w29
02cac4a8  b.gt 0x02cac474
02cac4ac  cmp w26,#0x1
02cac4b0  b.lt 0x02cac644
02cac4b4  cbz x24,0x02cac680
02cac4b8  adrp x21,0x5e63000
02cac4bc  mov w22,#0xcccd
02cac4c0  mov x25,xzr
02cac4c4  ldr x21,[x21, #0x9e8]
02cac4c8  mov w29,wzr
02cac4cc  movk w22,#0xcccc, LSL #16
02cac4d0  ldr x2,[x21]
02cac4d4  mov x0,x24
02cac4d8  mov w1,w25
02cac4dc  bl 0x04281fa8
02cac4e0  ldr x8,[x23, #0x20]
02cac4e4  cbz x8,0x02cac680
02cac4e8  ldr w9,[x8, #0x18]
02cac4ec  cmp w25,w9
02cac4f0  b.cs 0x02cac684
02cac4f4  add x8,x8,x25, LSL #0x3
02cac4f8  mov w26,w0
02cac4fc  ldr x0,[x8, #0x20]
02cac500  cbz x0,0x02cac680
02cac504  mov x1,xzr
02cac508  bl 0x057dc1c8
02cac50c  cbz x0,0x02cac680
02cac510  and w1,w26,#0x1
02cac514  mov x2,xzr
02cac518  bl 0x057dff3c
02cac51c  tbz w26,#0x0,0x02cac634
02cac520  ldr s1,[x23, #0x28]
02cac524  mov x0,xzr
02cac528  fneg s0,s1
02cac52c  bl 0x057d55d4
02cac530  ldr s1,[x23, #0x28]
02cac534  fmov s8,s0
02cac538  mov x0,xzr
02cac53c  fneg s2,s1
02cac540  fmov s0,s2
02cac544  bl 0x057d55d4
02cac548  ldr w1,[sp, #0xc]
02cac54c  fmov s9,s0
02cac550  bl 0x02cac688
02cac554  ldr x8,[x23, #0x20]
02cac558  cbz x8,0x02cac680
02cac55c  ldr w9,[x8, #0x18]
02cac560  cmp w25,w9
02cac564  b.cs 0x02cac684
02cac568  cbz x20,0x02cac680
02cac56c  ldr w9,[x20, #0x18]
02cac570  mov w27,w0
02cac574  cmp w0,w9
02cac578  b.cs 0x02cac684
02cac57c  sxtw x9,w27
02cac580  add x8,x8,x25, LSL #0x3
02cac584  add x10,x20,x9, LSL #0x5
02cac588  ldr x26,[x8, #0x20]
02cac58c  ldp q0,q1,[x10, #0x20]
02cac590  stp q0,q1,[sp, #0x70]
02cac594  cbz x19,0x02cac680
02cac598  ldr w8,[x19, #0x18]
02cac59c  cmp w27,w8
02cac5a0  b.cs 0x02cac684
02cac5a4  add x8,x19,x9, LSL #0x5
02cac5a8  adrp x9,0x5e5d000
02cac5ac  ldr x9,[x9, #0xc20]
02cac5b0  ldp q0,q1,[x8, #0x20]
02cac5b4  ldr x0,[x9]
02cac5b8  ldr w8,[x0, #0xe4]
02cac5bc  stp q0,q1,[sp, #0x50]
02cac5c0  cbnz w8,0x02cac5c8
02cac5c4  bl 0x029f5bd0
02cac5c8  ldr w0,[sp, #0x8]
02cac5cc  mov w1,w27
02cac5d0  bl 0x02cab8f8
02cac5d4  cbz x26,0x02cac680
02cac5d8  and x9,x25,#0xffffffff
02cac5dc  and x8,x25,#0xffffffff
02cac5e0  mov w10,#0x32
02cac5e4  umull x9,w9,w22
02cac5e8  ldp q3,q4,[sp, #0x70]
02cac5ec  umull x8,w8,w22
02cac5f0  mov x3,x0
02cac5f4  add x1,sp,#0x30
02cac5f8  add x2,sp,#0x10
02cac5fc  mov x0,x26
02cac600  lsr x9,x9,#0x23
02cac604  stp q3,q4,[sp, #0x30]
02cac608  lsr x8,x8,#0x23
02cac60c  add w9,w9,w9, LSL #0x2
02cac610  msub w8,w8,w10,w29
02cac614  scvtf s1,w9
02cac618  scvtf s0,w8
02cac61c  fadd s2,s9,s1
02cac620  ldp q1,q3,[sp, #0x50]
02cac624  fadd s0,s8,s0
02cac628  stp q1,q3,[sp, #0x10]
02cac62c  movi d1,#0x0
02cac630  bl 0x02cabdac
02cac634  add x25,x25,#0x1
02cac638  add w29,w29,#0x5
02cac63c  cmp w28,w25
02cac640  b.ne 0x02cac4d0
02cac644  mov x0,x23
02cac648  mov x1,xzr
02cac64c  bl 0x057dc1c8
02cac650  cbz x0,0x02cac680
02cac654  ldp x20,x19,[sp, #0xf0]
02cac658  mov w1,#0x1
02cac65c  ldp x22,x21,[sp, #0xe0]
02cac660  mov x2,xzr
02cac664  ldp x24,x23,[sp, #0xd0]
02cac668  ldp x26,x25,[sp, #0xc0]
02cac66c  ldp x28,x27,[sp, #0xb0]
02cac670  ldp x29,x30,[sp, #0xa0]
02cac674  ldp d9,d8,[sp, #0x90]
02cac678  add sp,sp,#0x100
02cac67c  b 0x057dff3c
02cac680  bl 0x029f5cfc
02cac684  bl 0x029f5d04
