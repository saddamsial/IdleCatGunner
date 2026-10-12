02c60d54  stp x30,x19,[sp, #-0x10]!
02c60d58  mov x19,x0
02c60d5c  bl 0x02c60a20
02c60d60  mov x0,x19
02c60d64  mov x1,xzr
02c60d68  bl 0x057dc0f8
02c60d6c  cbz x0,0x02c60d88
02c60d70  mov x1,xzr
02c60d74  bl 0x057ef578
02c60d78  stp s0,s1,[x19, #0x9c]
02c60d7c  str s2,[x19, #0xa4]
02c60d80  ldp x30,x19,[sp], #0x10
02c60d84  ret
02c60d88  bl 0x029f5cfc
