02c4d6bc  sub sp,sp,#0xd0
02c4d6c0  stp x30,x23,[sp, #0xa0]
02c4d6c4  stp x22,x21,[sp, #0xb0]
02c4d6c8  stp x20,x19,[sp, #0xc0]
02c4d6cc  movi v0.2D,#0x0
02c4d6d0  ldr x22,[x0, #0x58]
02c4d6d4  stp q0,q0,[sp, #0x60]
02c4d6d8  stp q0,q0,[sp, #0x80]
02c4d6dc  cbz x22,0x02c4d788
02c4d6e0  mov x19,x0
02c4d6e4  mov w20,#0x1
02c4d6e8  mov w21,#0x40
02c4d6ec  ldrsw x8,[x22, #0x18]
02c4d6f0  cmp x20,x8
02c4d6f4  b.ge 0x02c4d78c
02c4d6f8  add x8,sp,#0x40
02c4d6fc  mov w0,#0x3
02c4d700  mov x1,xzr
02c4d704  bl 0x046544b8
02c4d708  ldp q0,q1,[sp, #0x40]
02c4d70c  sub x23,x20,#0x1
02c4d710  stp q0,q1,[sp, #0x80]
02c4d714  ldr w8,[x22, #0x18]
02c4d718  cmp x23,x8
02c4d71c  b.cs 0x02c4d7a0
02c4d720  add x20,x22,x21
02c4d724  add x8,sp,#0x20
02c4d728  add x1,sp,#0x80
02c4d72c  sub x0,x20,#0x20
02c4d730  mov x2,xzr
02c4d734  bl 0x04658538
02c4d738  ldp q0,q1,[sp, #0x20]
02c4d73c  mov x8,sp
02c4d740  add x0,sp,#0x60
02c4d744  mov w1,#0x2
02c4d748  mov x2,xzr
02c4d74c  stp q0,q1,[sp, #0x60]
02c4d750  bl 0x04658464
02c4d754  ldr w8,[x22, #0x18]
02c4d758  add x23,x23,#0x1
02c4d75c  cmp x23,x8
02c4d760  b.cs 0x02c4d7a0
02c4d764  ldp q1,q0,[sp]
02c4d768  mov x0,x20
02c4d76c  mov x1,xzr
02c4d770  add x21,x21,#0x20
02c4d774  stp q1,q0,[x20]
02c4d778  bl 0x029f59f4
02c4d77c  ldr x22,[x19, #0x58]
02c4d780  add x20,x23,#0x1
02c4d784  cbnz x22,0x02c4d6ec
02c4d788  bl 0x029f5cfc
02c4d78c  ldp x20,x19,[sp, #0xc0]
02c4d790  ldp x22,x21,[sp, #0xb0]
02c4d794  ldp x30,x23,[sp, #0xa0]
02c4d798  add sp,sp,#0xd0
02c4d79c  ret
02c4d7a0  bl 0x029f5d04
