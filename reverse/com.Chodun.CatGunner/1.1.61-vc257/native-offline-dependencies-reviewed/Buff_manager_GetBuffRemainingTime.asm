02c3752c  stp x30,x21,[sp, #-0x20]!
02c37530  stp x20,x19,[sp, #0x10]
02c37534  adrp x21,0x625c000
02c37538  mov w19,w1
02c3753c  mov x20,x0
02c37540  ldrb w8,[x21, #0xbd]
02c37544  cbnz w8,0x02c3755c
02c37548  adrp x0,0x5e5d000
02c3754c  ldr x0,[x0, #0x920]
02c37550  bl 0x029f5a50
02c37554  mov w8,#0x1
02c37558  strb w8,[x21, #0xbd]
02c3755c  adrp x21,0x5e5d000
02c37560  ldr x21,[x21, #0x920]
02c37564  ldr x0,[x21]
02c37568  ldr w8,[x0, #0xe4]
02c3756c  cbnz w8,0x02c37578
02c37570  bl 0x029f5bd0
02c37574  ldr x0,[x21]
02c37578  ldr x8,[x0, #0xb8]
02c3757c  fmov s0,0xbf800000
02c37580  ldrb w8,[x8, #0xb]
02c37584  cbnz w8,0x02c375a4
02c37588  ldr x8,[x20, #0x38]
02c3758c  cbz x8,0x02c375b0
02c37590  ldr w9,[x8, #0x18]
02c37594  cmp w9,w19
02c37598  b.ls 0x02c375b4
02c3759c  add x8,x8,w19, SXTW  #0x2
02c375a0  ldr s0,[x8, #0x20]
02c375a4  ldp x20,x19,[sp, #0x10]
02c375a8  ldp x30,x21,[sp], #0x20
02c375ac  ret
02c375b0  bl 0x029f5cfc
02c375b4  bl 0x029f5d04
