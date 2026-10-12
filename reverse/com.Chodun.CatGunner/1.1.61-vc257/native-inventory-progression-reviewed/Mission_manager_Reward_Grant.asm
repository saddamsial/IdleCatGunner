02ba6494  str x30,[sp, #-0x40]!
02ba6498  stp x24,x23,[sp, #0x10]
02ba649c  stp x22,x21,[sp, #0x20]
02ba64a0  stp x20,x19,[sp, #0x30]
02ba64a4  mov w21,w2
02ba64a8  mov w20,w1
02ba64ac  mov x19,x0
02ba64b0  cbz w1,0x02ba64fc
02ba64b4  ldr x8,[x19, #0x30]
02ba64b8  cbz x8,0x02ba6618
02ba64bc  ldr w9,[x8, #0x18]
02ba64c0  cmp w9,w21
02ba64c4  b.ls 0x02ba661c
02ba64c8  add x8,x8,w21, SXTW  #0x3
02ba64cc  ldr x22,[x8, #0x20]
02ba64d0  mov x1,x22
02ba64d4  bl 0x02ba6620
02ba64d8  tbz w0,#0x0,0x02ba6604
02ba64dc  ldr x8,[x19, #0x40]
02ba64e0  cbz x8,0x02ba6618
02ba64e4  ldr w9,[x8, #0x18]
02ba64e8  cmp w9,w21
02ba64ec  b.ls 0x02ba661c
02ba64f0  mov w9,w21
02ba64f4  sxtw x9,w9
02ba64f8  b 0x02ba653c
02ba64fc  ldr x8,[x19, #0x28]
02ba6500  cbz x8,0x02ba6618
02ba6504  ldr w9,[x8, #0x18]
02ba6508  cmp w9,w21
02ba650c  b.ls 0x02ba661c
02ba6510  add x8,x8,w21, SXTW  #0x3
02ba6514  ldr x22,[x8, #0x20]
02ba6518  mov x1,x22
02ba651c  bl 0x02ba6620
02ba6520  tbz w0,#0x0,0x02ba6604
02ba6524  ldr x8,[x19, #0x38]
02ba6528  cbz x8,0x02ba6618
02ba652c  ldr w9,[x8, #0x18]
02ba6530  cmp w9,w21
02ba6534  b.ls 0x02ba661c
02ba6538  sxtw x9,w21
02ba653c  add x8,x8,x9
02ba6540  mov w23,#0x1
02ba6544  mov x0,x19
02ba6548  strb w23,[x8, #0x20]!
02ba654c  bl 0x02ba5a1c
02ba6550  adrp x24,0x625b000
02ba6554  ldrb w8,[x24, #0xa57]
02ba6558  cbnz w8,0x02ba656c
02ba655c  adrp x0,0x5e5d000
02ba6560  ldr x0,[x0, #0xd70]
02ba6564  bl 0x029f5a50
02ba6568  strb w23,[x24, #0xa57]
02ba656c  adrp x8,0x5e5d000
02ba6570  ldr x8,[x8, #0xd70]
02ba6574  ldr x8,[x8]
02ba6578  ldr x8,[x8, #0xb8]
02ba657c  ldr x0,[x8]
02ba6580  cbz x0,0x02ba6618
02ba6584  fmov s0,0x3f800000
02ba6588  mov w1,#0x7
02ba658c  mov x2,xzr
02ba6590  mov x3,xzr
02ba6594  bl 0x02c1f10c
02ba6598  cbz x22,0x02ba6618
02ba659c  ldr w8,[x22, #0x14]
02ba65a0  cbnz w8,0x02ba65d0
02ba65a4  ldr x8,[x19, #0x98]
02ba65a8  cbz x8,0x02ba6618
02ba65ac  ldr w9,[x8, #0x18]
02ba65b0  cmp w9,w21
02ba65b4  b.ls 0x02ba661c
02ba65b8  add x8,x8,w21, SXTW  #0x3
02ba65bc  ldr x0,[x8, #0x20]
02ba65c0  cbz x0,0x02ba6618
02ba65c4  mov w1,w20
02ba65c8  mov x2,xzr
02ba65cc  bl 0x02c049e8
02ba65d0  mov x0,x19
02ba65d4  bl 0x02ba6834
02ba65d8  mov x0,x19
02ba65dc  bl 0x02ba6930
02ba65e0  cmn w0,#0x1
02ba65e4  b.eq 0x02ba6604
02ba65e8  mov w1,w0
02ba65ec  mov x0,x19
02ba65f0  ldp x20,x19,[sp, #0x30]
02ba65f4  ldp x22,x21,[sp, #0x20]
02ba65f8  ldp x24,x23,[sp, #0x10]
02ba65fc  ldr x30,[sp], #0x40
02ba6600  b 0x02ba5d90
02ba6604  ldp x20,x19,[sp, #0x30]
02ba6608  ldp x22,x21,[sp, #0x20]
02ba660c  ldp x24,x23,[sp, #0x10]
02ba6610  ldr x30,[sp], #0x40
02ba6614  ret
02ba6618  bl 0x029f5cfc
02ba661c  bl 0x029f5d04
