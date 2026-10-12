02be0988  sub sp,sp,#0x30
02be098c  str x30,[sp, #0x10]
02be0990  stp x20,x19,[sp, #0x20]
02be0994  adrp x20,0x625b000
02be0998  adrp x19,0x5e5e000
02be099c  ldrb w8,[x20, #0xc60]
02be09a0  ldr x19,[x19, #0x528]
02be09a4  tbnz w8,#0x0,0x02be09c8
02be09a8  adrp x0,0x5e5e000
02be09ac  ldr x0,[x0, #0x528]
02be09b0  bl 0x029f5a50
02be09b4  adrp x0,0x5e60000
02be09b8  ldr x0,[x0, #0xda8]
02be09bc  bl 0x029f5a50
02be09c0  mov w8,#0x1
02be09c4  strb w8,[x20, #0xc60]
02be09c8  ldr x0,[x19]
02be09cc  adrp x19,0x5e60000
02be09d0  ldr w8,[x0, #0xe4]
02be09d4  ldr x19,[x19, #0xda8]
02be09d8  cbnz w8,0x02be09e0
02be09dc  bl 0x029f5bd0
02be09e0  ldr x0,[x19]
02be09e4  mov w1,#0x1
02be09e8  mov w2,wzr
02be09ec  mov w3,#0x1
02be09f0  mov w4,wzr
02be09f4  mov x5,xzr
02be09f8  mov x6,xzr
02be09fc  mov w7,#0x1
02be0a00  str xzr,[sp]
02be0a04  bl 0x02bccb00
02be0a08  ldp x20,x19,[sp, #0x20]
02be0a0c  ldr x30,[sp, #0x10]
02be0a10  add sp,sp,#0x30
02be0a14  ret
