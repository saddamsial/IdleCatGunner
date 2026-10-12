02c4c530  sub sp,sp,#0x100
02c4c534  stp d15,d14,[sp, #0x80]
02c4c538  stp d13,d12,[sp, #0x90]
02c4c53c  stp d11,d10,[sp, #0xa0]
02c4c540  stp d9,d8,[sp, #0xb0]
02c4c544  str x29,[sp, #0xc0]
02c4c548  stp x30,x23,[sp, #0xd0]
02c4c54c  stp x22,x21,[sp, #0xe0]
02c4c550  stp x20,x19,[sp, #0xf0]
02c4c554  fmov s11,s2
02c4c558  fmov s9,s1
02c4c55c  adrp x23,0x625c000
02c4c560  fmov s10,s0
02c4c564  ldrb w8,[x23, #0x12e]
02c4c568  mov w20,w3
02c4c56c  mov x21,x2
02c4c570  mov x22,x1
02c4c574  mov x19,x0
02c4c578  tbnz w8,#0x0,0x02c4c590
02c4c57c  adrp x0,0x5e63000
02c4c580  ldr x0,[x0, #0x488]
02c4c584  bl 0x029f5a50
02c4c588  mov w8,#0x1
02c4c58c  strb w8,[x23, #0x12e]
02c4c590  mov x0,x19
02c4c594  mov x1,xzr
02c4c598  bl 0x057dc1c8
02c4c59c  cbz x0,0x02c4c83c
02c4c5a0  mov w1,#0x1
02c4c5a4  mov x2,xzr
02c4c5a8  bl 0x057dff3c
02c4c5ac  ldp q0,q1,[x22]
02c4c5b0  add x8,sp,#0x40
02c4c5b4  ldr x22,[x19, #0x20]
02c4c5b8  mov w0,wzr
02c4c5bc  mov x1,xzr
02c4c5c0  stp q0,q1,[sp, #0x60]
02c4c5c4  bl 0x046544b8
02c4c5c8  cbz x22,0x02c4c83c
02c4c5cc  ldp q0,q1,[sp, #0x60]
02c4c5d0  add x1,sp,#0x20
02c4c5d4  mov x2,sp
02c4c5d8  mov x0,x22
02c4c5dc  mov x3,xzr
02c4c5e0  stp q0,q1,[sp, #0x20]
02c4c5e4  ldp q0,q2,[sp, #0x40]
02c4c5e8  stp q0,q2,[sp]
02c4c5ec  bl 0x02c5c998
02c4c5f0  ldr x0,[x19, #0x30]
02c4c5f4  cbz x0,0x02c4c83c
02c4c5f8  mov x1,x21
02c4c5fc  mov x2,xzr
02c4c600  bl 0x0578eb10
02c4c604  ldr x0,[x19, #0x30]
02c4c608  cbz x0,0x02c4c83c
02c4c60c  mov x1,xzr
02c4c610  bl 0x057dc0f8
02c4c614  cbz x0,0x02c4c83c
02c4c618  tst w20,#0x1
02c4c61c  mov w8,#0x5c
02c4c620  mov w9,#0x50
02c4c624  mov w10,#0x58
02c4c628  mov w11,#0x4c
02c4c62c  mov w12,#0x54
02c4c630  mov w13,#0x48
02c4c634  csel x8,x9,x8,ne
02c4c638  csel x9,x11,x10,ne
02c4c63c  csel x10,x13,x12,ne
02c4c640  ldr s2,[x19,x8]
02c4c644  ldr s1,[x19,x9]
02c4c648  ldr s0,[x19,x10]
02c4c64c  mov x1,xzr
02c4c650  bl 0x057ef654
02c4c654  mov x0,x19
02c4c658  mov x1,xzr
02c4c65c  bl 0x057dc0f8
02c4c660  cbz x0,0x02c4c83c
02c4c664  fmov s0,s10
02c4c668  fmov s1,s9
02c4c66c  adrp x21,0x5e63000
02c4c670  fmov s2,s11
02c4c674  ldr x21,[x21, #0x488]
02c4c678  mov x1,xzr
02c4c67c  bl 0x057eee74
02c4c680  mov w8,#0x42160000
02c4c684  mov w9,#0x42480000
02c4c688  tst w20,#0x1
02c4c68c  fmov s0,w8
02c4c690  fmov s1,w9
02c4c694  ldr x0,[x21]
02c4c698  ldr w8,[x0, #0xe4]
02c4c69c  fcsel s0,s1,s0,ne
02c4c6a0  str s0,[sp, #0xcc]
02c4c6a4  cbnz w8,0x02c4c6b0
02c4c6a8  bl 0x029f5bd0
02c4c6ac  ldr x0,[x21]
02c4c6b0  ldr x8,[x0, #0xb8]
02c4c6b4  adrp x20,0x625c000
02c4c6b8  ldrb w9,[x20, #0xbe]
02c4c6bc  ldp s12,s14,[x8]
02c4c6c0  ldr s13,[x8, #0x8]
02c4c6c4  cbnz w9,0x02c4c6dc
02c4c6c8  adrp x0,0x5e59000
02c4c6cc  ldr x0,[x0]
02c4c6d0  bl 0x029f5a50
02c4c6d4  mov w8,#0x1
02c4c6d8  strb w8,[x20, #0xbe]
02c4c6dc  adrp x20,0x5e59000
02c4c6e0  ldr x20,[x20]
02c4c6e4  ldr x0,[x20]
02c4c6e8  ldr w8,[x0, #0xe4]
02c4c6ec  cbnz w8,0x02c4c6f4
02c4c6f0  bl 0x029f5bd0
02c4c6f4  fsub s0,s9,s14
02c4c6f8  fsub s1,s10,s12
02c4c6fc  ldr x8,[x21]
02c4c700  fsub s2,s11,s13
02c4c704  adrp x9,0x116c000
02c4c708  adrp x21,0x625b000
02c4c70c  ldr x8,[x8, #0xb8]
02c4c710  ldr s8,[x9, #0x174]
02c4c714  ldrb w9,[x21, #0x52e]
02c4c718  fmul s1,s1,s1
02c4c71c  fmul s0,s0,s0
02c4c720  ldr s15,[x8, #0x8]
02c4c724  fmul s2,s2,s2
02c4c728  ldp s13,s14,[x8]
02c4c72c  fadd s0,s1,s0
02c4c730  fmov s1,0xc1a00000
02c4c734  fadd s0,s2,s0
02c4c738  fsqrt s0,s0
02c4c73c  fadd s12,s0,s1
02c4c740  cbnz w9,0x02c4c758
02c4c744  adrp x0,0x5e59000
02c4c748  ldr x0,[x0]
02c4c74c  bl 0x029f5a50
02c4c750  mov w8,#0x1
02c4c754  strb w8,[x21, #0x52e]
02c4c758  fmaxnm s12,s12,s8
02c4c75c  ldr x0,[x20]
02c4c760  fsub s10,s13,s10
02c4c764  fsub s8,s14,s9
02c4c768  fsub s9,s15,s11
02c4c76c  ldr w8,[x0, #0xe4]
02c4c770  cbnz w8,0x02c4c778
02c4c774  bl 0x029f5bd0
02c4c778  fmul s0,s10,s10
02c4c77c  fmul s1,s8,s8
02c4c780  adrp x8,0x116c000
02c4c784  fmul s2,s9,s9
02c4c788  fadd s0,s0,s1
02c4c78c  fadd s0,s2,s0
02c4c790  fsqrt s1,s0
02c4c794  ldr s0,[sp, #0xcc]
02c4c798  fdiv s8,s12,s0
02c4c79c  ldr s0,[x8, #0x240]
02c4c7a0  fcmp s1,s0
02c4c7a4  b.le 0x02c4c7b4
02c4c7a8  fdiv s0,s10,s1
02c4c7ac  fdiv s1,s9,s1
02c4c7b0  b 0x02c4c7ec
02c4c7b4  adrp x20,0x625b000
02c4c7b8  ldrb w8,[x20, #0x26f]
02c4c7bc  cbnz w8,0x02c4c7d4
02c4c7c0  adrp x0,0x5e58000
02c4c7c4  ldr x0,[x0, #0xbf8]
02c4c7c8  bl 0x029f5a50
02c4c7cc  mov w8,#0x1
02c4c7d0  strb w8,[x20, #0x26f]
02c4c7d4  adrp x8,0x5e58000
02c4c7d8  ldr x8,[x8, #0xbf8]
02c4c7dc  ldr x8,[x8]
02c4c7e0  ldr x8,[x8, #0xb8]
02c4c7e4  ldr s0,[x8]
02c4c7e8  ldr s1,[x8, #0x8]
02c4c7ec  fmul s0,s8,s0
02c4c7f0  fmul s2,s8,s1
02c4c7f4  ldr x0,[x19, #0x28]
02c4c7f8  str wzr,[x19, #0x64]
02c4c7fc  str s0,[x19, #0x60]
02c4c800  str s2,[x19, #0x68]
02c4c804  cbz x0,0x02c4c83c
02c4c808  movi d1,#0x0
02c4c80c  mov x1,xzr
02c4c810  bl 0x0586b344
02c4c814  ldp x20,x19,[sp, #0xf0]
02c4c818  ldr x29,[sp, #0xc0]
02c4c81c  ldp x22,x21,[sp, #0xe0]
02c4c820  ldp x30,x23,[sp, #0xd0]
02c4c824  ldp d9,d8,[sp, #0xb0]
02c4c828  ldp d11,d10,[sp, #0xa0]
02c4c82c  ldp d13,d12,[sp, #0x90]
02c4c830  ldp d15,d14,[sp, #0x80]
02c4c834  add sp,sp,#0x100
02c4c838  ret
02c4c83c  bl 0x029f5cfc
