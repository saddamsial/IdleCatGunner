02ba4028  str x30,[sp, #-0x20]!
02ba402c  stp x20,x19,[sp, #0x10]
02ba4030  adrp x20,0x625b000
02ba4034  mov x19,x0
02ba4038  ldrb w8,[x20, #0xa48]
02ba403c  tbnz w8,#0x0,0x02ba4060
02ba4040  adrp x0,0x5e58000
02ba4044  ldr x0,[x0, #0xf08]
02ba4048  bl 0x029f5a50
02ba404c  adrp x0,0x5e5e000
02ba4050  ldr x0,[x0, #0x6f0]
02ba4054  bl 0x029f5a50
02ba4058  mov w8,#0x1
02ba405c  strb w8,[x20, #0xa48]
02ba4060  ldrb w8,[x19, #0xd0]
02ba4064  cbnz w8,0x02ba4070
02ba4068  mov x0,x19
02ba406c  bl 0x02ba55ac
02ba4070  mov x0,x19
02ba4074  bl 0x02ba56f4
02ba4078  mov x0,x19
02ba407c  bl 0x02ba5a1c
02ba4080  ldr x0,[x19, #0xa0]
02ba4084  cbz x0,0x02ba40e0
02ba4088  mov x1,xzr
02ba408c  bl 0x02c03bd4
02ba4090  ldr x0,[x19, #0x78]
02ba4094  cbz x0,0x02ba40e0
02ba4098  ldr w8,[x19, #0x48]
02ba409c  adrp x20,0x5e58000
02ba40a0  adrp x19,0x5e5e000
02ba40a4  ldr x20,[x20, #0xf08]
02ba40a8  ldr x19,[x19, #0x6f0]
02ba40ac  mov x2,xzr
02ba40b0  cmp w8,#0x18
02ba40b4  cset w1,gt
02ba40b8  bl 0x057dff3c
02ba40bc  ldr x0,[x20]
02ba40c0  ldr w8,[x0, #0xe4]
02ba40c4  cbnz w8,0x02ba40cc
02ba40c8  bl 0x029f5bd0
02ba40cc  ldr x0,[x19]
02ba40d0  ldp x20,x19,[sp, #0x10]
02ba40d4  mov x1,xzr
02ba40d8  ldr x30,[sp], #0x20
02ba40dc  b 0x05799e30
02ba40e0  bl 0x029f5cfc
