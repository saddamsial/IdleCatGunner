02c7cacc  sub sp,sp,#0x110
02c7cad0  str d8,[sp, #0xc0]
02c7cad4  stp x29,x30,[sp, #0xd0]
02c7cad8  stp x24,x23,[sp, #0xe0]
02c7cadc  stp x22,x21,[sp, #0xf0]
02c7cae0  stp x20,x19,[sp, #0x100]
02c7cae4  movi v0.2D,#0x0
02c7cae8  ldr x8,[x0, #0x20]
02c7caec  stp q0,q0,[sp, #0x80]
02c7caf0  stp q0,q0,[sp, #0xa0]
02c7caf4  cbz x8,0x02c7cc60
02c7caf8  ldr w9,[x8, #0x18]
02c7cafc  cbz w9,0x02c7cc64
02c7cb00  mov x19,x0
02c7cb04  ldr x20,[x8, #0x20]
02c7cb08  add x8,sp,#0x60
02c7cb0c  mov w0,#0x2
02c7cb10  mov x1,xzr
02c7cb14  bl 0x046544b8
02c7cb18  cbz x20,0x02c7cc60
02c7cb1c  ldp q0,q1,[sp, #0x60]
02c7cb20  add x0,x20,#0x18
02c7cb24  mov x1,xzr
02c7cb28  stur q0,[x20, #0x18]
02c7cb2c  stur q1,[x20, #0x28]
02c7cb30  bl 0x029f59f4
02c7cb34  ldr x8,[x19, #0x20]
02c7cb38  cbz x8,0x02c7cc60
02c7cb3c  ldr w9,[x8, #0x18]
02c7cb40  cbz x9,0x02c7cc64
02c7cb44  ldr x22,[x8, #0x20]
02c7cb48  cbz x22,0x02c7cc60
02c7cb4c  mov w10,#0x2
02c7cb50  cmp w9,#0x2
02c7cb54  str w10,[x22, #0x38]
02c7cb58  b.lt 0x02c7cc44
02c7cb5c  adrp x10,0x116f000
02c7cb60  mov x20,xzr
02c7cb64  mov w21,#0x2
02c7cb68  ldr d8,[x10, #0xa98]
02c7cb6c  add x23,x20,#0x1
02c7cb70  cmp w23,w9
02c7cb74  b.cs 0x02c7cc64
02c7cb78  fmov d0,d8
02c7cb7c  add x8,x8,x20, LSL #0x3
02c7cb80  mov x0,xzr
02c7cb84  ldr x24,[x8, #0x28]
02c7cb88  add x8,sp,#0x60
02c7cb8c  bl 0x04656c9c
02c7cb90  ldp q0,q1,[sp, #0x60]
02c7cb94  add x8,sp,#0x40
02c7cb98  add x0,x22,#0x18
02c7cb9c  add x1,sp,#0xa0
02c7cba0  mov x2,xzr
02c7cba4  stp q0,q1,[sp, #0xa0]
02c7cba8  bl 0x04658538
02c7cbac  ldp q0,q1,[sp, #0x40]
02c7cbb0  add x8,sp,#0x20
02c7cbb4  add x0,sp,#0x80
02c7cbb8  mov w1,#0x2
02c7cbbc  mov x2,xzr
02c7cbc0  stp q0,q1,[sp, #0x80]
02c7cbc4  bl 0x04658464
02c7cbc8  ldp q0,q1,[sp, #0x20]
02c7cbcc  mov x8,sp
02c7cbd0  add x0,sp,#0x80
02c7cbd4  mov x1,xzr
02c7cbd8  stp q0,q1,[sp, #0x80]
02c7cbdc  bl 0x0465a16c
02c7cbe0  cbz x24,0x02c7cc60
02c7cbe4  ldp q0,q1,[sp]
02c7cbe8  add x0,x24,#0x18
02c7cbec  mov x1,xzr
02c7cbf0  stur q0,[x24, #0x18]
02c7cbf4  stur q1,[x24, #0x28]
02c7cbf8  bl 0x029f59f4
02c7cbfc  ldr x8,[x19, #0x20]
02c7cc00  cbz x8,0x02c7cc60
02c7cc04  ldr x9,[x8, #0x18]
02c7cc08  cmp w23,w9
02c7cc0c  b.cs 0x02c7cc64
02c7cc10  add x11,x8,x20, LSL #0x3
02c7cc14  ldr x10,[x11, #0x20]
02c7cc18  cbz x10,0x02c7cc60
02c7cc1c  ldr x22,[x11, #0x28]
02c7cc20  cbz x22,0x02c7cc60
02c7cc24  ldr w10,[x10, #0x38]
02c7cc28  add x20,x20,#0x1
02c7cc2c  add w11,w20,#0x1
02c7cc30  add w10,w21,w10
02c7cc34  cmp w11,w9
02c7cc38  add w21,w21,#0x2
02c7cc3c  str w10,[x22, #0x38]
02c7cc40  b.lt 0x02c7cb6c
02c7cc44  ldp x20,x19,[sp, #0x100]
02c7cc48  ldr d8,[sp, #0xc0]
02c7cc4c  ldp x22,x21,[sp, #0xf0]
02c7cc50  ldp x24,x23,[sp, #0xe0]
02c7cc54  ldp x29,x30,[sp, #0xd0]
02c7cc58  add sp,sp,#0x110
02c7cc5c  ret
02c7cc60  bl 0x029f5cfc
02c7cc64  bl 0x029f5d04
