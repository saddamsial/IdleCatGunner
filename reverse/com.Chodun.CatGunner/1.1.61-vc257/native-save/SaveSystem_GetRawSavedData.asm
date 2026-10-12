02c16ef8  stp x30,x21,[sp, #-0x20]!
02c16efc  stp x20,x19,[sp, #0x10]
02c16f00  adrp x21,0x625b000
02c16f04  adrp x20,0x5e62000
02c16f08  adrp x19,0x5e62000
02c16f0c  ldrb w8,[x21, #0xef4]
02c16f10  ldr x20,[x20, #0x6f0]
02c16f14  ldr x19,[x19, #0x6f8]
02c16f18  tbnz w8,#0x0,0x02c16f54
02c16f1c  adrp x0,0x5e62000
02c16f20  ldr x0,[x0, #0x6f0]
02c16f24  bl 0x029f5a50
02c16f28  adrp x0,0x5e62000
02c16f2c  ldr x0,[x0, #0x710]
02c16f30  bl 0x029f5a50
02c16f34  adrp x0,0x5e62000
02c16f38  ldr x0,[x0, #0x6f8]
02c16f3c  bl 0x029f5a50
02c16f40  adrp x0,0x5e62000
02c16f44  ldr x0,[x0, #0x718]
02c16f48  bl 0x029f5a50
02c16f4c  mov w8,#0x1
02c16f50  strb w8,[x21, #0xef4]
02c16f54  bl 0x02c16848
02c16f58  ldr x1,[x20]
02c16f5c  mov x2,xzr
02c16f60  bl 0x046b2d44
02c16f64  mov x20,x0
02c16f68  bl 0x02c16848
02c16f6c  ldr x1,[x19]
02c16f70  mov x2,xzr
02c16f74  bl 0x046b2d44
02c16f78  mov x19,x0
02c16f7c  mov x0,x20
02c16f80  mov x1,xzr
02c16f84  bl 0x048048bc
02c16f88  tbz w0,#0x0,0x02c16fa8
02c16f8c  mov x0,x20
02c16f90  mov x1,xzr
02c16f94  bl 0x04812508
02c16f98  mov x1,xzr
02c16f9c  mov x20,x0
02c16fa0  bl 0x046c0604
02c16fa4  tbz w0,#0x0,0x02c17000
02c16fa8  mov x0,x19
02c16fac  mov x1,xzr
02c16fb0  bl 0x048048bc
02c16fb4  tbz w0,#0x0,0x02c16fd4
02c16fb8  mov x0,x19
02c16fbc  mov x1,xzr
02c16fc0  bl 0x04812508
02c16fc4  mov x1,xzr
02c16fc8  mov x19,x0
02c16fcc  bl 0x046c0604
02c16fd0  tbz w0,#0x0,0x02c16fe4
02c16fd4  adrp x8,0x5e62000
02c16fd8  ldr x8,[x8, #0x718]
02c16fdc  ldr x20,[x8]
02c16fe0  b 0x02c17000
02c16fe4  adrp x8,0x5e62000
02c16fe8  ldr x8,[x8, #0x710]
02c16fec  ldr x0,[x8]
02c16ff0  mov x1,x19
02c16ff4  mov x2,xzr
02c16ff8  bl 0x046b2d44
02c16ffc  mov x20,x0
02c17000  mov x0,x20
02c17004  ldp x20,x19,[sp, #0x10]
02c17008  ldp x30,x21,[sp], #0x20
02c1700c  ret
