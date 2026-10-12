02c4565c  str x30,[sp, #-0x20]!
02c45660  stp x20,x19,[sp, #0x10]
02c45664  adrp x19,0x625c000
02c45668  adrp x20,0x5e63000
02c4566c  ldrb w8,[x19, #0xd6]
02c45670  ldr x20,[x20, #0x2f8]
02c45674  tbnz w8,#0x0,0x02c4568c
02c45678  adrp x0,0x5e63000
02c4567c  ldr x0,[x0, #0x2f8]
02c45680  bl 0x029f5a50
02c45684  mov w8,#0x1
02c45688  strb w8,[x19, #0xd6]
02c4568c  ldr x8,[x20]
02c45690  adrp x9,0x116f000
02c45694  ldr d0,[x9, #0xb78]
02c45698  ldp x20,x19,[sp, #0x10]
02c4569c  ldr x8,[x8, #0xb8]
02c456a0  str d0,[x8]
02c456a4  str wzr,[x8, #0x8]
02c456a8  ldr x30,[sp], #0x20
02c456ac  ret
