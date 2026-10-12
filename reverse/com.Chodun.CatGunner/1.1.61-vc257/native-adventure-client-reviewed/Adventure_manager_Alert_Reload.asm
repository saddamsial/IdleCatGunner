02c2c974  stp x30,x21,[sp, #-0x20]!
02c2c978  stp x20,x19,[sp, #0x10]
02c2c97c  adrp x21,0x625b000
02c2c980  adrp x20,0x5e59000
02c2c984  mov x19,x0
02c2c988  ldrb w8,[x21, #0xffa]
02c2c98c  ldr x20,[x20, #0x1c0]
02c2c990  tbnz w8,#0x0,0x02c2c9a8
02c2c994  adrp x0,0x5e59000
02c2c998  ldr x0,[x0, #0x1c0]
02c2c99c  bl 0x029f5a50
02c2c9a0  mov w8,#0x1
02c2c9a4  strb w8,[x21, #0xffa]
02c2c9a8  ldr x0,[x20]
02c2c9ac  ldr x20,[x19, #0x50]
02c2c9b0  ldr w8,[x0, #0xe4]
02c2c9b4  cbnz w8,0x02c2c9bc
02c2c9b8  bl 0x029f5bd0
02c2c9bc  mov x0,x20
02c2c9c0  mov x1,xzr
02c2c9c4  mov x2,xzr
02c2c9c8  bl 0x057dfa70
02c2c9cc  tbz w0,#0x0,0x02c2c9f8
02c2c9d0  ldr x20,[x19, #0x50]
02c2c9d4  mov x0,x19
02c2c9d8  bl 0x02c2ca08
02c2c9dc  cbz x20,0x02c2ca04
02c2c9e0  and w1,w0,#0x1
02c2c9e4  mov x0,x20
02c2c9e8  mov x2,xzr
02c2c9ec  ldp x20,x19,[sp, #0x10]
02c2c9f0  ldp x30,x21,[sp], #0x20
02c2c9f4  b 0x057dff3c
02c2c9f8  ldp x20,x19,[sp, #0x10]
02c2c9fc  ldp x30,x21,[sp], #0x20
02c2ca00  ret
02c2ca04  bl 0x029f5cfc
