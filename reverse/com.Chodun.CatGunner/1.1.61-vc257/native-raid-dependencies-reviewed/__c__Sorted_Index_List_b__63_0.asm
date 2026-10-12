02c5a0dc  str x30,[sp, #-0x20]!
02c5a0e0  stp x20,x19,[sp, #0x10]
02c5a0e4  mov x20,x2
02c5a0e8  mov x19,x1
02c5a0ec  add x0,x1,#0x8
02c5a0f0  add x1,x2,#0x8
02c5a0f4  mov x2,xzr
02c5a0f8  bl 0x0465947c
02c5a0fc  tbz w0,#0x0,0x02c5a128
02c5a100  add x0,x19,#0x8
02c5a104  add x1,x20,#0x8
02c5a108  mov x2,xzr
02c5a10c  bl 0x04659720
02c5a110  ldp x20,x19,[sp, #0x10]
02c5a114  mov w8,#0xffffffff
02c5a118  tst w0,#0x1
02c5a11c  cneg w0,w8,eq
02c5a120  ldr x30,[sp], #0x20
02c5a124  ret
02c5a128  ldr w1,[x20]
02c5a12c  mov x0,x19
02c5a130  mov x2,xzr
02c5a134  ldp x20,x19,[sp, #0x10]
02c5a138  ldr x30,[sp], #0x20
02c5a13c  b 0x0484e630
