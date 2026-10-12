02b9b718  stp x30,x21,[sp, #-0x20]!
02b9b71c  stp x20,x19,[sp, #0x10]
02b9b720  adrp x20,0x625b000
02b9b724  adrp x21,0x5e5e000
02b9b728  mov x19,x0
02b9b72c  ldrb w8,[x20, #0x9b4]
02b9b730  ldr x21,[x21, #0x388]
02b9b734  tbnz w8,#0x0,0x02b9b74c
02b9b738  adrp x0,0x5e5e000
02b9b73c  ldr x0,[x0, #0x388]
02b9b740  bl 0x029f5a50
02b9b744  mov w8,#0x1
02b9b748  strb w8,[x20, #0x9b4]
02b9b74c  ldr x0,[x21]
02b9b750  bl 0x029f5cec
02b9b754  mov x1,xzr
02b9b758  mov x20,x0
02b9b75c  bl 0x04893238
02b9b760  mov x0,x20
02b9b764  mov x1,x19
02b9b768  str wzr,[x20, #0x10]
02b9b76c  str x19,[x0, #0x20]!
02b9b770  bl 0x029f59f4
02b9b774  mov x0,x20
02b9b778  ldp x20,x19,[sp, #0x10]
02b9b77c  ldp x30,x21,[sp], #0x20
02b9b780  ret
