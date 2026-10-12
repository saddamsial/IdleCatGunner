02c32ed8  sub sp,sp,#0x80
02c32edc  str x30,[sp, #0x60]
02c32ee0  stp x20,x19,[sp, #0x70]
02c32ee4  adrp x20,0x625c000
02c32ee8  adrp x19,0x5e5d000
02c32eec  ldrb w8,[x20, #0x48]
02c32ef0  ldr x19,[x19, #0x4d8]
02c32ef4  tbnz w8,#0x0,0x02c32f0c
02c32ef8  adrp x0,0x5e5d000
02c32efc  ldr x0,[x0, #0x4d8]
02c32f00  bl 0x029f5a50
02c32f04  mov w8,#0x1
02c32f08  strb w8,[x20, #0x48]
02c32f0c  add x8,sp,#0x40
02c32f10  mov w0,#0x64
02c32f14  mov x1,xzr
02c32f18  bl 0x046544b8
02c32f1c  ldr x8,[x19]
02c32f20  ldp q0,q1,[sp, #0x40]
02c32f24  mov x1,xzr
02c32f28  ldr x8,[x8, #0xb8]
02c32f2c  stp q0,q1,[x8]
02c32f30  ldr x8,[x19]
02c32f34  ldr x0,[x8, #0xb8]
02c32f38  bl 0x029f59f4
02c32f3c  add x8,sp,#0x20
02c32f40  mov w0,#0x64
02c32f44  mov x1,xzr
02c32f48  bl 0x046544b8
02c32f4c  ldr x8,[x19]
02c32f50  ldp q0,q1,[sp, #0x20]
02c32f54  mov x1,xzr
02c32f58  ldr x9,[x8, #0xb8]
02c32f5c  stp q0,q1,[x9, #0x20]
02c32f60  ldr x8,[x8, #0xb8]
02c32f64  add x0,x8,#0x20
02c32f68  bl 0x029f59f4
02c32f6c  mov x8,sp
02c32f70  mov w0,#0x64
02c32f74  mov x1,xzr
02c32f78  bl 0x046544b8
02c32f7c  ldr x8,[x19]
02c32f80  ldp q0,q1,[sp]
02c32f84  mov x1,xzr
02c32f88  ldr x9,[x8, #0xb8]
02c32f8c  stp q0,q1,[x9, #0x40]
02c32f90  ldr x8,[x8, #0xb8]
02c32f94  add x0,x8,#0x40
02c32f98  bl 0x029f59f4
02c32f9c  ldp x20,x19,[sp, #0x70]
02c32fa0  ldr x30,[sp, #0x60]
02c32fa4  add sp,sp,#0x80
02c32fa8  ret
