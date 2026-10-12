02b9efb0  stp x30,x21,[sp, #-0x20]!
02b9efb4  stp x20,x19,[sp, #0x10]
02b9efb8  adrp x21,0x625b000
02b9efbc  adrp x20,0x5e59000
02b9efc0  mov x19,x0
02b9efc4  ldrb w8,[x21, #0x9f6]
02b9efc8  ldr x20,[x20, #0x1c0]
02b9efcc  tbnz w8,#0x0,0x02b9efe4
02b9efd0  adrp x0,0x5e59000
02b9efd4  ldr x0,[x0, #0x1c0]
02b9efd8  bl 0x029f5a50
02b9efdc  mov w8,#0x1
02b9efe0  strb w8,[x21, #0x9f6]
02b9efe4  mov x0,x19
02b9efe8  bl 0x02b9f068
02b9efec  ldr x0,[x20]
02b9eff0  ldr x20,[x19, #0x20]
02b9eff4  ldr w8,[x0, #0xe4]
02b9eff8  cbnz w8,0x02b9f000
02b9effc  bl 0x029f5bd0
02b9f000  mov x0,x20
02b9f004  mov x1,xzr
02b9f008  mov x2,xzr
02b9f00c  bl 0x057dfa70
02b9f010  tbz w0,#0x0,0x02b9f038
02b9f014  ldr x0,[x19, #0x20]
02b9f018  cbz x0,0x02b9f060
02b9f01c  mov x1,xzr
02b9f020  bl 0x057e0000
02b9f024  tbz w0,#0x0,0x02b9f038
02b9f028  mov x0,x19
02b9f02c  ldp x20,x19,[sp, #0x10]
02b9f030  ldp x30,x21,[sp], #0x20
02b9f034  b 0x02b9f18c
02b9f038  ldrb w8,[x19, #0x39]
02b9f03c  cbz w8,0x02b9f054
02b9f040  mov x0,x19
02b9f044  strb wzr,[x19, #0x39]
02b9f048  ldp x20,x19,[sp, #0x10]
02b9f04c  ldp x30,x21,[sp], #0x20
02b9f050  b 0x02b9f24c
02b9f054  ldp x20,x19,[sp, #0x10]
02b9f058  ldp x30,x21,[sp], #0x20
02b9f05c  ret
02b9f060  bl 0x029f5cfc
