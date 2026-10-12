02c6b210  stp x30,x19,[sp, #-0x10]!
02c6b214  mov x1,xzr
02c6b218  mov x19,x0
02c6b21c  bl 0x057dc0f8
02c6b220  cbz x0,0x02c6b23c
02c6b224  mov x1,xzr
02c6b228  bl 0x057ef578
02c6b22c  stp s0,s1,[x19, #0x38]
02c6b230  str s2,[x19, #0x40]
02c6b234  ldp x30,x19,[sp], #0x10
02c6b238  ret
02c6b23c  bl 0x029f5cfc
