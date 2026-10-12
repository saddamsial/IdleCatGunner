02c04eb0  sub sp,sp,#0x50
02c04eb4  str x30,[sp, #0x20]
02c04eb8  stp x22,x21,[sp, #0x30]
02c04ebc  stp x20,x19,[sp, #0x40]
02c04ec0  adrp x20,0x625b000
02c04ec4  adrp x19,0x5e5d000
02c04ec8  ldrb w8,[x20, #0xe68]
02c04ecc  ldr x19,[x19, #0x3c0]
02c04ed0  tbnz w8,#0x0,0x02c04f0c
02c04ed4  adrp x0,0x5e59000
02c04ed8  ldr x0,[x0, #0x7d0]
02c04edc  bl 0x029f5a50
02c04ee0  adrp x0,0x5e5a000
02c04ee4  ldr x0,[x0, #0x180]
02c04ee8  bl 0x029f5a50
02c04eec  adrp x0,0x5e5d000
02c04ef0  ldr x0,[x0, #0x3c0]
02c04ef4  bl 0x029f5a50
02c04ef8  adrp x0,0x5e61000
02c04efc  ldr x0,[x0, #0xf48]
02c04f00  bl 0x029f5a50
02c04f04  mov w8,#0x1
02c04f08  strb w8,[x20, #0xe68]
02c04f0c  ldr x0,[x19]
02c04f10  str xzr,[sp, #0x28]
02c04f14  adrp x20,0x5e59000
02c04f18  ldr w8,[x0, #0xe4]
02c04f1c  ldr x20,[x20, #0x7d0]
02c04f20  stp xzr,xzr,[sp, #0x10]
02c04f24  cbnz w8,0x02c04f2c
02c04f28  bl 0x029f5bd0
02c04f2c  adrp x19,0x5e5a000
02c04f30  mov x0,xzr
02c04f34  ldr x19,[x19, #0x180]
02c04f38  bl 0x02c25b48
02c04f3c  ldr x8,[x20]
02c04f40  str x0,[sp, #0x28]
02c04f44  ldr w9,[x8, #0xe4]
02c04f48  cbnz w9,0x02c04f54
02c04f4c  mov x0,x8
02c04f50  bl 0x029f5bd0
02c04f54  adrp x21,0x5e61000
02c04f58  add x0,sp,#0x28
02c04f5c  mov x1,xzr
02c04f60  ldr x21,[x21, #0xf48]
02c04f64  bl 0x04830b04
02c04f68  fmov d0,0x3ff0000000000000
02c04f6c  str x0,[sp, #0x10]
02c04f70  add x0,sp,#0x10
02c04f74  mov x1,xzr
02c04f78  bl 0x0482f924
02c04f7c  ldr x1,[sp, #0x28]
02c04f80  mov x2,xzr
02c04f84  bl 0x048330d0
02c04f88  ldr x8,[x19]
02c04f8c  str x0,[sp, #0x18]
02c04f90  ldr w9,[x8, #0xe4]
02c04f94  cbnz w9,0x02c04fa0
02c04f98  mov x0,x8
02c04f9c  bl 0x029f5bd0
02c04fa0  add x0,sp,#0x18
02c04fa4  mov x1,xzr
02c04fa8  bl 0x04868108
02c04fac  adrp x22,0x5e58000
02c04fb0  add x1,sp,#0xc
02c04fb4  ldr x22,[x22, #0xa10]
02c04fb8  str w0,[sp, #0xc]
02c04fbc  ldr x8,[x22, #0x48]
02c04fc0  mov x0,x8
02c04fc4  bl 0x029f5bd8
02c04fc8  mov x19,x0
02c04fcc  add x0,sp,#0x18
02c04fd0  mov x1,xzr
02c04fd4  bl 0x0486814c
02c04fd8  ldr x8,[x22, #0x48]
02c04fdc  str w0,[sp, #0x8]
02c04fe0  add x1,sp,#0x8
02c04fe4  mov x0,x8
02c04fe8  bl 0x029f5bd8
02c04fec  mov x20,x0
02c04ff0  add x0,sp,#0x18
02c04ff4  mov x1,xzr
02c04ff8  bl 0x04868194
02c04ffc  ldr x8,[x22, #0x48]
02c05000  str w0,[sp, #0x4]
02c05004  add x1,sp,#0x4
02c05008  mov x0,x8
02c0500c  bl 0x029f5bd8
02c05010  ldr x8,[x21]
02c05014  mov x3,x0
02c05018  mov x1,x19
02c0501c  mov x2,x20
02c05020  mov x4,xzr
02c05024  mov x0,x8
02c05028  bl 0x046c1d58
02c0502c  ldp x20,x19,[sp, #0x40]
02c05030  ldr x30,[sp, #0x20]
02c05034  ldp x22,x21,[sp, #0x30]
02c05038  add sp,sp,#0x50
02c0503c  ret
