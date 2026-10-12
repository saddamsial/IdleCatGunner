02b9b2f0  stp x30,x19,[sp, #-0x10]!
02b9b2f4  ldrb w8,[x0, #0x4c]
02b9b2f8  cbnz w8,0x02b9b370
02b9b2fc  mov x1,xzr
02b9b300  mov x19,x0
02b9b304  bl 0x057dc0f8
02b9b308  cbz x0,0x02b9b378
02b9b30c  mov x1,xzr
02b9b310  bl 0x057ef578
02b9b314  mov x0,x19
02b9b318  mov x1,xzr
02b9b31c  str s0,[x19, #0x34]
02b9b320  bl 0x057dc0f8
02b9b324  cbz x0,0x02b9b378
02b9b328  mov x1,xzr
02b9b32c  bl 0x057ef578
02b9b330  mov x0,x19
02b9b334  mov x1,xzr
02b9b338  str s1,[x19, #0x38]
02b9b33c  bl 0x057dc0f8
02b9b340  cbz x0,0x02b9b378
02b9b344  mov x1,xzr
02b9b348  bl 0x057ef578
02b9b34c  ldp s1,s3,[x19, #0x34]
02b9b350  mov w8,#0x1
02b9b354  ldr s0,[x19, #0x28]
02b9b358  strb w8,[x19, #0x4c]
02b9b35c  fmul s1,s1,s0
02b9b360  fmul s3,s0,s3
02b9b364  fmul s0,s2,s0
02b9b368  stp s2,s1,[x19, #0x3c]
02b9b36c  stp s3,s0,[x19, #0x44]
02b9b370  ldp x30,x19,[sp], #0x10
02b9b374  ret
02b9b378  bl 0x029f5cfc
