02c685d8  stp x30,x19,[sp, #-0x10]!
02c685dc  tbnz w1,#0x1f,0x02c68620
02c685e0  ldr x8,[x0, #0x28]
02c685e4  mov x19,x0
02c685e8  cbz x8,0x02c68620
02c685ec  ldr w9,[x8, #0x18]
02c685f0  cmp w9,w1
02c685f4  b.le 0x02c68620
02c685f8  add x8,x8,w1, UXTW  #0x2
02c685fc  ldr w8,[x8, #0x20]
02c68600  cmn w8,#0x1
02c68604  b.eq 0x02c68620
02c68608  and w2,w2,#0x1
02c6860c  mov x0,x19
02c68610  bl 0x02c6809c
02c68614  mov x0,x19
02c68618  ldp x30,x19,[sp], #0x10
02c6861c  b 0x02c679fc
02c68620  ldp x30,x19,[sp], #0x10
02c68624  ret
