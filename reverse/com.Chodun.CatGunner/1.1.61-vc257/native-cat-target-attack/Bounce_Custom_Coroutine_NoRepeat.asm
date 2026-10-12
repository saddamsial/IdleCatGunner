02b9bda0  stp x30,x21,[sp, #-0x20]!
02b9bda4  stp x20,x19,[sp, #0x10]
02b9bda8  adrp x20,0x625b000
02b9bdac  adrp x21,0x5e5e000
02b9bdb0  mov x19,x0
02b9bdb4  ldrb w8,[x20, #0x9b7]
02b9bdb8  ldr x21,[x21, #0x3a8]
02b9bdbc  tbnz w8,#0x0,0x02b9bdd4
02b9bdc0  adrp x0,0x5e5e000
02b9bdc4  ldr x0,[x0, #0x3a8]
02b9bdc8  bl 0x029f5a50
02b9bdcc  mov w8,#0x1
02b9bdd0  strb w8,[x20, #0x9b7]
02b9bdd4  ldr x0,[x21]
02b9bdd8  bl 0x029f5cec
02b9bddc  mov x1,xzr
02b9bde0  mov x20,x0
02b9bde4  bl 0x04893238
02b9bde8  mov x0,x20
02b9bdec  mov x1,x19
02b9bdf0  str wzr,[x20, #0x10]
02b9bdf4  str x19,[x0, #0x20]!
02b9bdf8  bl 0x029f59f4
02b9bdfc  mov x0,x20
02b9be00  ldp x20,x19,[sp, #0x10]
02b9be04  ldp x30,x21,[sp], #0x20
02b9be08  ret
