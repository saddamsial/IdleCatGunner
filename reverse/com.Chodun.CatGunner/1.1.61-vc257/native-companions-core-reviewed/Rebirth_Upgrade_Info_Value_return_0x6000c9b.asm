02c8884c  stp x30,x21,[sp, #-0x20]!
02c88850  stp x20,x19,[sp, #0x10]
02c88854  mov w20,w1
02c88858  ldp x9,x1,[x0, #0x18]
02c8885c  ldr x21,[x0, #0x30]
02c88860  mov x2,xzr
02c88864  mov x19,x8
02c88868  mov x0,x9
02c8886c  bl 0x02b1e644
02c88870  cbz x21,0x02c888a0
02c88874  ldr w9,[x21, #0x18]
02c88878  add w8,w0,w20
02c8887c  cmp w8,w9
02c88880  b.cs 0x02c888a4
02c88884  sxtw x8,w8
02c88888  add x8,x21,x8, LSL #0x5
02c8888c  ldp q0,q1,[x8, #0x20]
02c88890  stp q0,q1,[x19]
02c88894  ldp x20,x19,[sp, #0x10]
02c88898  ldp x30,x21,[sp], #0x20
02c8889c  ret
02c888a0  bl 0x029f5cfc
02c888a4  bl 0x029f5d04
