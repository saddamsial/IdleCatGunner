02c7c8fc  str x30,[sp, #-0x20]!
02c7c900  stp x20,x19,[sp, #0x10]
02c7c904  ldr x8,[x0, #0x38]
02c7c908  cbz x8,0x02c7c964
02c7c90c  mov x20,x0
02c7c910  ldr w2,[x8, #0x18]
02c7c914  mov x19,x0
02c7c918  ldr x1,[x20, #0x40]!
02c7c91c  bl 0x02c7c968
02c7c920  mov x1,x0
02c7c924  str x0,[x20]
02c7c928  mov x0,x20
02c7c92c  bl 0x029f59f4
02c7c930  ldur x8,[x20, #-0x10]
02c7c934  cbz x8,0x02c7c940
02c7c938  ldr w2,[x8, #0x18]
02c7c93c  b 0x02c7c944
02c7c940  mov w2,wzr
02c7c944  ldr x1,[x19, #0x48]!
02c7c948  bl 0x02c7c968
02c7c94c  mov x1,x0
02c7c950  mov x0,x19
02c7c954  str x1,[x19]
02c7c958  ldp x20,x19,[sp, #0x10]
02c7c95c  ldr x30,[sp], #0x20
02c7c960  b 0x029f59f4
02c7c964  bl 0x029f5cfc
