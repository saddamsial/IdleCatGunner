02b9bd70  stp x30,x19,[sp, #-0x10]!
02b9bd74  mov x1,xzr
02b9bd78  mov x19,x0
02b9bd7c  strb wzr,[x0, #0x3c]
02b9bd80  bl 0x057dc0f8
02b9bd84  cbz x0,0x02b9bd9c
02b9bd88  ldp s0,s1,[x19, #0x40]
02b9bd8c  mov x1,xzr
02b9bd90  ldr s2,[x19, #0x48]
02b9bd94  ldp x30,x19,[sp], #0x10
02b9bd98  b 0x057ef654
02b9bd9c  bl 0x029f5cfc
