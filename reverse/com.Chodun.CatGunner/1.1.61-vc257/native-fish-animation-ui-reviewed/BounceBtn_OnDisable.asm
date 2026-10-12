02b9b474  stp x30,x19,[sp, #-0x10]!
02b9b478  ldr s0,[x0, #0x34]
02b9b47c  fcmp s0,#0.0
02b9b480  b.ne 0x02b9b48c
02b9b484  ldp x30,x19,[sp], #0x10
02b9b488  ret
02b9b48c  mov x1,xzr
02b9b490  mov x19,x0
02b9b494  bl 0x057dc0f8
02b9b498  cbz x0,0x02b9b4b0
02b9b49c  ldp s0,s1,[x19, #0x34]
02b9b4a0  mov x1,xzr
02b9b4a4  ldr s2,[x19, #0x3c]
02b9b4a8  ldp x30,x19,[sp], #0x10
02b9b4ac  b 0x057ef654
02b9b4b0  bl 0x029f5cfc
