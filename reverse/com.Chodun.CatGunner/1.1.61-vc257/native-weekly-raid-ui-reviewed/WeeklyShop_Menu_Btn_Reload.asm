02ca70d4  stp x30,x19,[sp, #-0x10]!
02ca70d8  ldr x19,[x0, #0x48]
02ca70dc  bl 0x02ca7008
02ca70e0  cbz x19,0x02ca70fc
02ca70e4  mov w8,#0x1
02ca70e8  mov x2,xzr
02ca70ec  bic w1,w8,w0
02ca70f0  mov x0,x19
02ca70f4  ldp x30,x19,[sp], #0x10
02ca70f8  b 0x057dff3c
02ca70fc  bl 0x029f5cfc
