02caf18c  str x30,[sp, #-0x20]!
02caf190  stp x20,x19,[sp, #0x10]
02caf194  adrp x20,0x625c000
02caf198  mov x19,x0
02caf19c  ldrb w8,[x20, #0x535]
02caf1a0  tbnz w8,#0x0,0x02caf1b8
02caf1a4  adrp x0,0x5e5d000
02caf1a8  ldr x0,[x0, #0x4e8]
02caf1ac  bl 0x029f5a50
02caf1b0  mov w8,#0x1
02caf1b4  strb w8,[x20, #0x535]
02caf1b8  ldrb w8,[x19, #0x70]
02caf1bc  cbnz w8,0x02caf1e8
02caf1c0  adrp x8,0x5e5d000
02caf1c4  ldr x8,[x8, #0x4e8]
02caf1c8  ldr x0,[x8]
02caf1cc  ldr w8,[x0, #0xe4]
02caf1d0  cbnz w8,0x02caf1d8
02caf1d4  bl 0x029f5bd0
02caf1d8  mov w0,wzr
02caf1dc  bl 0x02caf208
02caf1e0  cmp w0,#0x1
02caf1e4  b.lt 0x02caf1f8
02caf1e8  mov x0,x19
02caf1ec  ldp x20,x19,[sp, #0x10]
02caf1f0  ldr x30,[sp], #0x20
02caf1f4  b 0x02caf298
02caf1f8  mov x0,x19
02caf1fc  ldp x20,x19,[sp, #0x10]
02caf200  ldr x30,[sp], #0x20
02caf204  b 0x02caf460
