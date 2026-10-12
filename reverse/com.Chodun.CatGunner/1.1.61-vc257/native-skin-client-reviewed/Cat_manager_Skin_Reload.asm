02c44944  stp x30,x21,[sp, #-0x20]!
02c44948  stp x20,x19,[sp, #0x10]
02c4494c  adrp x20,0x625c000
02c44950  mov x19,x0
02c44954  ldrb w8,[x20, #0xcb]
02c44958  tbnz w8,#0x0,0x02c44970
02c4495c  adrp x0,0x5e59000
02c44960  ldr x0,[x0, #0x1c0]
02c44964  bl 0x029f5a50
02c44968  mov w8,#0x1
02c4496c  strb w8,[x20, #0xcb]
02c44970  ldr x8,[x19, #0x20]
02c44974  cbz x8,0x02c449b8
02c44978  adrp x20,0x5e59000
02c4497c  mov x21,xzr
02c44980  ldr x20,[x20, #0x1c0]
02c44984  ldr w9,[x8, #0x18]
02c44988  cmp w21,w9
02c4498c  b.ge 0x02c449bc
02c44990  cmp w21,w9
02c44994  b.cs 0x02c44a08
02c44998  add x8,x8,x21, LSL #0x3
02c4499c  ldr x0,[x8, #0x20]
02c449a0  cbz x0,0x02c449b8
02c449a4  mov x1,xzr
02c449a8  bl 0x02c38d44
02c449ac  ldr x8,[x19, #0x20]
02c449b0  add x21,x21,#0x1
02c449b4  cbnz x8,0x02c44984
02c449b8  bl 0x029f5cfc
02c449bc  ldr x0,[x20]
02c449c0  ldr x20,[x19, #0x28]
02c449c4  ldr w8,[x0, #0xe4]
02c449c8  cbnz w8,0x02c449d0
02c449cc  bl 0x029f5bd0
02c449d0  mov x0,x20
02c449d4  mov x1,xzr
02c449d8  mov x2,xzr
02c449dc  bl 0x057dfa70
02c449e0  tbz w0,#0x0,0x02c449fc
02c449e4  ldr x0,[x19, #0x28]
02c449e8  cbz x0,0x02c449b8
02c449ec  ldp x20,x19,[sp, #0x10]
02c449f0  mov x1,xzr
02c449f4  ldp x30,x21,[sp], #0x20
02c449f8  b 0x02c38d44
02c449fc  ldp x20,x19,[sp, #0x10]
02c44a00  ldp x30,x21,[sp], #0x20
02c44a04  ret
02c44a08  bl 0x029f5d04
