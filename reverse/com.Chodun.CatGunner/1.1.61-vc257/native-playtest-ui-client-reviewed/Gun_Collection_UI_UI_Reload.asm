02c6f754  str x30,[sp, #-0x20]!
02c6f758  stp x20,x19,[sp, #0x10]
02c6f75c  ldr x8,[x0, #0x20]
02c6f760  cbz x8,0x02c6f7a0
02c6f764  mov x19,x0
02c6f768  mov x20,xzr
02c6f76c  ldr w9,[x8, #0x18]
02c6f770  cmp w20,w9
02c6f774  b.ge 0x02c6f7a4
02c6f778  cmp w20,w9
02c6f77c  b.cs 0x02c6f7c8
02c6f780  add x8,x8,x20, LSL #0x3
02c6f784  ldr x0,[x8, #0x20]
02c6f788  cbz x0,0x02c6f7a0
02c6f78c  mov w1,w20
02c6f790  bl 0x02c6f7cc
02c6f794  ldr x8,[x19, #0x20]
02c6f798  add x20,x20,#0x1
02c6f79c  cbnz x8,0x02c6f76c
02c6f7a0  bl 0x029f5cfc
02c6f7a4  mov x0,x19
02c6f7a8  mov x1,xzr
02c6f7ac  bl 0x057dc1c8
02c6f7b0  cbz x0,0x02c6f7a0
02c6f7b4  ldp x20,x19,[sp, #0x10]
02c6f7b8  mov w1,#0x1
02c6f7bc  mov x2,xzr
02c6f7c0  ldr x30,[sp], #0x20
02c6f7c4  b 0x057dff3c
02c6f7c8  bl 0x029f5d04
