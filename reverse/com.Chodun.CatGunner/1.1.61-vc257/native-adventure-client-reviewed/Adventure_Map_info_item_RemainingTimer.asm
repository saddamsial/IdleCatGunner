02c34b94  stp x30,x21,[sp, #-0x20]!
02c34b98  stp x20,x19,[sp, #0x10]
02c34b9c  adrp x20,0x625c000
02c34ba0  adrp x21,0x5e63000
02c34ba4  mov x19,x0
02c34ba8  ldrb w8,[x20, #0x58]
02c34bac  ldr x21,[x21, #0x130]
02c34bb0  tbnz w8,#0x0,0x02c34bc8
02c34bb4  adrp x0,0x5e63000
02c34bb8  ldr x0,[x0, #0x130]
02c34bbc  bl 0x029f5a50
02c34bc0  mov w8,#0x1
02c34bc4  strb w8,[x20, #0x58]
02c34bc8  ldr x0,[x21]
02c34bcc  bl 0x029f5cec
02c34bd0  mov x1,xzr
02c34bd4  mov x20,x0
02c34bd8  bl 0x04893238
02c34bdc  mov x0,x20
02c34be0  mov x1,x19
02c34be4  str wzr,[x20, #0x10]
02c34be8  str x19,[x0, #0x20]!
02c34bec  bl 0x029f59f4
02c34bf0  mov x0,x20
02c34bf4  ldp x20,x19,[sp, #0x10]
02c34bf8  ldp x30,x21,[sp], #0x20
02c34bfc  ret
