02ca3e7c  str x30,[sp, #-0x20]!
02ca3e80  stp x20,x19,[sp, #0x10]
02ca3e84  mov x20,x0
02ca3e88  ldr x1,[x20, #0x38]!
02ca3e8c  cbz x1,0x02ca3eb4
02ca3e90  mov x2,xzr
02ca3e94  mov x19,x0
02ca3e98  bl 0x057e237c
02ca3e9c  mov x0,x20
02ca3ea0  str xzr,[x19, #0x38]
02ca3ea4  mov x1,xzr
02ca3ea8  ldp x20,x19,[sp, #0x10]
02ca3eac  ldr x30,[sp], #0x20
02ca3eb0  b 0x029f59f4
02ca3eb4  ldp x20,x19,[sp, #0x10]
02ca3eb8  ldr x30,[sp], #0x20
02ca3ebc  ret
