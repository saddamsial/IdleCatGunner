02c615ac  stp x30,x19,[sp, #-0x10]!
02c615b0  mov x19,x0
02c615b4  bl 0x02c60fe0
02c615b8  mov x0,x19
02c615bc  mov x1,xzr
02c615c0  bl 0x057dc0f8
02c615c4  cbz x0,0x02c615dc
02c615c8  ldp s0,s1,[x19, #0x9c]
02c615cc  mov x1,xzr
02c615d0  ldr s2,[x19, #0xa4]
02c615d4  ldp x30,x19,[sp], #0x10
02c615d8  b 0x057ef654
02c615dc  bl 0x029f5cfc
