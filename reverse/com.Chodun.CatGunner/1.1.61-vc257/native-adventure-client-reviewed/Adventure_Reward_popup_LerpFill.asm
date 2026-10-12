02c36650  stp d9,d8,[sp, #-0x50]!
02c36654  str x30,[sp, #0x10]
02c36658  stp x24,x23,[sp, #0x20]
02c3665c  stp x22,x21,[sp, #0x30]
02c36660  stp x20,x19,[sp, #0x40]
02c36664  fmov s8,s1
02c36668  fmov s9,s0
02c3666c  adrp x23,0x625c000
02c36670  adrp x24,0x5e63000
02c36674  ldrb w8,[x23, #0x6e]
02c36678  mov w19,w3
02c3667c  ldr x24,[x24, #0x168]
02c36680  mov w20,w2
02c36684  mov w21,w1
02c36688  mov x22,x0
02c3668c  tbnz w8,#0x0,0x02c366a4
02c36690  adrp x0,0x5e63000
02c36694  ldr x0,[x0, #0x168]
02c36698  bl 0x029f5a50
02c3669c  mov w8,#0x1
02c366a0  strb w8,[x23, #0x6e]
02c366a4  ldr x0,[x24]
02c366a8  bl 0x029f5cec
02c366ac  mov x1,xzr
02c366b0  mov x23,x0
02c366b4  bl 0x04893238
02c366b8  mov x0,x23
02c366bc  mov x1,x22
02c366c0  str wzr,[x23, #0x10]
02c366c4  str x22,[x0, #0x20]!
02c366c8  bl 0x029f59f4
02c366cc  stp s8,s9,[x23, #0x28]
02c366d0  mov x0,x23
02c366d4  ldr x30,[sp, #0x10]
02c366d8  stp w21,w20,[x23, #0x30]
02c366dc  ldp x22,x21,[sp, #0x30]
02c366e0  str w19,[x23, #0x38]
02c366e4  ldp x20,x19,[sp, #0x40]
02c366e8  ldp x24,x23,[sp, #0x20]
02c366ec  ldp d9,d8,[sp], #0x50
02c366f0  ret
