02a53e94  sub sp,sp,#0x70
02a53e98  str x30,[sp, #0x50]
02a53e9c  stp x20,x19,[sp, #0x60]
02a53ea0  add x8,sp,#0x10
02a53ea4  mov x19,x0
02a53ea8  add x20,sp,#0x10
02a53eac  bl 0x02a28adc
02a53eb0  ldrb w8,[sp, #0x10]
02a53eb4  ldp x13,x12,[sp, #0x18]
02a53eb8  adrp x9,0x11a8000
02a53ebc  add x9,x9,#0x33b
02a53ec0  mov w10,#0x8
02a53ec4  tst w8,#0x1
02a53ec8  lsr x8,x8,#0x1
02a53ecc  orr x11,x20,#0x1
02a53ed0  stp x9,x10,[sp]
02a53ed4  csel x9,x11,x12,eq
02a53ed8  csel x8,x8,x13,eq
02a53edc  stp x9,x8,[sp, #0x40]
02a53ee0  add x8,sp,#0x28
02a53ee4  add x0,sp,#0x40
02a53ee8  mov x1,sp
02a53eec  bl 0x02a0092c
02a53ef0  ldrb w8,[sp, #0x10]
02a53ef4  tbz w8,#0x0,0x02a53f00
02a53ef8  ldr x0,[sp, #0x20]
02a53efc  bl 0x05afb6f0
02a53f00  mov x0,x19
02a53f04  bl 0x05afb800
02a53f08  ldrb w8,[sp, #0x28]
02a53f0c  ldp x11,x10,[sp, #0x30]
02a53f10  add x9,sp,#0x28
02a53f14  stp x19,x0,[sp]
02a53f18  tst w8,#0x1
02a53f1c  lsr x8,x8,#0x1
02a53f20  orr x9,x9,#0x1
02a53f24  csel x9,x9,x10,eq
02a53f28  csel x8,x8,x11,eq
02a53f2c  stp x9,x8,[sp, #0x40]
02a53f30  add x8,sp,#0x10
02a53f34  add x0,sp,#0x40
02a53f38  mov x1,sp
02a53f3c  bl 0x02a0092c
02a53f40  str wzr,[sp, #0x40]
02a53f44  add x0,sp,#0x10
02a53f48  add x5,sp,#0x40
02a53f4c  mov w1,#0x3
02a53f50  mov w2,#0x1
02a53f54  mov w3,#0x1
02a53f58  mov w4,wzr
02a53f5c  bl 0x02a263e8
02a53f60  ldr w8,[sp, #0x40]
02a53f64  cbz w8,0x02a53f90
02a53f68  ldrb w8,[sp, #0x10]
02a53f6c  ldr x9,[sp, #0x20]
02a53f70  add x10,sp,#0x10
02a53f74  orr x10,x10,#0x1
02a53f78  tst w8,#0x1
02a53f7c  csel x1,x10,x9,eq
02a53f80  adrp x0,0x11a8000
02a53f84  add x0,x0,#0x344
02a53f88  bl 0x02a2a788
02a53f8c  b 0x02a53fb8
02a53f90  mov x20,x0
02a53f94  bl 0x02a2a908
02a53f98  mov x19,x0
02a53f9c  add x1,sp,#0x40
02a53fa0  mov x0,x20
02a53fa4  bl 0x02a26638
02a53fa8  ldr w8,[sp, #0x40]
02a53fac  cbz w8,0x02a53fbc
02a53fb0  mov x0,x19
02a53fb4  bl 0x02a2a918
02a53fb8  mov x19,xzr
02a53fbc  ldrb w8,[sp, #0x10]
02a53fc0  tbz w8,#0x0,0x02a53fcc
02a53fc4  ldr x0,[sp, #0x20]
02a53fc8  bl 0x05afb6f0
02a53fcc  ldrb w8,[sp, #0x28]
02a53fd0  tbz w8,#0x0,0x02a53fdc
02a53fd4  ldr x0,[sp, #0x38]
02a53fd8  bl 0x05afb6f0
02a53fdc  mov x0,x19
02a53fe0  ldp x20,x19,[sp, #0x60]
02a53fe4  ldr x30,[sp, #0x50]
02a53fe8  add sp,sp,#0x70
02a53fec  ret
