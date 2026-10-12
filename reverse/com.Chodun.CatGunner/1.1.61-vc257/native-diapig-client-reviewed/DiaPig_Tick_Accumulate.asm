02c8cc74  stp d9,d8,[sp, #-0x60]!
02c8cc78  str x30,[sp, #0x10]
02c8cc7c  stp x26,x25,[sp, #0x20]
02c8cc80  stp x24,x23,[sp, #0x30]
02c8cc84  stp x22,x21,[sp, #0x40]
02c8cc88  stp x20,x19,[sp, #0x50]
02c8cc8c  adrp x20,0x625c000
02c8cc90  mov x19,x0
02c8cc94  ldrb w8,[x20, #0x3bb]
02c8cc98  tbnz w8,#0x0,0x02c8ccec
02c8cc9c  adrp x0,0x5e59000
02c8cca0  ldr x0,[x0, #0x7d0]
02c8cca4  bl 0x029f5a50
02c8cca8  adrp x0,0x5e59000
02c8ccac  ldr x0,[x0]
02c8ccb0  bl 0x029f5a50
02c8ccb4  adrp x0,0x5e5d000
02c8ccb8  ldr x0,[x0, #0x920]
02c8ccbc  bl 0x029f5a50
02c8ccc0  adrp x0,0x5e5a000
02c8ccc4  ldr x0,[x0, #0x180]
02c8ccc8  bl 0x029f5a50
02c8cccc  adrp x0,0x5e5d000
02c8ccd0  ldr x0,[x0, #0x3c0]
02c8ccd4  bl 0x029f5a50
02c8ccd8  adrp x0,0x5e63000
02c8ccdc  ldr x0,[x0, #0xf48]
02c8cce0  bl 0x029f5a50
02c8cce4  mov w8,#0x1
02c8cce8  strb w8,[x20, #0x3bb]
02c8ccec  ldp w8,w9,[x19, #0x20]
02c8ccf0  str xzr,[sp, #0x18]
02c8ccf4  cmp w8,w9
02c8ccf8  b.ge 0x02c8cfb8
02c8ccfc  adrp x23,0x5e5d000
02c8cd00  adrp x24,0x5e59000
02c8cd04  ldr x23,[x23, #0x3c0]
02c8cd08  ldr x0,[x23]
02c8cd0c  ldr w8,[x0, #0xe4]
02c8cd10  ldr x24,[x24, #0x7d0]
02c8cd14  cbnz w8,0x02c8cd1c
02c8cd18  bl 0x029f5bd0
02c8cd1c  mov x0,xzr
02c8cd20  bl 0x02c1a570
02c8cd24  ldr x8,[x24]
02c8cd28  mov x20,x19
02c8cd2c  mov x21,x0
02c8cd30  ldr x22,[x20, #0x38]!
02c8cd34  ldr w9,[x8, #0xe4]
02c8cd38  cbnz w9,0x02c8cd44
02c8cd3c  mov x0,x8
02c8cd40  bl 0x029f5bd0
02c8cd44  mov x0,x22
02c8cd48  mov x1,x21
02c8cd4c  mov x2,xzr
02c8cd50  bl 0x048332e0
02c8cd54  tbz w0,#0x0,0x02c8cd7c
02c8cd58  mov x0,x19
02c8cd5c  mov x1,x21
02c8cd60  ldr x30,[sp, #0x10]
02c8cd64  ldp x20,x19,[sp, #0x50]
02c8cd68  ldp x22,x21,[sp, #0x40]
02c8cd6c  ldp x24,x23,[sp, #0x30]
02c8cd70  ldp x26,x25,[sp, #0x20]
02c8cd74  ldp d9,d8,[sp], #0x60
02c8cd78  b 0x02c8c9d0
02c8cd7c  ldr x0,[x24]
02c8cd80  ldr x22,[x20]
02c8cd84  ldr w8,[x0, #0xe4]
02c8cd88  cbnz w8,0x02c8cd90
02c8cd8c  bl 0x029f5bd0
02c8cd90  mov x0,x21
02c8cd94  mov x1,x22
02c8cd98  mov x2,xzr
02c8cd9c  bl 0x048330d0
02c8cda0  adrp x8,0x5e5a000
02c8cda4  ldr x8,[x8, #0x180]
02c8cda8  str x0,[sp, #0x18]
02c8cdac  ldr x8,[x8]
02c8cdb0  ldr w9,[x8, #0xe4]
02c8cdb4  cbnz w9,0x02c8cdc0
02c8cdb8  mov x0,x8
02c8cdbc  bl 0x029f5bd0
02c8cdc0  add x0,sp,#0x18
02c8cdc4  mov x1,xzr
02c8cdc8  bl 0x04868260
02c8cdcc  ldr x0,[x23]
02c8cdd0  fmov d9,d0
02c8cdd4  ldr w8,[x0, #0xe4]
02c8cdd8  cbnz w8,0x02c8cde0
02c8cddc  bl 0x029f5bd0
02c8cde0  mov x0,xzr
02c8cde4  bl 0x02c23cf8
02c8cde8  ldr d1,[x19, #0x40]
02c8cdec  adrp x8,0x116f000
02c8cdf0  fsub d8,d0,d1
02c8cdf4  ldr d1,[x8, #0x908]
02c8cdf8  fsub d0,d9,d8
02c8cdfc  fcmp d0,d1
02c8ce00  b.le 0x02c8ce70
02c8ce04  ldr x0,[x23]
02c8ce08  ldr w8,[x0, #0xe4]
02c8ce0c  cbnz w8,0x02c8ce14
02c8ce10  bl 0x029f5bd0
02c8ce14  mov x0,xzr
02c8ce18  bl 0x02c23a70
02c8ce1c  tbz w0,#0x0,0x02c8ce9c
02c8ce20  ldr x0,[x23]
02c8ce24  ldr w8,[x0, #0xe4]
02c8ce28  cbnz w8,0x02c8ce30
02c8ce2c  bl 0x029f5bd0
02c8ce30  adrp x21,0x5e63000
02c8ce34  mov x1,xzr
02c8ce38  ldr x21,[x21, #0xf48]
02c8ce3c  ldr x0,[x21]
02c8ce40  bl 0x02c23740
02c8ce44  cmp w0,#0x2
02c8ce48  b.gt 0x02c8ce9c
02c8ce4c  ldr x0,[x23]
02c8ce50  ldr w8,[x0, #0xe4]
02c8ce54  cbnz w8,0x02c8ce5c
02c8ce58  bl 0x029f5bd0
02c8ce5c  ldr x0,[x21]
02c8ce60  mov x1,xzr
02c8ce64  bl 0x02c25580
02c8ce68  fmov d8,d9
02c8ce6c  b 0x02c8ce9c
02c8ce70  adrp x8,0x5e59000
02c8ce74  ldr x8,[x8]
02c8ce78  ldr x0,[x8]
02c8ce7c  ldr w8,[x0, #0xe4]
02c8ce80  cbnz w8,0x02c8ce88
02c8ce84  bl 0x029f5bd0
02c8ce88  fmov d0,d9
02c8ce8c  fmov d1,d8
02c8ce90  mov x0,xzr
02c8ce94  bl 0x0485210c
02c8ce98  fmov d8,d0
02c8ce9c  mov x8,#0x404e000000000000
02c8cea0  fmov d0,x8
02c8cea4  mov x8,#0x7ff0000000000000
02c8cea8  fmov d1,x8
02c8ceac  mov w8,#0x80000000
02c8ceb0  fdiv d0,d8,d0
02c8ceb4  fcvtzs w9,d0
02c8ceb8  fcmp d0,d1
02c8cebc  csel w25,w8,w9,eq
02c8cec0  cmp w25,#0x1
02c8cec4  b.lt 0x02c8cfb8
02c8cec8  adrp x21,0x5e5d000
02c8cecc  ldr x21,[x21, #0x920]
02c8ced0  ldr x0,[x21]
02c8ced4  ldr w8,[x0, #0xe4]
02c8ced8  cbnz w8,0x02c8cee0
02c8cedc  bl 0x029f5bd0
02c8cee0  adrp x22,0x625b000
02c8cee4  ldrb w8,[x22, #0x960]
02c8cee8  cbnz w8,0x02c8cf00
02c8ceec  adrp x0,0x5e5d000
02c8cef0  ldr x0,[x0, #0x920]
02c8cef4  bl 0x029f5a50
02c8cef8  mov w8,#0x1
02c8cefc  strb w8,[x22, #0x960]
02c8cf00  ldr x0,[x21]
02c8cf04  ldr w8,[x0, #0xe4]
02c8cf08  cbnz w8,0x02c8cf14
02c8cf0c  bl 0x029f5bd0
02c8cf10  ldr x0,[x21]
02c8cf14  ldr x8,[x0, #0xb8]
02c8cf18  ldr x8,[x8]
02c8cf1c  cbz x8,0x02c8cfd4
02c8cf20  bl 0x02c8d3cc
02c8cf24  adrp x8,0x5e59000
02c8cf28  mov w22,w0
02c8cf2c  ldr x8,[x8]
02c8cf30  ldp w26,w21,[x19, #0x20]
02c8cf34  ldr x8,[x8]
02c8cf38  ldr w9,[x8, #0xe4]
02c8cf3c  cbnz w9,0x02c8cf48
02c8cf40  mov x0,x8
02c8cf44  bl 0x029f5bd0
02c8cf48  madd w0,w22,w25,w26
02c8cf4c  mov w1,w21
02c8cf50  mov x2,xzr
02c8cf54  bl 0x0485213c
02c8cf58  lsl w8,w25,#0x6
02c8cf5c  str w0,[x19, #0x20]
02c8cf60  sub w9,w8,w25, LSL #0x2
02c8cf64  ldr x8,[x24]
02c8cf68  scvtf d9,w9
02c8cf6c  ldr w9,[x8, #0xe4]
02c8cf70  cbnz w9,0x02c8cf7c
02c8cf74  mov x0,x8
02c8cf78  bl 0x029f5bd0
02c8cf7c  fmov d0,d9
02c8cf80  mov x0,x20
02c8cf84  mov x1,xzr
02c8cf88  bl 0x0483004c
02c8cf8c  mov x8,x0
02c8cf90  ldr x0,[x23]
02c8cf94  str x8,[x20]
02c8cf98  ldr w8,[x0, #0xe4]
02c8cf9c  cbnz w8,0x02c8cfa4
02c8cfa0  bl 0x029f5bd0
02c8cfa4  mov x0,xzr
02c8cfa8  bl 0x02c23cf8
02c8cfac  fsub d1,d8,d9
02c8cfb0  fsub d0,d0,d1
02c8cfb4  str d0,[x19, #0x40]
02c8cfb8  ldp x20,x19,[sp, #0x50]
02c8cfbc  ldr x30,[sp, #0x10]
02c8cfc0  ldp x22,x21,[sp, #0x40]
02c8cfc4  ldp x24,x23,[sp, #0x30]
02c8cfc8  ldp x26,x25,[sp, #0x20]
02c8cfcc  ldp d9,d8,[sp], #0x60
02c8cfd0  ret
02c8cfd4  bl 0x029f5cfc
