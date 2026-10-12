02ba43b8  stp x30,x21,[sp, #-0x20]!
02ba43bc  stp x20,x19,[sp, #0x10]
02ba43c0  adrp x20,0x625b000
02ba43c4  adrp x21,0x5e5e000
02ba43c8  mov x19,x0
02ba43cc  ldrb w8,[x20, #0xa39]
02ba43d0  ldr x21,[x21, #0x6f8]
02ba43d4  tbnz w8,#0x0,0x02ba43ec
02ba43d8  adrp x0,0x5e5e000
02ba43dc  ldr x0,[x0, #0x6f8]
02ba43e0  bl 0x029f5a50
02ba43e4  mov w8,#0x1
02ba43e8  strb w8,[x20, #0xa39]
02ba43ec  ldr x0,[x21]
02ba43f0  bl 0x029f5cec
02ba43f4  mov w1,wzr
02ba43f8  mov x2,xzr
02ba43fc  mov x20,x0
02ba4400  bl 0x02c034a4
02ba4404  cbz x20,0x02ba4428
02ba4408  mov x0,x20
02ba440c  mov x1,x19
02ba4410  str x19,[x0, #0x20]!
02ba4414  bl 0x029f59f4
02ba4418  mov x0,x20
02ba441c  ldp x20,x19,[sp, #0x10]
02ba4420  ldp x30,x21,[sp], #0x20
02ba4424  ret
02ba4428  bl 0x029f5cfc
