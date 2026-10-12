02c30f64  str x30,[sp, #-0x30]!
02c30f68  stp x22,x21,[sp, #0x10]
02c30f6c  stp x20,x19,[sp, #0x20]
02c30f70  adrp x21,0x625c000
02c30f74  mov x20,x1
02c30f78  mov x19,x0
02c30f7c  ldrb w8,[x21, #0x3c]
02c30f80  tbnz w8,#0x0,0x02c30f98
02c30f84  adrp x0,0x5e5d000
02c30f88  ldr x0,[x0, #0xd28]
02c30f8c  bl 0x029f5a50
02c30f90  mov w8,#0x1
02c30f94  strb w8,[x21, #0x3c]
02c30f98  mov x21,x19
02c30f9c  mov x1,x20
02c30fa0  str x20,[x21, #0x20]!
02c30fa4  mov x0,x21
02c30fa8  bl 0x029f59f4
02c30fac  ldr x8,[x21, #0x8]
02c30fb0  cbz x8,0x02c31004
02c30fb4  adrp x21,0x5e5d000
02c30fb8  mov x22,xzr
02c30fbc  ldr x21,[x21, #0xd28]
02c30fc0  ldr w9,[x8, #0x18]
02c30fc4  cmp w22,w9
02c30fc8  b.ge 0x02c31008
02c30fcc  cmp w22,w9
02c30fd0  b.cs 0x02c31080
02c30fd4  cbz x20,0x02c31004
02c30fd8  add x8,x8,x22, LSL #0x3
02c30fdc  ldr x0,[x8, #0x20]
02c30fe0  cbz x0,0x02c31004
02c30fe4  ldr w8,[x20, #0x10]
02c30fe8  mov x2,xzr
02c30fec  cmp w22,w8
02c30ff0  cset w1,eq
02c30ff4  bl 0x057dff3c
02c30ff8  ldr x8,[x19, #0x28]
02c30ffc  add x22,x22,#0x1
02c31000  cbnz x8,0x02c30fc0
02c31004  bl 0x029f5cfc
02c31008  cbz x20,0x02c31004
02c3100c  ldr x0,[x21]
02c31010  ldr x21,[x19, #0x30]
02c31014  ldr w22,[x20, #0x14]
02c31018  ldr w8,[x0, #0xe4]
02c3101c  cbnz w8,0x02c31024
02c31020  bl 0x029f5bd0
02c31024  mov w0,w22
02c31028  mov x1,xzr
02c3102c  bl 0x02c2ce84
02c31030  cbz x21,0x02c31004
02c31034  mov x1,x0
02c31038  mov x0,x21
02c3103c  mov x2,xzr
02c31040  bl 0x058d34cc
02c31044  ldr x8,[x19, #0x40]
02c31048  cbz x8,0x02c31004
02c3104c  ldrsw x9,[x20, #0x14]
02c31050  ldr w10,[x8, #0x18]
02c31054  cmp w9,w10
02c31058  b.cs 0x02c31080
02c3105c  ldr x0,[x19, #0x38]
02c31060  cbz x0,0x02c31004
02c31064  add x8,x8,x9, LSL #0x3
02c31068  ldp x20,x19,[sp, #0x20]
02c3106c  ldp x22,x21,[sp, #0x10]
02c31070  mov x2,xzr
02c31074  ldr x1,[x8, #0x20]
02c31078  ldr x30,[sp], #0x30
02c3107c  b 0x058d34cc
02c31080  bl 0x029f5d04
