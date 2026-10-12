02c4dbf0  sub sp,sp,#0xc0
02c4dbf4  stp x30,x21,[sp, #0xa0]
02c4dbf8  stp x20,x19,[sp, #0xb0]
02c4dbfc  movi v0.2D,#0x0
02c4dc00  mov x19,x8
02c4dc04  ldr x8,[x0, #0x58]
02c4dc08  stp q0,q0,[sp, #0x60]
02c4dc0c  stp q0,q0,[sp, #0x80]
02c4dc10  cbz x8,0x02c4dd18
02c4dc14  ldr w9,[x8, #0x18]
02c4dc18  mov w20,w1
02c4dc1c  cmp w9,w1
02c4dc20  b.le 0x02c4dc38
02c4dc24  b.ls 0x02c4dd1c
02c4dc28  sxtw x9,w20
02c4dc2c  add x8,x8,x9, LSL #0x5
02c4dc30  ldp q0,q1,[x8, #0x20]
02c4dc34  b 0x02c4dd04
02c4dc38  ldr w11,[x0, #0x80]
02c4dc3c  sub w10,w9,#0x1
02c4dc40  mov x21,x0
02c4dc44  cmp w11,w10
02c4dc48  b.lt 0x02c4dc54
02c4dc4c  cmp w11,w20
02c4dc50  b.le 0x02c4dc80
02c4dc54  str w10,[x21, #0x80]
02c4dc58  cbz w9,0x02c4dd1c
02c4dc5c  sxtw x9,w10
02c4dc60  add x0,x21,#0x88
02c4dc64  mov x1,xzr
02c4dc68  add x8,x8,x9, LSL #0x5
02c4dc6c  ldp q1,q0,[x8, #0x20]
02c4dc70  stur q0,[x21, #0x98]
02c4dc74  stur q1,[x21, #0x88]
02c4dc78  bl 0x029f59f4
02c4dc7c  ldr w11,[x21, #0x80]
02c4dc80  cmp w11,w20
02c4dc84  b.ge 0x02c4dcfc
02c4dc88  add x8,sp,#0x40
02c4dc8c  mov w0,#0x3
02c4dc90  mov x1,xzr
02c4dc94  bl 0x046544b8
02c4dc98  ldp q0,q1,[sp, #0x40]
02c4dc9c  add x8,sp,#0x20
02c4dca0  add x0,x21,#0x88
02c4dca4  add x1,sp,#0x80
02c4dca8  mov x2,xzr
02c4dcac  stp q0,q1,[sp, #0x80]
02c4dcb0  bl 0x04658538
02c4dcb4  ldp q0,q1,[sp, #0x20]
02c4dcb8  mov x8,sp
02c4dcbc  add x0,sp,#0x60
02c4dcc0  mov w1,#0x2
02c4dcc4  mov x2,xzr
02c4dcc8  stp q0,q1,[sp, #0x60]
02c4dccc  bl 0x04658464
02c4dcd0  ldp q0,q1,[sp]
02c4dcd4  add x0,x21,#0x88
02c4dcd8  mov x1,xzr
02c4dcdc  stur q0,[x21, #0x88]
02c4dce0  stur q1,[x21, #0x98]
02c4dce4  bl 0x029f59f4
02c4dce8  ldr w8,[x21, #0x80]
02c4dcec  add w8,w8,#0x1
02c4dcf0  cmp w8,w20
02c4dcf4  str w8,[x21, #0x80]
02c4dcf8  b.lt 0x02c4dc88
02c4dcfc  ldur q0,[x21, #0x88]
02c4dd00  ldur q1,[x21, #0x98]
02c4dd04  stp q0,q1,[x19]
02c4dd08  ldp x20,x19,[sp, #0xb0]
02c4dd0c  ldp x30,x21,[sp, #0xa0]
02c4dd10  add sp,sp,#0xc0
02c4dd14  ret
02c4dd18  bl 0x029f5cfc
02c4dd1c  bl 0x029f5d04
