02b7e718  sub sp,sp,#0xc0
02b7e71c  stp x30,x21,[sp, #0xa0]
02b7e720  stp x20,x19,[sp, #0xb0]
02b7e724  adrp x21,0x625b000
02b7e728  adrp x20,0x5e5d000
02b7e72c  mov x19,x0
02b7e730  ldrb w8,[x21, #0x8b5]
02b7e734  ldr x20,[x20, #0x338]
02b7e738  tbnz w8,#0x0,0x02b7e750
02b7e73c  adrp x0,0x5e5d000
02b7e740  ldr x0,[x0, #0x338]
02b7e744  bl 0x029f5a50
02b7e748  mov w8,#0x1
02b7e74c  strb w8,[x21, #0x8b5]
02b7e750  ldr x0,[x20]
02b7e754  ldp q0,q1,[x19]
02b7e758  ldr w8,[x0, #0xe4]
02b7e75c  stp q0,q1,[sp, #0x80]
02b7e760  cbnz w8,0x02b7e768
02b7e764  bl 0x029f5bd0
02b7e768  ldp q0,q1,[sp, #0x80]
02b7e76c  add x8,sp,#0x60
02b7e770  add x0,sp,#0x40
02b7e774  stp q0,q1,[sp, #0x40]
02b7e778  bl 0x02b7e1cc
02b7e77c  ldp q1,q0,[sp, #0x60]
02b7e780  mov x1,x19
02b7e784  mov x2,xzr
02b7e788  stp q1,q0,[x19]
02b7e78c  ldr x8,[x20]
02b7e790  ldr x9,[x8, #0xb8]
02b7e794  add x8,sp,#0x20
02b7e798  add x0,x9,#0x30
02b7e79c  bl 0x04658020
02b7e7a0  ldr x8,[x20]
02b7e7a4  ldp q0,q1,[sp, #0x20]
02b7e7a8  mov x1,xzr
02b7e7ac  ldr x9,[x8, #0xb8]
02b7e7b0  stp q0,q1,[x9, #0x30]
02b7e7b4  ldr x8,[x8, #0xb8]
02b7e7b8  add x0,x8,#0x30
02b7e7bc  bl 0x029f59f4
02b7e7c0  ldr x8,[x20]
02b7e7c4  mov x1,x19
02b7e7c8  mov x2,xzr
02b7e7cc  ldr x9,[x8, #0xb8]
02b7e7d0  mov x8,sp
02b7e7d4  add x0,x9,#0x50
02b7e7d8  bl 0x04658020
02b7e7dc  ldr x8,[x20]
02b7e7e0  ldp q0,q1,[sp]
02b7e7e4  mov x1,xzr
02b7e7e8  ldr x9,[x8, #0xb8]
02b7e7ec  stp q0,q1,[x9, #0x50]
02b7e7f0  ldr x8,[x8, #0xb8]
02b7e7f4  add x0,x8,#0x50
02b7e7f8  bl 0x029f59f4
02b7e7fc  ldr x8,[x20]
02b7e800  ldr x8,[x8, #0xb8]
02b7e804  ldr x8,[x8, #0x8]
02b7e808  cbz x8,0x02b7e81c
02b7e80c  ldr x9,[x8, #0x18]
02b7e810  ldr x0,[x8, #0x40]
02b7e814  ldr x1,[x8, #0x28]
02b7e818  blr x9
02b7e81c  ldp x20,x19,[sp, #0xb0]
02b7e820  ldp x30,x21,[sp, #0xa0]
02b7e824  add sp,sp,#0xc0
02b7e828  ret
