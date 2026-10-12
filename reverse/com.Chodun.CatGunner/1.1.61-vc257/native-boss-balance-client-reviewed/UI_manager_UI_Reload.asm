02c2a560  stp x30,x21,[sp, #-0x20]!
02c2a564  stp x20,x19,[sp, #0x10]
02c2a568  ldr x8,[x0, #0x38]
02c2a56c  str w1,[x0, #0x20]
02c2a570  cbz x8,0x02c2a5c8
02c2a574  mov x19,x0
02c2a578  mov x20,xzr
02c2a57c  mov w21,w1
02c2a580  ldr w9,[x8, #0x18]
02c2a584  cmp w20,w9
02c2a588  b.ge 0x02c2a5cc
02c2a58c  cmp w20,w9
02c2a590  b.cs 0x02c2a5d8
02c2a594  add x8,x8,x20, LSL #0x3
02c2a598  ldr x0,[x8, #0x20]
02c2a59c  cbz x0,0x02c2a5c8
02c2a5a0  mov x1,xzr
02c2a5a4  bl 0x057e0dc0
02c2a5a8  cbz x0,0x02c2a5c8
02c2a5ac  cmp w21,w20
02c2a5b0  mov x2,xzr
02c2a5b4  cset w1,eq
02c2a5b8  bl 0x057dff3c
02c2a5bc  ldr x8,[x19, #0x38]
02c2a5c0  add x20,x20,#0x1
02c2a5c4  cbnz x8,0x02c2a580
02c2a5c8  bl 0x029f5cfc
02c2a5cc  ldp x20,x19,[sp, #0x10]
02c2a5d0  ldp x30,x21,[sp], #0x20
02c2a5d4  ret
02c2a5d8  bl 0x029f5d04
