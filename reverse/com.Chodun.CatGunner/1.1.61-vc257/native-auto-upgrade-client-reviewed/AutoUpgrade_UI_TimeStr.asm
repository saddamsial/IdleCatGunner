02c1d85c  sub sp,sp,#0x50
02c1d860  str d8,[sp, #0x10]
02c1d864  stp x30,x23,[sp, #0x20]
02c1d868  stp x22,x21,[sp, #0x30]
02c1d86c  stp x20,x19,[sp, #0x40]
02c1d870  adrp x20,0x625b000
02c1d874  adrp x19,0x5e5a000
02c1d878  ldrb w8,[x20, #0xf37]
02c1d87c  ldr x19,[x19, #0x180]
02c1d880  str x0,[sp, #0x18]
02c1d884  tbnz w8,#0x0,0x02c1d8b4
02c1d888  adrp x0,0x5e59000
02c1d88c  ldr x0,[x0]
02c1d890  bl 0x029f5a50
02c1d894  adrp x0,0x5e5a000
02c1d898  ldr x0,[x0, #0x180]
02c1d89c  bl 0x029f5a50
02c1d8a0  adrp x0,0x5e62000
02c1d8a4  ldr x0,[x0, #0x960]
02c1d8a8  bl 0x029f5a50
02c1d8ac  mov w8,#0x1
02c1d8b0  strb w8,[x20, #0xf37]
02c1d8b4  ldr x0,[x19]
02c1d8b8  adrp x19,0x5e59000
02c1d8bc  ldr w8,[x0, #0xe4]
02c1d8c0  ldr x19,[x19]
02c1d8c4  cbnz w8,0x02c1d8cc
02c1d8c8  bl 0x029f5bd0
02c1d8cc  adrp x20,0x5e62000
02c1d8d0  add x0,sp,#0x18
02c1d8d4  mov x1,xzr
02c1d8d8  ldr x20,[x20, #0x960]
02c1d8dc  bl 0x04868260
02c1d8e0  ldr x0,[x19]
02c1d8e4  fmov d8,d0
02c1d8e8  ldr w8,[x0, #0xe4]
02c1d8ec  cbnz w8,0x02c1d8f4
02c1d8f0  bl 0x029f5bd0
02c1d8f4  frintp d0,d8
02c1d8f8  mov x9,#0x7ff0000000000000
02c1d8fc  fcvtps w8,d8
02c1d900  fmov d1,x9
02c1d904  adrp x22,0x5e58000
02c1d908  add x1,sp,#0xc
02c1d90c  ldr x22,[x22, #0xa10]
02c1d910  fcmp d0,d1
02c1d914  bic w8,w8,w8, ASR #0x1f
02c1d918  ldr x0,[x22, #0x48]
02c1d91c  csel w21,wzr,w8,eq
02c1d920  mov w8,#0x8889
02c1d924  movk w8,#0x8888, LSL #16
02c1d928  umull x8,w21,w8
02c1d92c  lsr x23,x8,#0x25
02c1d930  str w23,[sp, #0xc]
02c1d934  bl 0x029f5bd8
02c1d938  mov w8,#0x3c
02c1d93c  mov x19,x0
02c1d940  ldr x0,[x22, #0x48]
02c1d944  msub w8,w23,w8,w21
02c1d948  add x1,sp,#0x8
02c1d94c  str w8,[sp, #0x8]
02c1d950  bl 0x029f5bd8
02c1d954  ldr x8,[x20]
02c1d958  mov x2,x0
02c1d95c  mov x1,x19
02c1d960  mov x3,xzr
02c1d964  mov x0,x8
02c1d968  bl 0x046c1d14
02c1d96c  ldp x20,x19,[sp, #0x40]
02c1d970  ldr d8,[sp, #0x10]
02c1d974  ldp x22,x21,[sp, #0x30]
02c1d978  ldp x30,x23,[sp, #0x20]
02c1d97c  add sp,sp,#0x50
02c1d980  ret
