02c4a5ac  str d8,[sp, #-0x30]!
02c4a5b0  stp x30,x21,[sp, #0x10]
02c4a5b4  stp x20,x19,[sp, #0x20]
02c4a5b8  adrp x21,0x625c000
02c4a5bc  adrp x20,0x5e5e000
02c4a5c0  mov x19,x0
02c4a5c4  ldrb w8,[x21, #0x118]
02c4a5c8  ldr x20,[x20, #0xb8]
02c4a5cc  tbnz w8,#0x0,0x02c4a5f0
02c4a5d0  adrp x0,0x5e5e000
02c4a5d4  ldr x0,[x0, #0xb8]
02c4a5d8  bl 0x029f5a50
02c4a5dc  adrp x0,0x5e5d000
02c4a5e0  ldr x0,[x0, #0x920]
02c4a5e4  bl 0x029f5a50
02c4a5e8  mov w8,#0x1
02c4a5ec  strb w8,[x21, #0x118]
02c4a5f0  ldr x0,[x20]
02c4a5f4  adrp x20,0x5e5d000
02c4a5f8  ldr w8,[x0, #0xe4]
02c4a5fc  ldr x20,[x20, #0x920]
02c4a600  ldr w19,[x19, #0x60]
02c4a604  cbnz w8,0x02c4a60c
02c4a608  bl 0x029f5bd0
02c4a60c  mov x0,xzr
02c4a610  bl 0x02c90914
02c4a614  ldr x0,[x20]
02c4a618  fmov s8,s0
02c4a61c  ldr w8,[x0, #0xe4]
02c4a620  cbnz w8,0x02c4a628
02c4a624  bl 0x029f5bd0
02c4a628  scvtf s0,w19
02c4a62c  mov w8,#0x7f800000
02c4a630  mov x0,xzr
02c4a634  fmov s1,w8
02c4a638  mov w8,#0x80000000
02c4a63c  fmul s0,s8,s0
02c4a640  fcvtzs w9,s0
02c4a644  fcmp s0,s1
02c4a648  csel w19,w8,w9,eq
02c4a64c  bl 0x02c92704
02c4a650  lsl w8,w19,#0x2
02c4a654  tst w0,#0x1
02c4a658  ldp x30,x21,[sp, #0x10]
02c4a65c  csel w0,w8,w19,ne
02c4a660  ldp x20,x19,[sp, #0x20]
02c4a664  ldr d8,[sp], #0x30
02c4a668  ret
