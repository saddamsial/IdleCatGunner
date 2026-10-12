02c5f84c  str x30,[sp, #-0x40]!
02c5f850  stp x24,x23,[sp, #0x10]
02c5f854  stp x22,x21,[sp, #0x20]
02c5f858  stp x20,x19,[sp, #0x30]
02c5f85c  adrp x23,0x5e62000
02c5f860  adrp x24,0x625c000
02c5f864  adrp x20,0x5e62000
02c5f868  adrp x22,0x5e5d000
02c5f86c  adrp x21,0x5e63000
02c5f870  ldr x23,[x23, #0x628]
02c5f874  ldr x20,[x20, #0x680]
02c5f878  ldrb w8,[x24, #0x211]
02c5f87c  ldr x22,[x22, #0x5e8]
02c5f880  ldr x21,[x21, #0x848]
02c5f884  mov x19,x0
02c5f888  tbnz w8,#0x0,0x02c5f8c4
02c5f88c  adrp x0,0x5e62000
02c5f890  ldr x0,[x0, #0x680]
02c5f894  bl 0x029f5a50
02c5f898  adrp x0,0x5e62000
02c5f89c  ldr x0,[x0, #0x628]
02c5f8a0  bl 0x029f5a50
02c5f8a4  adrp x0,0x5e5d000
02c5f8a8  ldr x0,[x0, #0x5e8]
02c5f8ac  bl 0x029f5a50
02c5f8b0  adrp x0,0x5e63000
02c5f8b4  ldr x0,[x0, #0x848]
02c5f8b8  bl 0x029f5a50
02c5f8bc  mov w8,#0x1
02c5f8c0  strb w8,[x24, #0x211]
02c5f8c4  ldr x0,[x23]
02c5f8c8  mov w24,#0x1
02c5f8cc  strb w24,[x19, #0x88]
02c5f8d0  bl 0x029f5cec
02c5f8d4  ldr x1,[x20]
02c5f8d8  mov x20,x0
02c5f8dc  bl 0x044f7180
02c5f8e0  mov x0,x19
02c5f8e4  mov x1,x20
02c5f8e8  str x20,[x0, #0x90]!
02c5f8ec  bl 0x029f59f4
02c5f8f0  ldr x0,[x22]
02c5f8f4  mov w1,#0x4
02c5f8f8  bl 0x029f5b40
02c5f8fc  ldr x1,[x21]
02c5f900  mov x2,xzr
02c5f904  mov x20,x0
02c5f908  bl 0x047779e0
02c5f90c  mov x0,x19
02c5f910  mov x1,x20
02c5f914  str x20,[x0, #0x98]!
02c5f918  bl 0x029f59f4
02c5f91c  mov x0,x19
02c5f920  strb w24,[x19, #0xb0]
02c5f924  mov x1,xzr
02c5f928  ldp x20,x19,[sp, #0x30]
02c5f92c  ldp x22,x21,[sp, #0x20]
02c5f930  ldp x24,x23,[sp, #0x10]
02c5f934  ldr x30,[sp], #0x40
02c5f938  b 0x057e2ee0
