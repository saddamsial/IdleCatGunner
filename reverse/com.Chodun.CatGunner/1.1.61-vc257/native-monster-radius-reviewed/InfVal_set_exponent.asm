04654f68  sub sp,sp,#0x30
04654f6c  stp x30,x21,[sp, #0x10]
04654f70  stp x20,x19,[sp, #0x20]
04654f74  adrp x21,0x6260000
04654f78  mov w19,w1
04654f7c  mov x20,x0
04654f80  ldrb w8,[x21, #0xa1f]
04654f84  tbnz w8,#0x0,0x04654f9c
04654f88  adrp x0,0x5e58000
04654f8c  ldr x0,[x0, #0xfe0]
04654f90  bl 0x029f5a50
04654f94  mov w8,#0x1
04654f98  strb w8,[x21, #0xa1f]
04654f9c  ldr w8,[x20, #0x8]
04654fa0  stp xzr,xzr,[sp]
04654fa4  subs w21,w19,w8
04654fa8  b.eq 0x04655018
04654fac  mov x0,x20
04654fb0  bl 0x04654ee0
04654fb4  cmp w21,w0
04654fb8  b.ge 0x04654fd8
04654fbc  ldr w8,[x20, #0x8]
04654fc0  ldr q0,[x20, #0x10]
04654fc4  mov x0,sp
04654fc8  sub w1,w8,w19
04654fcc  str q0,[sp]
04654fd0  bl 0x046589dc
04654fd4  b 0x04654ffc
04654fd8  adrp x8,0x5e58000
04654fdc  ldr x8,[x8, #0xfe0]
04654fe0  ldr x0,[x8]
04654fe4  ldr w8,[x0, #0xe4]
04654fe8  cbnz w8,0x04654ff0
04654fec  bl 0x029f5bd0
04654ff0  mov w0,wzr
04654ff4  mov x1,xzr
04654ff8  bl 0x04d91088
04654ffc  mov x2,x0
04655000  mov x3,x1
04655004  mov x0,x20
04655008  mov x1,x2
0465500c  mov x2,x3
04655010  bl 0x04654cd0
04655014  str w19,[x20, #0x8]
04655018  ldp x20,x19,[sp, #0x20]
0465501c  ldp x30,x21,[sp, #0x10]
04655020  add sp,sp,#0x30
04655024  ret
