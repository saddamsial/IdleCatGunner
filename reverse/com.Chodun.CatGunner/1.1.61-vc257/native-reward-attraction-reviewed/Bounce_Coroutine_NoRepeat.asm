02b9af4c  stp x30,x21,[sp, #-0x20]!
02b9af50  stp x20,x19,[sp, #0x10]
02b9af54  adrp x20,0x625b000
02b9af58  adrp x21,0x5e5e000
02b9af5c  mov x19,x0
02b9af60  ldrb w8,[x20, #0x9b0]
02b9af64  ldr x21,[x21, #0x360]
02b9af68  tbnz w8,#0x0,0x02b9af80
02b9af6c  adrp x0,0x5e5e000
02b9af70  ldr x0,[x0, #0x360]
02b9af74  bl 0x029f5a50
02b9af78  mov w8,#0x1
02b9af7c  strb w8,[x20, #0x9b0]
02b9af80  ldr x0,[x21]
02b9af84  bl 0x029f5cec
02b9af88  mov x1,xzr
02b9af8c  mov x20,x0
02b9af90  bl 0x04893238
02b9af94  mov x0,x20
02b9af98  mov x1,x19
02b9af9c  str wzr,[x20, #0x10]
02b9afa0  str x19,[x0, #0x20]!
02b9afa4  bl 0x029f59f4
02b9afa8  mov x0,x20
02b9afac  ldp x20,x19,[sp, #0x10]
02b9afb0  ldp x30,x21,[sp], #0x20
02b9afb4  ret
