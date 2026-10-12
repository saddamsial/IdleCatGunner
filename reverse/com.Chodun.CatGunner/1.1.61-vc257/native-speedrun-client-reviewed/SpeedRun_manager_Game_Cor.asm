02ca8ce4  stp x30,x21,[sp, #-0x20]!
02ca8ce8  stp x20,x19,[sp, #0x10]
02ca8cec  adrp x20,0x625c000
02ca8cf0  adrp x21,0x5e64000
02ca8cf4  mov x19,x0
02ca8cf8  ldrb w8,[x20, #0x4f3]
02ca8cfc  ldr x21,[x21, #0x9f0]
02ca8d00  tbnz w8,#0x0,0x02ca8d18
02ca8d04  adrp x0,0x5e64000
02ca8d08  ldr x0,[x0, #0x9f0]
02ca8d0c  bl 0x029f5a50
02ca8d10  mov w8,#0x1
02ca8d14  strb w8,[x20, #0x4f3]
02ca8d18  ldr x0,[x21]
02ca8d1c  bl 0x029f5cec
02ca8d20  mov x1,xzr
02ca8d24  mov x20,x0
02ca8d28  bl 0x04893238
02ca8d2c  mov x0,x20
02ca8d30  mov x1,x19
02ca8d34  str wzr,[x20, #0x10]
02ca8d38  str x19,[x0, #0x20]!
02ca8d3c  bl 0x029f59f4
02ca8d40  mov x0,x20
02ca8d44  ldp x20,x19,[sp, #0x10]
02ca8d48  ldp x30,x21,[sp], #0x20
02ca8d4c  ret
