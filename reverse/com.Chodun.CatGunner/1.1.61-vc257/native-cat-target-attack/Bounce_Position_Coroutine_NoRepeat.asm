02b9c1bc  stp x30,x21,[sp, #-0x20]!
02b9c1c0  stp x20,x19,[sp, #0x10]
02b9c1c4  adrp x20,0x625b000
02b9c1c8  adrp x21,0x5e5e000
02b9c1cc  mov x19,x0
02b9c1d0  ldrb w8,[x20, #0x9ba]
02b9c1d4  ldr x21,[x21, #0x3b8]
02b9c1d8  tbnz w8,#0x0,0x02b9c1f0
02b9c1dc  adrp x0,0x5e5e000
02b9c1e0  ldr x0,[x0, #0x3b8]
02b9c1e4  bl 0x029f5a50
02b9c1e8  mov w8,#0x1
02b9c1ec  strb w8,[x20, #0x9ba]
02b9c1f0  ldr x0,[x21]
02b9c1f4  bl 0x029f5cec
02b9c1f8  mov x1,xzr
02b9c1fc  mov x20,x0
02b9c200  bl 0x04893238
02b9c204  mov x0,x20
02b9c208  mov x1,x19
02b9c20c  str wzr,[x20, #0x10]
02b9c210  str x19,[x0, #0x20]!
02b9c214  bl 0x029f59f4
02b9c218  mov x0,x20
02b9c21c  ldp x20,x19,[sp, #0x10]
02b9c220  ldp x30,x21,[sp], #0x20
02b9c224  ret
