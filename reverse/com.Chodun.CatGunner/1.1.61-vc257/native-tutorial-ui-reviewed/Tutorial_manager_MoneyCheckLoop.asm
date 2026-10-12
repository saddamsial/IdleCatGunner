02caf9e0  stp x30,x21,[sp, #-0x20]!
02caf9e4  stp x20,x19,[sp, #0x10]
02caf9e8  adrp x20,0x625c000
02caf9ec  adrp x21,0x5e64000
02caf9f0  mov x19,x0
02caf9f4  ldrb w8,[x20, #0x539]
02caf9f8  ldr x21,[x21, #0xb08]
02caf9fc  tbnz w8,#0x0,0x02cafa14
02cafa00  adrp x0,0x5e64000
02cafa04  ldr x0,[x0, #0xb08]
02cafa08  bl 0x029f5a50
02cafa0c  mov w8,#0x1
02cafa10  strb w8,[x20, #0x539]
02cafa14  ldr x0,[x21]
02cafa18  bl 0x029f5cec
02cafa1c  mov x1,xzr
02cafa20  mov x20,x0
02cafa24  bl 0x04893238
02cafa28  mov x0,x20
02cafa2c  mov x1,x19
02cafa30  str wzr,[x20, #0x10]
02cafa34  str x19,[x0, #0x20]!
02cafa38  bl 0x029f59f4
02cafa3c  mov x0,x20
02cafa40  ldp x20,x19,[sp, #0x10]
02cafa44  ldp x30,x21,[sp], #0x20
02cafa48  ret
