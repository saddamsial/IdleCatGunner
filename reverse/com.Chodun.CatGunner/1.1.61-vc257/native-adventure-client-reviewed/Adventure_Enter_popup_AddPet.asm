02c33f20  str x30,[sp, #-0x30]!
02c33f24  stp x22,x21,[sp, #0x10]
02c33f28  stp x20,x19,[sp, #0x20]
02c33f2c  adrp x21,0x625c000
02c33f30  mov x20,x1
02c33f34  mov x19,x0
02c33f38  ldrb w8,[x21, #0x4f]
02c33f3c  tbnz w8,#0x0,0x02c33f60
02c33f40  adrp x0,0x5e62000
02c33f44  ldr x0,[x0, #0xfb8]
02c33f48  bl 0x029f5a50
02c33f4c  adrp x0,0x5e5d000
02c33f50  ldr x0,[x0, #0x4d0]
02c33f54  bl 0x029f5a50
02c33f58  mov w8,#0x1
02c33f5c  strb w8,[x21, #0x4f]
02c33f60  mov x0,x19
02c33f64  bl 0x02c340a4
02c33f68  tbz w0,#0x0,0x02c3401c
02c33f6c  mov x0,x19
02c33f70  mov x1,x20
02c33f74  bl 0x02c340f8
02c33f78  tbnz w0,#0x0,0x02c3401c
02c33f7c  adrp x22,0x5e5d000
02c33f80  lsr x21,x20,#0x20
02c33f84  ldr x22,[x22, #0x4d0]
02c33f88  ldr x0,[x22]
02c33f8c  ldr w8,[x0, #0xe4]
02c33f90  cbnz w8,0x02c33f9c
02c33f94  bl 0x029f5bd0
02c33f98  ldr x0,[x22]
02c33f9c  ldr x8,[x0, #0xb8]
02c33fa0  ldr x0,[x8, #0x28]
02c33fa4  cbz w20,0x02c34008
02c33fa8  cbz x0,0x02c340a0
02c33fac  mov w1,w21
02c33fb0  mov x2,xzr
02c33fb4  bl 0x02c7cd4c
02c33fb8  tbz w0,#0x0,0x02c3401c
02c33fbc  ldr x0,[x19, #0xc8]
02c33fc0  cbz x0,0x02c340a0
02c33fc4  adrp x9,0x5e62000
02c33fc8  ldr x9,[x9, #0xfb8]
02c33fcc  ldr w10,[x0, #0x1c]
02c33fd0  ldr x8,[x0, #0x10]
02c33fd4  ldr x9,[x9]
02c33fd8  add w10,w10,#0x1
02c33fdc  str w10,[x0, #0x1c]
02c33fe0  cbz x8,0x02c340a0
02c33fe4  ldrsw x10,[x0, #0x18]
02c33fe8  ldr w11,[x8, #0x18]
02c33fec  cmp w10,w11
02c33ff0  b.cs 0x02c3402c
02c33ff4  add x8,x8,x10, LSL #0x3
02c33ff8  add w9,w10,#0x1
02c33ffc  str w9,[x0, #0x18]
02c34000  str x20,[x8, #0x20]
02c34004  b 0x02c34040
02c34008  cbz x0,0x02c340a0
02c3400c  mov w1,w21
02c34010  mov x2,xzr
02c34014  bl 0x02c7cce0
02c34018  tbnz w0,#0x0,0x02c33fbc
02c3401c  ldp x20,x19,[sp, #0x20]
02c34020  ldp x22,x21,[sp, #0x10]
02c34024  ldr x30,[sp], #0x30
02c34028  ret
02c3402c  ldr x8,[x9, #0x20]
02c34030  mov x1,x20
02c34034  ldr x8,[x8, #0xc0]
02c34038  ldr x2,[x8, #0x70]
02c3403c  bl 0x045c1598
02c34040  mov x0,x19
02c34044  bl 0x02c33604
02c34048  adrp x19,0x625b000
02c3404c  ldrb w8,[x19, #0xa57]
02c34050  cbnz w8,0x02c34068
02c34054  adrp x0,0x5e5d000
02c34058  ldr x0,[x0, #0xd70]
02c3405c  bl 0x029f5a50
02c34060  mov w8,#0x1
02c34064  strb w8,[x19, #0xa57]
02c34068  adrp x8,0x5e5d000
02c3406c  ldr x8,[x8, #0xd70]
02c34070  ldr x8,[x8]
02c34074  ldr x8,[x8, #0xb8]
02c34078  ldr x0,[x8]
02c3407c  cbz x0,0x02c340a0
02c34080  ldp x20,x19,[sp, #0x20]
02c34084  fmov s0,0x3f800000
02c34088  ldp x22,x21,[sp, #0x10]
02c3408c  mov w1,#0x9
02c34090  mov x2,xzr
02c34094  mov x3,xzr
02c34098  ldr x30,[sp], #0x30
02c3409c  b 0x02c1f10c
02c340a0  bl 0x029f5cfc
