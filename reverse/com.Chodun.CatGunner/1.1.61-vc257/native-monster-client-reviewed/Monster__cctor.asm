02c4ce60  stp x30,x23,[sp, #-0x30]!
02c4ce64  stp x22,x21,[sp, #0x10]
02c4ce68  stp x20,x19,[sp, #0x20]
02c4ce6c  adrp x19,0x5e63000
02c4ce70  adrp x23,0x625c000
02c4ce74  adrp x22,0x5e63000
02c4ce78  adrp x21,0x5e63000
02c4ce7c  adrp x20,0x5e63000
02c4ce80  ldr x19,[x19, #0x488]
02c4ce84  ldr x22,[x22, #0x4a8]
02c4ce88  ldrb w8,[x23, #0x132]
02c4ce8c  ldr x21,[x21, #0x4b0]
02c4ce90  ldr x20,[x20, #0x4b8]
02c4ce94  tbnz w8,#0x0,0x02c4ced0
02c4ce98  adrp x0,0x5e63000
02c4ce9c  ldr x0,[x0, #0x488]
02c4cea0  bl 0x029f5a50
02c4cea4  adrp x0,0x5e63000
02c4cea8  ldr x0,[x0, #0x4b0]
02c4ceac  bl 0x029f5a50
02c4ceb0  adrp x0,0x5e63000
02c4ceb4  ldr x0,[x0, #0x4a8]
02c4ceb8  bl 0x029f5a50
02c4cebc  adrp x0,0x5e63000
02c4cec0  ldr x0,[x0, #0x4b8]
02c4cec4  bl 0x029f5a50
02c4cec8  mov w8,#0x1
02c4cecc  strb w8,[x23, #0x132]
02c4ced0  ldr x8,[x19]
02c4ced4  adrp x9,0x116f000
02c4ced8  mov x1,xzr
02c4cedc  ldr d0,[x9, #0xb78]
02c4cee0  ldr x8,[x8, #0xb8]
02c4cee4  str d0,[x8]
02c4cee8  ldr x0,[x22]
02c4ceec  str wzr,[x8, #0x8]
02c4cef0  bl 0x057ac720
02c4cef4  ldr x8,[x19]
02c4cef8  mov x1,xzr
02c4cefc  ldr x9,[x8, #0xb8]
02c4cf00  ldr x8,[x21]
02c4cf04  str w0,[x9, #0xc]
02c4cf08  mov x0,x8
02c4cf0c  bl 0x057ac720
02c4cf10  ldr x8,[x19]
02c4cf14  mov x1,xzr
02c4cf18  ldr x9,[x8, #0xb8]
02c4cf1c  ldr x8,[x20]
02c4cf20  str w0,[x9, #0x10]
02c4cf24  mov x0,x8
02c4cf28  bl 0x057ac720
02c4cf2c  ldr x8,[x19]
02c4cf30  ldp x20,x19,[sp, #0x20]
02c4cf34  ldp x22,x21,[sp, #0x10]
02c4cf38  ldr x8,[x8, #0xb8]
02c4cf3c  str w0,[x8, #0x14]
02c4cf40  ldp x30,x23,[sp], #0x30
02c4cf44  ret
