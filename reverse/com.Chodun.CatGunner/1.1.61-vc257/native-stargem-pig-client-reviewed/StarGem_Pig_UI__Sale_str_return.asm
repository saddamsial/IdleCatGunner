02ca244c  sub sp,sp,#0x30
02ca2450  stp x30,x21,[sp, #0x10]
02ca2454  stp x20,x19,[sp, #0x20]
02ca2458  adrp x21,0x625c000
02ca245c  adrp x20,0x5e64000
02ca2460  mov w19,w0
02ca2464  ldrb w8,[x21, #0x490]
02ca2468  ldr x20,[x20, #0x8b8]
02ca246c  tbnz w8,#0x0,0x02ca2490
02ca2470  adrp x0,0x5e64000
02ca2474  ldr x0,[x0, #0x8b8]
02ca2478  bl 0x029f5a50
02ca247c  adrp x0,0x5e64000
02ca2480  ldr x0,[x0, #0x8e8]
02ca2484  bl 0x029f5a50
02ca2488  mov w8,#0x1
02ca248c  strb w8,[x21, #0x490]
02ca2490  ldr x0,[x20]
02ca2494  cmp w19,#0x3
02ca2498  mov w8,#0x3
02ca249c  csel w8,w19,w8,lt
02ca24a0  ldr w9,[x0, #0xe4]
02ca24a4  cmp w8,#0x1
02ca24a8  csinc w19,w8,wzr,gt
02ca24ac  cbnz w9,0x02ca24b8
02ca24b0  bl 0x029f5bd0
02ca24b4  ldr x0,[x20]
02ca24b8  ldr x8,[x0, #0xb8]
02ca24bc  ldr x8,[x8, #0x8]
02ca24c0  cbz x8,0x02ca2520
02ca24c4  ldr w10,[x8, #0x18]
02ca24c8  sub w9,w19,#0x1
02ca24cc  cmp w9,w10
02ca24d0  b.cs 0x02ca2524
02ca24d4  add x8,x8,w9, UXTW  #0x2
02ca24d8  adrp x9,0x5e58000
02ca24dc  adrp x19,0x5e64000
02ca24e0  ldr x9,[x9, #0xa10]
02ca24e4  add x1,sp,#0xc
02ca24e8  ldr w8,[x8, #0x20]
02ca24ec  ldr x19,[x19, #0x8e8]
02ca24f0  ldr x0,[x9, #0x48]
02ca24f4  str w8,[sp, #0xc]
02ca24f8  bl 0x029f5bd8
02ca24fc  ldr x8,[x19]
02ca2500  mov x1,x0
02ca2504  mov x2,xzr
02ca2508  mov x0,x8
02ca250c  bl 0x046b6c0c
02ca2510  ldp x20,x19,[sp, #0x20]
02ca2514  ldp x30,x21,[sp, #0x10]
02ca2518  add sp,sp,#0x30
02ca251c  ret
02ca2520  bl 0x029f5cfc
02ca2524  bl 0x029f5d04
