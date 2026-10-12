02c694d4  str x30,[sp, #-0x20]!
02c694d8  stp x20,x19,[sp, #0x10]
02c694dc  adrp x19,0x625c000
02c694e0  adrp x20,0x5e5e000
02c694e4  ldrb w8,[x19, #0x269]
02c694e8  ldr x20,[x20, #0xb8]
02c694ec  tbnz w8,#0x0,0x02c69504
02c694f0  adrp x0,0x5e5e000
02c694f4  ldr x0,[x0, #0xb8]
02c694f8  bl 0x029f5a50
02c694fc  mov w8,#0x1
02c69500  strb w8,[x19, #0x269]
02c69504  ldr x0,[x20]
02c69508  ldr w8,[x0, #0xe4]
02c6950c  cbnz w8,0x02c69514
02c69510  bl 0x029f5bd0
02c69514  ldp x20,x19,[sp, #0x10]
02c69518  mov w0,#0x2
02c6951c  mov x1,xzr
02c69520  ldr x30,[sp], #0x20
02c69524  b 0x02c9077c
