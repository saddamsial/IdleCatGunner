02cacc18  sub sp,sp,#0x110
02cacc1c  str x29,[sp, #0xc0]
02cacc20  stp x30,x25,[sp, #0xd0]
02cacc24  stp x24,x23,[sp, #0xe0]
02cacc28  stp x22,x21,[sp, #0xf0]
02cacc2c  stp x20,x19,[sp, #0x100]
02cacc30  adrp x20,0x625c000
02cacc34  adrp x22,0x5e63000
02cacc38  mov x19,x0
02cacc3c  ldrb w8,[x20, #0x519]
02cacc40  ldr x22,[x22, #0x90]
02cacc44  tbnz w8,#0x0,0x02cacc68
02cacc48  adrp x0,0x5e64000
02cacc4c  ldr x0,[x0, #0xa98]
02cacc50  bl 0x029f5a50
02cacc54  adrp x0,0x5e63000
02cacc58  ldr x0,[x0, #0x90]
02cacc5c  bl 0x029f5a50
02cacc60  mov w8,#0x1
02cacc64  strb w8,[x20, #0x519]
02cacc68  movi v0.2D,#0x0
02cacc6c  ldr x0,[x22]
02cacc70  mov w1,#0x1388
02cacc74  stp q0,q0,[sp, #0x40]
02cacc78  stp q0,q0,[sp, #0x60]
02cacc7c  stp q0,q0,[sp, #0x80]
02cacc80  stp q0,q0,[sp, #0xa0]
02cacc84  bl 0x029f5b40
02cacc88  mov x20,x19
02cacc8c  mov x1,x0
02cacc90  str x0,[x20, #0x70]!
02cacc94  mov x0,x20
02cacc98  bl 0x029f59f4
02cacc9c  ldr x25,[x20]
02cacca0  cbz x25,0x02cace50
02cacca4  adrp x21,0x5e64000
02cacca8  mov x23,xzr
02caccac  mov w24,#0x20
02caccb0  ldr x21,[x21, #0xa98]
02caccb4  ldrsw x8,[x25, #0x18]
02caccb8  cmp x23,x8
02caccbc  b.ge 0x02cacd6c
02caccc0  add x8,sp,#0x20
02caccc4  cbz x23,0x02cacd24
02caccc8  mov w0,#0x3
02cacccc  mov x1,xzr
02caccd0  bl 0x046544b8
02caccd4  ldp q0,q1,[sp, #0x20]
02caccd8  sub w9,w23,#0x1
02caccdc  stp q0,q1,[sp, #0xa0]
02cacce0  ldr w8,[x25, #0x18]
02cacce4  cmp w9,w8
02cacce8  b.cs 0x02cace90
02caccec  add x8,x25,x24
02caccf0  add x1,sp,#0xa0
02caccf4  mov x2,xzr
02caccf8  sub x0,x8,#0x20
02caccfc  mov x8,sp
02cacd00  bl 0x04658538
02cacd04  ldp q0,q1,[sp]
02cacd08  add x8,sp,#0x60
02cacd0c  add x0,sp,#0x80
02cacd10  mov w1,#0x2
02cacd14  mov x2,xzr
02cacd18  stp q0,q1,[sp, #0x80]
02cacd1c  bl 0x04658464
02cacd20  b 0x02cacd38
02cacd24  mov w0,#0xfa
02cacd28  mov x1,xzr
02cacd2c  bl 0x046544b8
02cacd30  ldp q0,q1,[sp, #0x20]
02cacd34  stp q0,q1,[sp, #0x60]
02cacd38  ldr w8,[x25, #0x18]
02cacd3c  cmp x23,x8
02cacd40  b.cs 0x02cace90
02cacd44  ldp q1,q0,[sp, #0x60]
02cacd48  add x0,x25,x24
02cacd4c  mov x1,xzr
02cacd50  stp q1,q0,[x0]
02cacd54  bl 0x029f59f4
02cacd58  ldr x25,[x20]
02cacd5c  add x23,x23,#0x1
02cacd60  add x24,x24,#0x20
02cacd64  cbnz x25,0x02caccb4
02cacd68  b 0x02cace50
02cacd6c  ldr x0,[x22]
02cacd70  mov w1,#0x1388
02cacd74  bl 0x029f5b40
02cacd78  mov x20,x19
02cacd7c  mov x1,x0
02cacd80  str x0,[x20, #0x78]!
02cacd84  mov x0,x20
02cacd88  bl 0x029f59f4
02cacd8c  ldr x24,[x20]
02cacd90  cbz x24,0x02cace50
02cacd94  mov x22,xzr
02cacd98  mov w23,#0x20
02cacd9c  ldrsw x8,[x24, #0x18]
02cacda0  cmp x22,x8
02cacda4  b.ge 0x02cace54
02cacda8  add x8,sp,#0x20
02cacdac  cbz x22,0x02cace0c
02cacdb0  mov w0,#0x3
02cacdb4  mov x1,xzr
02cacdb8  bl 0x046544b8
02cacdbc  ldp q0,q1,[sp, #0x20]
02cacdc0  sub w9,w22,#0x1
02cacdc4  stp q0,q1,[sp, #0xa0]
02cacdc8  ldr w8,[x24, #0x18]
02cacdcc  cmp w9,w8
02cacdd0  b.cs 0x02cace90
02cacdd4  add x8,x24,x23
02cacdd8  add x1,sp,#0xa0
02cacddc  mov x2,xzr
02cacde0  sub x0,x8,#0x20
02cacde4  mov x8,sp
02cacde8  bl 0x04658538
02cacdec  ldp q0,q1,[sp]
02cacdf0  add x8,sp,#0x40
02cacdf4  add x0,sp,#0x80
02cacdf8  mov w1,#0x2
02cacdfc  mov x2,xzr
02cace00  stp q0,q1,[sp, #0x80]
02cace04  bl 0x04658464
02cace08  b 0x02cace20
02cace0c  mov w0,#0x14
02cace10  mov x1,xzr
02cace14  bl 0x046544b8
02cace18  ldp q0,q1,[sp, #0x20]
02cace1c  stp q0,q1,[sp, #0x40]
02cace20  ldr w8,[x24, #0x18]
02cace24  cmp x22,x8
02cace28  b.cs 0x02cace90
02cace2c  ldp q1,q0,[sp, #0x40]
02cace30  add x0,x24,x23
02cace34  mov x1,xzr
02cace38  stp q1,q0,[x0]
02cace3c  bl 0x029f59f4
02cace40  ldr x24,[x20]
02cace44  add x22,x22,#0x1
02cace48  add x23,x23,#0x20
02cace4c  cbnz x24,0x02cacd9c
02cace50  bl 0x029f5cfc
02cace54  ldr x0,[x19, #0x80]
02cace58  cbz x0,0x02cace50
02cace5c  ldr x1,[x21]
02cace60  bl 0x03daeca4
02cace64  ldr x0,[x19, #0x88]
02cace68  cbz x0,0x02cace50
02cace6c  ldr x1,[x21]
02cace70  bl 0x03daeca4
02cace74  ldp x20,x19,[sp, #0x100]
02cace78  ldr x29,[sp, #0xc0]
02cace7c  ldp x22,x21,[sp, #0xf0]
02cace80  ldp x24,x23,[sp, #0xe0]
02cace84  ldp x30,x25,[sp, #0xd0]
02cace88  add sp,sp,#0x110
02cace8c  ret
02cace90  bl 0x029f5d04
