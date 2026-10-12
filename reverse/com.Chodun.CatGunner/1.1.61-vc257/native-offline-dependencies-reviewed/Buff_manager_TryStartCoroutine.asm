02c3788c  str x30,[sp, #-0x20]!
02c37890  stp x20,x19,[sp, #0x10]
02c37894  mov x20,x0
02c37898  ldr x8,[x20, #0x40]!
02c3789c  cbz x8,0x02c378ac
02c378a0  ldp x20,x19,[sp, #0x10]
02c378a4  ldr x30,[sp], #0x20
02c378a8  ret
02c378ac  mov x19,x0
02c378b0  bl 0x02c37c50
02c378b4  mov x1,x0
02c378b8  mov x0,x19
02c378bc  mov x2,xzr
02c378c0  bl 0x057e2120
02c378c4  mov x1,x0
02c378c8  mov x0,x20
02c378cc  str x1,[x19, #0x40]
02c378d0  ldp x20,x19,[sp, #0x10]
02c378d4  ldr x30,[sp], #0x20
02c378d8  b 0x029f59f4
