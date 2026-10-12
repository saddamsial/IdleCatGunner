02c4ba34  sub sp,sp,#0xc0
02c4ba38  str d10,[sp, #0x80]
02c4ba3c  stp d9,d8,[sp, #0x88]
02c4ba40  str x30,[sp, #0x98]
02c4ba44  stp x22,x21,[sp, #0xa0]
02c4ba48  stp x20,x19,[sp, #0xb0]
02c4ba4c  cmp w1,#0x0
02c4ba50  mov w8,#0x5
02c4ba54  mov w9,#0x3
02c4ba58  mov w21,w1
02c4ba5c  mov x19,x0
02c4ba60  ldr x22,[x0, #0x38]
02c4ba64  csel w0,w9,w8,eq
02c4ba68  add x8,sp,#0x60
02c4ba6c  mov x1,xzr
02c4ba70  fmov s8,s2
02c4ba74  fmov s9,s1
02c4ba78  fmov s10,s0
02c4ba7c  mov x20,x2
02c4ba80  bl 0x046544b8
02c4ba84  add x8,sp,#0x40
02c4ba88  mov w0,wzr
02c4ba8c  mov x1,xzr
02c4ba90  bl 0x046544b8
02c4ba94  cbz x22,0x02c4bb20
02c4ba98  ldp q0,q1,[sp, #0x60]
02c4ba9c  add x1,sp,#0x20
02c4baa0  mov x2,sp
02c4baa4  mov x0,x22
02c4baa8  mov x3,xzr
02c4baac  stp q0,q1,[sp, #0x20]
02c4bab0  ldp q0,q2,[sp, #0x40]
02c4bab4  stp q0,q2,[sp]
02c4bab8  bl 0x02c5c998
02c4babc  cmp w21,#0x0
02c4bac0  mov w8,#0xa
02c4bac4  ldr x0,[x19, #0x28]
02c4bac8  csinc w8,w8,wzr,ne
02c4bacc  str w8,[x19, #0x20]
02c4bad0  cbz x0,0x02c4bb20
02c4bad4  mov x1,x20
02c4bad8  mov x2,xzr
02c4badc  bl 0x0578eb10
02c4bae0  mov x0,x19
02c4bae4  mov x1,xzr
02c4bae8  bl 0x057dc0f8
02c4baec  cbz x0,0x02c4bb20
02c4baf0  fmov s0,s10
02c4baf4  fmov s1,s9
02c4baf8  mov x1,xzr
02c4bafc  fmov s2,s8
02c4bb00  bl 0x057eee74
02c4bb04  ldp x20,x19,[sp, #0xb0]
02c4bb08  ldr x30,[sp, #0x98]
02c4bb0c  ldp x22,x21,[sp, #0xa0]
02c4bb10  ldr d10,[sp, #0x80]
02c4bb14  ldp d9,d8,[sp, #0x88]
02c4bb18  add sp,sp,#0xc0
02c4bb1c  ret
02c4bb20  bl 0x029f5cfc
