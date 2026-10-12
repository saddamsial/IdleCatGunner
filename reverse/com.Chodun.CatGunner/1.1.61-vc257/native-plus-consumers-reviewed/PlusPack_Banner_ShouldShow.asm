02c9196c  stp x30,x21,[sp, #-0x20]!
02c91970  stp x20,x19,[sp, #0x10]
02c91974  adrp x21,0x625c000
02c91978  adrp x20,0x5e5e000
02c9197c  mov w19,w0
02c91980  ldrb w8,[x21, #0x3f7]
02c91984  ldr x20,[x20, #0xb8]
02c91988  tbnz w8,#0x0,0x02c919a0
02c9198c  adrp x0,0x5e5e000
02c91990  ldr x0,[x0, #0xb8]
02c91994  bl 0x029f5a50
02c91998  mov w8,#0x1
02c9199c  strb w8,[x21, #0x3f7]
02c919a0  ldr x0,[x20]
02c919a4  ldr w8,[x0, #0xe4]
02c919a8  cbnz w8,0x02c919b0
02c919ac  bl 0x029f5bd0
02c919b0  mov w0,w19
02c919b4  bl 0x02c9077c
02c919b8  tbz w0,#0x0,0x02c919cc
02c919bc  ldp x20,x19,[sp, #0x10]
02c919c0  mov w0,wzr
02c919c4  ldp x30,x21,[sp], #0x20
02c919c8  ret
02c919cc  ldr x0,[x20]
02c919d0  ldr w8,[x0, #0xe4]
02c919d4  cbnz w8,0x02c919dc
02c919d8  bl 0x029f5bd0
02c919dc  ldp x20,x19,[sp, #0x10]
02c919e0  ldp x30,x21,[sp], #0x20
02c919e4  b 0x02c918a0
