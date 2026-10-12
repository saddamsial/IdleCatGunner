02c4dd78  stp x30,x21,[sp, #-0x20]!
02c4dd7c  stp x20,x19,[sp, #0x10]
02c4dd80  adrp x20,0x625c000
02c4dd84  adrp x21,0x5e63000
02c4dd88  mov x19,x0
02c4dd8c  ldrb w8,[x20, #0x13b]
02c4dd90  ldr x21,[x21, #0x4e8]
02c4dd94  tbnz w8,#0x0,0x02c4ddac
02c4dd98  adrp x0,0x5e63000
02c4dd9c  ldr x0,[x0, #0x4e8]
02c4dda0  bl 0x029f5a50
02c4dda4  mov w8,#0x1
02c4dda8  strb w8,[x20, #0x13b]
02c4ddac  ldr x0,[x21]
02c4ddb0  bl 0x029f5cec
02c4ddb4  mov x1,xzr
02c4ddb8  mov x20,x0
02c4ddbc  bl 0x04893238
02c4ddc0  mov x0,x20
02c4ddc4  mov x1,x19
02c4ddc8  str wzr,[x20, #0x10]
02c4ddcc  str x19,[x0, #0x20]!
02c4ddd0  bl 0x029f59f4
02c4ddd4  mov x0,x20
02c4ddd8  ldp x20,x19,[sp, #0x10]
02c4dddc  ldp x30,x21,[sp], #0x20
02c4dde0  ret
