02b9c18c  stp x30,x19,[sp, #-0x10]!
02b9c190  mov x1,xzr
02b9c194  mov x19,x0
02b9c198  strb wzr,[x0, #0x38]
02b9c19c  bl 0x057dc0f8
02b9c1a0  cbz x0,0x02b9c1b8
02b9c1a4  ldp s0,s1,[x19, #0x3c]
02b9c1a8  mov x1,xzr
02b9c1ac  ldr s2,[x19, #0x44]
02b9c1b0  ldp x30,x19,[sp], #0x10
02b9c1b4  b 0x057ee3b4
02b9c1b8  bl 0x029f5cfc
