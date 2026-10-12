02c55864  str d8,[sp, #-0x20]!
02c55868  stp x30,x19,[sp, #0x10]
02c5586c  mov x19,x0
02c55870  ldr s8,[x0, #0x30]
02c55874  mov x0,xzr
02c55878  bl 0x057ebb34
02c5587c  fadd s0,s8,s0
02c55880  fmov s1,0x3f800000
02c55884  fcmp s0,s1
02c55888  str s0,[x19, #0x30]
02c5588c  b.pl 0x02c5589c
02c55890  ldp x30,x19,[sp, #0x10]
02c55894  ldr d8,[sp], #0x20
02c55898  ret
02c5589c  mov x0,x19
02c558a0  str wzr,[x19, #0x30]
02c558a4  ldp x30,x19,[sp, #0x10]
02c558a8  ldr d8,[sp], #0x20
02c558ac  b 0x02c558b0
