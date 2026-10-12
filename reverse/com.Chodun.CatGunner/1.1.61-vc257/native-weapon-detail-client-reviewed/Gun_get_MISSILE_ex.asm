02be0748  sub sp,sp,#0x30
02be074c  str x30,[sp, #0x10]
02be0750  stp x20,x19,[sp, #0x20]
02be0754  adrp x20,0x625b000
02be0758  adrp x19,0x5e5e000
02be075c  ldrb w8,[x20, #0xc5c]
02be0760  ldr x19,[x19, #0x528]
02be0764  tbnz w8,#0x0,0x02be0788
02be0768  adrp x0,0x5e5e000
02be076c  ldr x0,[x0, #0x528]
02be0770  bl 0x029f5a50
02be0774  adrp x0,0x5e60000
02be0778  ldr x0,[x0, #0xd88]
02be077c  bl 0x029f5a50
02be0780  mov w8,#0x1
02be0784  strb w8,[x20, #0xc5c]
02be0788  ldr x0,[x19]
02be078c  adrp x19,0x5e60000
02be0790  ldr w8,[x0, #0xe4]
02be0794  ldr x19,[x19, #0xd88]
02be0798  cbnz w8,0x02be07a0
02be079c  bl 0x029f5bd0
02be07a0  ldr x0,[x19]
02be07a4  mov w1,#0x1
02be07a8  mov w2,wzr
02be07ac  mov w3,#0x1
02be07b0  mov w4,wzr
02be07b4  mov x5,xzr
02be07b8  mov x6,xzr
02be07bc  mov w7,#0x1
02be07c0  str xzr,[sp]
02be07c4  bl 0x02bccb00
02be07c8  ldp x20,x19,[sp, #0x20]
02be07cc  ldr x30,[sp, #0x10]
02be07d0  add sp,sp,#0x30
02be07d4  ret
