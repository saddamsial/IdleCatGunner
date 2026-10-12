02caf134  stp x30,x21,[sp, #-0x20]!
02caf138  stp x20,x19,[sp, #0x10]
02caf13c  adrp x21,0x625c000
02caf140  adrp x20,0x5e5e000
02caf144  mov x19,x0
02caf148  ldrb w8,[x21, #0x534]
02caf14c  ldr x20,[x20, #0x4d8]
02caf150  tbnz w8,#0x0,0x02caf168
02caf154  adrp x0,0x5e5e000
02caf158  ldr x0,[x0, #0x4d8]
02caf15c  bl 0x029f5a50
02caf160  mov w8,#0x1
02caf164  strb w8,[x21, #0x534]
02caf168  ldr x8,[x20]
02caf16c  mov x1,x19
02caf170  ldr x8,[x8, #0xb8]
02caf174  str x19,[x8]
02caf178  ldr x8,[x20]
02caf17c  ldp x20,x19,[sp, #0x10]
02caf180  ldr x0,[x8, #0xb8]
02caf184  ldp x30,x21,[sp], #0x20
02caf188  b 0x029f59f4
