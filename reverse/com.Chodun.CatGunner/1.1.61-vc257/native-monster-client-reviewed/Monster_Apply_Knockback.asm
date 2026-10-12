02c4c840  str d8,[sp, #-0x20]!
02c4c844  str x30,[sp, #0x8]
02c4c848  stp x20,x19,[sp, #0x10]
02c4c84c  fmov s8,s0
02c4c850  mov x20,x0
02c4c854  mov x19,x0
02c4c858  ldr x1,[x20, #0x70]!
02c4c85c  cbz x1,0x02c4c86c
02c4c860  mov x0,x19
02c4c864  mov x2,xzr
02c4c868  bl 0x057e237c
02c4c86c  fmov s0,0x3f800000
02c4c870  movi d1,#0x0
02c4c874  mov x0,x19
02c4c878  fcmp s8,s0
02c4c87c  fcsel s0,s0,s8,gt
02c4c880  fcmp s8,#0.0
02c4c884  fcsel s0,s1,s0,mi
02c4c888  bl 0x02c4c8b8
02c4c88c  mov x1,x0
02c4c890  mov x0,x19
02c4c894  mov x2,xzr
02c4c898  bl 0x057e2120
02c4c89c  mov x1,x0
02c4c8a0  mov x0,x20
02c4c8a4  ldr x30,[sp, #0x8]
02c4c8a8  str x1,[x19, #0x70]
02c4c8ac  ldp x20,x19,[sp, #0x10]
02c4c8b0  ldr d8,[sp], #0x20
02c4c8b4  b 0x029f59f4
