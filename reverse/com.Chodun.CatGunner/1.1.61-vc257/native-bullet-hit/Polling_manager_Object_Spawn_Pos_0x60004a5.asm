02c17e4c  str d10,[sp, #-0x30]!
02c17e50  stp d9,d8,[sp, #0x10]
02c17e54  stp x30,x19,[sp, #0x20]
02c17e58  fmov s8,s2
02c17e5c  fmov s9,s1
02c17e60  fmov s10,s0
02c17e64  bl 0x02c17d84
02c17e68  cbz x0,0x02c17eac
02c17e6c  mov x1,xzr
02c17e70  mov x19,x0
02c17e74  bl 0x057dfcf4
02c17e78  cbz x0,0x02c17eac
02c17e7c  fmov s0,s10
02c17e80  fmov s1,s9
02c17e84  mov x1,xzr
02c17e88  fmov s2,s8
02c17e8c  bl 0x057eee74
02c17e90  mov x0,x19
02c17e94  ldp x30,x19,[sp, #0x20]
02c17e98  ldp d9,d8,[sp, #0x10]
02c17e9c  mov w1,#0x1
02c17ea0  mov x2,xzr
02c17ea4  ldr d10,[sp], #0x30
02c17ea8  b 0x057dff3c
02c17eac  bl 0x029f5cfc
