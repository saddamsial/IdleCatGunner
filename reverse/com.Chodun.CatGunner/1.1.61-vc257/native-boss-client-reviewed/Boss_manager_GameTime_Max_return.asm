02c463bc  stp x30,x21,[sp, #-0x20]!
02c463c0  stp x20,x19,[sp, #0x10]
02c463c4  adrp x20,0x625c000
02c463c8  adrp x21,0x5e5e000
02c463cc  mov x19,x0
02c463d0  ldrb w8,[x20, #0xde]
02c463d4  ldr x21,[x21, #0xb8]
02c463d8  tbnz w8,#0x0,0x02c463f0
02c463dc  adrp x0,0x5e5e000
02c463e0  ldr x0,[x0, #0xb8]
02c463e4  bl 0x029f5a50
02c463e8  mov w8,#0x1
02c463ec  strb w8,[x20, #0xde]
02c463f0  ldr x0,[x21]
02c463f4  ldr w8,[x0, #0xe4]
02c463f8  cbnz w8,0x02c46400
02c463fc  bl 0x029f5bd0
02c46400  mov w0,wzr
02c46404  mov x1,xzr
02c46408  bl 0x02c9077c
02c4640c  ldr s0,[x19, #0x84]
02c46410  ldp x20,x19,[sp, #0x10]
02c46414  tst w0,#0x1
02c46418  fadd s1,s0,s0
02c4641c  fcsel s0,s1,s0,ne
02c46420  ldp x30,x21,[sp], #0x20
02c46424  ret
