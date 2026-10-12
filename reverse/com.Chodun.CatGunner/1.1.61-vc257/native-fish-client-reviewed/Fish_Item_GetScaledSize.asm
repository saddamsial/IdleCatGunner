02c62880  str d10,[sp, #-0x30]!
02c62884  stp d9,d8,[sp, #0x10]
02c62888  stp x30,x19,[sp, #0x20]
02c6288c  mov x19,x0
02c62890  bl 0x02c60a20
02c62894  ldr x0,[x19, #0x50]
02c62898  cbz x0,0x02c628e8
02c6289c  mov x1,xzr
02c628a0  bl 0x057ef578
02c628a4  ldr x0,[x19, #0x50]
02c628a8  cbz x0,0x02c628e8
02c628ac  mov x1,xzr
02c628b0  fmov s8,s0
02c628b4  fmov s9,s1
02c628b8  bl 0x057ed9fc
02c628bc  ldr x0,[x19, #0x50]
02c628c0  cbz x0,0x02c628e8
02c628c4  mov x1,xzr
02c628c8  fmov s10,s2
02c628cc  bl 0x057ed9fc
02c628d0  fmul s0,s8,s10
02c628d4  fmul s1,s9,s3
02c628d8  ldp x30,x19,[sp, #0x20]
02c628dc  ldp d9,d8,[sp, #0x10]
02c628e0  ldr d10,[sp], #0x30
02c628e4  ret
02c628e8  bl 0x029f5cfc
