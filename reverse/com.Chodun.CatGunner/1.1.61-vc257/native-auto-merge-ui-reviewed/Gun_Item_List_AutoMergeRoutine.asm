02c767ac  stp x30,x21,[sp, #-0x20]!
02c767b0  stp x20,x19,[sp, #0x10]
02c767b4  adrp x20,0x625c000
02c767b8  adrp x21,0x5e63000
02c767bc  mov x19,x0
02c767c0  ldrb w8,[x20, #0x2f6]
02c767c4  ldr x21,[x21, #0xc60]
02c767c8  tbnz w8,#0x0,0x02c767e0
02c767cc  adrp x0,0x5e63000
02c767d0  ldr x0,[x0, #0xc60]
02c767d4  bl 0x029f5a50
02c767d8  mov w8,#0x1
02c767dc  strb w8,[x20, #0x2f6]
02c767e0  ldr x0,[x21]
02c767e4  bl 0x029f5cec
02c767e8  mov x1,xzr
02c767ec  mov x20,x0
02c767f0  bl 0x04893238
02c767f4  mov x0,x20
02c767f8  mov x1,x19
02c767fc  str wzr,[x20, #0x10]
02c76800  str x19,[x0, #0x20]!
02c76804  bl 0x029f59f4
02c76808  mov x0,x20
02c7680c  ldp x20,x19,[sp, #0x10]
02c76810  ldp x30,x21,[sp], #0x20
02c76814  ret
