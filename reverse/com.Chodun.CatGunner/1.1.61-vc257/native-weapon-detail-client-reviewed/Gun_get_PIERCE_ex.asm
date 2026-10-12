02be0868  sub sp,sp,#0x30
02be086c  str x30,[sp, #0x10]
02be0870  stp x20,x19,[sp, #0x20]
02be0874  adrp x20,0x625b000
02be0878  adrp x19,0x5e5e000
02be087c  ldrb w8,[x20, #0xc5e]
02be0880  ldr x19,[x19, #0x528]
02be0884  tbnz w8,#0x0,0x02be08a8
02be0888  adrp x0,0x5e5e000
02be088c  ldr x0,[x0, #0x528]
02be0890  bl 0x029f5a50
02be0894  adrp x0,0x5e60000
02be0898  ldr x0,[x0, #0xd98]
02be089c  bl 0x029f5a50
02be08a0  mov w8,#0x1
02be08a4  strb w8,[x20, #0xc5e]
02be08a8  ldr x0,[x19]
02be08ac  adrp x19,0x5e60000
02be08b0  ldr w8,[x0, #0xe4]
02be08b4  ldr x19,[x19, #0xd98]
02be08b8  cbnz w8,0x02be08c0
02be08bc  bl 0x029f5bd0
02be08c0  ldr x0,[x19]
02be08c4  mov w1,#0x1
02be08c8  mov w2,wzr
02be08cc  mov w3,#0x1
02be08d0  mov w4,wzr
02be08d4  mov x5,xzr
02be08d8  mov x6,xzr
02be08dc  mov w7,#0x1
02be08e0  str xzr,[sp]
02be08e4  bl 0x02bccb00
02be08e8  ldp x20,x19,[sp, #0x20]
02be08ec  ldr x30,[sp, #0x10]
02be08f0  add sp,sp,#0x30
02be08f4  ret
