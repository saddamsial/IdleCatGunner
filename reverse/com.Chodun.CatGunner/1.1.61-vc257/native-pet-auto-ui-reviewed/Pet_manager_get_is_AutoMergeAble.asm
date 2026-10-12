02c7d764  str x30,[sp, #-0x20]!
02c7d768  stp x20,x19,[sp, #0x10]
02c7d76c  adrp x19,0x625c000
02c7d770  adrp x20,0x5e5e000
02c7d774  ldrb w8,[x19, #0x32b]
02c7d778  ldr x20,[x20, #0xb8]
02c7d77c  tbnz w8,#0x0,0x02c7d794
02c7d780  adrp x0,0x5e5e000
02c7d784  ldr x0,[x0, #0xb8]
02c7d788  bl 0x029f5a50
02c7d78c  mov w8,#0x1
02c7d790  strb w8,[x19, #0x32b]
02c7d794  ldr x0,[x20]
02c7d798  ldr w8,[x0, #0xe4]
02c7d79c  cbnz w8,0x02c7d7a4
02c7d7a0  bl 0x029f5bd0
02c7d7a4  ldp x20,x19,[sp, #0x10]
02c7d7a8  mov w0,#0x2
02c7d7ac  mov x1,xzr
02c7d7b0  ldr x30,[sp], #0x20
02c7d7b4  b 0x02c9077c
