02cafa74  stp x30,x21,[sp, #-0x20]!
02cafa78  stp x20,x19,[sp, #0x10]
02cafa7c  adrp x20,0x625c000
02cafa80  adrp x21,0x5e64000
02cafa84  mov x19,x0
02cafa88  ldrb w8,[x20, #0x53a]
02cafa8c  ldr x21,[x21, #0xb10]
02cafa90  tbnz w8,#0x0,0x02cafaa8
02cafa94  adrp x0,0x5e64000
02cafa98  ldr x0,[x0, #0xb10]
02cafa9c  bl 0x029f5a50
02cafaa0  mov w8,#0x1
02cafaa4  strb w8,[x20, #0x53a]
02cafaa8  ldr x0,[x21]
02cafaac  bl 0x029f5cec
02cafab0  mov x1,xzr
02cafab4  mov x20,x0
02cafab8  bl 0x04893238
02cafabc  mov x0,x20
02cafac0  mov x1,x19
02cafac4  str wzr,[x20, #0x10]
02cafac8  str x19,[x0, #0x20]!
02cafacc  bl 0x029f59f4
02cafad0  mov x0,x20
02cafad4  ldp x20,x19,[sp, #0x10]
02cafad8  ldp x30,x21,[sp], #0x20
02cafadc  ret
