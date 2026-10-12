02c61e88  stp x30,x19,[sp, #-0x10]!
02c61e8c  mov x19,x0
02c61e90  bl 0x02c60fe0
02c61e94  mov x0,x19
02c61e98  mov x1,xzr
02c61e9c  bl 0x057dc0f8
02c61ea0  cbz x0,0x02c61eb8
02c61ea4  ldp s0,s1,[x19, #0x9c]
02c61ea8  mov x1,xzr
02c61eac  ldr s2,[x19, #0xa4]
02c61eb0  ldp x30,x19,[sp], #0x10
02c61eb4  b 0x057ef654
02c61eb8  bl 0x029f5cfc
