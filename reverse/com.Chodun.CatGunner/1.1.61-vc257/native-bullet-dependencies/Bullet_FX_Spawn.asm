02c6700c  str d10,[sp, #-0x30]!
02c67010  stp d9,d8,[sp, #0x8]
02c67014  str x30,[sp, #0x18]
02c67018  stp x20,x19,[sp, #0x20]
02c6701c  mov w20,w1
02c67020  mov x1,xzr
02c67024  fmov s8,s2
02c67028  fmov s9,s1
02c6702c  fmov s10,s0
02c67030  mov x19,x0
02c67034  bl 0x057dc0f8
02c67038  cbz x0,0x02c67088
02c6703c  fmov s0,s10
02c67040  fmov s1,s9
02c67044  mov x1,xzr
02c67048  fmov s2,s8
02c6704c  bl 0x057eee74
02c67050  mov x0,x19
02c67054  mov w1,w20
02c67058  bl 0x02c6723c
02c6705c  mov x0,x19
02c67060  mov x1,xzr
02c67064  bl 0x057dc1c8
02c67068  cbz x0,0x02c67088
02c6706c  ldp x20,x19,[sp, #0x20]
02c67070  mov w1,#0x1
02c67074  ldp d9,d8,[sp, #0x8]
02c67078  mov x2,xzr
02c6707c  ldr x30,[sp, #0x18]
02c67080  ldr d10,[sp], #0x30
02c67084  b 0x057dff3c
02c67088  bl 0x029f5cfc
