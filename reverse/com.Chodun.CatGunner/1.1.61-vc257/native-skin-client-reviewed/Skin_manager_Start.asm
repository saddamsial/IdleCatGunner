02ca7550  stp x30,x21,[sp, #-0x20]!
02ca7554  stp x20,x19,[sp, #0x10]
02ca7558  adrp x21,0x625c000
02ca755c  adrp x20,0x5e5d000
02ca7560  mov x19,x0
02ca7564  ldrb w8,[x21, #0x4e2]
02ca7568  ldr x20,[x20, #0x5b0]
02ca756c  tbnz w8,#0x0,0x02ca7584
02ca7570  adrp x0,0x5e5d000
02ca7574  ldr x0,[x0, #0x5b0]
02ca7578  bl 0x029f5a50
02ca757c  mov w8,#0x1
02ca7580  strb w8,[x21, #0x4e2]
02ca7584  mov x0,x19
02ca7588  bl 0x02ca75b8
02ca758c  mov x0,x19
02ca7590  bl 0x02ca7618
02ca7594  ldr x8,[x20]
02ca7598  ldr x8,[x8, #0xb8]
02ca759c  ldr x0,[x8, #0x8]
02ca75a0  cbz x0,0x02ca75b4
02ca75a4  ldp x20,x19,[sp, #0x10]
02ca75a8  mov x1,xzr
02ca75ac  ldp x30,x21,[sp], #0x20
02ca75b0  b 0x02c44944
02ca75b4  bl 0x029f5cfc
