02c57d68  str x30,[sp, #-0x20]!
02c57d6c  stp x20,x19,[sp, #0x10]
02c57d70  mov x19,x0
02c57d74  bl 0x02c56b28
02c57d78  mov w20,#0x1
02c57d7c  mov x0,xzr
02c57d80  strb w20,[x19, #0x75]
02c57d84  bl 0x02c0faf8
02c57d88  ldrb w8,[x19, #0x77]
02c57d8c  cbz w8,0x02c57da0
02c57d90  mov x0,x19
02c57d94  mov w1,#0x3
02c57d98  bl 0x02c577f8
02c57d9c  b 0x02c57da4
02c57da0  strb w20,[x19, #0x76]
02c57da4  ldp x20,x19,[sp, #0x10]
02c57da8  mov w0,#0x1
02c57dac  ldr x30,[sp], #0x20
02c57db0  ret
