02be0628  sub sp,sp,#0x30
02be062c  str x30,[sp, #0x10]
02be0630  stp x20,x19,[sp, #0x20]
02be0634  adrp x20,0x625b000
02be0638  adrp x19,0x5e5e000
02be063c  ldrb w8,[x20, #0xc5a]
02be0640  ldr x19,[x19, #0x528]
02be0644  tbnz w8,#0x0,0x02be0668
02be0648  adrp x0,0x5e5e000
02be064c  ldr x0,[x0, #0x528]
02be0650  bl 0x029f5a50
02be0654  adrp x0,0x5e60000
02be0658  ldr x0,[x0, #0xd78]
02be065c  bl 0x029f5a50
02be0660  mov w8,#0x1
02be0664  strb w8,[x20, #0xc5a]
02be0668  ldr x0,[x19]
02be066c  adrp x19,0x5e60000
02be0670  ldr w8,[x0, #0xe4]
02be0674  ldr x19,[x19, #0xd78]
02be0678  cbnz w8,0x02be0680
02be067c  bl 0x029f5bd0
02be0680  ldr x0,[x19]
02be0684  mov w1,#0x1
02be0688  mov w2,wzr
02be068c  mov w3,#0x1
02be0690  mov w4,wzr
02be0694  mov x5,xzr
02be0698  mov x6,xzr
02be069c  mov w7,#0x1
02be06a0  str xzr,[sp]
02be06a4  bl 0x02bccb00
02be06a8  ldp x20,x19,[sp, #0x20]
02be06ac  ldr x30,[sp, #0x10]
02be06b0  add sp,sp,#0x30
02be06b4  ret
