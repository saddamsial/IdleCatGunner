02cad6d4  stp x30,x21,[sp, #-0x20]!
02cad6d8  stp x20,x19,[sp, #0x10]
02cad6dc  adrp x20,0x625c000
02cad6e0  adrp x21,0x5e64000
02cad6e4  mov x19,x0
02cad6e8  ldrb w8,[x20, #0x522]
02cad6ec  ldr x21,[x21, #0xab8]
02cad6f0  tbnz w8,#0x0,0x02cad708
02cad6f4  adrp x0,0x5e64000
02cad6f8  ldr x0,[x0, #0xab8]
02cad6fc  bl 0x029f5a50
02cad700  mov w8,#0x1
02cad704  strb w8,[x20, #0x522]
02cad708  ldr x0,[x21]
02cad70c  bl 0x029f5cec
02cad710  mov x1,xzr
02cad714  mov x20,x0
02cad718  bl 0x04893238
02cad71c  mov x0,x20
02cad720  mov x1,x19
02cad724  str wzr,[x20, #0x10]
02cad728  str x19,[x0, #0x20]!
02cad72c  bl 0x029f59f4
02cad730  mov x0,x20
02cad734  ldp x20,x19,[sp, #0x10]
02cad738  ldp x30,x21,[sp], #0x20
02cad73c  ret
