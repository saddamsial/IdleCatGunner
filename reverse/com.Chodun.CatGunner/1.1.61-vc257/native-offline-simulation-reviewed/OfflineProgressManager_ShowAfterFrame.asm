02c06bd0  stp x30,x21,[sp, #-0x20]!
02c06bd4  stp x20,x19,[sp, #0x10]
02c06bd8  adrp x20,0x625b000
02c06bdc  adrp x21,0x5e62000
02c06be0  mov x19,x0
02c06be4  ldrb w8,[x20, #0xe7a]
02c06be8  ldr x21,[x21, #0x60]
02c06bec  tbnz w8,#0x0,0x02c06c04
02c06bf0  adrp x0,0x5e62000
02c06bf4  ldr x0,[x0, #0x60]
02c06bf8  bl 0x029f5a50
02c06bfc  mov w8,#0x1
02c06c00  strb w8,[x20, #0xe7a]
02c06c04  ldr x0,[x21]
02c06c08  bl 0x029f5cec
02c06c0c  mov x1,xzr
02c06c10  mov x20,x0
02c06c14  bl 0x04893238
02c06c18  mov x0,x20
02c06c1c  mov x1,x19
02c06c20  str wzr,[x20, #0x10]
02c06c24  str x19,[x0, #0x20]!
02c06c28  bl 0x029f59f4
02c06c2c  mov x0,x20
02c06c30  ldp x20,x19,[sp, #0x10]
02c06c34  ldp x30,x21,[sp], #0x20
02c06c38  ret
