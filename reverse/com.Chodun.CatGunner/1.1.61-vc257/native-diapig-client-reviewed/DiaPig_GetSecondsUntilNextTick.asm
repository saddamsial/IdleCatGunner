02c8d5f4  str d8,[sp, #-0x20]!
02c8d5f8  str x30,[sp, #0x8]
02c8d5fc  stp x20,x19,[sp, #0x10]
02c8d600  adrp x20,0x625c000
02c8d604  mov x19,x0
02c8d608  ldrb w8,[x20, #0x3bd]
02c8d60c  tbnz w8,#0x0,0x02c8d630
02c8d610  adrp x0,0x5e59000
02c8d614  ldr x0,[x0]
02c8d618  bl 0x029f5a50
02c8d61c  adrp x0,0x5e5d000
02c8d620  ldr x0,[x0, #0x3c0]
02c8d624  bl 0x029f5a50
02c8d628  mov w8,#0x1
02c8d62c  strb w8,[x20, #0x3bd]
02c8d630  bl 0x02c8c7d0
02c8d634  tbz w0,#0x0,0x02c8d6dc
02c8d638  ldp w8,w9,[x19, #0x20]
02c8d63c  cmp w8,w9
02c8d640  b.ge 0x02c8d6dc
02c8d644  adrp x8,0x5e5d000
02c8d648  ldr x8,[x8, #0x3c0]
02c8d64c  ldr x0,[x8]
02c8d650  ldr w8,[x0, #0xe4]
02c8d654  cbnz w8,0x02c8d65c
02c8d658  bl 0x029f5bd0
02c8d65c  mov x0,xzr
02c8d660  bl 0x02c23cf8
02c8d664  ldr d1,[x19, #0x40]
02c8d668  mov w9,#0x8889
02c8d66c  adrp x11,0x5e59000
02c8d670  movk w9,#0x8888, LSL #16
02c8d674  ldr x11,[x11]
02c8d678  mov w19,#0x3c
02c8d67c  fsub d8,d0,d1
02c8d680  ldr x0,[x11]
02c8d684  fcvtzs w8,d8
02c8d688  smull x9,w8,w9
02c8d68c  lsr x9,x9,#0x20
02c8d690  add w9,w9,w8
02c8d694  asr w10,w9,#0x5
02c8d698  add w9,w10,w9, LSR #0x1f
02c8d69c  msub w20,w9,w19,w8
02c8d6a0  ldr w8,[x0, #0xe4]
02c8d6a4  cbnz w8,0x02c8d6ac
02c8d6a8  bl 0x029f5bd0
02c8d6ac  mov x8,#0x7ff0000000000000
02c8d6b0  mov w9,#0x44
02c8d6b4  ldr x30,[sp, #0x8]
02c8d6b8  fmov d0,x8
02c8d6bc  sub w8,w19,w20
02c8d6c0  mov w0,wzr
02c8d6c4  ldp x20,x19,[sp, #0x10]
02c8d6c8  mov x2,xzr
02c8d6cc  fcmp d8,d0
02c8d6d0  csel w1,w9,w8,eq
02c8d6d4  ldr d8,[sp], #0x20
02c8d6d8  b 0x04851fec
02c8d6dc  ldp x20,x19,[sp, #0x10]
02c8d6e0  mov w0,wzr
02c8d6e4  ldr x30,[sp, #0x8]
02c8d6e8  ldr d8,[sp], #0x20
02c8d6ec  ret
