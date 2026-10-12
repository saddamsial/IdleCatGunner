02cb2310  str x30,[sp, #-0x20]!
02cb2314  stp x20,x19,[sp, #0x10]
02cb2318  ldr x8,[x0, #0x20]
02cb231c  cbz x8,0x02cb2358
02cb2320  mov x19,x0
02cb2324  mov x20,xzr
02cb2328  ldr w9,[x8, #0x18]
02cb232c  cmp w20,w9
02cb2330  b.ge 0x02cb235c
02cb2334  cmp w20,w9
02cb2338  b.cs 0x02cb236c
02cb233c  add x8,x8,x20, LSL #0x3
02cb2340  ldr x0,[x8, #0x20]
02cb2344  cbz x0,0x02cb2358
02cb2348  bl 0x02cb0e4c
02cb234c  ldr x8,[x19, #0x20]
02cb2350  add x20,x20,#0x1
02cb2354  cbnz x8,0x02cb2328
02cb2358  bl 0x029f5cfc
02cb235c  strb wzr,[x19, #0x28]
02cb2360  ldp x20,x19,[sp, #0x10]
02cb2364  ldr x30,[sp], #0x20
02cb2368  ret
02cb236c  bl 0x029f5d04
