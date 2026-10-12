02b9f39c  stp x30,x21,[sp, #-0x20]!
02b9f3a0  stp x20,x19,[sp, #0x10]
02b9f3a4  adrp x20,0x625b000
02b9f3a8  adrp x21,0x5e5e000
02b9f3ac  mov x19,x0
02b9f3b0  ldrb w8,[x20, #0x9fa]
02b9f3b4  ldr x21,[x21, #0x510]
02b9f3b8  tbnz w8,#0x0,0x02b9f3d0
02b9f3bc  adrp x0,0x5e5e000
02b9f3c0  ldr x0,[x0, #0x510]
02b9f3c4  bl 0x029f5a50
02b9f3c8  mov w8,#0x1
02b9f3cc  strb w8,[x20, #0x9fa]
02b9f3d0  ldr x0,[x21]
02b9f3d4  bl 0x029f5cec
02b9f3d8  mov x1,xzr
02b9f3dc  mov x20,x0
02b9f3e0  bl 0x04893238
02b9f3e4  mov x0,x20
02b9f3e8  mov x1,x19
02b9f3ec  str wzr,[x20, #0x10]
02b9f3f0  str x19,[x0, #0x20]!
02b9f3f4  bl 0x029f59f4
02b9f3f8  mov x0,x20
02b9f3fc  ldp x20,x19,[sp, #0x10]
02b9f400  ldp x30,x21,[sp], #0x20
02b9f404  ret
