02c66c1c  str d10,[sp, #-0x30]!
02c66c20  stp d9,d8,[sp, #0x10]
02c66c24  stp x30,x19,[sp, #0x20]
02c66c28  fmov s8,s2
02c66c2c  fmov s9,s1
02c66c30  mov x19,x0
02c66c34  fmov s10,s0
02c66c38  bl 0x02c65edc
02c66c3c  fmov s0,s10
02c66c40  fmov s1,s9
02c66c44  mov x0,x19
02c66c48  fmov s2,s8
02c66c4c  bl 0x02c66180
02c66c50  mov x0,x19
02c66c54  ldp x30,x19,[sp, #0x20]
02c66c58  ldp d9,d8,[sp, #0x10]
02c66c5c  ldr d10,[sp], #0x30
02c66c60  b 0x02c66330
