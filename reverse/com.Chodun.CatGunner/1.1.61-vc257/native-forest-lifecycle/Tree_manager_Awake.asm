02cac968  stp x30,x21,[sp, #-0x20]!
02cac96c  stp x20,x19,[sp, #0x10]
02cac970  adrp x21,0x625c000
02cac974  adrp x20,0x5e5d000
02cac978  mov x19,x0
02cac97c  ldrb w8,[x21, #0x517]
02cac980  ldr x20,[x20, #0xc20]
02cac984  tbnz w8,#0x0,0x02cac99c
02cac988  adrp x0,0x5e5d000
02cac98c  ldr x0,[x0, #0xc20]
02cac990  bl 0x029f5a50
02cac994  mov w8,#0x1
02cac998  strb w8,[x21, #0x517]
02cac99c  ldr x0,[x20]
02cac9a0  ldr w8,[x0, #0xe4]
02cac9a4  cbnz w8,0x02cac9b0
02cac9a8  bl 0x029f5bd0
02cac9ac  ldr x0,[x20]
02cac9b0  ldr x0,[x0, #0xb8]
02cac9b4  mov x1,x19
02cac9b8  str x19,[x0, #0x10]!
02cac9bc  ldp x20,x19,[sp, #0x10]
02cac9c0  ldp x30,x21,[sp], #0x20
02cac9c4  b 0x029f59f4
