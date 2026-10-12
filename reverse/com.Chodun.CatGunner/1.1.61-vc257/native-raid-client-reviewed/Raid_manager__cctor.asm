02c59f38  sub sp,sp,#0x60
02c59f3c  str x30,[sp, #0x20]
02c59f40  stp x24,x23,[sp, #0x30]
02c59f44  stp x22,x21,[sp, #0x40]
02c59f48  stp x20,x19,[sp, #0x50]
02c59f4c  adrp x20,0x5e5e000
02c59f50  adrp x23,0x5e63000
02c59f54  adrp x24,0x625c000
02c59f58  adrp x19,0x5e63000
02c59f5c  adrp x22,0x5e5d000
02c59f60  adrp x21,0x5e63000
02c59f64  ldr x20,[x20, #0x70]
02c59f68  ldr x23,[x23, #0x740]
02c59f6c  ldr x19,[x19, #0x748]
02c59f70  ldrb w8,[x24, #0x1d0]
02c59f74  ldr x22,[x22, #0x790]
02c59f78  ldr x21,[x21, #0x750]
02c59f7c  tbnz w8,#0x0,0x02c59fc4
02c59f80  adrp x0,0x5e5d000
02c59f84  ldr x0,[x0, #0x790]
02c59f88  bl 0x029f5a50
02c59f8c  adrp x0,0x5e63000
02c59f90  ldr x0,[x0, #0x748]
02c59f94  bl 0x029f5a50
02c59f98  adrp x0,0x5e63000
02c59f9c  ldr x0,[x0, #0x740]
02c59fa0  bl 0x029f5a50
02c59fa4  adrp x0,0x5e5e000
02c59fa8  ldr x0,[x0, #0x70]
02c59fac  bl 0x029f5a50
02c59fb0  adrp x0,0x5e63000
02c59fb4  ldr x0,[x0, #0x750]
02c59fb8  bl 0x029f5a50
02c59fbc  mov w8,#0x1
02c59fc0  strb w8,[x24, #0x1d0]
02c59fc4  mov w0,#0x9680
02c59fc8  mov x8,sp
02c59fcc  mov x1,xzr
02c59fd0  movk w0,#0x98, LSL #16
02c59fd4  bl 0x046544b8
02c59fd8  ldr x8,[x20]
02c59fdc  ldp q0,q1,[sp]
02c59fe0  mov x1,xzr
02c59fe4  ldr x9,[x8, #0xb8]
02c59fe8  stur q0,[x9, #0x8]
02c59fec  stur q1,[x9, #0x18]
02c59ff0  ldr x8,[x8, #0xb8]
02c59ff4  add x0,x8,#0x8
02c59ff8  bl 0x029f59f4
02c59ffc  ldr x0,[x23]
02c5a000  bl 0x029f5cec
02c5a004  ldr x1,[x19]
02c5a008  mov x19,x0
02c5a00c  bl 0x044bd82c
02c5a010  ldr x8,[x20]
02c5a014  mov x1,x19
02c5a018  ldr x0,[x8, #0xb8]
02c5a01c  str x19,[x0, #0x28]!
02c5a020  bl 0x029f59f4
02c5a024  ldr x0,[x22]
02c5a028  mov w1,#0x3
02c5a02c  bl 0x029f5b40
02c5a030  ldr x1,[x21]
02c5a034  mov x2,xzr
02c5a038  mov x19,x0
02c5a03c  bl 0x047779e0
02c5a040  ldr x8,[x20]
02c5a044  mov x1,x19
02c5a048  ldr x0,[x8, #0xb8]
02c5a04c  str x19,[x0, #0x30]!
02c5a050  bl 0x029f59f4
02c5a054  ldp x20,x19,[sp, #0x50]
02c5a058  ldr x30,[sp, #0x20]
02c5a05c  ldp x22,x21,[sp, #0x40]
02c5a060  ldp x24,x23,[sp, #0x30]
02c5a064  add sp,sp,#0x60
02c5a068  ret
