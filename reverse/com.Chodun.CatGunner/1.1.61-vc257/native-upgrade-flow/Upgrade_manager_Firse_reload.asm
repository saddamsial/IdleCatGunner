02cb245c  stp x30,x23,[sp, #-0x30]!
02cb2460  stp x22,x21,[sp, #0x10]
02cb2464  stp x20,x19,[sp, #0x20]
02cb2468  mov x19,x1
02cb246c  mov x20,x0
02cb2470  mov x21,xzr
02cb2474  add x22,x1,#0x20
02cb2478  ldr x8,[x20, #0x20]
02cb247c  cbz x8,0x02cb24d4
02cb2480  ldr w9,[x8, #0x18]
02cb2484  cmp x21,x9
02cb2488  b.cs 0x02cb24d8
02cb248c  cbz x19,0x02cb24d4
02cb2490  ldr w9,[x19, #0x18]
02cb2494  cmp x21,x9
02cb2498  b.cs 0x02cb24d8
02cb249c  add x8,x8,x21, LSL #0x3
02cb24a0  ldr w0,[x22, x21, LSL #0x2]
02cb24a4  mov x1,xzr
02cb24a8  ldr x23,[x8, #0x20]
02cb24ac  bl 0x02b1e5c8
02cb24b0  cbz x23,0x02cb24d4
02cb24b4  add x21,x21,#0x1
02cb24b8  stp x0,x1,[x23, #0x18]
02cb24bc  cmp x21,#0x3
02cb24c0  b.ne 0x02cb2478
02cb24c4  ldp x20,x19,[sp, #0x20]
02cb24c8  ldp x22,x21,[sp, #0x10]
02cb24cc  ldp x30,x23,[sp], #0x30
02cb24d0  ret
02cb24d4  bl 0x029f5cfc
02cb24d8  bl 0x029f5d04
