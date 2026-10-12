02c483b4  str x30,[sp, #-0x20]!
02c483b8  stp x20,x19,[sp, #0x10]
02c483bc  adrp x20,0x625c000
02c483c0  adrp x19,0x5e5d000
02c483c4  ldrb w8,[x20, #0xf8]
02c483c8  ldr x19,[x19, #0xd30]
02c483cc  tbnz w8,#0x0,0x02c483e4
02c483d0  adrp x0,0x5e5d000
02c483d4  ldr x0,[x0, #0xd30]
02c483d8  bl 0x029f5a50
02c483dc  mov w8,#0x1
02c483e0  strb w8,[x20, #0xf8]
02c483e4  ldr x0,[x19]
02c483e8  ldr w8,[x0, #0xe4]
02c483ec  cbnz w8,0x02c483f8
02c483f0  bl 0x029f5bd0
02c483f4  ldr x0,[x19]
02c483f8  ldr x8,[x0, #0xb8]
02c483fc  ldr x0,[x8, #0x8]
02c48400  cbz x0,0x02c48444
02c48404  bl 0x02c46ef8
02c48408  tbz w0,#0x0,0x02c48438
02c4840c  ldr x0,[x19]
02c48410  ldr w8,[x0, #0xe4]
02c48414  cbnz w8,0x02c48420
02c48418  bl 0x029f5bd0
02c4841c  ldr x0,[x19]
02c48420  ldr x8,[x0, #0xb8]
02c48424  ldr x0,[x8, #0x8]
02c48428  cbz x0,0x02c48444
02c4842c  ldp x20,x19,[sp, #0x10]
02c48430  ldr x30,[sp], #0x20
02c48434  b 0x02c47180
02c48438  ldp x20,x19,[sp, #0x10]
02c4843c  ldr x30,[sp], #0x20
02c48440  ret
02c48444  bl 0x029f5cfc
