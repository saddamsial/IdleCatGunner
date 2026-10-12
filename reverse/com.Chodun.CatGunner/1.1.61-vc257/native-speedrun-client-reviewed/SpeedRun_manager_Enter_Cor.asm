02ca8bc8  stp x30,x21,[sp, #-0x20]!
02ca8bcc  stp x20,x19,[sp, #0x10]
02ca8bd0  adrp x20,0x625c000
02ca8bd4  adrp x21,0x5e64000
02ca8bd8  mov x19,x0
02ca8bdc  ldrb w8,[x20, #0x4f1]
02ca8be0  ldr x21,[x21, #0x9e8]
02ca8be4  tbnz w8,#0x0,0x02ca8bfc
02ca8be8  adrp x0,0x5e64000
02ca8bec  ldr x0,[x0, #0x9e8]
02ca8bf0  bl 0x029f5a50
02ca8bf4  mov w8,#0x1
02ca8bf8  strb w8,[x20, #0x4f1]
02ca8bfc  ldr x0,[x21]
02ca8c00  bl 0x029f5cec
02ca8c04  mov x1,xzr
02ca8c08  mov x20,x0
02ca8c0c  bl 0x04893238
02ca8c10  mov x0,x20
02ca8c14  mov x1,x19
02ca8c18  str wzr,[x20, #0x10]
02ca8c1c  str x19,[x0, #0x20]!
02ca8c20  bl 0x029f59f4
02ca8c24  mov x0,x20
02ca8c28  ldp x20,x19,[sp, #0x10]
02ca8c2c  ldp x30,x21,[sp], #0x20
02ca8c30  ret
