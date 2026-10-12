02cace94  sub sp,sp,#0xc0
02cace98  str x30,[sp, #0xa0]
02cace9c  stp x20,x19,[sp, #0xb0]
02cacea0  movi v0.2D,#0x0
02cacea4  mov w20,w0
02cacea8  mov x19,x8
02caceac  add x8,sp,#0x20
02caceb0  mov w0,#0x1
02caceb4  mov x1,xzr
02caceb8  stp q0,q0,[sp, #0x40]
02cacebc  stp q0,q0,[sp, #0x60]
02cacec0  stp q0,q0,[sp, #0x80]
02cacec4  bl 0x046544b8
02cacec8  ldp q0,q1,[sp, #0x20]
02cacecc  add x8,sp,#0x60
02caced0  mov w0,#0x3
02caced4  mov x1,xzr
02caced8  stp q0,q1,[sp, #0x80]
02cacedc  bl 0x046544b8
02cacee0  cmp w20,#0x1
02cacee4  b.lt 0x02cacf6c
02cacee8  tbz w20,#0x0,0x02cacf24
02caceec  add x8,sp,#0x20
02cacef0  add x0,sp,#0x80
02cacef4  add x1,sp,#0x60
02cacef8  mov x2,xzr
02cacefc  bl 0x04658538
02cacf00  ldp q0,q1,[sp, #0x20]
02cacf04  mov x8,sp
02cacf08  add x0,sp,#0x40
02cacf0c  mov w1,#0x2
02cacf10  mov x2,xzr
02cacf14  stp q0,q1,[sp, #0x40]
02cacf18  bl 0x04658464
02cacf1c  ldp q0,q1,[sp]
02cacf20  stp q0,q1,[sp, #0x80]
02cacf24  add x8,sp,#0x20
02cacf28  add x0,sp,#0x60
02cacf2c  add x1,sp,#0x60
02cacf30  mov x2,xzr
02cacf34  bl 0x04658538
02cacf38  ldp q0,q1,[sp, #0x20]
02cacf3c  mov x8,sp
02cacf40  add x0,sp,#0x40
02cacf44  mov w1,#0x2
02cacf48  mov x2,xzr
02cacf4c  stp q0,q1,[sp, #0x40]
02cacf50  bl 0x04658464
02cacf54  ldp q0,q1,[sp]
02cacf58  lsr w8,w20,#0x1
02cacf5c  cmp w20,#0x1
02cacf60  mov w20,w8
02cacf64  stp q0,q1,[sp, #0x60]
02cacf68  b.hi 0x02cacee8
02cacf6c  ldp q0,q1,[sp, #0x80]
02cacf70  ldr x30,[sp, #0xa0]
02cacf74  stp q0,q1,[x19]
02cacf78  ldp x20,x19,[sp, #0xb0]
02cacf7c  add sp,sp,#0xc0
02cacf80  ret
