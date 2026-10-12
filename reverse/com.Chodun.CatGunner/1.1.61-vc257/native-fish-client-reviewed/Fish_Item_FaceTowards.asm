02c616f4  str d8,[sp, #-0x20]!
02c616f8  stp x30,x19,[sp, #0x10]
02c616fc  fmov s8,s0
02c61700  mov x19,x0
02c61704  bl 0x02c60a20
02c61708  ldr x0,[x19, #0x50]
02c6170c  cbz x0,0x02c61764
02c61710  mov x1,xzr
02c61714  bl 0x057eddfc
02c61718  fabd s1,s8,s0
02c6171c  adrp x8,0x116c000
02c61720  ldr s2,[x8, #0x88]
02c61724  fcmp s1,s2
02c61728  b.pl 0x02c61738
02c6172c  ldp x30,x19,[sp, #0x10]
02c61730  ldr d8,[sp], #0x20
02c61734  ret
02c61738  fsub s0,s8,s0
02c6173c  fmov s1,0x3f800000
02c61740  mov x0,x19
02c61744  fmov s2,0xbf800000
02c61748  str wzr,[x19, #0xb8]
02c6174c  fcmp s0,#0.0
02c61750  fcsel s0,s2,s1,lt
02c61754  str s0,[x19, #0xb4]
02c61758  ldp x30,x19,[sp, #0x10]
02c6175c  ldr d8,[sp], #0x20
02c61760  b 0x02c61768
02c61764  bl 0x029f5cfc
