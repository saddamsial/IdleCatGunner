02c75ec8  stp x30,x25,[sp, #-0x40]!
02c75ecc  stp x24,x23,[sp, #0x10]
02c75ed0  stp x22,x21,[sp, #0x20]
02c75ed4  stp x20,x19,[sp, #0x30]
02c75ed8  adrp x20,0x625c000
02c75edc  mov x19,x0
02c75ee0  ldrb w8,[x20, #0x2ed]
02c75ee4  tbnz w8,#0x0,0x02c75f14
02c75ee8  adrp x0,0x5e5b000
02c75eec  ldr x0,[x0, #0xe98]
02c75ef0  bl 0x029f5a50
02c75ef4  adrp x0,0x5e63000
02c75ef8  ldr x0,[x0, #0xc50]
02c75efc  bl 0x029f5a50
02c75f00  adrp x0,0x5e63000
02c75f04  ldr x0,[x0, #0xc58]
02c75f08  bl 0x029f5a50
02c75f0c  mov w8,#0x1
02c75f10  strb w8,[x20, #0x2ed]
02c75f14  ldr x0,[x19, #0x40]
02c75f18  cbz x0,0x02c75fe8
02c75f1c  adrp x23,0x5e63000
02c75f20  adrp x24,0x5e5b000
02c75f24  mov w20,wzr
02c75f28  ldr x23,[x23, #0xc58]
02c75f2c  ldr x24,[x24, #0xe98]
02c75f30  ldr w8,[x0, #0x18]
02c75f34  cmp w20,w8
02c75f38  b.ge 0x02c75fec
02c75f3c  ldr x2,[x23]
02c75f40  mov w1,w20
02c75f44  bl 0x0452c8d8
02c75f48  cbz x0,0x02c75fe8
02c75f4c  ldr w25,[x0, #0x90]
02c75f50  mov x21,x0
02c75f54  tbnz w25,#0x1f,0x02c75fdc
02c75f58  ldr x8,[x19, #0x28]
02c75f5c  cbz x8,0x02c75fe8
02c75f60  ldr w8,[x8, #0x18]
02c75f64  cmp w25,w8
02c75f68  b.ge 0x02c75fdc
02c75f6c  ldr x1,[x24]
02c75f70  mov x0,x21
02c75f74  bl 0x02fe5f2c
02c75f78  ldr x8,[x19, #0x28]
02c75f7c  cbz x8,0x02c75fe8
02c75f80  ldr w9,[x8, #0x18]
02c75f84  cmp w25,w9
02c75f88  b.cs 0x02c76000
02c75f8c  add x8,x8,x25, LSL #0x3
02c75f90  mov x22,x0
02c75f94  ldr x0,[x8, #0x20]
02c75f98  cbz x0,0x02c75fe8
02c75f9c  ldr x1,[x24]
02c75fa0  bl 0x02fe5f2c
02c75fa4  cbz x0,0x02c75fe8
02c75fa8  mov x1,xzr
02c75fac  bl 0x057eddfc
02c75fb0  cbz x22,0x02c75fe8
02c75fb4  mov x0,x22
02c75fb8  mov x1,xzr
02c75fbc  bl 0x057edec8
02c75fc0  mov x0,x21
02c75fc4  mov x1,xzr
02c75fc8  bl 0x057dc0f8
02c75fcc  cbz x0,0x02c75fe8
02c75fd0  mov w1,w20
02c75fd4  mov x2,xzr
02c75fd8  bl 0x057f0be8
02c75fdc  ldr x0,[x19, #0x40]
02c75fe0  add w20,w20,#0x1
02c75fe4  cbnz x0,0x02c75f30
02c75fe8  bl 0x029f5cfc
02c75fec  ldp x20,x19,[sp, #0x30]
02c75ff0  ldp x22,x21,[sp, #0x20]
02c75ff4  ldp x24,x23,[sp, #0x10]
02c75ff8  ldp x30,x25,[sp], #0x40
02c75ffc  ret
02c76000  bl 0x029f5d04
