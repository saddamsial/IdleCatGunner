0465b348  sub sp,sp,#0x90
0465b34c  str x30,[sp, #0x70]
0465b350  stp x20,x19,[sp, #0x80]
0465b354  mov x20,x0
0465b358  add x8,sp,#0x58
0465b35c  mov x0,x1
0465b360  mov x19,x2
0465b364  bl 0x0465b3b4
0465b368  add x8,sp,#0x40
0465b36c  mov x0,x19
0465b370  bl 0x0465a75c
0465b374  ldur q0,[sp, #0x58]
0465b378  ldr x8,[sp, #0x68]
0465b37c  add x1,sp,#0x20
0465b380  ldr q1,[sp, #0x40]
0465b384  ldr x9,[sp, #0x50]
0465b388  mov x2,sp
0465b38c  mov x0,x20
0465b390  str q0,[sp, #0x20]
0465b394  str x8,[sp, #0x30]
0465b398  str q1,[sp]
0465b39c  str x9,[sp, #0x10]
0465b3a0  bl 0x0465a9a0
0465b3a4  ldp x20,x19,[sp, #0x80]
0465b3a8  ldr x30,[sp, #0x70]
0465b3ac  add sp,sp,#0x90
0465b3b0  ret
