02c55f84  sub sp,sp,#0xb0
02c55f88  str x30,[sp, #0x80]
02c55f8c  stp x22,x21,[sp, #0x90]
02c55f90  stp x20,x19,[sp, #0xa0]
02c55f94  adrp x22,0x625c000
02c55f98  mov w20,w2
02c55f9c  mov x21,x1
02c55fa0  ldrb w8,[x22, #0x190]
02c55fa4  mov x19,x0
02c55fa8  tbnz w8,#0x0,0x02c55fc0
02c55fac  adrp x0,0x5e63000
02c55fb0  ldr x0,[x0, #0x2d8]
02c55fb4  bl 0x029f5a50
02c55fb8  mov w8,#0x1
02c55fbc  strb w8,[x22, #0x190]
02c55fc0  str w20,[x19, #0x38]
02c55fc4  add x8,sp,#0x40
02c55fc8  mov w0,wzr
02c55fcc  ldp q0,q1,[x21]
02c55fd0  ldr x21,[x19, #0x20]
02c55fd4  mov x1,xzr
02c55fd8  stp q0,q1,[sp, #0x60]
02c55fdc  bl 0x046544b8
02c55fe0  cbz x21,0x02c56068
02c55fe4  ldp q0,q1,[sp, #0x60]
02c55fe8  add x1,sp,#0x20
02c55fec  mov x2,sp
02c55ff0  mov x0,x21
02c55ff4  mov x3,xzr
02c55ff8  stp q0,q1,[sp, #0x20]
02c55ffc  ldp q0,q2,[sp, #0x40]
02c56000  stp q0,q2,[sp]
02c56004  bl 0x02c5c998
02c56008  ldr x8,[x19, #0x30]
02c5600c  cbz x8,0x02c56068
02c56010  adrp x21,0x5e63000
02c56014  mov x22,xzr
02c56018  mov w20,w20
02c5601c  ldr x21,[x21, #0x2d8]
02c56020  ldr w9,[x8, #0x18]
02c56024  cmp w22,w9
02c56028  b.ge 0x02c5606c
02c5602c  cmp w22,w9
02c56030  b.cs 0x02c560e8
02c56034  add x8,x8,x22, LSL #0x3
02c56038  ldr x0,[x8, #0x20]
02c5603c  cbz x0,0x02c56068
02c56040  mov x1,xzr
02c56044  bl 0x057e0dc0
02c56048  cbz x0,0x02c56068
02c5604c  cmp w20,w22
02c56050  mov x2,xzr
02c56054  cset w1,eq
02c56058  bl 0x057dff3c
02c5605c  ldr x8,[x19, #0x30]
02c56060  add x22,x22,#0x1
02c56064  cbnz x8,0x02c56020
02c56068  bl 0x029f5cfc
02c5606c  ldrsw x10,[x19, #0x38]
02c56070  cmp w10,w9
02c56074  b.cs 0x02c560e8
02c56078  add x8,x8,x10, LSL #0x3
02c5607c  ldr x0,[x8, #0x20]
02c56080  cbz x0,0x02c56068
02c56084  ldr x1,[x21]
02c56088  bl 0x030a02b4
02c5608c  mov x1,x0
02c56090  mov x0,x19
02c56094  str x1,[x0, #0x28]!
02c56098  bl 0x029f59f4
02c5609c  mov x0,x19
02c560a0  mov x1,xzr
02c560a4  bl 0x057dc1c8
02c560a8  cbz x0,0x02c56068
02c560ac  mov x1,xzr
02c560b0  bl 0x057e00b4
02c560b4  tbnz w0,#0x0,0x02c560d4
02c560b8  mov x0,x19
02c560bc  mov x1,xzr
02c560c0  bl 0x057dc1c8
02c560c4  cbz x0,0x02c56068
02c560c8  mov w1,#0x1
02c560cc  mov x2,xzr
02c560d0  bl 0x057dff3c
02c560d4  ldp x20,x19,[sp, #0xa0]
02c560d8  ldr x30,[sp, #0x80]
02c560dc  ldp x22,x21,[sp, #0x90]
02c560e0  add sp,sp,#0xb0
02c560e4  ret
02c560e8  bl 0x029f5d04
