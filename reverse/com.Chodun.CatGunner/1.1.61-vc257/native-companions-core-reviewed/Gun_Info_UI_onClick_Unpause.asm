02c70500  str x30,[sp, #-0x20]!
02c70504  stp x20,x19,[sp, #0x10]
02c70508  adrp x20,0x625c000
02c7050c  mov x19,x0
02c70510  ldrb w8,[x20, #0x2c3]
02c70514  tbnz w8,#0x0,0x02c7052c
02c70518  adrp x0,0x5e5d000
02c7051c  ldr x0,[x0, #0xd40]
02c70520  bl 0x029f5a50
02c70524  mov w8,#0x1
02c70528  strb w8,[x20, #0x2c3]
02c7052c  mov x0,x19
02c70530  bl 0x02c7008c
02c70534  tbz w0,#0x0,0x02c705ac
02c70538  mov x0,x19
02c7053c  bl 0x02c7000c
02c70540  tbz w0,#0x0,0x02c705ac
02c70544  mov x0,x19
02c70548  mov w1,wzr
02c7054c  bl 0x02c701c8
02c70550  adrp x20,0x625b000
02c70554  ldrb w8,[x20, #0xa57]
02c70558  cbnz w8,0x02c70570
02c7055c  adrp x0,0x5e5d000
02c70560  ldr x0,[x0, #0xd70]
02c70564  bl 0x029f5a50
02c70568  mov w8,#0x1
02c7056c  strb w8,[x20, #0xa57]
02c70570  adrp x8,0x5e5d000
02c70574  ldr x8,[x8, #0xd70]
02c70578  ldr x8,[x8]
02c7057c  ldr x8,[x8, #0xb8]
02c70580  ldr x0,[x8]
02c70584  cbz x0,0x02c705dc
02c70588  fmov s0,0x3f800000
02c7058c  mov w1,#0x1
02c70590  mov x2,xzr
02c70594  mov x3,xzr
02c70598  bl 0x02c1f10c
02c7059c  mov x0,x19
02c705a0  ldp x20,x19,[sp, #0x10]
02c705a4  ldr x30,[sp], #0x20
02c705a8  b 0x02c6fc9c
02c705ac  adrp x20,0x5e5d000
02c705b0  mov x0,x19
02c705b4  ldr x20,[x20, #0xd40]
02c705b8  bl 0x02c7034c
02c705bc  ldr x8,[x20]
02c705c0  ldr x8,[x8, #0xb8]
02c705c4  ldr x0,[x8]
02c705c8  cbz x0,0x02c705dc
02c705cc  ldp x20,x19,[sp, #0x10]
02c705d0  mov x1,xzr
02c705d4  ldr x30,[sp], #0x20
02c705d8  b 0x02c6841c
02c705dc  bl 0x029f5cfc
