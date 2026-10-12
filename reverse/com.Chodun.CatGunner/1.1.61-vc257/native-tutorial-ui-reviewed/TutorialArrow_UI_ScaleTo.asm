02cae878  str d8,[sp, #-0x30]!
02cae87c  stp x30,x21,[sp, #0x10]
02cae880  stp x20,x19,[sp, #0x20]
02cae884  fmov s8,s0
02cae888  adrp x20,0x625c000
02cae88c  adrp x21,0x5e64000
02cae890  ldrb w8,[x20, #0x530]
02cae894  ldr x21,[x21, #0xae8]
02cae898  mov x19,x0
02cae89c  tbnz w8,#0x0,0x02cae8b4
02cae8a0  adrp x0,0x5e64000
02cae8a4  ldr x0,[x0, #0xae8]
02cae8a8  bl 0x029f5a50
02cae8ac  mov w8,#0x1
02cae8b0  strb w8,[x20, #0x530]
02cae8b4  ldr x0,[x21]
02cae8b8  bl 0x029f5cec
02cae8bc  mov x1,xzr
02cae8c0  mov x20,x0
02cae8c4  bl 0x04893238
02cae8c8  mov x0,x20
02cae8cc  mov x1,x19
02cae8d0  str wzr,[x20, #0x10]
02cae8d4  str x19,[x0, #0x20]!
02cae8d8  bl 0x029f59f4
02cae8dc  mov x0,x20
02cae8e0  str s8,[x20, #0x28]
02cae8e4  ldp x20,x19,[sp, #0x20]
02cae8e8  ldp x30,x21,[sp, #0x10]
02cae8ec  ldr d8,[sp], #0x30
02cae8f0  ret
