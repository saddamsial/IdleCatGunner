02b9b37c  stp x30,x21,[sp, #-0x20]!
02b9b380  stp x20,x19,[sp, #0x10]
02b9b384  adrp x20,0x625b000
02b9b388  adrp x21,0x5e5e000
02b9b38c  mov x19,x0
02b9b390  ldrb w8,[x20, #0x9b3]
02b9b394  ldr x21,[x21, #0x378]
02b9b398  tbnz w8,#0x0,0x02b9b3b0
02b9b39c  adrp x0,0x5e5e000
02b9b3a0  ldr x0,[x0, #0x378]
02b9b3a4  bl 0x029f5a50
02b9b3a8  mov w8,#0x1
02b9b3ac  strb w8,[x20, #0x9b3]
02b9b3b0  ldr x0,[x21]
02b9b3b4  bl 0x029f5cec
02b9b3b8  mov x1,xzr
02b9b3bc  mov x20,x0
02b9b3c0  bl 0x04893238
02b9b3c4  mov x0,x20
02b9b3c8  mov x1,x19
02b9b3cc  str wzr,[x20, #0x10]
02b9b3d0  str x19,[x0, #0x20]!
02b9b3d4  bl 0x029f59f4
02b9b3d8  mov x0,x20
02b9b3dc  ldp x20,x19,[sp, #0x10]
02b9b3e0  ldp x30,x21,[sp], #0x20
02b9b3e4  ret
