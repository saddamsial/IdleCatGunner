02c5649c  stp d9,d8,[sp, #-0x30]!
02c564a0  str x30,[sp, #0x10]
02c564a4  stp x20,x19,[sp, #0x20]
02c564a8  fmov s9,s1
02c564ac  fmov s8,s0
02c564b0  adrp x20,0x625c000
02c564b4  ldrb w8,[x20, #0x193]
02c564b8  mov x19,x0
02c564bc  tbnz w8,#0x0,0x02c564d4
02c564c0  adrp x0,0x5e5e000
02c564c4  ldr x0,[x0, #0x6d0]
02c564c8  bl 0x029f5a50
02c564cc  mov w8,#0x1
02c564d0  strb w8,[x20, #0x193]
02c564d4  ldr x0,[x19, #0x48]
02c564d8  cbz x0,0x02c5656c
02c564dc  fdiv s0,s8,s9
02c564e0  adrp x20,0x5e5e000
02c564e4  mov x1,xzr
02c564e8  ldr x20,[x20, #0x6d0]
02c564ec  bl 0x02c28290
02c564f0  fmov s0,0x3f800000
02c564f4  mov w8,#0x7f800000
02c564f8  mov w10,#0x80000000
02c564fc  fmov s1,w8
02c56500  adrp x8,0x5e58000
02c56504  add x1,sp,#0x1c
02c56508  ldr x8,[x8, #0xa10]
02c5650c  ldr x19,[x19, #0x20]
02c56510  fadd s0,s8,s0
02c56514  ldr x0,[x8, #0x48]
02c56518  fcvtzs w9,s0
02c5651c  fcmp s0,s1
02c56520  csel w9,w10,w9,eq
02c56524  str w9,[sp, #0x1c]
02c56528  bl 0x029f5bd8
02c5652c  ldr x8,[x20]
02c56530  mov x1,x0
02c56534  mov x2,xzr
02c56538  mov x0,x8
02c5653c  bl 0x046b6c0c
02c56540  cbz x19,0x02c5656c
02c56544  ldr x8,[x19]
02c56548  mov x1,x0
02c5654c  mov x0,x19
02c56550  ldr x9,[x8, #0x558]
02c56554  ldr x2,[x8, #0x560]
02c56558  blr x9
02c5655c  ldp x20,x19,[sp, #0x20]
02c56560  ldr x30,[sp, #0x10]
02c56564  ldp d9,d8,[sp], #0x30
02c56568  ret
02c5656c  bl 0x029f5cfc
