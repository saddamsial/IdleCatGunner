02be03e8  sub sp,sp,#0x30
02be03ec  str x30,[sp, #0x10]
02be03f0  stp x20,x19,[sp, #0x20]
02be03f4  adrp x20,0x625b000
02be03f8  adrp x19,0x5e5e000
02be03fc  ldrb w8,[x20, #0xc56]
02be0400  ldr x19,[x19, #0x528]
02be0404  tbnz w8,#0x0,0x02be0428
02be0408  adrp x0,0x5e5e000
02be040c  ldr x0,[x0, #0x528]
02be0410  bl 0x029f5a50
02be0414  adrp x0,0x5e60000
02be0418  ldr x0,[x0, #0xd58]
02be041c  bl 0x029f5a50
02be0420  mov w8,#0x1
02be0424  strb w8,[x20, #0xc56]
02be0428  ldr x0,[x19]
02be042c  adrp x19,0x5e60000
02be0430  ldr w8,[x0, #0xe4]
02be0434  ldr x19,[x19, #0xd58]
02be0438  cbnz w8,0x02be0440
02be043c  bl 0x029f5bd0
02be0440  ldr x0,[x19]
02be0444  mov w1,#0x1
02be0448  mov w2,wzr
02be044c  mov w3,#0x1
02be0450  mov w4,wzr
02be0454  mov x5,xzr
02be0458  mov x6,xzr
02be045c  mov w7,#0x1
02be0460  str xzr,[sp]
02be0464  bl 0x02bccb00
02be0468  ldp x20,x19,[sp, #0x20]
02be046c  ldr x30,[sp, #0x10]
02be0470  add sp,sp,#0x30
02be0474  ret
