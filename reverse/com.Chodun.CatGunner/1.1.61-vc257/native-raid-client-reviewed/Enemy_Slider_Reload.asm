02c5cbfc  sub sp,sp,#0xe0
02c5cc00  stp x30,x21,[sp, #0xc0]
02c5cc04  stp x20,x19,[sp, #0xd0]
02c5cc08  adrp x21,0x625c000
02c5cc0c  adrp x20,0x5e59000
02c5cc10  mov x19,x0
02c5cc14  ldrb w8,[x21, #0x1f1]
02c5cc18  ldr x20,[x20, #0x1c0]
02c5cc1c  tbnz w8,#0x0,0x02c5cc4c
02c5cc20  adrp x0,0x5e5d000
02c5cc24  ldr x0,[x0, #0xd30]
02c5cc28  bl 0x029f5a50
02c5cc2c  adrp x0,0x5e59000
02c5cc30  ldr x0,[x0, #0x1c0]
02c5cc34  bl 0x029f5a50
02c5cc38  adrp x0,0x5e5e000
02c5cc3c  ldr x0,[x0, #0x70]
02c5cc40  bl 0x029f5a50
02c5cc44  mov w8,#0x1
02c5cc48  strb w8,[x21, #0x1f1]
02c5cc4c  movi v0.2D,#0x0
02c5cc50  ldr x0,[x20]
02c5cc54  ldr x20,[x19, #0x88]
02c5cc58  ldr w8,[x0, #0xe4]
02c5cc5c  stp q0,q0,[sp, #0xa0]
02c5cc60  cbnz w8,0x02c5cc68
02c5cc64  bl 0x029f5bd0
02c5cc68  mov x0,x20
02c5cc6c  mov x1,xzr
02c5cc70  mov x2,xzr
02c5cc74  bl 0x057e14b4
02c5cc78  tbz w0,#0x0,0x02c5ccec
02c5cc7c  ldr w8,[x19, #0x20]
02c5cc80  cmp w8,#0x5
02c5cc84  b.eq 0x02c5cd50
02c5cc88  cmp w8,#0x2
02c5cc8c  b.ne 0x02c5cda8
02c5cc90  adrp x20,0x5e5d000
02c5cc94  ldr x20,[x20, #0xd30]
02c5cc98  ldr x0,[x20]
02c5cc9c  ldr w8,[x0, #0xe4]
02c5cca0  cbnz w8,0x02c5ccac
02c5cca4  bl 0x029f5bd0
02c5cca8  ldr x0,[x20]
02c5ccac  ldr x8,[x0, #0xb8]
02c5ccb0  ldr x8,[x8, #0x8]
02c5ccb4  cbz x8,0x02c5cdb8
02c5ccb8  ldr x0,[x8, #0xa0]
02c5ccbc  cbz x0,0x02c5cdb8
02c5ccc0  ldur q0,[x19, #0x28]
02c5ccc4  ldur q1,[x19, #0x38]
02c5ccc8  add x1,sp,#0x80
02c5cccc  ldur q2,[x19, #0x48]
02c5ccd0  add x2,sp,#0x60
02c5ccd4  mov x3,xzr
02c5ccd8  stp q0,q1,[sp, #0x80]
02c5ccdc  ldur q0,[x19, #0x58]
02c5cce0  stp q2,q0,[sp, #0x60]
02c5cce4  bl 0x02c4692c
02c5cce8  b 0x02c5cda8
02c5ccec  mov x8,sp
02c5ccf0  add x0,x19,#0x28
02c5ccf4  add x1,x19,#0x48
02c5ccf8  mov x2,xzr
02c5ccfc  bl 0x046587e8
02c5cd00  ldp q0,q1,[sp]
02c5cd04  add x0,sp,#0xa0
02c5cd08  mov x1,xzr
02c5cd0c  stp q0,q1,[sp, #0xa0]
02c5cd10  bl 0x046572f8
02c5cd14  ldr x8,[x19, #0x88]
02c5cd18  cbz x8,0x02c5cdb8
02c5cd1c  ldr x0,[x8, #0x20]
02c5cd20  cbz x0,0x02c5cdb8
02c5cd24  mov x1,xzr
02c5cd28  bl 0x02b8274c
02c5cd2c  ldr x0,[x19, #0x88]
02c5cd30  cbz x0,0x02c5cdb8
02c5cd34  mov x1,xzr
02c5cd38  bl 0x057dc1c8
02c5cd3c  cbz x0,0x02c5cdb8
02c5cd40  mov w1,#0x1
02c5cd44  mov x2,xzr
02c5cd48  bl 0x057dff3c
02c5cd4c  b 0x02c5cda8
02c5cd50  adrp x20,0x5e5e000
02c5cd54  ldr x20,[x20, #0x70]
02c5cd58  ldr x0,[x20]
02c5cd5c  ldr w8,[x0, #0xe4]
02c5cd60  cbnz w8,0x02c5cd6c
02c5cd64  bl 0x029f5bd0
02c5cd68  ldr x0,[x20]
02c5cd6c  ldr x8,[x0, #0xb8]
02c5cd70  ldr x8,[x8]
02c5cd74  cbz x8,0x02c5cdb8
02c5cd78  ldr x0,[x8, #0xa8]
02c5cd7c  cbz x0,0x02c5cdb8
02c5cd80  ldur q0,[x19, #0x28]
02c5cd84  ldur q1,[x19, #0x38]
02c5cd88  add x1,sp,#0x40
02c5cd8c  ldur q2,[x19, #0x48]
02c5cd90  add x2,sp,#0x20
02c5cd94  mov x3,xzr
02c5cd98  stp q0,q1,[sp, #0x40]
02c5cd9c  ldur q0,[x19, #0x58]
02c5cda0  stp q2,q0,[sp, #0x20]
02c5cda4  bl 0x02c563f0
02c5cda8  ldp x20,x19,[sp, #0xd0]
02c5cdac  ldp x30,x21,[sp, #0xc0]
02c5cdb0  add sp,sp,#0xe0
02c5cdb4  ret
02c5cdb8  bl 0x029f5cfc
